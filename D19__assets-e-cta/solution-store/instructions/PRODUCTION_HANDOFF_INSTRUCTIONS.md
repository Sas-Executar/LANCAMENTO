---
status: canonical
route: D19
instruction_id: PRODUCTION-HANDOFF-INSTRUCTIONS-001
---

# Production Handoff — instrução canônica

Esta instrução define quando e como uma solução preenchida deve virar o bundle oficial de saída para **produção, divulgação e submissão na loja**.

## Quando gerar

Gerar o bundle quando a solução atingir `READY_FOR_PRODUCTION` e os blocos obrigatórios do `SUPER_SCHEMA_SOLUTION` estiverem preenchidos. O bundle é um **snapshot imutável**: mudanças materiais posteriores exigem uma nova versão do bundle.

## Fonte

A fonte de verdade é a instância `solution.yaml`, complementada pelos registries de taxonomia, evidências, tutorial e produção comercial. Não copiar manualmente valores divergentes.

## Ordem de validação

1. Validar identidade e versão.
2. Validar 3PN3 e tutorial.
3. Validar três melhores casos de uso e três riscos/overkill.
4. Validar matriz de evidências e controle de claims.
5. Resolver áreas, profissões, tipos de tarefa e tipos de artefato pelos registries canônicos.
6. Preparar `store_submission`.
7. Preparar produção comercial quando aplicável.
8. Gerar o bundle conforme `PRODUCTION_HANDOFF_SCHEMA.yaml`.
9. Executar QA e registrar todos os blockers.
10. Somente marcar `publish_ready: true` quando URL/CTA, licenças, assets, privacidade, claims e aprovação final estiverem liberados.

## Taxonomia e rastreio

Cada solução deve usar IDs canônicos. A indexação deve permitir cruzamentos por:

`área × profissão × tarefa × artefato × contexto × tecnologia`

Exemplo:

`area:legal + profession:lawyer + task:document + artifact:contract`

Profissões não devem ser associadas apenas por semelhança temática; cada vínculo precisa de caso de uso ou justificativa registrada.

## Regra de evidência

Nenhuma métrica pode ser inventada para completar marketing ou score. Medições ausentes permanecem `null`. Claims comerciais devem apontar para capability, teste, fonte ou evidência existente.

## Saída obrigatória

O arquivo final deve seguir o padrão:

`<SOLUTION_SLUG>_PRODUCTION_HANDOFF_BUNDLE.yaml`

e conter os cinco documentos definidos em `PRODUCTION_HANDOFF_SCHEMA.yaml`.

## Gate de publicação

`build_ready` e `render_ready` não implicam `publish_ready`. Publicação é um gate separado.
