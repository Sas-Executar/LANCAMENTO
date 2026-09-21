---
status: review
solution_id: SOL-OBS-EDITORIAL-001
schema: 3PN3
---

# Obsidian Editorial

Transforme conteúdo bruto em documentação Markdown estruturada e pronta para continuidade no Obsidian.

## Problema que resolve

Notas, briefings, decisões, tarefas e referências frequentemente existem, mas permanecem dispersos. Organizar tudo manualmente exige definir hierarquia, separar tipos de informação, criar navegação e manter consistência ao longo do tempo.

O Obsidian Editorial reduz esse trabalho ao transformar conteúdo não estruturado em uma arquitetura documental utilizável.

## Processo aplicado

Você fornece o conteúdo e descreve o resultado desejado. A ferramenta interpreta o material, aplica uma estrutura editorial, organiza a informação em Markdown e entrega uma base preparada para uso no Obsidian.

## Progresso pretendido

Ao final, o conteúdo deixa de ser apenas informação armazenada e passa a funcionar como uma base navegável, persistente e reutilizável.

# Next

## 01 — Forneça o conteúdo

Cole notas, briefing, decisões, referências ou anexe o material que deseja estruturar. Não é necessário organizar previamente.

## 02 — Defina o resultado

Descreva o que o conteúdo precisa se tornar.

Exemplo:

```text
Transforme este material em uma base operacional de projeto para Obsidian.
Preserve decisões, tarefas, responsáveis, referências e contexto.
```

## 03 — Execute e continue

Use a saída como base do projeto e incorpore novos conteúdos mantendo a mesma arquitetura.

```text
Inclua estas novas decisões no projeto, atualize as tarefas relacionadas
e preserve a estrutura existente.
```

# Exemplo prático

## De briefing caótico para documentação operacional

Imagine esta nota:

```text
Projeto: Lançamento Produto X

- lançamento previsto para novembro
- definir landing page
- João cuida do design
- falta confirmar orçamento
- concorrentes: A, B e C
- reunião sexta
- pesquisar estratégia de SEO
- campanha precisa estar pronta antes do dia 15
- referência: campanha anterior
```

O problema não é falta de informação. É falta de estrutura operacional.

A transformação pode produzir:

```text
LANCAMENTO-PRODUTO-X/
├── 00_INDEX.md
├── 01_CONTEXT.md
├── 02_OBJECTIVES.md
├── 03_DECISIONS.md
├── 04_TASKS.md
├── 05_RESEARCH.md
└── 06_REFERENCES.md
```

Antes:

```text
informação → dispersa → difícil de reutilizar
```

Depois:

```text
informação → estrutura → documentos → navegação → base operacional
```

É nesse cenário que a ferramenta demonstra maior valor: transformar conteúdo heterogêneo e desorganizado em um sistema que pode continuar crescendo junto com o projeto.

> Nota interna: o 5W2H não é exibido na interface pública. Ele é usado somente como validação de completude das instruções no registro interno da solução.
