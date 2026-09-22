# #23 — Manifest & Handoff

Inventário desta materialização de `D23__blueprints/Executar Blog`.

- **task_id:** `D23-EXECUTAR-BLOG-IMPORT-001`
- **origem:** `DOCS.zip` enviado pelo mantenedor (631 arquivos brutos), classificado e roteado por agente.
- **receipt:** `_governance/receipts/2026-09/D23-EXECUTAR-BLOG-IMPORT-001.md`
- **manifest:** `MANIFEST.csv` (path, bytes, sha256) — cobre tudo sob `#00`–`#22`.

## O que foi materializado

Ver `MANIFEST.csv` para a lista completa com hashes. Resumo por área em `../_benchmarks/BENCH-001/MANIFEST.csv` (rota candidata original) e no receipt.

## Atualização — reconciliação (`D23-EXECUTAR-BLOG-RECONCILIATION-001`)

A materialização inicial classificou como GAP conteúdo que na verdade já existia dentro de arquivos grandes (docx/xlsx) que tinham sido lidos só por nome, não por inteiro. Releitura completa corrigiu isso:

- **`#07-ARTIGOS-PRONTOS`**: deixou de ser GAP. `TP-001-fatores-de-risco-cognitivo.md` é um artigo completo, extraído verbatim de `RC-KNW-001....docx`.
- **`#09-BACKLOG-EDITORIAL/scanner-spec/`**: PRD/FRD/UX/Agent/Tech/ADR/Data/NFR/Safety/Delivery Spec completo do "Scanner Interativo de Fatores de Risco Cognitivo", também extraído do mesmo docx.
- **`#11-IMAGENS-ARTIGOS`**: deixou de ser GAP quanto à *especificação* — spec de produção visual completa (6 peças + infográfico + roteiro de vídeo + 7 derivados + QA de 8 pontos). A mídia final (imagens/vídeo renderizados) continua GAP real — é produção, não redistribuição.
- **`#06-PILARES-TAXONOMIA`**: deixou de ser GAP. `taxonomia.yaml` com 5 taxonomias (38 valores), extraído de `MASTER_EDITORIAL_RISCO_COGNITIVO_V1.xlsx`.
- **`#04-LINHA-EDITORIAL`**: `arquitetura-narrativa.yaml` (9 estágios) adicionado, mesma fonte.
- **`#18-NEWSLETTER-CTA`**: deixou de ser GAP. `ctas.yaml` com 5 CTAs roteados por funil.
- **`#22-RELEASE-DEPLOY`**: parcialmente coberto — `automation-map.yaml` (8 gates de produção→publicação→medição); runbook de deploy da aplicação em si segue fora do escopo (vive no repositório `01-Executar-Echo`).
- **`#17-INTEGRACOES-ECOSSISTEMA/skills/executar-safe-frameworks`**: confirmado que o catálogo já tem **299 Quick Frameworks** reais (`catalog/frameworks.jsonl`) — não é um placeholder.

**GAPs reais que permanecem** (verificados por busca exaustiva, não por falta de leitura): `#05-VOZ-TOM`, `#10-IMAGENS-CAPAS` (mídia final), `#13-SEO`, `#14-COPY-SITE`, `#15-NAVEGACAO-IA`, `#16-LEGAL-EDITORIAL`, `#19-ANALYTICS-KPI`, `#20-ACESSIBILIDADE-PERFORMANCE`, `#21-QA-TESTES`; `EXECUTAR_APP_cinco_paginas.pdf`; 2 dos "3 artigos principais" citados como meta em `Quickframes-Executar-Blog.md` (só TP-001 está redigido); a colisão de ID `RC-SOLUTION-001` (Conversor de Relatório vs. Scanner) segue sem resolução — `USER_ACTION_REQUIRED`.

`#12-AUTORES-BIOS`: `DOC-0019 Sobre o autor.zip` foi enviado pelo mantenedor, hash conferido contra `BENCH-001/MANIFEST.csv` (`7b945058...`), materializado como `DOC-0019__Sobre-o-autor.md`.

Ver `PLANO-MESTRE-END-TO-END.md` (nesta pasta) para o grafo completo de execução até `RELEASED + VERIFIED`.

## O que foi deliberadamente excluído

`DOCS/EXECUTAR_OFICINA_ORGANIZADO/` não foi copiado para cá: é o material-fonte bruto que já está mesclado e canônico em `D11__experiencia-e-projeto/oficina/`, `D12__engenharia/oficina/`, `D19__assets-e-cta/solution-store/` e `D22__decision-and-register-log 2/oficina/` (receipts `D11-OFICINA-DESIGN-SYSTEM-IMPORT-001` e `D19-OFICINA-V1-4-001`, PRs `#5`/`#6`). Reimportar duplicaria conteúdo canônico.

## Rota relacionada (fora de D23)

`unified-governance-schema-v1/` foi roteado para `D18__contratos-e-esquemas/unified-governance-schema-v1/` (rota primária D18, receipt próprio `D18-RC-UNIFIED-GOVERNANCE-SCHEMA-001`), por ser um contrato de schema, não conteúdo editorial do Blog. Um dos cinco insumos desse schema é o schema do Blog — por isso a referência cruzada aqui.
