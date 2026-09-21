# BENCH-001 — EXECUTAR Blog

Status: **materializado em `#00`–`#22`** (task `D23-EXECUTAR-BLOG-IMPORT-001`, receipt em `_governance/receipts/2026-09/D23-EXECUTAR-BLOG-IMPORT-001.md`). `DOC-0019 Sobre o autor.zip` foi recebido e materializado em `#12-AUTORES-BIOS` (hash do zip conferido contra este `MANIFEST.csv`). Ver `#23-MANIFEST-HANDOFF/README.md`.
Destino: `D23__blueprints/Executar Blog/_benchmarks/BENCH-001`

## Objetivo

Preservar o primeiro conjunto de referências enviado para estruturar o diretório do Blog sem misturar benchmark, fonte bruta e conteúdo canônico.

## Pacotes recebidos

| Pacote | Conteúdo útil | Rota candidata |
|---|---:|---|
| documento.zip | 1 HTML | #02-UX-UI |
| executar-block-quick-frameworks.skill.zip | 15 arquivos | #17-INTEGRACOES-ECOSSISTEMA + #04/#07 |
| DOC-0019 Sobre o autor.zip | 1 Markdown | #12-AUTORES-BIOS + #04/#08 |
| EXECUTAR_Brand_PNG_Package_v1.0.zip | 84 arquivos | #03-DESIGN-TOKENS/brand-assets |
| Executar BLOG NATGEO.zip | 6 arquivos | #02-UX-UI + #03-DESIGN-TOKENS |
| RC-KNW-001__knowledge-pack-tp001-fatores-risco-cognitivo__v01.zip | 1 DOCX | #08-ARTIGOS-REVISAO + #04/#06/#12 |

## Regra de promoção

Nenhum item deste BENCH vira fonte canônica automaticamente.

Fluxo obrigatório:

`INCOMING → BENCH → CLASSIFICAR → VALIDAR → PROMOVER → CANONICAL → RECEIPT`

A promoção deve registrar origem, destino, versão, decisão e dependências.

## Estrutura-alvo

- `_benchmarks/BENCH-001/raw/` — pacotes/fontes originais.
- `_benchmarks/BENCH-001/MANIFEST.csv` — inventário e roteamento.
- `#02-UX-UI/` — showroom e referência NatGeo/Apple.
- `#03-DESIGN-TOKENS/brand-assets/` — identidade visual EXECUTAR.
- `#04-LINHA-EDITORIAL/` — regras editoriais derivadas e aprovadas.
- `#08-ARTIGOS-REVISAO/` — knowledge packs e drafts ainda não publicados.
- `#12-AUTORES-BIOS/` — biografias aprovadas.
- `#17-INTEGRACOES-ECOSSISTEMA/skills/` — skills e contratos de agentes.

## Observação

Metadados `__MACOSX` e `._*` são descartados durante materialização.
