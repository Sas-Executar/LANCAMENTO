# Change Receipt — D19-OFICINA-V1-4-001

- **task_id:** D19-OFICINA-V1-4-001
- **date:** 2026-09-21
- **primary_route:** D19 — `D19__assets-e-cta`
- **cross_domain_dependencies:** D11 (UX/wireframes), D12 (React contract), D22 (ADRs)
- **classification:** update + create
- **source:** solicitação explícita do mantenedor + 10 screenshots de referência UIX fornecidos na conversa.
- **objective:** elevar o sistema da Oficina para Super Schema v1.4, formalizar o runbook de produção, tokenizar wireframes estruturais, registrar ADRs UX/React e migrar Obsidian Editorial como golden reference do pipeline completo.
- **status:** completed

## Decisões

1. `SUPER_SCHEMA_SOLUTION` elevado de v1.3 para v1.4.
2. Criado registry `PRODUCT_TYPES.yaml` com Templates, Skills & Workflows, Ebooks, Artigos, Prompts, Plugins e Photo-prompts.
3. A Oficina usa lifecycle: INGESTED → CLASSIFIED → SCHEMA_COMPLETE → BUNDLE_READY → IN_EDITORIAL_PRODUCTION → ASSETS_READY → QA_READY → STORE_READY → PUBLISHED.
4. Definition of Done usa gates G1–G6; solução não é considerada concluída apenas por possuir schema ou bundle.
5. Cards são unidade primária de discovery e uma família compartilhada entre soluções, artigos, tutoriais e cursos.
6. Start e Download são ações distintas.
7. Video loop + GIF fallback, carousel vertical e HTML onboarding integram o contrato de storefront.
8. Screenshots fornecidos foram usados somente para arquitetura, hierarquia, interação e wireframes. Identidade visual final não foi inferida.
9. Tokens visuais finais (tipografia, cores, radius, shadows, spacing, motion) permanecem pendentes de input do mantenedor.
10. ADRs canônicos foram roteados para D22, wireframe tokens para D11 e contrato React para D12, preservando D19 como rota primária do produto/produção.
11. Obsidian Editorial foi migrado para v1.4.0 e estado `BUNDLE_READY`.
12. Production Handoff Bundle v1.4 foi gerado como snapshot com 7 documentos YAML.

## Referências de UI tokenizadas

- IMG_3191(2).jpeg
- IMG_3194.jpeg
- IMG_3192(2).jpeg
- IMG_3193.jpeg
- IMG_3195.png
- IMG_3196.png
- IMG_3198.png
- IMG_3199.jpeg
- IMG_3203.png
- IMG_3201.png

## Principais arquivos

### D19 — Oficina
- `solution-store/SUPER_SCHEMA_SOLUTION.yaml`
- `solution-store/OFICINA_PRODUCTION_RUNBOOK.yaml`
- `solution-store/PUBLICATION_ASSET_SCHEMA.yaml`
- `solution-store/STORE_CARD_SCHEMA.yaml`
- `solution-store/RELEASE_MANIFEST_SCHEMA.yaml`
- `solution-store/PRODUCTION_HANDOFF_SCHEMA.yaml`
- `solution-store/STORE_SUBMISSION_SCHEMA.yaml`
- `solution-store/taxonomy/PRODUCT_TYPES.yaml`
- `solution-store/instructions/INGEST_INSTRUCTIONS.md`
- `solution-store/instructions/CLASSIFICATION_INSTRUCTIONS.md`
- `solution-store/instructions/EDITORIAL_PRODUCTION_INSTRUCTIONS.md`
- `solution-store/instructions/STORE_PUBLICATION_INSTRUCTIONS.md`

### D11 / D12 / D22
- `D11__experiencia-e-projeto/oficina/WIREFRAME_TOKENS.yaml`
- `D12__engenharia/oficina/REACT_COMPONENT_CONTRACT.yaml`
- `D22__decision-and-register-log 2/oficina/ADR-UX-001_STORE_INFORMATION_ARCHITECTURE.md`
- `D22__decision-and-register-log 2/oficina/ADR-UX-002_DISCOVERY_FILTER_SORT.md`
- `D22__decision-and-register-log 2/oficina/ADR-UX-003_SOLUTION_DETAIL.md`
- `D22__decision-and-register-log 2/oficina/ADR-UX-004_LEARN_ONBOARDING.md`
- `D22__decision-and-register-log 2/oficina/ADR-REACT-001_COMPONENT_ARCHITECTURE.md`

### Golden reference — Obsidian Editorial
- `solution-store/obsidian-editorial/solution.yaml`
- `solution-store/obsidian-editorial/store_submission.yaml`
- `solution-store/obsidian-editorial/store/STORE_CARD.yaml`
- `solution-store/obsidian-editorial/store/VERTICAL_CAROUSEL.yaml`
- `solution-store/obsidian-editorial/store/ONBOARDING.yaml`
- `solution-store/obsidian-editorial/production/ASSET_MANIFEST.yaml`
- `solution-store/obsidian-editorial/production/OBSIDIAN_EDITORIAL_PRODUCTION_HANDOFF_BUNDLE_v1.4.yaml`
- `solution-store/obsidian-editorial/release/RELEASE_MANIFEST.yaml`

## Estado do golden reference

- G1_SCHEMA_COMPLETE: true
- G2_BUNDLE_COMPLETE: true
- G3_EDITORIAL_ASSETS_COMPLETE: false
- G4_QA_COMPLETE: false
- G5_STORE_SUBMISSION_COMPLETE: false
- G6_PUBLISHED: false
- lifecycle: `BUNDLE_READY`
- next_state: `IN_EDITORIAL_PRODUCTION`

## Blockers conhecidos

- Tokens visuais finais ainda não fornecidos.
- Render de vídeo e derivados ainda não produzido.
- URL pública/CTA ainda não confirmada.
- Áudio final/licenças ainda não confirmados.

## Validação

- `REPOSITORY_MAP.md`: sincronizado.
- `python scripts/sync_indexes.py --check`: **PASS** — Repository Governance run #17.
- `python scripts/validate_governance.py`: **PASS** — Repository Governance run #17.
- PR: `#5`.
- Merge: autorizado pelo mantenedor após workflow verde.

## Handoff

Branch: `feat/oficina-v1-4-runbook-uix-react`.
PR: `#5`.
Workflow inicial: `Repository Governance #17 — SUCCESS`.
