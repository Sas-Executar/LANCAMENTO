# Entry Protocol

Normaliza como uma nova solicitação, arquivo, pesquisa ou resultado entra no repositório.

## Entrada mínima

- `task_id` único.
- origem da solicitação ou fonte.
- objetivo esperado.
- formato de saída.
- restrições relevantes.

## Procedimento

1. Ler os controles obrigatórios definidos em `AGENTS.md`.
2. Consultar `REPOSITORY_MAP.md` para evitar duplicação.
3. Identificar a finalidade primária do conteúdo.
4. Resolver a rota em `_governance/ROUTES.json`.
5. Ler os arquivos relacionados já existentes.
6. Classificar como `create`, `update`, `move`, `deprecate` ou `triage`.
7. Definir a lista de arquivos afetados antes da escrita.

## Ambiguidade

Se duas ou mais rotas forem plausíveis e não houver critério suficiente, não duplicar. Registrar `_governance/triage/<task-id>.md` e aguardar resolução.

## Cross-domain

Trabalho multiárea deve ter uma rota primária. As demais são dependências ou referências e devem aparecer no receipt.
