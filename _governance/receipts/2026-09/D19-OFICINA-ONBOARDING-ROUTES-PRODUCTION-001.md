# Change Receipt — D19-OFICINA-ONBOARDING-ROUTES-PRODUCTION-001

- **task_id:** D19-OFICINA-ONBOARDING-ROUTES-PRODUCTION-001
- **date:** 2026-09-21
- **primary_route:** D19 — `D19__assets-e-cta`
- **cross_domain_dependencies:** D11 (UX/Design System), D12 (Engenharia), D22 (ADRs), D23 (Blueprints)
- **classification:** create + update
- **source:** solicitação explícita do mantenedor.
- **objective:** criar onboarding canônico para resolução de rotas, handoffs entre áreas e produção ponta a ponta da Oficina.
- **status:** partial

## Entregas

- `D19__assets-e-cta/solution-store/ONBOARDING_ROUTES_PRODUCTION.md`
- `D19__assets-e-cta/solution-store/ONBOARDING_ROUTES_PRODUCTION.yaml`
- atualização de `OFICINA_PRODUCTION_RUNBOOK.yaml`
- atualização do README da Solution Store
- link de entrada operacional no README de D11/Oficina

## Modelo de rotas

- D11: UX, wireframes e Design System.
- D12: engenharia, componentes, render e integração.
- D19: rota primária da solução, schema, bundle, assets, store submission e release.
- D22: ADRs e decisões formais.
- D23: blueprints reutilizáveis.
- Demais rotas: fontes canônicas de domínio, referenciadas por D19 sem duplicação.

## Pipeline documentado

`SOURCE → INGESTED → CLASSIFIED → SCHEMA_COMPLETE → BUNDLE_READY → IN_EDITORIAL_PRODUCTION → ASSETS_READY → QA_READY → STORE_READY → PUBLISHED`

## Regra central

Roteamento usa `primary-purpose`. Handoffs usam referências; não copiar fontes canônicas entre rotas.

## Validação

- índices: pendente de sincronização
- governance workflow: pendente do PR
- merge: autorizado previamente pelo mantenedor após workflow verde

## Handoff

Branch: `feat/oficina-onboarding-routes-production`.
