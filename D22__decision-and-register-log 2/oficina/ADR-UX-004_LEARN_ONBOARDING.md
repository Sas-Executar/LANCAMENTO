---
status: canonical
decision_id: ADR-UX-004
route: D22
depends_on: D11
---

# ADR-UX-004 — Learn, roles e onboarding

## Contexto

As referências mostram uma área de aprendizagem separada da loja e navegação por papel profissional.

## Decisão

Manter **Learn** como superfície conectada, porém distinta de Store. Browse by role é alimentado pelo registry `PROFESSIONS.yaml`. O onboarding começa em Start e segue cinco passos: o que é, o que precisa, como começar, exemplo e próxima ação.

## Consequências

Profissões deixam de ser tags soltas e passam a sustentar descoberta, aprendizagem e recomendações. A associação solução↔profissão continua exigindo caso de uso ou justificativa.
