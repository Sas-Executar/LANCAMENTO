# Relatório de Validação

## Cobertura

| Verificação | Resultado |
|---|---|
| 90 campos da matriz mapeados | PASS |
| 18 campos metodológicos preservados por nome | PASS |
| View de compatibilidade `LEGACY_18` definida | PASS |
| 5 fontes do pacote indexadas | PASS |
| Epistemologia A–E preservada | PASS |
| Problema como pivô operacional | PASS |
| Knowledge record como pivô metodológico | PASS |
| Assets versionados separadamente | PASS |
| Métricas convertidas em eventos | PASS |
| Dispatcher separado de scoring | PASS |
| Relação causal protegida | PASS |
| Histórico append-only para eventos | PASS |

## Decisões de consolidação

1. `row_id` passa a `knowledge_id`; o ID legado pode permanecer como alias.
2. Evidência e fonte deixam de ser texto repetido e viram objetos deduplicados.
3. A compensação candidata vira hipótese explícita antes de solução/feature.
4. `channel`, datas e URL pertencem ao evento de distribuição, não ao asset.
5. `views` a `problems_submitted` viram eventos métricos com unidade, janela e origem.
6. Status pertence ao objeto ou versão correta; não é inferido pela existência de dados.
7. O grafo genérico complementa, mas não substitui, tabelas tipadas e FKs.
8. O dispatcher registra snapshots de elegibilidade e ranking para auditoria.

## Conflitos resolvidos

| Tema | Risco anterior | Resolução |
|---|---|---|
| `row_id` vs `problem_id` | dois pivôs concorrentes | pivôs por camada + `object_id` transversal |
| Evidência → feature | salto epistemológico | hipótese intermediária obrigatória |
| Asset + publicação | mistura de conteúdo e evento | `asset_version` + `distribution_event` |
| Métricas em colunas | sobrescrita e ausência de período | `metric_event` append-only |
| Hard constraints + score | recomendação inviável | filtrar antes de ranquear |
| Relações livres | semântica inconsistente | vocabulário controlado e gate para `CAUSES` |

## Pendências antes de produção

- Definir owners reais por domínio.
- Aprovar os vocabulários controlados e transições de estado.
- Confirmar a estratégia de autenticação da read layer.
- Testar migração com cópia de dados reais em homologação.
- Implementar detecção de ciclo para `action_dependency` por trigger ou serviço transacional.
- Definir retenção, anonimização e classificação de dados pessoais.
- Validar o DDL com a versão e extensões exatas do ambiente Supabase.

## Recomendação

Adotar esta versão como `PROPOSED`, executar uma migração piloto de `RC-PROBLEM-001` e promover para `APPROVED` somente após reconciliação de contagens, links de evidência, estados e permissões.
