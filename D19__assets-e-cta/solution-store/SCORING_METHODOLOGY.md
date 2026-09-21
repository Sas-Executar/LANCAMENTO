---
status: canonical
methodology_id: SEUS-v0.1
route: D19
---

# SEUS — Solution Evidence Utility Score

O SEUS é a metodologia de comparação das soluções da loja em escala 0–10. O objetivo é permitir comparação sem transformar impressões subjetivas em números.

## Regras

1. **Sem evidência, sem score.** Campo não medido permanece `null`; nunca vira zero.
2. **Utilidade e confiança são separadas.** Um score alto com baixa confiança não equivale a evidência forte.
3. **Score é contextual.** Toda medição deve declarar população, período, geografia/idioma quando relevante e conjunto de comparação.
4. **Fit gate vem antes do ranking.** Uma ferramenta pode ter alto valor em um caso e ser overkill em outro.
5. **Pesos não são arbitrários.** O score geral permanece bloqueado até os pesos serem calibrados com dados observados e versionados.

## Dimensões

- **Public Pain:** demanda observável por resolução do problema. Pode usar interesse de busca, incidência de workarounds, menções recorrentes e pesquisas com usuários. Requer benchmark.
- **Steps Reduction:** redução percentual de etapas entre baseline e solução. Conversão direta: `10 × redução%`.
- **Time Reduction:** redução percentual de tempo entre baseline e solução. Conversão direta: `10 × redução%`.
- **Dependency Burden:** quantidade e custo operacional de dependências, setup e conhecimento especializado. Requer benchmark.
- **Cognitive Load Reduction:** preferencialmente medido com NASA-TLX ou instrumento equivalente validado, comparando baseline e solução.
- **Executive Function Relief:** registra demanda sobre memória de trabalho, controle inibitório, flexibilidade e planejamento/organização. Não assume conversão universal para 0–10.
- **Reliability:** taxa observada de execuções bem-sucedidas; `score = 10 × success_rate`.
- **Reuse Frequency:** frequência observada por usuário/período, normalizada contra coorte comparável.
- **Overkill Risk:** mede quando a complexidade adicionada supera o benefício; permanece dimensão separada até calibração de penalidade.

## Evidência mínima

Cada dimensão deve registrar:
- métrica bruta;
- fonte/evidência;
- contexto da medição;
- confiança;
- regra de normalização;
- data/período da observação.

## Agregação

`overall.utility_score`, `confidence_index` e `evidence_adjusted_score` permanecem `null` até existir política de pesos aprovada.

A futura calibração deve ser feita contra resultados reais da loja, como sucesso de tarefa, tempo, recorrência, abandono, satisfação e necessidade de correção. A metodologia deve receber nova versão quando a regra de agregação mudar.

## Referências metodológicas

- NASA Task Load Index (NASA-TLX): https://www.nasa.gov/human-systems-integration-division/nasa-task-load-index-tlx/
- Google Trends — interpretação e normalização dos dados: https://support.google.com/trends/answer/4365533
- Matriz científica específica de cada solução: `solution.yaml > evidence_matrix_18`
