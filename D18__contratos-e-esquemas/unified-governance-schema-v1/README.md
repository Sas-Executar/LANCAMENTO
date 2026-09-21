# RC Unified Governance Schema v1.0.1

Contrato integrado para transformar conhecimento, evidência e risco em soluções, assets editoriais e recomendações executáveis, preservando proveniência e aprendizado.

## Decisão arquitetural

O sistema possui **um contrato canônico**, não uma tabela única. Os 90 campos da matriz de origem foram distribuídos por entidades coesas. Todas as entidades compartilham:

- ID canônico imutável;
- versão e estado explícitos;
- classe epistêmica;
- proveniência;
- histórico não destrutivo;
- relações tipadas;
- métricas como eventos, nunca como colunas sobrescritas.

Os 18 campos metodológicos originais permanecem disponíveis com seus nomes exatos por meio da camada de compatibilidade `LEGACY_18` e da view `v_legacy_cognition_product_18`.

## Fluxo canônico

`EVIDENCE → CLAIM → MECHANISM → RISK → COMPENSATION_HYPOTHESIS → SOLUTION/FEATURE → ASSET/ACTION → EVENT → METRIC/TEST → LEARNING → DECISION`

## Arquivos

| Arquivo | Função |
|---|---|
| `MASTER_INDEX.md` | Porta de entrada humana e inventário canônico |
| `schema/UNIFIED_SCHEMA.yaml` | Contrato legível por agentes e validadores |
| `db/001_unified_schema.sql` | DDL PostgreSQL/Supabase proposto |
| `mapping/LEGACY_FIELD_MAP.csv` | Migração dos 90 campos para o modelo normalizado |
| `governance/ENTRY_EXIT_PROTOCOL.md` | Protocolo de entrada, alteração e saída |
| `examples/RC-PROBLEM-001.yaml` | Exemplo mínimo rastreável |
| `VALIDATION_REPORT.md` | Cobertura, decisões e pendências |

## Regras de uso

1. Começar sempre por `MASTER_INDEX.md`.
2. Criar o registro no `object_registry` antes do objeto especializado.
3. Reutilizar IDs existentes; aliases servem apenas para busca.
4. Separar evidência, inferência, decisão de produto e resultado observado.
5. Filtrar restrições duras antes de ranquear ações.
6. Não promover estados sem evidência do gate correspondente.
7. Atualizações criam versão/evento; não apagam histórico.

## Ordem de implantação

1. Aplicar o DDL em ambiente de homologação.
2. Importar taxonomias e fontes.
3. Migrar os 18 campos legados de cognição/produto.
4. Migrar problema, solução e assets.
5. Importar eventos e métricas com período e origem.
6. Executar gates de integridade e somente então promover.
