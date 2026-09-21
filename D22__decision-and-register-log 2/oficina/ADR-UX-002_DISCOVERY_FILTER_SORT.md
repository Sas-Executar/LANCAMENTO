---
status: canonical
decision_id: ADR-UX-002
route: D22
depends_on: D11
---

# ADR-UX-002 — Discovery, filtro e ordenação

## Contexto

As referências apresentam busca, filtro por categoria e ordenação próximos ao contexto da listagem, com categorias capazes de exibir contagens.

## Decisão

Toda superfície de discovery da Oficina suporta **Search + Filter + Sort**. Categorias usam IDs normalizados e podem apresentar contagens derivadas do índice. Uma solução pode pertencer a múltiplas áreas, embora o filtro possa manter uma seleção primária por vez na interface inicial.

## Consequências

Contagens são dados derivados e não devem ser gravadas como verdade canônica dentro de cada solução. Filtros cruzados futuros podem usar área, profissão, tarefa, artefato e product type.
