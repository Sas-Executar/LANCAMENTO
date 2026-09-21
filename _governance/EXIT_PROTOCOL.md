# Exit Protocol

Uma execução só está concluída quando conteúdo, rastreabilidade e índices estão coerentes.

## Checklist obrigatório

1. Confirmar que cada arquivo alterado está na rota correta.
2. Confirmar que nenhuma fonte canônica foi duplicada.
3. Registrar mudanças, decisões, fontes e pendências no receipt.
4. Executar `python scripts/sync_indexes.py`.
5. Executar `python scripts/validate_governance.py`.
6. Revisar o diff e verificar que não há alteração incidental.
7. Entregar por branch + Pull Request, salvo exceção autorizada.

## Handoff mínimo

Informar `task_id`, rota primária, arquivos modificados, receipt, resultado da validação, status (`completed`, `partial`, `blocked`) e próximos passos.

`completed` somente quando a validação estiver verde e a informação puder ser localizada por `MASTER_INDEX.md` → rota → `REPOSITORY_MAP.md`.
