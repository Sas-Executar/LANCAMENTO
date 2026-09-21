# LANCAMENTO

Repositório multiárea operado por pessoas e múltiplos agentes de IA. A raiz funciona como **control plane**: define como localizar, criar, atualizar, validar e entregar informação sem perder rastreabilidade.

## Leitura obrigatória antes de qualquer escrita

1. `README.md` — visão geral e ordem de leitura.
2. `AGENTS.md` — contrato obrigatório para agentes.
3. `MASTER_INDEX.md` — índice humano das áreas.
4. `_governance/ROUTES.json` — registro canônico e legível por máquina das rotas.
5. `REPOSITORY_MAP.md` — inventário atual dos arquivos.
6. `_governance/ENTRY_PROTOCOL.md` e `_governance/EXIT_PROTOCOL.md`.

## Fluxo operacional

`entrada → classificação → resolução de rota → inspeção → execução → validação → receipt → atualização dos índices → PR/merge → handoff`

## Fontes de verdade

- **Roteamento:** `_governance/ROUTES.json`.
- **Índice humano:** `MASTER_INDEX.md` — gerado a partir do registro de rotas.
- **Inventário:** `REPOSITORY_MAP.md` — gerado a partir do estado do repositório.
- **Regras de agentes:** `AGENTS.md` + `_governance/*`.
- **Auditoria:** histórico Git + `_governance/receipts/`.

## Política de escrita

Agentes devem trabalhar em branch própria e entregar por Pull Request. Escrita direta em `main` fica reservada a bootstrap, automação autorizada ou instrução explícita de mantenedor. Nenhum agente deve criar conteúdo canônico sem rota resolvida.

Para sincronizar os índices e validar a governança:

```bash
python scripts/sync_indexes.py
python scripts/validate_governance.py
```
