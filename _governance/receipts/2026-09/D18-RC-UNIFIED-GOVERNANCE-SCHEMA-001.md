---
task_id: D18-RC-UNIFIED-GOVERNANCE-SCHEMA-001
agent: Claude
timestamp_utc: 2026-09-21T11:10:00Z
primary_route: D18
status: completed
---

# Change Receipt

## Intake
- origem: `DOCS/unified-governance-schema-v1/` dentro do `DOCS.zip` enviado pelo mantenedor (mesmo upload da task `D23-EXECUTAR-BLOG-IMPORT-001`).
- objetivo: registrar o contrato de schema unificado (RC Unified Governance Schema v1.0.1) na rota de contratos/esquemas, sem promovê-lo a canônico.
- restrições: manter o estado `PROPOSED` declarado pelo próprio pacote; não aplicar o DDL em nenhum ambiente; não duplicar em D23.

## Routing
- rota primária: D18 — Contratos e esquemas, `D18__contratos-e-esquemas/unified-governance-schema-v1`.
- rotas relacionadas: D23 (um dos 5 insumos do schema é `Schema-Executar-Blog`/`Schema meto e evidencia-APP-Executar`, materializado em `D23__blueprints/Executar Blog/#01-ADR`); D19 (Oficina RC Knowledge-to-Asset, já canônico, um dos insumos consolidados).
- justificativa: o pacote é um contrato de dados (schema YAML, DDL SQL, mapeamento de campos legados, protocolo de entrada/saída), não conteúdo editorial — pertence a D18 pela definição de escopo em `_governance/ROUTES.json`.

## Changes
- arquivos lidos: `unified-governance-schema-v1/README.md`, `MASTER_INDEX.md`, `VALIDATION_REPORT.md` (íntegra).
- arquivos criados: `D18__contratos-e-esquemas/unified-governance-schema-v1/{README.md, MASTER_INDEX.md, VALIDATION_REPORT.md, MANIFEST.sha256, schema/UNIFIED_SCHEMA.yaml, db/001_unified_schema.sql, mapping/LEGACY_FIELD_MAP.csv, governance/ENTRY_EXIT_PROTOCOL.md, examples/RC-PROBLEM-001.yaml}` (9 arquivos, landing verbatim).
- arquivos alterados: nenhum arquivo canônico existente.
- arquivos movidos/removidos: nenhum.

## Decisions
- decisões relevantes:
  1. Landing verbatim, sem alterações de conteúdo — o pacote já vem com validação própria (`VALIDATION_REPORT.md`).
  2. Estado mantido como `PROPOSED` (declarado no `MASTER_INDEX.md` e reforçado na recomendação final do `VALIDATION_REPORT.md`: promover a `APPROVED` só após migração piloto de `RC-PROBLEM-001` e reconciliação). Não promovido a `canonical`.
  3. Nenhuma migração/DDL foi executada — `db/001_unified_schema.sql` é apenas o contrato proposto, não aplicado a nenhum banco.
- conteúdo canônico afetado: nenhum. Este schema é um contrato proposto, coexistindo com os schemas já canônicos da Oficina (D19) e do Blog (D23) até uma decisão explícita do mantenedor sobre migração.

## Pendências
- Definir owners reais por domínio (listado no próprio `VALIDATION_REPORT.md`).
- Aprovar vocabulários controlados e transições de estado.
- Testar migração com dados reais em homologação antes de qualquer promoção a `APPROVED`.

## Validation
- `python scripts/sync_indexes.py`: PASS (ver saída no PR).
- `python scripts/validate_governance.py`: PASS (ver saída no PR).

## Handoff
- pendências: decisão do mantenedor sobre iniciar a migração piloto (`RC-PROBLEM-001`) e sobre owners por domínio.
- próximo passo: revisão via PR junto com `D23-EXECUTAR-BLOG-IMPORT-001` (mesma branch).
