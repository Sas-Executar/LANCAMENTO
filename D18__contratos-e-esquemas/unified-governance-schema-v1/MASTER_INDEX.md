# MASTER INDEX · RC-UGS-001

## Identidade

| Campo | Valor |
|---|---|
| ID | RC-UGS-001 |
| Nome | RC Unified Governance Schema |
| Versão | 1.0.1 |
| Idioma | pt-BR |
| Tipo | Knowledge-to-Decision Operating Schema |
| Unidade operacional | 1 problema → N claims/evidências → N soluções → N assets ou ações → N eventos → métricas → aprendizado |
| Pivô operacional | `problem_id` |
| Pivô metodológico | `knowledge_id` |
| Pivô transversal | `object_id` |
| Estado | PROPOSED |

## Objetivo

Unificar os schemas de cognição/produto, Knowledge-to-Asset, Blog/Supabase e motor adaptativo do EXECUTAR em um contrato governado, rastreável e extensível.

## Fontes consolidadas

| ID | Fonte | Conteúdo aproveitado | Tratamento |
|---|---|---|---|
| SRC-SCHEMA-001 | `SCHEMA_RC_KNOWLEDGE_TO_ASSET_V1.yaml` | objetos, fluxos, IDs e regras | Incorporado |
| SRC-SCHEMA-002 | `SCHEMA_MATRIX_RC_KNOWLEDGE_TO_ASSET_V1.xlsx` | matriz de 90 campos e relações | Normalizado |
| SRC-SCHEMA-003 | `SCHEMA_MATRIX_RC_PRINT_CSV.zip` | views operacionais e exemplo | Incorporado |
| SRC-SCHEMA-004 | `Schema-Executar-Blog.md` | índice Supabase, entidades e gates | Reconciliado |
| SRC-SCHEMA-005 | `Schema meto e evidencia-APP-Executar.md` | epistemologia, dispatcher e validação | Incorporado |

## Camadas canônicas

| Ordem | Camada | Entidades principais | Responsabilidade |
|---:|---|---|---|
| 01 | Governance | schema_registry, object_registry, object_alias, status_event, audit_event | identidade, versão, owner e trilha |
| 02 | Knowledge | knowledge_record, taxonomy_term, claim, source, evidence | conhecimento e sustentação |
| 03 | Risk | problem, mechanism, cognitive_demand, risk | problema, exposição e impacto |
| 04 | Intervention | compensation_hypothesis, intervention, solution, feature | resposta proposta e implementação |
| 05 | Content | asset, asset_version, cta, distribution_event | produção e distribuição |
| 06 | Execution | execution_context, action, dependency, recommendation | próxima ação sob restrições |
| 07 | Validation | metric_event, experiment, learning | medição, teste e decisão |

## Contrato metodológico legado obrigatório · LEGACY_18

Os campos abaixo permanecem reconhecidos pelo schema com os nomes originais. No armazenamento, são normalizados; na leitura, são reconstruídos pela view `v_legacy_cognition_product_18`.

| Ordem | Campo original | Destino canônico |
|---:|---|---|
| 01 | `schema_version` | `schema_registry.version` |
| 02 | `row_id` | `knowledge_record.knowledge_id` |
| 03 | `funcoes_fundamentais_gestao_projetos` | `knowledge_record.management_function` |
| 04 | `funcoes_executivas_area_gestao_projetos` | `knowledge_record.executive_domain` |
| 05 | `capacidades_humanas_operacionais_exigidas` | `knowledge_record.human_capacity` |
| 06 | `funcao_deficit_tdah` | `knowledge_record.investigated_vulnerability` |
| 07 | `fonte_clinica` | `source` + relações de evidência |
| 08 | `fonte_cientifica` | `source` + relações de evidência |
| 09 | `funcao_executiva_cognitiva` | `taxonomy_term` |
| 10 | `evidencia` | `evidence` + `evidence_claim` |
| 11 | `impacto_operacional_funcao_afetada` | `knowledge_record.operational_function` |
| 12 | `impacto_operacional_mecanismo` | `knowledge_record.operational_mechanism` |
| 13 | `impacto_operacional_consequencia` | `knowledge_record.operational_consequence` |
| 14 | `impacto_operacional_compensacao` | `knowledge_record.candidate_compensation` |
| 15 | `conclusao_produto_design` | `knowledge_record.product_design_conclusion` |
| 16 | `classe_epistemica` | `object_registry.epistemic_class` |
| 17 | `estado_validacao` | `object_registry.validation_status` |
| 18 | `observacoes` | `knowledge_record.limitations` |

Regra: nenhum desses campos pode ser eliminado em migrações futuras sem versionamento major e plano formal de compatibilidade.

## Objetos e IDs

| Objeto | Padrão | Pai lógico | Regra principal |
|---|---|---|---|
| KNOWLEDGE | `RC-KNOW-NNN` | — | pesquisa validada e versionada |
| CLAIM | `RC-CLAIM-NNN` | KNOWLEDGE | uma proposição verificável |
| SOURCE | `RC-SRC-NNN` | — | referência deduplicada |
| EVIDENCE | `RC-EVID-NNN` | SOURCE | trecho/síntese com escopo explícito |
| PROBLEM | `RC-PROBLEM-NNN` | KNOWLEDGE | pivô operacional |
| MECHANISM | `RC-MECH-NNN` | PROBLEM | explica sem presumir causalidade |
| RISK | `RC-RISK-NNN` | PROBLEM | requer objetivo, contexto e exposição |
| HYPOTHESIS | `RC-HYP-NNN` | RISK | compensação testável, classe E inicial |
| INTERVENTION | `RC-INT-NNN` | HYPOTHESIS | método/tática/técnica/controle |
| SOLUTION | `RC-SOLUTION-NNN` | PROBLEM | transformação reutilizável |
| FEATURE | `RC-FEAT-NNN` | SOLUTION | implementação de produto |
| ASSET | `RC-PROBLEM-NNN-FMT-NN` | PROBLEM + SOLUTION | derivação editorial |
| CTA | `RC-CTA-NNN` | ASSET/SOLUTION | próxima ação mensurável |
| CHANNEL_EVENT | `RC-EVENT-NNN` | ASSET_VERSION | publicação imutável |
| ACTION | `RC-ACTION-NNN` | OBJECTIVE | unidade elegível de execução |
| RECOMMENDATION | `RC-REC-NNN` | EXECUTION_CONTEXT | resultado auditável do dispatcher |
| METRIC_EVENT | `RC-METRIC-NNN` | qualquer objeto | valor + unidade + janela + origem |
| EXPERIMENT | `RC-EXP-NNN` | HYPOTHESIS/FEATURE | protocolo e critério de sucesso |
| LEARNING | `RC-LEARN-NNN` | objeto medido | decisão pós-medição |

## Estados controlados

`DRAFT → PROPOSED → APPROVED → IMPLEMENTED → TESTED → PUBLISHED → MEASURED → LEARNED → ARCHIVED`

Estados não são equivalentes. Saltos exigem gate registrado. `REJECTED` pode ocorrer a partir de DRAFT, PROPOSED ou TESTED. `SUPERSEDED` encerra uma versão sem apagar seu histórico.

## Classes epistêmicas

| Classe | Significado | Pode sustentar |
|---|---|---|
| A_OBSERVED | observado diretamente | resultado/telemetria |
| B_PRIMARY | fonte primária/oficial | claim dentro do escopo |
| C_PUBLISHED | literatura publicada | claim dentro do escopo |
| D_INTERNAL | regra/arquitetura interna | requisito/decisão |
| E_INFERRED | inferência ainda não comprovada | hipótese, nunca fato |

## Relações permitidas

| De | Relação | Para | Controle |
|---|---|---|---|
| EVIDENCE | SUPPORTS / CHALLENGES | CLAIM | escopo e força obrigatórios |
| CLAIM | DESCRIBES | MECHANISM | não implica causalidade |
| PROBLEM | EXPLAINED_BY | MECHANISM | N:N |
| PROBLEM | MAY_CREATE | RISK | linguagem probabilística |
| RISK | ADDRESSED_BY | HYPOTHESIS | hipótese classe E inicial |
| HYPOTHESIS | IMPLEMENTED_BY | INTERVENTION/FEATURE | teste requerido |
| SOLUTION | GENERATES | ASSET | herda IDs por referência |
| ASSET | DISTRIBUTED_AS | CHANNEL_EVENT | versão obrigatória |
| ACTION | DEPENDS_ON | ACTION | DAG, sem ciclo |
| EVENT | PRODUCES | METRIC_EVENT | janela e origem obrigatórias |
| METRIC_EVENT | INFORMS | LEARNING | critério registrado |

`CAUSES` é bloqueada por padrão e exige claim causal, evidência adequada, revisão humana e justificativa.

## Views de leitura recomendadas

| View | Consumidor | Propósito |
|---|---|---|
| `v_problem_knowledge_pack` | agentes/editorial | problema + claims + evidências + riscos |
| `v_solution_asset_pipeline` | produção | solução → versões → publicação |
| `v_evidence_trace` | governança | decisão → hipótese → claim → evidência → fonte |
| `v_dispatcher_candidates` | EXECUTAR | ações elegíveis após hard constraints |
| `v_metric_rollup` | analytics | asset → solução → problema |
| `v_master_index` | todos | localização, estado, owner e versão |
| `v_legacy_cognition_product_18` | migração/agentes legados | leitura dos 18 campos com nomes originais |

## Gates obrigatórios

| Gate | Condição mínima |
|---|---|
| G01 Identity | ID único, tipo, versão e owner |
| G02 Provenance | origem e `created_by` registrados |
| G03 Epistemic | classe epistêmica válida |
| G04 Evidence | claim promovida possui suporte ou ressalva explícita |
| G05 Inference | feature não é apresentada como conclusão científica |
| G06 Asset | problem_id, solution_id, versão e CTA primário |
| G07 Publish | tracking, canal, data e URL/evento |
| G08 Metric | unidade, janela, origem e objeto-alvo |
| G09 Learning | decisão, racional e próxima revisão |
| G10 Dispatcher | dependências, WIP, capacidade e restrições antes do ranking |

## Consulta inicial para agentes

1. Localizar o objeto em `v_master_index`.
2. Ler `object_type`, `status`, `version`, `owner_id` e `canonical_uri`.
3. Seguir relações tipadas; não inferir por texto semelhante.
4. Verificar claims/evidências antes de gerar decisão, feature ou asset.
5. Registrar saída, métricas esperadas e handoff pelo protocolo.
