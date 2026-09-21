---
status: canonical
task_id: D19-SOLUTION-SCHEMA-001
route: D19
---

# Solution Store — padrão de solução

Este diretório concentra o padrão reutilizável para ferramentas publicadas na loja.

## Arquitetura

```text
SUPER_SCHEMA_SOLUTION
├── identidade
├── camada pública
│   ├── 3PN3
│   ├── tutorial
│   └── exemplo prático
├── contrato da ferramenta
├── 5W2H invisível
├── matriz de evidências — 18 campos
├── controle interno — 24 campos
├── ficha interna expandida
├── governança
├── qualidade e testes
└── rastreabilidade
```

## Regra central

- **3PN3** é a interface visível do tutorial.
- **5W2H** é um checklist interno e invisível de completude instrucional.
- **18 campos** formam a matriz epistemológica/operacional associada.
- **24 campos** formam o controle interno mínimo da solução.
- O **Super Schema** é o contrato padrão; cada ferramenta é uma instância preenchida.

## Arquivos

- `SUPER_SCHEMA_SOLUTION.yaml` — contrato canônico reutilizável.
- `obsidian-editorial/solution.yaml` — primeira instância preenchida.
- `obsidian-editorial/TUTORIAL_PUBLICO.md` — camada visível ao usuário.
- `obsidian-editorial/EVIDENCIAS.md` — fontes e limites epistemológicos.
