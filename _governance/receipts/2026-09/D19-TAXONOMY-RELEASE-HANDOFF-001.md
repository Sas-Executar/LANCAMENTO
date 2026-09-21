# Change Receipt — D19-TAXONOMY-RELEASE-HANDOFF-001

- **task_id:** D19-TAXONOMY-RELEASE-HANDOFF-001
- **date:** 2026-09-21
- **primary_route:** D19 — `D19__assets-e-cta`
- **classification:** update + create
- **source:** solicitação explícita do mantenedor.
- **objective:** elevar o macro schema, instituir taxonomia de áreas/profissões/tarefas/artefatos e transformar o YAML bundle em saída oficial para produção, divulgação e submissão na loja.
- **status:** partial

## Decisões

1. `SUPER_SCHEMA_SOLUTION` elevado para v1.3.
2. Taxonomia de áreas baseada nas duas interfaces fornecidas; imagem Clerk explicitamente excluída.
3. Preservadas categorias originais e adicionados IDs estáveis para 15 áreas normalizadas.
4. Profissões são dimensão separada de área; estudante é tratado como `learner_role`.
5. Associação solução↔profissão exige use case ou justificativa.
6. Nodes tipados seguem `<dimension>:<canonical_id>`.
7. Criados contratos separados para store submission e production/release handoff.
8. Bundle de handoff é snapshot imutável; alteração material exige nova versão.
9. `publish_ready` permanece independente de `build_ready` e `render_ready`.
10. Obsidian Editorial recebe classificação preenchida e submissão de loja em estado pré-publicação.

## Arquivos planejados

- `D19__assets-e-cta/solution-store/SUPER_SCHEMA_SOLUTION.yaml`
- `D19__assets-e-cta/solution-store/PRODUCTION_HANDOFF_SCHEMA.yaml`
- `D19__assets-e-cta/solution-store/STORE_SUBMISSION_SCHEMA.yaml`
- `D19__assets-e-cta/solution-store/taxonomy/AREAS.yaml`
- `D19__assets-e-cta/solution-store/taxonomy/PROFESSIONS.yaml`
- `D19__assets-e-cta/solution-store/taxonomy/TASK_TYPES.yaml`
- `D19__assets-e-cta/solution-store/taxonomy/ARTIFACT_TYPES.yaml`
- `D19__assets-e-cta/solution-store/taxonomy/TAGGING_RULES.yaml`
- `D19__assets-e-cta/solution-store/instructions/PRODUCTION_HANDOFF_INSTRUCTIONS.md`
- `D19__assets-e-cta/solution-store/obsidian-editorial/solution.yaml`
- `D19__assets-e-cta/solution-store/obsidian-editorial/production/OBSIDIAN_EDITORIAL_PRODUCTION_HANDOFF_BUNDLE.yaml`
- `D19__assets-e-cta/solution-store/README.md`
- `REPOSITORY_MAP.md`
- `_governance/receipts/2026-09/D19-TAXONOMY-RELEASE-HANDOFF-001.md`

## Validação

- Governança: pendente do workflow do PR.
- Bundle: será gerado após estabilização dos arquivos canônicos nesta branch.
- Índices: serão sincronizados antes do PR final.

## Handoff

Branch: `feat/d19-taxonomy-release-handoff`.
