---
task_id: D17-UIPATH-CERT-STUDY-002
agent: ChatGPT
timestamp_utc: 2026-09-24T00:00:00Z
primary_route: D17
status: completed
---

# Change Receipt

## Intake
- origem: solicitação do mantenedor
- objetivo: transformar o plano UiPath em agenda diária imprimível de três colunas, com setup inicial, rotina de estudo, testes e prompts de IA
- restrições: início 25/09/2026; primeiro dia 1h setup + 3h curso; demais dias 30m warm-up + 4h conteúdo/prática + 30m assimilação

## Routing
- rota primária: D17__emprego-e-portfolio
- rotas relacionadas: D12__engenharia
- justificativa: plano de capacitação/certificação profissional com prática técnica

## Changes
- arquivos criados: D17__emprego-e-portfolio/uipath/PLANO_DIARIO_IMPRIMIVEL_AUTOMATION_DEVELOPER_ASSOCIATE.md
- arquivos alterados: REPOSITORY_MAP.md
- fontes: UiPath Academy, UiPath Documentation e UiPath Certification FAQ oficiais

## Decisions
- conclusão das 45h20 recalculada para 12/10/2026 porque 25/09 reserva 1h para setup e 3h para conteúdo
- simulados A/B/C definidos para 15/10, 19/10 e 21/10
- benchmark oficial em 22/10 e Gate final em 23/10
- agendamento do exame condicionado ao Gate verde

## Validation
- índices: sincronizados para os novos arquivos
- governança: validação via workflow do PR após commit

## Handoff
- próximo passo: executar setup de 25/09 e acompanhar issue #12 / PR #13
