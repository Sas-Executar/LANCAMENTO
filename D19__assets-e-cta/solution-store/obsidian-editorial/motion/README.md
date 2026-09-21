---
record_id: D19-VIDEO-BUILD-001
route: D19
status: review
source: ../VIDEO_PRODUCTION.yaml
---

# Obsidian Editorial · Motion

Comercial demonstrativo de 20 segundos, 600 quadros, 30 fps. A fonte canônica do briefing continua em `../VIDEO_PRODUCTION.yaml`; o YAML bundle recebido é a entrada histórica (SHA-256 `52d08c6b6d372275515c96d33988effca832e350711ec3b6a1ead63dd524c8ec`).

## Reprodução

Abra `index.html` diretamente no navegador. Use Reproduzir, Pausar, Reiniciar e o seletor de quadros. O HTML é autocontido, funciona offline e não faz chamadas a serviços externos. A demonstração simula visualmente organização documental; não executa o produto nem comprova sua funcionalidade.

## Renderização reproduzível

Requer Node.js, FFmpeg/ffprobe no PATH e Playwright/Chromium:

```sh
npm install
npx playwright install chromium
npm test
npm run qa:visual
npm run render
```

`OUTPUT_DIR` pode apontar para outro diretório. O exportador grava três MP4 H.264/yuv420p com faststart, quinze PNG de revisão e `QA_REPORT.json`. Todos os MP4 desta etapa são **sem áudio**; o sufixo `_mute` explicita isso. `captions.srt` contém o texto revisado, também gravado visualmente no vídeo.

O HTML expõe `window.renderFrame(frame)` para qualquer quadro entre 0 e 599. Todos os estados visuais derivam do quadro; a exportação não usa timers ou rolagem. `requestAnimationFrame` serve apenas ao player de preview. Não há reprodução automática; pessoas sensíveis a movimento podem navegar por quadros. `?render=1&frame=315` remove controles e seleciona o quadro.

## Estado desta entrega

Implementação e teste de DOM dos 600 quadros concluídos. **Nenhum MP4 foi gerado nesta execução.** O Chromium local foi obtido, mas o sandbox negou a criação de socket durante sua inicialização. Por isso não há QA visual aprovado. O push do commit foi bloqueado pela revisão automática, que solicitou autorização explícita para este payload no repositório Sas-Executar/LANCAMENTO. O workflow está preparado localmente; não foi executado no GitHub. Consulte `STATUS.json`. `CHROMIUM_EXECUTABLE` permite selecionar um navegador já instalado em um ambiente autorizado.

## Direção implementada

Fundo #F7F7F8, tinta #17171A e acento #7C5CFC. Fontes locais Arial/Helvetica/sans-serif para evitar dependência de rede. A renderização é determinística no mesmo ambiente e conjunto de fontes; não se promete igualdade entre sistemas diferentes. Master 1080×1920, paisagem 1920×1080 e quadrado 1080×1080 recebem composição própria, sem recorte automático do master. As cinco cenas mantêm os intervalos 0–104, 105–224, 225–374, 375–479 e 480–599.

A redação de tela foi condensada para leitura comercial, preservando as mensagens do briefing. O visual é demonstrativo e os dados são identificados como fictícios. Não há logo oficial ou alegação de afiliação à marca Obsidian. O CTA permanece textual, sem URL inventada.

## Controle de qualidade

O exportador verifica 15 quadros por formato, incluindo limites de cenas; testa overflow dos principais componentes, erros de página e igualdade binária do quadro 315 após seek para outro quadro. Após codificação, ffprobe valida dimensões, duração, fps e 600 quadros. Isso não substitui revisão humana integral, revisão das áreas seguras em cada plataforma ou aprovação final.

## Áudio e publicação

A locução foi encurtada por cena. Antes de versões sonoras: gravar, medir duração real, ajustar pausas, alinhar às cenas, selecionar/licenciar trilha e efeitos e revisar mixagem. Não gerar um arquivo sonoro com silêncio e declará-lo finalizado. Publication gate continua bloqueado até confirmar CTA, áudio e aprovação criativa. MP4s silenciosos são pré-produção visual.

## Arquivos

- `index.html`: player e composição editável.
- `render.mjs`: render e QA.
- `package.json`: dependência de produção fixada.
- `test-timeline.cjs`: teste sem navegador da seleção e restauração de estados.
- `STATUS.json`: estado real e pendências.
- `captions.srt`: legenda/roteiro de locução revisado.
- `exports/`: provas e vídeos gerados.
