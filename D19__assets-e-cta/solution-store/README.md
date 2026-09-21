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
├── adequação de uso
│   ├── 3 melhores casos de uso
│   └── riscos / overkill
├── scoring baseado em evidência
├── produção comercial
│   ├── briefing de animação
│   ├── roteiro temporal
│   ├── direção visual
│   └── pipeline de render determinístico
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
- Cada solução deve registrar **3 melhores casos de uso** e **3 riscos/anti-use cases**.
- O **SEUS (Solution Evidence Utility Score)** usa escala 0–10, mas proíbe pontuação inventada: dimensão sem medição/evidência permanece `null`.
- O score agregado só pode ser publicado após pesos, benchmarks e limiares mínimos de evidência serem calibrados e versionados.
- A camada **commercial_production** padroniza briefings para vídeo e web interativa, incluindo mensagem, marca, cenas, áudio, execução e validação.
- Para vídeo, o tempo de cada quadro deve ser explícito (`t = frame / fps`); renderização não deve depender de `setInterval`, scroll ou relógio de parede.

## Arquivos

- `SUPER_SCHEMA_SOLUTION.yaml` — contrato canônico reutilizável.
- `obsidian-editorial/solution.yaml` — primeira instância preenchida.
- `obsidian-editorial/TUTORIAL_PUBLICO.md` — camada visível ao usuário.
- `obsidian-editorial/EVIDENCIAS.md` — fontes e limites epistemológicos.
- `obsidian-editorial/VIDEO_PRODUCTION.yaml` — briefing comercial preenchido para produção do vídeo da solução.
- `SCORING_METHODOLOGY.md` — regras de medição, normalização, confiança e agregação do score.
