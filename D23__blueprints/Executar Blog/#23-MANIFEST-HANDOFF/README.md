# #23 — Manifest & Handoff

Inventário desta materialização de `D23__blueprints/Executar Blog`.

- **task_id:** `D23-EXECUTAR-BLOG-IMPORT-001`
- **origem:** `DOCS.zip` enviado pelo mantenedor (631 arquivos brutos), classificado e roteado por agente.
- **receipt:** `_governance/receipts/2026-09/D23-EXECUTAR-BLOG-IMPORT-001.md`
- **manifest:** `MANIFEST.csv` (path, bytes, sha256) — cobre tudo sob `#00`–`#22`.

## O que foi materializado

Ver `MANIFEST.csv` para a lista completa com hashes. Resumo por área em `../_benchmarks/BENCH-001/MANIFEST.csv` (rota candidata original) e no receipt.

## O que ficou como lacuna (não inventado)

`#05-VOZ-TOM`, `#06-PILARES-TAXONOMIA`, `#07-ARTIGOS-PRONTOS`, `#10-IMAGENS-CAPAS`, `#11-IMAGENS-ARTIGOS`, `#12-AUTORES-BIOS`, `#13-SEO`, `#14-COPY-SITE`, `#15-NAVEGACAO-IA`, `#16-LEGAL-EDITORIAL`, `#18-NEWSLETTER-CTA`, `#19-ANALYTICS-KPI`, `#20-ACESSIBILIDADE-PERFORMANCE`, `#21-QA-TESTES`, `#22-RELEASE-DEPLOY` — cada pasta tem um `GAP.md` explicando o escopo esperado e a ausência de fonte. `#00-BRIEF/referencias-ecossistema/` também tem um `GAP.md` (falta `EXECUTAR_APP_cinco_paginas.pdf`).

Faltam ainda: `DOC-0019 Sobre o autor.zip` (autores/bios) e `EXECUTAR_APP_cinco_paginas.pdf` — nenhum dos dois veio no `DOCS.zip`.

## O que foi deliberadamente excluído

`DOCS/EXECUTAR_OFICINA_ORGANIZADO/` não foi copiado para cá: é o material-fonte bruto que já está mesclado e canônico em `D11__experiencia-e-projeto/oficina/`, `D12__engenharia/oficina/`, `D19__assets-e-cta/solution-store/` e `D22__decision-and-register-log 2/oficina/` (receipts `D11-OFICINA-DESIGN-SYSTEM-IMPORT-001` e `D19-OFICINA-V1-4-001`, PRs `#5`/`#6`). Reimportar duplicaria conteúdo canônico.

## Rota relacionada (fora de D23)

`unified-governance-schema-v1/` foi roteado para `D18__contratos-e-esquemas/unified-governance-schema-v1/` (rota primária D18, receipt próprio `D18-RC-UNIFIED-GOVERNANCE-SCHEMA-001`), por ser um contrato de schema, não conteúdo editorial do Blog. Um dos cinco insumos desse schema é o schema do Blog — por isso a referência cruzada aqui.
