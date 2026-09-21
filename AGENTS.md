# AGENTS — contrato operacional

Estas regras se aplicam a qualquer agente de IA que leia ou escreva neste repositório.

## MUST

1. Ler, nesta ordem: `README.md`, `AGENTS.md`, `MASTER_INDEX.md`, `_governance/ROUTES.json` e `REPOSITORY_MAP.md`.
2. Resolver a rota pelo **objetivo primário do conteúdo**, não apenas por palavras-chave.
3. Procurar conteúdo existente antes de criar um novo registro. Preferir atualizar a fonte canônica a duplicá-la.
4. Preservar autoria, fontes, links, IDs e contexto já existentes.
5. Para toda alteração feita por agente, criar um receipt em `_governance/receipts/YYYY-MM/<task-id>.md`.
6. Executar `python scripts/sync_indexes.py` e `python scripts/validate_governance.py` antes da saída.
7. Entregar mudanças em branch + Pull Request, salvo autorização explícita para escrita direta em `main`.

## MUST NOT

- Não mover, apagar ou sobrescrever conteúdo existente silenciosamente.
- Não duplicar o mesmo conteúdo canônico em duas áreas. Use referência cruzada quando houver dependência.
- Não editar manualmente `MASTER_INDEX.md` ou `REPOSITORY_MAP.md`; ambos são gerados.
- Não armazenar segredos, tokens, senhas ou credenciais no repositório.
- Não promover conteúdo ambíguo a canônico. Use `_governance/triage/` até a rota ser resolvida.

## Status de conhecimento

Para documentos Markdown de conhecimento, use quando aplicável: `draft`, `review`, `canonical` ou `deprecated`. Para código, binários e artefatos sem front matter, registre o estado no receipt.
