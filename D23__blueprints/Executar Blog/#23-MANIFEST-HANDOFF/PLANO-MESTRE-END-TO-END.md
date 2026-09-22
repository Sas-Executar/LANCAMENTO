# PLANO MESTRE END-TO-END — Executar Blog (Risco Cognitivo)

## Context

A premissa anterior ("faltam 3 artigos, dá pra escolher entre conteúdo OU full-stack") estava errada. Reabri e li integralmente — não só por nome de arquivo — os documentos grandes que eu tinha classificado como "draft"/GAP, e o quadro real é muito mais avançado do que eu tinha relatado:

- **`#08-ARTIGOS-REVISAO/RC-KNW-001/....docx` (26.700 palavras, 874 headings) não é um knowledge pack bruto.** Contém, no mesmo arquivo: (a) um **artigo completo e publicável**, "Fatores de Riscos Cognitivos: o que aumenta o custo da execução?" (TP-001), com introdução, 8 fatores desenvolvidos, fechamento e CTA; (b) um **PRD/FRD/UX-Spec/Agent-Spec/Technical-Spec/ADR/Data-Spec/NFR/Safety-Spec/Delivery-Spec completo** para "RC-SOLUTION-001 — Scanner Interativo de Fatores de Risco Cognitivo" (a ferramenta/agente ligada ao Mapa/BLOG-09); (c) uma **especificação de produção visual completa**: 6 peças visuais (copy + hierarquia + descrição de imagem), 1 infográfico mestre, 1 roteiro de vídeo com timing (00:00–05:50), 7 formatos derivados (carrossel, reel, stories, LinkedIn, newsletter, checklist, prompt) e um checklist de QA de 8 pontos.
- **`#00-BRIEF/Blueprint-Executar-Blog.md` (2.267 linhas) já é a cadeia de governança EVID→PROBLEM→ICP→JOURNEY→JTBD→VALUE→BRD→PRD→REQ→AC→RFC→ADR→SPEC→TEST→RELEASE→KPI→LEARNING preenchida com prosa real** (não só títulos de seção) para os domínios **BLOG, EDITORIAL, CMS, OFICINA, MAPA e VERA**. O próprio documento traz um master index com status honesto por domínio: `EDITORIAL-EVID-001=APPROVED`, `MAPA-PRD-001=APPROVED v1.0`, `VERA-PRD-001=APPROVED v01`, `BLOG-PROBLEM-001=DRAFT`, `CMS-PRD-001=DRAFT`, `OFICINA-PRD-001=DRAFT/CORPUS_DERIVED`.
- **`#17-INTEGRACOES-ECOSSISTEMA/skills/executar-safe-frameworks/catalog/frameworks.jsonl` já tem 299 Quick Frameworks catalogados** (id, nome, domínio, propósito, aliases, tags) — os "Quick Frameworks" não são um gap, são um catálogo pronto e versionado.
- **`#09-BACKLOG-EDITORIAL/planilhas/MASTER_EDITORIAL_RISCO_COGNITIVO_V1.xlsx` tem dados reais**, não só cabeçalhos: taxonomia completa (7 pilares editoriais, 8 níveis de consciência, 12 formatos de asset, 6 famílias de solução, 5 estágios de funil — 38 linhas), arquitetura de conteúdo de 9 estágios (CENA→...→CTA), 5 CTAs roteados, 12 assets planejados derivados do problema RC-PROBLEM-001, e um mapa de automação de 8 gates. `Risco_Cognitivo_Hub_Editorial_CMS_v1.0.xlsx`, por outro lado, **é um template genuinamente vazio** (só cabeçalhos em todas as 21 abas) — essa diferença importa e fica registrada nó a nó abaixo.
- **`01-Executar-Echo` já tem código real funcionando**: rotas de blog (`apps/web/app/[locale]/blog/{page,[slug]/page}.tsx`), um CMS local baseado em MDX (`packages/cms/lib/posts.ts`, `packages/cms/content/blog/*.mdx`), design tokens canônicos testados (`packages/design-tokens`, ADR-DS-001) e a skill `executar-safe-frameworks` já instalada em `skills/`.

Ou seja: **não faltam três projetos separados — falta reconciliar, redistribuir e terminar o que já existe.** Achei também 3 conflitos/lacunas reais (não inventados, verificados por leitura direta):

1. **Colisão de ID**: `RC-SOLUTION-001` nomeia duas coisas diferentes — "Conversor de Relatório" na planilha MASTER_EDITORIAL e "Scanner Interativo" no docx RC-KNW-001. Nenhuma fonte resolve isso sozinha.
2. **"3 artigos principais"** é o alvo estratégico de lançamento definido no próprio `Quickframes-Executar-Blog.md` ("mínimo de lançamento: 3 artigos + macroáreas × 2 soluções"), não uma lista de 3 arquivos já escritos. Busquei exaustivamente (`TP-002`, `TP-003`, outros IDs) em todo o corpus recebido e só o TP-001 está de fato redigido por inteiro.
3. **`IDX-RCDB-001` (Master Index + Onboarding Supabase)**, citado no Quickframes como artefato-irmão, parece viver dentro do material de Oficina que excluí por duplicidade — vale checar se há conteúdo específico do Blog ali antes de fechar essa rota como 100% duplicada.

Este plano organiza tudo isso em um grafo único de execução, do estado atual até `RELEASED + VERIFIED`.

## Convenções do grafo

Gates herdados do próprio corpus (`03_ORCHESTRATOR_WORKFLOW.txt`): `PRD_APPROVED_FOR_BUILD → IMPLEMENTATION_READY → INTEGRATION_READY → QA_READY → RELEASE_CANDIDATE_READY → RELEASED → VERIFIED`. Um nó cujo material de origem já está pronto começa mais à frente no gate — não regride fases já cumpridas.

`AUTOMATION_LEVEL`: A0 orientar · A1 preparar · A2 executar parcialmente (precisa de humano) · A3 executar integralmente · A4 executar+verificar+registrar evidência.

Rotas: **LANCAMENTO** = `D23__blueprints/Executar Blog` (blueprint, fonte canônica do domínio Blog — `DEC-006` em `01-Executar-Echo/DECISION_LOG.md`). **ECHO** = `01-Executar-Echo` (implementação real, next-forge).

## Fase 0 — Reconciliação (pré-requisito de tudo abaixo)

| ID | STATUS | DEPENDS_ON | INPUT | AÇÃO | OUTPUT | CRITÉRIO_DE_ACEITE | EVIDENCE | AUTOMATION_LEVEL | NEXT |
|---|---|---|---|---|---|---|---|---|---|
| REC-01 | IMPLEMENTATION_READY | — | `RC-KNW-001....docx` | Extrair o artigo TP-001 (texto limpo, sem o aparato de produção) para um `.md` dedicado em `LANCAMENTO/#07-ARTIGOS-PRONTOS/TP-001.md`; extrair separadamente a spec do Scanner (PRD/FRD/UX/Agent/Tech/ADR/Data/NFR/Safety/Delivery) para `#09-BACKLOG-EDITORIAL/scanner-spec/` e a spec de produção visual (VIS-01–06, infográfico, vídeo, 7 derivados, QA) para `#10-IMAGENS-CAPAS` e `#11-IMAGENS-ARTIGOS` | 3 arquivos separados substituindo 1 docx monolítico | Cada arquivo extraído bate palavra-por-palavra com a seção correspondente do docx (checagem manual de amostra) | Este plano (seção Context) | A3 | CNT-01, VIS-01, SCN-01 |
| REC-02 | GAP | REC-01 | Heading `RC-SOLUTION-001` no docx vs. linha `RC-SOLUTION-001` na `MASTER_EDITORIAL...xlsx` | **USER_ACTION_REQUIRED**: decidir se Scanner e Conversor de Relatório são a mesma solução (renomear uma), soluções irmãs com IDs distintos (`RC-SOLUTION-001`/`002`), ou se uma supersede a outra | Decisão registrada | Leo confirma a leitura correta | — | A0 | Bloqueia SCN-01, PROD-01 |
| REC-03 | GAP | — | `Quickframes-Executar-Blog.md` (menção a "TP-002", "TP-003" nunca aparece; só "3 artigos" como meta) | Nenhuma ação de produção — apenas registrar que artigos 2 e 3 não têm rascunho no corpus recebido | Nota no manifest | — | Esta investigação (busca exaustiva, 0 ocorrências de TP-002/TP-003) | A0 | CNT-02 |
| REC-04 | USER_ACTION_REQUIRED | — | `IDX-RCDB-001_MASTER_INDEX_ONBOARDING_SUPABASE.md` (visto em `EXECUTAR_OFICINA_ORGANIZADO`, excluído por duplicidade) | Confirmar com Leo se esse arquivo tem conteúdo específico do domínio Blog que não está em `unified-governance-schema-v1` (já landado em D18) antes de descartar de vez | Confirmação | — | — | A0 | Não bloqueia o resto |
| REC-05 | IMPLEMENTATION_READY | — | Todo o material redistribuído nas fases abaixo | Atualizar `LANCAMENTO/#23-MANIFEST-HANDOFF/MANIFEST.csv` e o receipt `D23-EXECUTAR-BLOG-IMPORT-001` com a nova distribuição, substituindo os `GAP.md` que se revelaram incorretos | Manifest e receipt atualizados, PR no LANCAMENTO | `validate_governance.py` + `sync_indexes.py` verdes | — | A4 | Fecha o ciclo de governança |

## Fase 1 — Conteúdo

| ID | STATUS | DEPENDS_ON | INPUT | AÇÃO | OUTPUT | CRITÉRIO_DE_ACEITE | EVIDENCE | AUTOMATION_LEVEL | NEXT |
|---|---|---|---|---|---|---|---|---|---|
| CNT-01 | IMPLEMENTATION_READY | REC-01 | TP-001 extraído | Publicar como `.mdx` real em `ECHO/packages/cms/content/blog/tp-001-fatores-de-risco-cognitivo.mdx`, frontmatter `title/description/date` no schema já existente de `posts.ts` | 1 post MDX publicável | Renderiza em `/blog/tp-001-...` localmente (`bun run dev`, app `web`) | `packages/cms/lib/posts.ts` (schema já existe) | A3 | PUB-01 |
| CNT-02 | GAP | REC-03 | — | Redigir artigos 2 e 3 do "mínimo de lançamento" — precisa de tema, pesquisa e redação novos, não existem hoje | 2 artigos | Aprovação editorial de Leo | — | A1 (posso preparar brief/estrutura usando `04_CONTENT_ARCHITECTURE` como framework, não o texto) | CNT-01 pattern repetido |
| CNT-03 | IMPLEMENTATION_READY | — | `03_ASSET_FACTORY` (12 linhas, MASTER_EDITORIAL.xlsx) | Gerar os 11 assets derivados de TP-001 ainda `Planejado` (carrossel, reel, story, prompt, HTML, imagem, PDF, prisma, newsletter, CTA, LinkedIn) — copy-base já existe nos `hook`/`core_message` da planilha | 11 peças de copy prontas para produção visual | Copy aprovado por Leo antes de virar arte final | Linhas da planilha citadas acima | A2 | VIS-02..12 |
| CNT-04 | RELEASE_CANDIDATE_READY | — | `#04-LINHA-EDITORIAL/Quickframes-Executar-Blog.md` | Nenhuma (já pronto) — usar como está: pipeline de extração/classificação de conceitos em Quick Frameworks | — | — | Arquivo já existente | — | QF-01 |

## Fase 2 — Arquitetura de informação / Taxonomia

| ID | STATUS | DEPENDS_ON | INPUT | AÇÃO | OUTPUT | CRITÉRIO_DE_ACEITE | EVIDENCE | AUTOMATION_LEVEL | NEXT |
|---|---|---|---|---|---|---|---|---|---|
| IA-01 | IMPLEMENTATION_READY | — | `07_TAXONOMIES` (38 linhas, MASTER_EDITORIAL.xlsx) | Materializar como `LANCAMENTO/#06-PILARES-TAXONOMIA/taxonomia.yaml` (7 pilares, 8 níveis de consciência, formatos, famílias, funil) — substitui o `GAP.md` | Taxonomia canônica versionada | `validate_governance.py` verde | Dados já lidos nesta investigação | A3 | CNT-*, SEO-01 |
| IA-02 | IMPLEMENTATION_READY | — | `04_CONTENT_ARCHITECTURE` (9 linhas, MASTER_EDITORIAL.xlsx) | Materializar como `LANCAMENTO/#04-LINHA-EDITORIAL/arquitetura-narrativa.yaml` (CENA→PROBLEMA→...→CTA) | Framework editorial canônico | Idem | Idem | A3 | CNT-01, CNT-02 |

## Fase 3 — UX / Journey

| ID | STATUS | DEPENDS_ON | INPUT | AÇÃO | OUTPUT | CRITÉRIO_DE_ACEITE | EVIDENCE | AUTOMATION_LEVEL | NEXT |
|---|---|---|---|---|---|---|---|---|---|
| UX-01 | PRD_APPROVED_FOR_BUILD | — | `Blueprint-Executar-Blog.md`, seção BLOG › 4. JOURNEY | Já escrito ("reconhecimento → leitura/reframe → exploração → CTA mapa/Scanner → ação/teste → retorno"); consolidar num `UX-JOURNEY.md` dedicado em `#02-UX-UI/` | Journey formal extraído do doc-mãe | Revisão de Leo | Blueprint-Executar-Blog.md linhas ~130-149 | A2 | ROUTE-01 |
| UX-02 | INTEGRATION_READY | — | `documento.html` (EXECUTAR Showroom), `natgeo-hybrid/*` (protótipo funcional completo, tokens css/json) | Nenhuma ação de pesquisa — já são protótipos utilizáveis como referência de implementação de UI | — | — | Arquivos já existentes | — | DS-01, COMP-01 |

## Fase 4 — Design System

| ID | STATUS | DEPENDS_ON | INPUT | AÇÃO | OUTPUT | CRITÉRIO_DE_ACEITE | EVIDENCE | AUTOMATION_LEVEL | NEXT |
|---|---|---|---|---|---|---|---|---|---|
| DS-01 | USER_ACTION_REQUIRED | UX-02 | `packages/design-tokens` (ECHO, ADR-DS-001, canônico) vs. brand assets + NATGEO tokens (LANCAMENTO, não reconciliados) | Abrir ADR em ECHO decidindo se/como a paleta da marca (`--yellow #ffcc00`, `--charcoal #111111` etc.) entra em `packages/design-tokens/src/primitives.ts` — decisão estrutural, já sinalizada como pendência na PR #39 | ADR +, se aprovado, tokens atualizados | Leo aprova o ADR | `apps/web/public/brand/PROVENANCE.md` (ECHO), `docs/ecosystem/traceability/D23-EXECUTAR-BLOG-IMPORT.md` | A1 até decisão; A3 depois | COMP-01 |
| DS-02 | RELEASED | — | Ícones de app, favicons, social preview já em `apps/web/public/brand/` | Nenhuma (já landado); decidir apenas se substitui `icon.png`/`apple-icon.png`/`opengraph-image.png` do template (depende de DS-01) | — | — | PR #39 (ECHO, já mergeada) | — | DS-01 |

## Fase 5 — Rotas / Componentes / CMS

| ID | STATUS | DEPENDS_ON | INPUT | AÇÃO | OUTPUT | CRITÉRIO_DE_ACEITE | EVIDENCE | AUTOMATION_LEVEL | NEXT |
|---|---|---|---|---|---|---|---|---|---|
| ROUTE-01 | RELEASED | — | `apps/web/app/[locale]/blog/{page,[slug]/page}.tsx` | Nenhuma — rota já existe e funciona | — | — | Código em produção no ECHO | — | COMP-01 |
| COMP-01 | GAP | DS-01, UX-01 | RC-KNW-001 §05 UX SPEC (Telas 01–05: Entrada/Conversação/Mapa/Fator/Plano) | Implementar os componentes do Scanner (`ScannerShell`, `SituationInput`, `AdaptiveQuestion`, `ScanProgress`, `FactorResultCard`, `RecommendationCard`, `EvidenceDrawer`, `CognitiveMap`, `FeedbackControl` — lista já nomeada na spec) em `packages/design-system` + rota nova em `apps/web` | Componentes React | Storybook + testes unitários | RC-KNW-001 §05 MVP-RC-SCAN-001 | A2 | SCN-01 |
| CMS-01 | RELEASED | — | `packages/cms/lib/posts.ts`, `packages/cms/index.ts` | Nenhuma — engine MDX já funciona (slug, frontmatter, reading time) | — | — | Código em produção no ECHO | — | CNT-01 |
| CMS-02 | GAP | CMS-01 | `Risco_Cognitivo_Hub_Editorial_CMS_v1.0.xlsx` (schema rico: `Content_ID`, pilar, rota, SEO, argumentos, evidências — 21 abas, 0 linhas de dado) | Decidir quais campos desse schema (autor, pilar, evidence_refs) valem a pena entrar no frontmatter MDX; hoje `Frontmatter`/`PostMeta` só tem `title/description/date/image` | Frontmatter estendido (se aprovado) | Leo aprova quais campos | posts.ts atual + planilha vazia como schema-referência | A1 | AUTH-01 |
| AUTH-01 | GAP | CMS-02 | `docs/executar/blog/DOC-0019__Sobre-o-autor.md` (ECHO, já landado) | Decidir exibição de autor no blog (campo `author` no frontmatter + componente de bio) | Feature de autor | Decisão de Leo + implementação | PR #39 (ECHO) | A1 |

## Fase 6 — Publicação

| ID | STATUS | DEPENDS_ON | INPUT | AÇÃO | OUTPUT | CRITÉRIO_DE_ACEITE | EVIDENCE | AUTOMATION_LEVEL | NEXT |
|---|---|---|---|---|---|---|---|---|---|
| PUB-01 | IMPLEMENTATION_READY | CNT-01 | Post MDX de TP-001 | Abrir PR no ECHO adicionando o post; `bun run dev` local para conferência visual antes do PR | PR com 1 post novo | Render local ok + revisão de Leo | — | A3 | QA-01 |

## Fase 7 — Quick Frameworks

| ID | STATUS | DEPENDS_ON | INPUT | AÇÃO | OUTPUT | CRITÉRIO_DE_ACEITE | EVIDENCE | AUTOMATION_LEVEL | NEXT |
|---|---|---|---|---|---|---|---|---|---|
| QF-01 | RELEASED | — | `executar-safe-frameworks/catalog/frameworks.jsonl` (299 frameworks), `SKILL.md`, `scripts/select_frameworks.py` | Nenhuma — catálogo e skill já completos e landados em `ECHO/skills/` | — | — | PR #39 (ECHO, mergeada) | — | — |
| QF-02 | GAP | CNT-04 | Prompt `PROMPT-EXT-001` (Quickframes doc) | Rodar o prompt de extração sobre o(s) artigo(s) publicado(s) para gerar Quick Articles derivados — só faz sentido depois de ter mais de 1 artigo publicado (CNT-02) | Quick Articles | Aprovação editorial | — | A2 | — |

## Fase 8 — Imagens / Assets / Produção visual

| ID | STATUS | DEPENDS_ON | INPUT | AÇÃO | OUTPUT | CRITÉRIO_DE_ACEITE | EVIDENCE | AUTOMATION_LEVEL | NEXT |
|---|---|---|---|---|---|---|---|---|---|
| VIS-01 | GAP | REC-01 | Spec VIS-01–06 + infográfico + roteiro de vídeo (RC-KNW-001, produção visual) | A **especificação** existe (copy, hierarquia, descrição de imagem por peça); as **imagens/vídeo em si não existem** — é produção real de mídia, não redistribuição de arquivo | 6 imagens + 1 infográfico + 1 vídeo (00:00–05:50) | QA-01 a QA-08 da própria spec (copy/hierarquia/overflow/imagem/consistência/acessibilidade/CTA) | RC-KNW-001, seção "TP-001 — VISUAL + INFOGRÁFICO + VÍDEO" | A1 (posso preparar prompts/briefs de geração; produção final decide Leo) | #10/#11 |
| VIS-02..12 | GAP | CNT-03 | Copy dos 11 derivados (`03_ASSET_FACTORY`) | Produção visual real de carrossel/reel/stories/etc. | 11 peças | Aprovação editorial | Planilha citada | A1 | QF-02 |

## Fase 9 — SEO / Structured Data

| ID | STATUS | DEPENDS_ON | INPUT | AÇÃO | OUTPUT | CRITÉRIO_DE_ACEITE | EVIDENCE | AUTOMATION_LEVEL | NEXT |
|---|---|---|---|---|---|---|---|---|---|
| SEO-01 | GAP | IA-01, CNT-01 | `13_SEO_METADADOS` (HUB_CMS.xlsx, schema vazio: `Content_ID, Slug, SEO Title, Meta description...`) + `packages/seo` (ECHO, já existe como package) | Preencher metadados reais para TP-001 usando o package `seo` já existente no ECHO (`createMetadata`, já usado em `blog/page.tsx`) | Metadados + JSON-LD do post | Lighthouse SEO ≥ 90 | `apps/web/app/[locale]/blog/page.tsx` já usa `JsonLd`/`createMetadata` | A2 | — |

## Fase 10 — Legal / Acessibilidade / Performance

| ID | STATUS | DEPENDS_ON | INPUT | AÇÃO | OUTPUT | CRITÉRIO_DE_ACEITE | EVIDENCE | AUTOMATION_LEVEL | NEXT |
|---|---|---|---|---|---|---|---|---|---|
| LEGAL-01 | GAP | — | Nenhuma fonte no corpus específica de disclaimers de conteúdo de saúde/cognição para o Blog (existe `packages/cms/content/legal/{privacy,terms}.mdx` genérico no ECHO, não editorial) | Redigir disclaimer editorial ("não é diagnóstico", já mencionado em Blueprint-Executar-Blog.md como restrição) | Bloco de disclaimer no template do post | Aprovação de Leo | Blueprint-Executar-Blog.md, restrições do domínio BLOG | A2 | — |
| A11Y-01 | INTEGRATION_READY | — | Nenhum gap específico de Blog — `packages/design-system` e CI do ECHO já rodam checks de acessibilidade genéricos | Adicionar teste de acessibilidade cobrindo a rota `/blog/[slug]` especificamente | Teste E2E | CI verde | `23. TESTES NECESSÁRIOS` (RC-KNW-001, seção Scanner, já lista "Acessibilidade" como categoria) | A2 | QA-01 |
| PERF-01 | INTEGRATION_READY | — | CI do ECHO já mede build/lint; sem budget de performance específico do Blog definido | Definir budget (LCP/CLS) para a rota de post com imagem | Budget documentado + check CI | CI verde | — | A2 | — |

## Fase 11 — Integrações do ecossistema / Mapa / Skills / VERA

| ID | STATUS | DEPENDS_ON | INPUT | AÇÃO | OUTPUT | CRITÉRIO_DE_ACEITE | EVIDENCE | AUTOMATION_LEVEL | NEXT |
|---|---|---|---|---|---|---|---|---|---|
| SCN-01 | PRD_APPROVED_FOR_BUILD | REC-02, COMP-01 | RC-KNW-001 §05 completo (PRD/FRD/UX/Agent/Tech/ADR/Data/NFR/Safety/Delivery Spec do Scanner) | Implementar o backend do Scanner (classificador determinístico, catálogos estáticos, API, sessão) — spec pronta, zero código ainda | Scanner funcional (MVP-RC-SCAN-001) | Critérios do próprio "14. DEFINITION OF DONE DO MVP" na spec | RC-KNW-001 | A2 (depende de REC-02 primeiro) | MAP-01 |
| MAP-01 | PRD_APPROVED_FOR_BUILD | SCN-01 | `Blueprint-Executar-Blog.md`, domínio MAPA (`MAPA-PRD-001 = APPROVED v1.0`) | Implementar `CognitiveMap` (mapa relacional interativo) como componente + dados do grafo de conceitos | Mapa interativo funcional | Definição de pronto do domínio MAPA no Blueprint | Blueprint-Executar-Blog.md, seção MAPA | A2 | — |
| VERA-01 | PRD_APPROVED_FOR_BUILD | — | `Blueprint-Executar-Blog.md`, domínio VERA (`VERA-PRD-001 = APPROVED v01`) | Ler a seção VERA completa (linhas 1877+, não lida em profundidade nesta investigação) e mapear contra `packages/ai`/`packages/agent-runtime` já existentes no ECHO antes de desenhar implementação | Spec revisada + plano de implementação da agente | Leo confirma leitura | Blueprint-Executar-Blog.md | A1 | — |

## Fase 12 — Analytics / Testes / QA / Release / Produção / Verificação pós-release

| ID | STATUS | DEPENDS_ON | INPUT | AÇÃO | OUTPUT | CRITÉRIO_DE_ACEITE | EVIDENCE | AUTOMATION_LEVEL | NEXT |
|---|---|---|---|---|---|---|---|---|---|
| ANA-01 | GAP | PUB-01 | `06_METRICS` (MASTER_EDITORIAL.xlsx, schema só, 0 linhas), `packages/analytics` (ECHO, PostHog, já existe) | Instrumentar eventos do post (`content_seen`, `saved`, `shared`, `tool_uses`) usando o package já existente | Eventos reais no PostHog | Evento aparece no dashboard | `packages/analytics` já existe | A2 | — |
| QA-01 | QA_READY | PUB-01, A11Y-01 | Checklist QA-01..08 da spec de produção visual + testes do ECHO | Rodar suíte de CI do ECHO (typecheck/lint/testes/drift) sobre a PR de publicação | CI verde | Todos os checks da PR passam | Já validado no processo das PRs #10/#39 anteriores | A4 | REL-01 |
| REL-01 | RELEASE_CANDIDATE_READY | QA-01, SEO-01 | PR de publicação | Merge da PR + deploy (Vercel, já configurado no ECHO) | Post em produção | URL pública acessível, Vercel `Ready` | Pipeline Vercel já usado nas PRs #10/#39 | A3 | VER-01 |
| VER-01 | não iniciado | REL-01 | Post publicado | Checar renderização, SEO, analytics e acessibilidade em produção pós-deploy | Relatório de verificação | Todos os critérios de aceite das fases anteriores confirmados ao vivo | — | A2 | Fecha o ciclo — vira `08_AUTOMATION_MAP` passo 7/8 (medir → decidir reciclar) |

## O que é GAP real (não inventar) vs. o que só faltava redistribuir

**Redistribuir (feito ou a fazer nas Fases 0–2, sem produção nova):** taxonomia, arquitetura editorial, UX journey, Quick Frameworks catalog, brand assets, design tokens de referência, PRD/spec do Scanner, artigo TP-001.

**GAP real (produção humana, não redistribuição):** artigos 2 e 3 do mínimo de lançamento (CNT-02); as peças visuais/vídeo em si, não a spec (VIS-01..12); conteúdo populado no CMS Hub (schema existe, dados não); metadados SEO por post; disclaimer legal editorial; decisão sobre a colisão `RC-SOLUTION-001`; leitura aprofundada da seção VERA.

## Verification

- Cada extração da Fase 0 conferida por amostragem manual contra o docx/planilha de origem antes de apagar/substituir qualquer `GAP.md`.
- `python scripts/sync_indexes.py` + `python scripts/validate_governance.py` verdes no LANCAMENTO após qualquer redistribuição.
- `bun run dev` (app `web`) renderizando `/blog/tp-001-...` localmente antes de abrir PR no ECHO.
- CI completo do ECHO (typecheck, lint, drift de tokens, testes, Chromatic, secrets scan) verde antes de qualquer merge, como nas PRs #10/#39.
- Nenhum nó marcado `RELEASED` ou `RELEASE_CANDIDATE_READY` sem link de evidência checável (arquivo, commit, PR ou execução de CI) — consistente com a régua de maturidade do próprio ECHO (`documentado ≠ implementado ≠ ... ≠ verificado`).
