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
├── classificação / taxonomia
│   ├── áreas
│   ├── profissões
│   ├── tipos de tarefa
│   └── tipos de artefato
├── camada pública
│   ├── 3PN3
│   ├── tutorial
│   └── exemplo prático
├── contrato da ferramenta
├── 5W2H invisível
├── matriz de evidências — 18 campos
├── controle interno — 24 campos
├── ficha interna expandida
├── adequação de uso
│   ├── 3 melhores casos de uso
│   └── riscos / overkill
├── scoring baseado em evidência
├── produção comercial
│   ├── briefing de animação
│   ├── roteiro temporal
│   ├── direção visual
│   └── pipeline de render determinístico
├── store submission
├── production/release handoff
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
- A classificação usa registries canônicos para **áreas, profissões, tarefas e artefatos**, permitindo cruzamentos por nodes tipados.
- O vínculo com profissão deve ter caso de uso ou justificativa; não é inferido apenas pela categoria da solução.
- O **Production Handoff Bundle** é a saída oficial quando a solução está pronta para produção, divulgação e submissão na loja.
- Cada solução deve registrar **3 melhores casos de uso** e **3 riscos/anti-use cases**.
- O **SEUS (Solution Evidence Utility Score)** usa escala 0–10, mas proíbe pontuação inventada: dimensão sem medição/evidência permanece `null`.
- O score agregado só pode ser publicado após pesos, benchmarks e limiares mínimos de evidência serem calibrados e versionados.
- A camada **commercial_production** padroniza briefings para vídeo e web interativa, incluindo mensagem, marca, cenas, áudio, execução e validação.
- Para vídeo, o tempo de cada quadro deve ser explícito (`t = frame / fps`); renderização não deve depender de `setInterval`, scroll ou relógio de parede.

## Arquivos

- `SUPER_SCHEMA_SOLUTION.yaml` — contrato canônico reutilizável.
- `PRODUCTION_HANDOFF_SCHEMA.yaml` — contrato do bundle oficial de release.
- `STORE_SUBMISSION_SCHEMA.yaml` — contrato de submissão/listing da loja.
- `taxonomy/AREAS.yaml` — 15 áreas principais normalizadas e categorias originais.
- `taxonomy/PROFESSIONS.yaml` — registry de profissões/roles.
- `taxonomy/TASK_TYPES.yaml` — tipos canônicos de tarefa.
- `taxonomy/ARTIFACT_TYPES.yaml` — tipos canônicos de artefato.
- `taxonomy/TAGGING_RULES.yaml` — regras de tags e node keys.
- `instructions/PRODUCTION_HANDOFF_INSTRUCTIONS.md` — instrução de geração e gates.
- `obsidian-editorial/solution.yaml` — primeira instância preenchida.
- `obsidian-editorial/TUTORIAL_PUBLICO.md` — camada visível ao usuário.
- `obsidian-editorial/EVIDENCIAS.md` — fontes e limites epistemológicos.
- `obsidian-editorial/VIDEO_PRODUCTION.yaml` — briefing comercial preenchido para produção do vídeo da solução.
- `SCORING_METHODOLOGY.md` — regras de medição, normalização, confiança e agregação do score.
