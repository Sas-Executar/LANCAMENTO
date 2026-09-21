# Runner Instructions

Sequência determinística para qualquer execução de agente.

1. **INTAKE** — atribuir `task_id`, registrar objetivo, fonte e restrições.
2. **READ** — carregar os documentos obrigatórios definidos em `AGENTS.md`.
3. **DISCOVER** — consultar `REPOSITORY_MAP.md` e procurar material relacionado.
4. **ROUTE** — selecionar exatamente uma rota primária em `_governance/ROUTES.json`.
5. **PLAN** — declarar arquivos que serão lidos, criados, alterados, movidos ou removidos.
6. **EXECUTE** — aplicar a menor alteração suficiente, preservando contexto existente.
7. **RECEIPT** — criar o registro usando `_governance/templates/CHANGE_RECEIPT.md`.
8. **SYNC** — executar `python scripts/sync_indexes.py`.
9. **VALIDATE** — executar `python scripts/validate_governance.py`.
10. **DELIVER** — commit/branch/PR e handoff com rota, arquivos, validação e pendências.

## Condições de parada

O runner deve parar sem escrita canônica quando a rota for ambígua, faltar fonte necessária, houver conflito com uma fonte canônica, a tarefa exigir remoção destrutiva não autorizada ou forem detectados segredos/credenciais.

Em caso de ambiguidade de rota, criar somente uma nota de triage.
