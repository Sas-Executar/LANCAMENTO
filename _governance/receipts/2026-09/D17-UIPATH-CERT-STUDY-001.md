---
task_id: D17-UIPATH-CERT-STUDY-001
agent: ChatGPT
timestamp_utc: 2026-09-24T13:46:00Z
primary_route: D17
status: partial
---

# Change Receipt

## Intake
- origem: solicitação do mantenedor em conversa
- objetivo: estruturar plano profissional de estudo e certificação UiPath na branch estudos, com metodologia assistida por IA, simulados e gates de prontidão
- restrições: 4h/dia de segunda a sexta; treinamento pago OMG fora do escopo; priorizar treinamentos oficiais gratuitos; dois exames Associate previstos em US$300 + impostos

## Routing
- rota primária: D17__emprego-e-portfolio
- rotas relacionadas: D12__engenharia
- justificativa: o objetivo primário é capacitação e credencial profissional; automação e agentic engineering são competências técnicas relacionadas

## Changes
- arquivos lidos: README.md; AGENTS.md; MASTER_INDEX.md; _governance/ROUTES.json; REPOSITORY_MAP.md; _governance/ENTRY_PROTOCOL.md; _governance/EXIT_PROTOCOL.md; _governance/templates/CHANGE_RECEIPT.md
- arquivos criados: D17__emprego-e-portfolio/uipath/PLANO_CERTIFICACAO_UIPATH.md; _governance/receipts/2026-09/D17-UIPATH-CERT-STUDY-001.md
- arquivos alterados: pendente de sincronização de índices
- arquivos movidos/removidos: nenhum

## Decisions
- decisões relevantes: usar nomes oficiais Automation Developer Associate e Agentic Automation; tratar Advanced Process Orchestration como camada interna, sem confundir com Automation Developer Professional; gate interno conservador de 85%
- conteúdo canônico afetado: novo plano de capacitação profissional em D17

## Validation
- `python scripts/sync_indexes.py`: pendente
- `python scripts/validate_governance.py`: pendente

## Handoff
- pendências: executar sincronização/validação, criar issue de acompanhamento e PR
- próximo passo: validar branch estudos e publicar handoff
