const fs=require('node:fs'),path=require('node:path'),assert=require('node:assert/strict'),{JSDOM}=require('jsdom');
const html=fs.readFileSync(path.join(__dirname,'index.html'),'utf8');
const dom=new JSDOM(html,{runScripts:'dangerously',url:'file:///index.html?render=1'}),w=dom.window;
try {
const edges=[[0,'C01'],[104,'C01'],[105,'C02'],[224,'C02'],[225,'C03'],[374,'C03'],[375,'C04'],[479,'C04'],[480,'C05'],[599,'C05']];
for(const [f,s] of edges)assert.equal(w.renderFrame(f).scene,s);
for(let f=0;f<600;f++){w.renderFrame(f);assert.equal([...w.document.querySelectorAll('.scene')].filter(x=>x.style.visibility==='visible').length,1)}
w.renderFrame(315);const a=w.document.getElementById('film').outerHTML;w.renderFrame(599);w.renderFrame(315);assert.equal(w.document.getElementById('film').outerHTML,a);
console.log('PASS: 600 frames; scene boundaries; deterministic DOM after seek. Visual QA is separate.');
} finally {w.close()}
