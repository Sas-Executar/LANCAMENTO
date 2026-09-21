# Governance

## Objetivo

Manter o repositório navegável, auditável e consistente mesmo quando várias pessoas e agentes operam em paralelo.

## Hierarquia de autoridade

1. Instrução explícita do mantenedor para a tarefa.
2. `AGENTS.md` e este diretório de governança.
3. `_governance/ROUTES.json` para roteamento.
4. Convenções existentes no arquivo ou projeto afetado.

## Princípios

- **Uma fonte canônica:** conteúdo principal vive em uma rota; outras áreas referenciam.
- **Mudança rastreável:** toda escrita de agente gera receipt e histórico Git.
- **Rota antes de escrita:** conteúdo sem destino confiável permanece em triage.
- **Mudança mínima:** alterar apenas o necessário para a tarefa.
- **Sem perda silenciosa:** deleções, renomes e substituições precisam ser explicitados no receipt.
- **Índices derivados:** `MASTER_INDEX.md` e `REPOSITORY_MAP.md` são gerados por script.

## Modelo de concorrência

Cada tarefa de agente usa uma branch própria no padrão `agent/<agent-origem>/<task-id>`. Pull Requests são a unidade normal de integração.

## Evolução das rotas

Adicionar, renomear ou desativar uma área exige atualização de `_governance/ROUTES.json`, sincronização dos índices, validação e registro no receipt.

## Metadados de conhecimento

Markdown canônico pode usar:

```yaml
---
record_id: <id-estavel>
route: D00
status: draft|review|canonical|deprecated
created_at: YYYY-MM-DD
updated_at: YYYY-MM-DD
source: <origem ou referência>
---
```

Para código, configuração e binários, a proveniência deve constar no receipt.
