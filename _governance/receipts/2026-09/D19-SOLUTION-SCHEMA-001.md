# Change Receipt — D19-SOLUTION-SCHEMA-001

- **task_id:** D19-SOLUTION-SCHEMA-001
- **date:** 2026-09-21
- **primary_route:** D19 — `D19__assets-e-cta`
- **classification:** create + update
- **request:** consolidar 3PN3, 5W2H invisível, matriz de 18 campos, controle interno de 24 campos, ficha interna, evidências e exemplo prático em um Super Schema YAML padrão para a loja.
- **source:** solicitação do mantenedor em conversa.
- **status:** partial

## Arquivos criados

- `D19__assets-e-cta/solution-store/README.md`
- `D19__assets-e-cta/solution-store/SUPER_SCHEMA_SOLUTION.yaml`
- `D19__assets-e-cta/solution-store/obsidian-editorial/solution.yaml`
- `D19__assets-e-cta/solution-store/obsidian-editorial/TUTORIAL_PUBLICO.md`
- `D19__assets-e-cta/solution-store/obsidian-editorial/EVIDENCIAS.md`
- `D19__assets-e-cta/solution-store/SCORING_METHODOLOGY.md`
- `_governance/receipts/2026-09/D19-SOLUTION-SCHEMA-001.md`

## Decisões

1. D19 foi usado como rota primária por instrução explícita do mantenedor.
2. O Super Schema é genérico; Obsidian Editorial é a primeira instância preenchida.
3. 3PN3 permanece público.
4. 5W2H permanece invisível ao usuário e serve como validação interna.
5. A matriz de 18 campos foi preservada com os mesmos nomes.
6. O controle interno contém exatamente os 24 campos definidos anteriormente.
7. Evidência clínica/científica foi separada de inferências de design.
8. Schema elevado para versão 1.1 com três best-use cases e três riscos/anti-use cases.
9. Adicionado SEUS-v0.1 para scoring 0–10 baseado em métricas observáveis.
10. Dimensões sem evidência permanecem `null`; ausência de dados nunca é convertida em zero.
11. Score agregado fica bloqueado até calibração e versionamento de pesos, benchmarks e limiares de confiança.

## Fontes externas registradas

- NIMH
- PubMed / Willcutt et al.
- PMI
- Obsidian Help

## Validação

- Revisão estrutural: executada durante a criação.
- `python scripts/sync_indexes.py`: não executável pelo conector GitHub; será verificado pelo workflow do Pull Request.
- `python scripts/validate_governance.py`: não executável pelo conector GitHub; será verificado pelo workflow do Pull Request.
- Índices gerados não foram editados manualmente.

## Handoff

Branch: `feat/d19-solution-super-schema`

A conclusão passa para `completed` somente após a validação do workflow de governança.
