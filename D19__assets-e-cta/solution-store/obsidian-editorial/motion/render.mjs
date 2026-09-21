import {createRequire} from 'node:module';
import {mkdir,writeFile} from 'node:fs/promises';
import {resolve,dirname} from 'node:path';
import {fileURLToPath,pathToFileURL} from 'node:url';
import {spawn,execFileSync} from 'node:child_process';
import {once} from 'node:events';
import {createHash} from 'node:crypto';
const require=createRequire(import.meta.url);
let chromium;try{({chromium}=require('playwright'))}catch{if(!process.env.CODEX_PRIMARY_RUNTIME_NODE_MODULES)throw Error('Install dependencies with npm install');({chromium}=require(process.env.CODEX_PRIMARY_RUNTIME_NODE_MODULES+'/playwright'))}
const root=dirname(fileURLToPath(import.meta.url)),out=resolve(process.env.OUTPUT_DIR||resolve(root,'exports'));
await mkdir(out,{recursive:true});
const qaOnly=process.argv.includes('--qa-only');
const variants=[['9x16',1080,1920],['16x9',1920,1080],['1x1',1080,1080]];
const browser=await chromium.launch({headless:true,executablePath:process.env.CHROMIUM_EXECUTABLE||undefined,args:['--no-sandbox','--font-render-hinting=none']});
const report={status:'visual_preproduction',fps:30,frames:600,seconds:20,audio:'none_pending_recording_and_licenses',publish_ready:false,variants:[]};
try{for(const [id,width,height] of variants){
 const page=await browser.newPage({viewport:{width,height},deviceScaleFactor:1});const errors=[];page.on('pageerror',e=>errors.push(e.message));
 await page.goto(pathToFileURL(resolve(root,'index.html')).href+'?render=1');await page.evaluate(()=>document.fonts.ready);
 const checks=[];
 for(const f of [0,52,104,105,180,224,225,315,374,375,427,479,480,540,599]){
  const state=await page.evaluate(f=>window.renderFrame(f),f);
  const overflow=await page.evaluate(()=>[...document.querySelectorAll('.scene')].filter(s=>s.style.visibility==='visible').flatMap(s=>[...s.querySelectorAll('h1,.lead,.window,.command,.cta')]).filter(e=>{const r=e.getBoundingClientRect();return r.left<0||r.top<0||r.right>innerWidth+1||r.bottom>innerHeight+1||e.scrollWidth>e.clientWidth+2}).map(e=>e.className||e.tagName));
  if(overflow.length)throw Error(id+' frame '+f+' overflow '+overflow.join(','));
  checks.push(state);
  if([52,180,315,427,540].includes(f))await page.screenshot({path:resolve(out,id+'-frame-'+f+'.png')});
 }
 await page.evaluate(()=>renderFrame(315));const a=await page.screenshot();await page.evaluate(()=>renderFrame(45));await page.evaluate(()=>renderFrame(315));const b=await page.screenshot();
 if(!a.equals(b))throw Error('Nondeterministic frame '+id);
 const filename='obsidian-editorial-commercial-v1_'+id+'_'+width+'x'+height+'_30fps_mute.mp4';
 if(!qaOnly){
 const ff=spawn('ffmpeg',['-y','-loglevel','error','-f','image2pipe','-vcodec','png','-framerate','30','-i','pipe:0','-an','-c:v','libx264','-preset','fast','-crf','18','-pix_fmt','yuv420p','-movflags','+faststart','-frames:v','600',resolve(out,filename)],{stdio:['pipe','ignore','inherit']});
 const completion=new Promise((ok,no)=>{ff.on('error',no);ff.on('close',code=>code===0?ok():no(Error('ffmpeg exit '+code)))});
 for(let f=0;f<600;f++){await page.evaluate(f=>renderFrame(f),f);const png=await page.screenshot();if(!ff.stdin.write(png))await once(ff.stdin,'drain');if(f%150===0)console.log(id+' '+f+'/600')}
 ff.stdin.end();await completion;
 const probe=JSON.parse(execFileSync('ffprobe',['-v','error','-show_streams','-show_format','-of','json',resolve(out,filename)],{encoding:'utf8'}));const v=probe.streams.find(s=>s.codec_type==='video');
 if(+v.nb_frames!==600||v.width!==width||v.height!==height||v.avg_frame_rate!=='30/1'||+probe.format.duration!==20)throw Error('Invalid export '+id);
 }
 if(errors.length)throw Error(errors.join('\n'));
 report.variants.push({id,width,height,filename:qaOnly?null:filename,checks,deterministic_frame_sha256:createHash('sha256').update(a).digest('hex'),overflow:false,page_errors:errors});await page.close();
}}
finally{await browser.close()}
await writeFile(resolve(out,'QA_REPORT.json'),JSON.stringify(report,null,2)+'\n');console.log('QA passed; output: '+out);
