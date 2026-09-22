---
artifact_id: PRD-RC-SCAN-001
status: PRD_APPROVED_FOR_BUILD (spec completa, zero código)
source: Extraído verbatim de RC-KNW-001....docx (mesma fonte do artigo TP-001)
conflito_conhecido: solution_id RC-SOLUTION-001 também nomeia "Conversor de Relatório" em MASTER_EDITORIAL_RISCO_COGNITIVO_V1.xlsx (aba 02_SOLUTIONS) — ver receipt para USER_ACTION_REQUIRED
---

# RC-SOLUTION-001 — SCANNER INTERATIVO DE FATORES DE RISCO COGNITIVO

Product Documentation Master · V1.0 Pack de origem: TP-001 — Fatores de Riscos Cognitivos Tipo: Ferramenta gratuita de ativação editorial · Agente interativo · Knowledge Product Canal primário: Blog Risco Cognitivo Status: Concept Approved → Product Definition Owner: Founder / Desenvolvedor Modelo operacional: Problema → Scanner → Mapa → Dica prática → Solução → Próxima ação → Métrica → Aprendizado

# 01. PRODUCT VISION

Transformar o conteúdo estático do blog em uma experiência aplicada na qual o leitor descreve uma dificuldade real de execução e recebe um mapa interativo dos fatores cognitivos potencialmente envolvidos, acompanhado de explicações, intervenções práticas e ferramentas relacionadas.

O produto não responde apenas:

“O que pode estar acontecendo?”

Ele conduz:

situação → fatores → demanda → sinais observáveis → intervenção → ferramenta → próximo passo.

O Scanner materializa a tese editorial de que conhecimento deve terminar em aplicação e de que tecnologia pode externalizar parte da carga operacional e cognitiva.

# 02. PRD — PRODUCT REQUIREMENTS DOCUMENT

Artifact ID: PRD-RC-SCAN-001

## 2.1 Problema

O leitor reconhece sintomas como:

informação demais;

dificuldade para começar;

perda de contexto;

interrupções;

tarefas vagas;

esquecimento;

decisões repetitivas;

dependências ocultas;

ambiente digital fragmentado;

mas não possui um método simples para transformar essa percepção em um mapa estruturado de fatores e ações possíveis.

## 2.2 Job to Be Done

Quando eu perceber que uma atividade está exigindo esforço excessivo, quero descrever o que está acontecendo e receber uma estrutura que me ajude a localizar os fatores envolvidos e decidir o que experimentar primeiro.

## 2.3 Transformação

ANTES

“Estou sobrecarregado e não sei exatamente por quê.”

DEPOIS

“Consigo visualizar quais fatores podem estar aumentando a demanda da execução, onde eles aparecem e quais intervenções práticas posso testar.”

## 2.4 Público

Primário:

trabalhadores;

estudantes;

profissionais autônomos;

empreendedores;

pessoas executando projetos pessoais.

O produto pode ser útil a pessoas neurodivergentes, mas não depende de diagnóstico para funcionar.

## 2.5 Proposta de valor

Descreva uma dificuldade real → visualize os fatores → receba ações práticas.

## 2.6 Função no GTM

O Scanner conecta:

Artigo → Interação → Utilidade → Dados → Próximo conteúdo → Ferramenta → EXECUTAR/serviço.

Isso implementa diretamente o KPI editorial já definido:

content_seen → tool_used → next_action_completed.

## 2.7 Escopo MVP

O usuário poderá:

informar uma situação;

responder perguntas adaptativas;

visualizar fatores relacionados;

explorar um mapa interativo;

selecionar um fator;

compreender por que ele foi sinalizado;

receber até três ações práticas;

acessar uma ferramenta, prompt, checklist ou conteúdo relacionado;

registrar se a recomendação foi útil;

continuar para outro conteúdo ou solução.

## 2.8 Fora do escopo V1

O Scanner não deverá:

diagnosticar condições médicas;

inferir TDAH, TEA, dislexia ou transtornos;

declarar risco clínico;

recomendar medicamento;

produzir avaliação psicológica;

determinar causalidade individual;

substituir profissional de saúde;

gerar um “score cerebral” ou “score de neurodivergência”.

## 2.9 Success Metrics

Aquisição

scanner_opened;

scanner_started.

Ativação

first_input_submitted;

scan_completed;

factor_opened.

Utilidade

recommendation_viewed;

recommendation_saved;

tool_opened;

tool_used.

Continuidade

related_article_opened;

second_scan_started;

returning_user.

Conversão

newsletter_signup;

executar_interest;

service_interest.

North Star inicial

scan_completed → recommendation_used → next_action_completed

# 03. FRD — FUNCTIONAL REQUIREMENTS

Artifact ID: FRD-RC-SCAN-001

## FR-01 — Entrada livre

O usuário deverá poder descrever em linguagem natural:

“Estou tentando preparar um relatório, mas toda hora me perco nas informações.”

## FR-02 — Contextualização progressiva

O agente deverá obter apenas os dados necessários para compreender:

objetivo;

contexto;

tarefa;

momento da dificuldade;

manifestação;

frequência;

impacto percebido.

## FR-03 — Classificação por Matriz dos Sentidos

Toda análise deverá mapear o input para uma ou mais dimensões:

S1 Visual/Informacional;

S2 Auditivo/Interrupção;

S3 Temporal;

S4 Espacial/Ambiental;

S5 Memória/Executivo;

S6 Decisão/Ação;

S7 Processo/Relações;

S8 Digital/Sistêmico.

## FR-04 — Associação aos fatores

O agente poderá associar evidências do relato a FRC-01…FRC-20.

A associação deverá ser apresentada como:

“fator observado/possível”

e nunca como diagnóstico.

## FR-05 — Priorização

A interface mostrará inicialmente no máximo:

3 fatores principais.

Os demais permanecerão disponíveis em:

“Ver outros fatores relacionados”.

## FR-06 — Explicabilidade

Cada fator deverá informar:

o que foi observado;

trecho ou sinal do relato que motivou a associação;

qual demanda pode estar envolvida;

qual problema operacional pode resultar;

grau de confiança da associação.

## FR-07 — Recomendações em três níveis

Cada fator deverá possuir:

Nível 1 — Conceitual

Tática, técnica ou controle baseado em evidência.

Nível 2 — Tecnológico

Prompt, automação, sistema, componente ou ferramenta aplicável.

Nível 3 — Placeholder

Recurso existente do ecossistema:

Conversor · Scanner · Mapa · Checklist · Protocolo · Prisma · Template · EXECUTAR · Runbook.

## FR-08 — Mapa interativo

O usuário deverá visualizar:

SITUAÇÃO

↓

SENTIDOS AFETADOS

↓

FATORES

↓

DEMANDAS

↓

MANIFESTAÇÕES

↓

CONTROLES POSSÍVEIS

↓

SOLUÇÕES

O mapa deverá ser navegável por toque/clique.

## FR-09 — Dicas práticas

Selecionar um fator deverá abrir:

Entenda → Observe → Experimente → Ferramenta → Próximo passo.

## FR-10 — Continuidade editorial

Cada recomendação deverá possuir:

problem_id;

factor_id;

solution_id;

content_id;

cta_id;

evidence_ids.

Isso mantém a rastreabilidade exigida pelo schema mestre.

# 04. UX SPEC

Artifact ID: UX-RC-SCAN-001

## Tela 01 — Entrada

O que está exigindo mais esforço do que deveria?

Campo principal de texto.

Sugestões:

“Não consigo começar uma tarefa.”

“Recebo informações demais.”

“Estou esquecendo etapas.”

“Interrupções acabam com meu foco.”

“Minha tarefa parece confusa.”

CTA:

Mapear fatores

## Tela 02 — Conversação

O agente não deverá apresentar um questionário extenso.

Ele faz uma pergunta por vez.

Exemplo:

Quando isso ocorre, o maior problema é encontrar a informação, decidir o que fazer ou manter o contexto?

## Tela 03 — Mapa

Centro:

Sua situação

Primeiro anel:

S1–S8

Segundo anel:

FRC relacionados

Terceiro anel:

ações disponíveis

O usuário pode tocar em qualquer nó.

## Tela 04 — Fator

Exemplo:

Task Switching

O que observamos

Você descreveu interrupções frequentes e dificuldade para retornar ao ponto anterior.

O que isso pode exigir

Reconstrução de contexto e reconfiguração da tarefa.

Experimente

Criar um ponto explícito de retomada antes de trocar de contexto.

Ferramenta

Criar Resume Point

Aprofundar

Artigo relacionado.

## Tela 05 — Plano rápido

Ao final:

Teste primeiro estas 3 mudanças

intervenção;

intervenção;

intervenção.

CTA:

Salvar meu mapa

Secundário:

Continuar aprendendo

# 05. AGENT SPEC

Artifact ID: AGENT-SPEC-RC-SCAN-001

## Agent ID

RC-AGENT-SCANNER-001

## Papel

Agente de análise operacional e educação aplicada.

## Conhecimento autorizado

O agente deverá trabalhar apenas a partir de:

Knowledge Records aprovados;

FRC-01…FRC-20;

Matriz dos Sentidos;

Evidence Matrix;

Authorized Claims;

catálogo de intervenções;

catálogo de soluções;

conteúdos publicados.

## Regra fundamental

O modelo não inventa novos fatores canônicos.

Novos padrões encontrados são registrados como candidatos a aprendizado, não automaticamente adicionados à metodologia.

## Output obrigatório

scan_id

problem_statement

objective

context

observed_signals[]

sense_ids[]

factor_matches[]

recommended_controls[]

recommended_solutions[]

evidence_refs[]

next_action

cta_id

confidence

limitations[]

## Estrutura de cada factor_match

factor_id

factor_name

observed_signal

reason_for_match

possible_demand

possible_manifestation

confidence

evidence_ids[]

## Estrutura de cada recommendation

factor_id

level_1_conceptual

level_2_technology

level_3_placeholder

expected_effect

evidence_ids[]

A saída estruturada deve ser validada antes de alimentar a interface; o Agents SDK permite definir outputType tipado e validar schemas na aplicação. (OpenAI⁠)

# 06. TECHNICAL SPEC

Artifact ID: TECH-SPEC-RC-SCAN-001

## Frontend

Aplicação integrada ao blog.

Componentes principais:

ScannerLauncher ConversationPanel SenseMap FactorNode FactorDetail RecommendationCard EvidenceDrawer NextActionCard

## Backend

POST /api/scanner/session

POST /api/scanner/message

GET  /api/scanner/:scan_id

POST /api/scanner/:scan_id/feedback

GET  /api/scanner/catalog/factors

GET  /api/scanner/catalog/solutions

## Agent Runtime

OpenAI Agents SDK — TypeScript

Arquitetura inicial:

USER

↓

SCANNER MANAGER

├── classify_context()

├── retrieve_factor()

├── retrieve_evidence()

├── retrieve_solution()

└── save_scan()

↓

STRUCTURED OUTPUT

↓

MAP UI

O SDK atual oferece agent loop, function tools, guardrails, sessions e tracing, suficientes para este MVP sem necessidade de criar vários agentes. (OpenAI⁠)

## Tools iniciais

get_factor_catalog

Retorna os FRC autorizados.

get_factor_evidence

Retorna claims e referências permitidas.

get_solution_catalog

Retorna soluções associadas ao fator.

save_scan

Persiste resultado estruturado.

save_feedback

Registra utilidade percebida.

# 07. ADR — ARCHITECTURE DECISION RECORD

Artifact ID: ADR-RC-SCAN-001

## Decisão 01 — Agents SDK

Status: ACCEPTED

Usar OpenAI Agents SDK em TypeScript para orquestração.

Motivos

integra-se naturalmente a aplicação TypeScript;

suporta tools tipadas;

suporta guardrails;

suporta sessões;

possui tracing;

permite evolução futura para agentes especialistas.

(OpenAI⁠)

## Decisão 02 — Manager Agent primeiro

Status: ACCEPTED

V1 terá um agente controlador.

Não criar inicialmente:

agente cognitivo;

agente de riscos;

agente de soluções;

agente editorial.

Essas especialidades entram como tools/catalogs.

Motivo

Menor:

latência;

custo;

complexidade;

superfície de erro;

dificuldade de observabilidade.

Multiagente poderá ser introduzido posteriormente se existir um caso funcional real.

## Decisão 03 — Sem fine-tuning no MVP

Status: ACCEPTED

“Treinar o Scanner” no MVP significa:

instruções + knowledge base canônica + schemas + retrieval + tools + guardrails.

Fine-tuning só será avaliado quando houver dados reais suficientes demonstrando problema consistente que não possa ser resolvido por essas camadas.

## Decisão 04 — Structured Output obrigatório

Status: ACCEPTED

A interface não deverá tentar interpretar texto livre produzido pelo agente.

O agente gera objeto validado.

A UI renderiza esse objeto.

Isso permite:

mapa determinístico;

analytics;

versionamento;

testes;

rastreabilidade.

## Decisão 05 — Gratuito para o leitor, não “sem custo”

Status: ACCEPTED

O produto poderá ser gratuito para o usuário final.

Entretanto, chamadas de modelo possuem custo operacional para o projeto.

Portanto serão aplicados:

limite de mensagens;

rate limiting;

modelos adequados ao estágio;

cache de conteúdos estáticos;

retrieval em vez de repetir conhecimento;

respostas curtas;

sessão limitada.

# 08. DATA SPEC

Artifact ID: DATA-RC-SCAN-001

## Scan

scan_id

session_id

created_at

anonymous_user_id

problem_id

objective

context

raw_input

status

## Observation

observation_id

scan_id

sense_id

factor_id

signal

confidence

## Recommendation

recommendation_id

scan_id

factor_id

control_id

solution_id

evidence_ids[]

## Interaction Event

event_id

scan_id

event_type

factor_id?

solution_id?

content_id?

cta_id?

timestamp

## Learning

learn_id

problem_id

factor_id

solution_id

usage_count

helpful_count

next_action_count

decision

O modelo preserva a cadeia canônica de métricas e aprendizado prevista no schema editorial.

# 09. NFR — NON-FUNCTIONAL REQUIREMENTS

Artifact ID: NFR-RC-SCAN-001

## Performance

resposta inicial percebida rapidamente;

streaming de resposta;

mapa renderizado apenas após output estruturado válido;

conteúdo estático de fatores em cache.

## Reliability

outputs validados;

fallback para resposta textual simples;

nenhuma recomendação deve depender de parsing frágil de linguagem natural.

## Accessibility

mobile first;

teclado;

leitor de tela;

contraste adequado;

progressive disclosure;

uma ação principal por estado;

nenhuma informação disponível exclusivamente por cor.

## Observability

Registrar:

agent run;

tool calls;

guardrails;

tokens;

erros;

latência;

conclusão.

O Agents SDK dispõe de tracing nativo de runs, agents, gerações, tools, handoffs e guardrails. (OpenAI⁠)

# 10. SAFETY SPEC

Artifact ID: SAFETY-RC-SCAN-001

## Input Guardrails

Detectar situações que extrapolem o produto:

emergência médica;

intenção de autolesão;

solicitação de diagnóstico;

solicitação de prescrição;

conteúdo fora do domínio.

## Output Guardrails

Impedir frases como:

“Você tem TDAH.”

“Seu risco é alto porque você é autista.”

“Esse resultado confirma uma condição.”

“Você precisa deste tratamento.”

## Linguagem autorizada

“O seu relato contém sinais compatíveis com este fator operacional.”

“Este fator pode estar aumentando a demanda desta atividade.”

“Vale observar se…”

“Uma intervenção que pode ser testada é…”

## Regra metodológica

Vulnerabilidade ≠ risco automaticamente.

O schema fundador explicitamente determina que vulnerabilidade não deve ser tratada como risco sem objetivo, contexto e exposição.

Guardrails de input, output e tools são suportados diretamente pelo Agents SDK. (OpenAI⁠)

# 11. PRODUCT LOOP

O produto deverá aprender sem destruir histórico:

PROBLEMA REAL

↓

SCAN

↓

FATOR

↓

RECOMENDAÇÃO

↓

USO

↓

FEEDBACK

↓

MÉTRICA

↓

LEARNING

↓

MELHORIA DO CATÁLOGO

Isso implementa diretamente o princípio:

learning_updates_without_destroying_history.

# 12. RELAÇÃO COM O CONTEÚDO

O Scanner não é um produto isolado.

Social

“Por que esta tarefa parece tão difícil?”

↓

Artigo

“Fatores de Riscos Cognitivos”

↓

Scanner

“Mapeie sua situação.”

↓

Resultado

“Estes fatores merecem investigação.”

↓

Microssolução

Checklist · Conversor · Protocolo · Prompt.

↓

Próximo conteúdo

Exposição Cognitiva.

↓

Produto

EXECUTAR / serviço / solução específica.

# 13. DELIVERY SPEC

Artifact ID: DELIVERY-RC-SCAN-001

## MVP-01 — Knowledge Contract

Produzir:

catálogo FRC-01–20;

S1–S8;

claims autorizados;

intervenções;

evidências;

soluções;

schemas.

Gate: nenhum campo crítico sem definição.

## MVP-02 — Agent Core

Implementar:

Scanner Agent;

instructions;

structured output;

tools;

guardrails;

tracing.

Gate: resultados reproduzíveis em casos de teste.

## MVP-03 — Scanner UI

Implementar:

input;

conversa;

mapa;

cards;

recomendações;

CTA.

Gate: workflow completo em mobile.

## MVP-04 — Analytics

Implementar:

OPEN → START → COMPLETE → FACTOR → RECOMMENDATION → TOOL → NEXT_ACTION

Gate: 100% dos eventos principais rastreáveis.

## MVP-05 — Blog Integration

Integrar:

artigo → scanner → resultado → solução → próximo artigo.

Gate: cadeia editorial completa funcionando.

# 14. DEFINITION OF DONE

RC-SOLUTION-001 estará pronto para beta quando:

20 fatores estiverem versionados;

8 sentidos estiverem versionados;

evidências estiverem referenciadas;

intervenções estiverem associadas;

agente retornar output estruturado válido;

guardrails estiverem testados;

mapa interativo estiver funcional;

três recomendações forem apresentadas;

CTA estiver rastreável;

analytics estiver funcionando;

histórico de execução puder gerar learning;

nenhuma saída clínica não autorizada aparecer nos testes.

# 15. POSICIONAMENTO DO PRODUTO

Não divulgar como:

“IA que diagnostica sua carga cognitiva.”

Divulgar como:

Descreva uma situação que está dificultando sua execução. O Scanner organiza os fatores que podem estar aumentando essa demanda e mostra o que você pode testar primeiro.

Produto:

Scanner de Fatores de Risco Cognitivo

Promessa:

Do problema percebido ao primeiro controle aplicável.

Função estratégica:

conteúdo deixa de apenas explicar o framework e passa a permitir que o leitor o experimente.

O ponto mais relevante é que isso não interrompe o workflow do TP-001: ele melhora o entregável. O artigo continua sendo o knowledge master, mas o CTA deixa de ser um PDF genérico e passa a ser “Mapeie seus fatores” → Scanner interativo → mapa → dica → ferramenta. O plano editorial já previa exatamente essa passagem de mecanismo para ativação e de ferramenta para aprendizado.

A próxima tarefa 1:1 pode voltar ao fluxo original já com essa decisão incorporada: formalizar o catálogo de perguntas S1–S8 que alimentará simultaneamente o Scanner, o Agent Spec e o mapa interativo.

## Tarefa 18 — Catálogo de perguntas S1–S8 do Scanner

Objetivo: transformar a Matriz dos Sentidos em perguntas observáveis, não clínicas, que permitam ao agente identificar sinais associados aos 20 fatores canônicos sem confundir fator, vulnerabilidade, exposição e risco.

SCHEMA_RC_KNOWLEDGE_TO_ASSET_V1.yaml

ID: RC-SCAN-QUESTION-CATALOG-V1 Uso: Scanner do blog · Agent SDK · mapa interativo · analytics · futuros testes.

Pergunta de entrada obrigatória

Q00

Qual atividade, tarefa ou situação está exigindo mais esforço do que você considera necessário para conseguir executá-la?

O agente deve preservar a resposta original como problem_statement.

Depois pergunta:

O que você está tentando conseguir ou concluir nessa situação?

Isso registra objective, necessário porque o framework caracteriza risco em relação a um objetivo.

O_Projeto_Editorial 2.docx

# S1 — Visual / Informacional

Objetivo: identificar esforço relacionado a quantidade, localização, estrutura e interpretação da informação.

Pergunta principal

Quando você tenta executar essa atividade, é difícil encontrar rapidamente a informação que realmente importa?

Perguntas adaptativas

S1-Q02

Você recebe mais informação simultaneamente do que consegue usar naquele momento?

Relaciona principalmente: FRC-03.

S1-Q03

As informações estão espalhadas entre páginas, documentos, abas ou telas diferentes?

Relaciona: FRC-04 · FRC-15.

S1-Q04

Você precisa reler, comparar ou procurar repetidamente para entender o que fazer?

Relaciona: FRC-03 · FRC-04.

S1-Q05

Prioridades, alertas e informações secundárias parecem visualmente equivalentes?

Relaciona: FRC-04 · FRC-18.

Sinais observáveis

releitura · busca · comparação · clutter · perda de informação crítica · excesso simultâneo

# S2 — Auditivo / Interrupção

Objetivo: identificar captura involuntária da atenção e ruptura de continuidade.

Pergunta principal

Enquanto você executa essa atividade, sons, pessoas, mensagens ou notificações interrompem frequentemente aquilo que estava fazendo?

Perguntas adaptativas

S2-Q02

Depois de uma interrupção, você precisa reconstruir onde estava ou o que pretendia fazer?

Relaciona: FRC-05.

S2-Q03

As interrupções chegam mesmo quando não são necessárias para a tarefa atual?

Relaciona: FRC-15 · FRC-18.

S2-Q04

Você sente necessidade de verificar mensagens ou outras fontes antes de concluir a atividade atual?

Relaciona: FRC-05 · FRC-18.

Sinais

interrupção · retomada · distração · quebra de fluxo · mudança involuntária de foco

# S3 — Temporal

Objetivo: identificar demandas de lembrar quando agir, estimar, iniciar, transicionar e acompanhar tempo.

Pergunta principal

É difícil saber ou lembrar quando iniciar, continuar, interromper ou concluir alguma etapa dessa atividade?

Adaptativas

S3-Q02

Você conhece uma ação necessária, mas às vezes lembra dela somente depois do momento adequado?

Relaciona: FRC-11.

S3-Q03

Você precisa estimar repetidamente quanto tempo ainda falta ou quando deverá mudar de etapa?

Relaciona: FRC-13 · FRC-17.

S3-Q04

Atividades recorrentes dependem de você decidir novamente todos os dias quando começar?

Relaciona: FRC-16.

S3-Q05

Mudanças de uma atividade para outra costumam exigir um período significativo de preparação?

Relaciona: FRC-05 · FRC-17.

Sinais

atraso · esquecimento futuro · dificuldade de iniciar · transição · estimativa recorrente

# S4 — Espacial / Ambiental

Objetivo: identificar se o ambiente acrescenta trabalho não necessário à tarefa.

Pergunta principal

O ambiente físico onde essa atividade acontece facilita ou dificulta manter atenção e executar o trabalho?

Adaptativas

S4-Q02

Ruído, conversas ou movimentação competem com a atividade?

Relaciona: FRC-14 · FRC-18.

S4-Q03

Iluminação, organização física ou equipamento exigem ajustes frequentes para você continuar?

Relaciona: FRC-14.

S4-Q04

Materiais necessários ficam fora do lugar ou precisam ser procurados durante a execução?

Relaciona: FRC-14 · FRC-17.

S4-Q05

O mesmo ambiente é utilizado para atividades com demandas muito diferentes sem qualquer adaptação?

Relaciona: FRC-01 · FRC-14.

Sinais

ruído · procura física · desconforto · distração ambiental · preparação

# S5 — Memória / Executivo

Objetivo: identificar quanto da estrutura da execução depende de manutenção mental contínua.

Pergunta principal

Quanto dessa atividade depende de você manter mentalmente informações, intenções ou estados enquanto executa outra coisa?

Adaptativas

S5-Q02

Você precisa lembrar sozinho qual era o próximo passo?

Relaciona: FRC-10 · FRC-11.

S5-Q03

Quando retorna à tarefa, precisa reconstruir decisões ou informações anteriores?

Relaciona: FRC-05 · FRC-10.

S5-Q04

Existem prazos, dependências ou compromissos importantes armazenados principalmente na sua memória?

Relaciona: FRC-09 · FRC-10 · FRC-11.

S5-Q05

Você faz verificações repetidas porque teme esquecer algo?

Relaciona: FRC-10 · FRC-11.

Sinais

manutenção mental · recuperação de contexto · checagem · esquecimento · ansiedade para lembrar

# S6 — Decisão / Ação

Objetivo: identificar escolhas, ambiguidades e decisões embutidas antes da ação.

Pergunta principal

Antes de conseguir agir, você precisa decidir várias coisas que poderiam estar previamente definidas?

Adaptativas

S6-Q02

A tarefa está registrada como um tema ou intenção, mas não deixa claro qual ação executar?

Relaciona: FRC-07.

S6-Q03

Você sabe o resultado desejado, mas não sabe qual é o primeiro passo?

Relaciona: FRC-06.

S6-Q04

Existem muitas alternativas igualmente disponíveis para uma decisão simples?

Relaciona: FRC-12.

S6-Q05

Você toma repetidamente a mesma categoria de decisão durante o processo?

Relaciona: FRC-13.

Sinais

hesitação · ambiguidade · escolha repetida · paralisação · próximo passo indefinido

# S7 — Processo / Relações

Objetivo: identificar sequência, dependência, estado e regras invisíveis.

Pergunta principal

Você consegue visualizar claramente o que precisa acontecer, em qual ordem e do que cada etapa depende?

Adaptativas

S7-Q02

Algumas atividades só podem começar depois de outras, mas essa relação não está visível?

Relaciona: FRC-09.

S7-Q03

Você descobre bloqueios apenas depois de já ter iniciado o trabalho?

Relaciona: FRC-09.

S7-Q04

O processo contém etapas que parecem existir apenas porque “sempre foi feito assim”?

Relaciona: FRC-01.

S7-Q05

Para concluir uma tarefa, você precisa lembrar regras ou procedimentos que não estão incorporados ao fluxo?

Relaciona: FRC-07 · FRC-10.

Sinais

bloqueio · dependência oculta · retrabalho · burocracia · sequência reconstruída

# S8 — Digital / Sistêmico

Objetivo: identificar quando ferramentas e arquitetura da operação geram carga adicional.

Pergunta principal

As ferramentas que deveriam ajudar nessa atividade acabam criando trabalho adicional de organização, configuração ou acompanhamento?

Adaptativas

S8-Q02

O estado do trabalho está espalhado entre vários aplicativos?

Relaciona: FRC-15.

S8-Q03

Você precisa atualizar a mesma informação em mais de um lugar?

Relaciona: FRC-15 · FRC-19.

S8-Q04

Existem notificações, funções ou controles que raramente ajudam no objetivo principal?

Relaciona: FRC-12 · FRC-15.

S8-Q05

Pequenas dificuldades de informação, memória, decisões, interrupções e processo acontecem simultaneamente?

Relaciona: FRC-19.

S8-Q06

Você sente que está administrando o sistema mais do que executando o próprio trabalho?

Relaciona diretamente: FRC-19 · FRC-20.

Sinais

fragmentação · duplicação · configuração · manutenção · sobrecarga sistêmica

# Lógica adaptativa do agente

O Scanner não apresenta as 34+ perguntas em sequência.

A lógica deve ser:

Q00

↓

objetivo + problema

↓

1 pergunta rápida por S1–S8

↓

selecionar 2–3 dimensões com maior evidência

↓

2–3 perguntas aprofundadas apenas nessas dimensões

↓

FRC candidates

↓

Top 3 fatores

↓

recomendações

O usuário deve responder aproximadamente 10–14 perguntas, não o catálogo completo.

# Escala de resposta

Evitaria escala clínica de 0–10.

Para o MVP:

Nunca · Raramente · Às vezes · Frequentemente · Quase sempre

Mais:

Não sei / Não se aplica

Isso mede frequência percebida da situação, não “gravidade cognitiva”.

# Evidência de associação

Cada match precisa guardar três objetos separados:

user_signal

question_id

answer

Exemplo:

question_id: S2-Q02

answer: frequentemente

user_signal:

&quot;Depois que respondo mensagens preciso reler o relatório.&quot;

Então:

candidate_factor:

FRC-05

O agente poderá explicar:

“FRC-05 foi sinalizado porque você relatou interrupções seguidas de necessidade recorrente de reconstruir o contexto.”

Isso torna a análise explicável e auditável, em vez de o LLM simplesmente declarar uma classificação.

# Regra de segurança metodológica

O Scanner primeiro identifica:

sinal → sentido → fator candidato.

Somente posteriormente poderá investigar:

demanda → contexto → exposição → possível risco.

Essa separação é coerente com a governança do schema, que impede tratar automaticamente vulnerabilidade ou fator como risco.

SCHEMA_RC_KNOWLEDGE_TO_ASSET_V1.yaml

## Registro

RC-SCAN-QUESTION-CATALOG-V1 = DEFINIDO

Entregável: 1 pergunta de entrada + 8 perguntas principais + perguntas adaptativas + sinais observáveis + relações FRC + lógica conversacional.

Próxima tarefa 1:1: definir o algoritmo de classificação e priorização, ou seja, como respostas + sinais textuais produzem Top 3 FRC sem criar um falso “score clínico”.

## Tarefa 19 — Algoritmo de classificação e priorização do Scanner

ID: RC-SCAN-CLASSIFICATION-ENGINE-V1 Objetivo: transformar respostas estruturadas + relato livre em Top 3 fatores candidatos, sem produzir score clínico, diagnóstico ou “nível de risco cognitivo”.

A lógica abaixo é uma decisão de produto derivada; os documentos sustentam a separação entre fator, demanda, vulnerabilidade, exposição e risco, mas não fornecem um algoritmo de pontuação pronto.

SCHEMA_RC_KNOWLEDGE_TO_ASSET_V1.yaml

1. Princípio central

O motor não calcula:

“Você tem 82% de risco cognitivo.”

Ele calcula:

“Há mais evidências observáveis nesta situação para investigar estes três fatores primeiro.”

Portanto, o resultado é uma prioridade de investigação, não uma avaliação clínica.

## 2. Pipeline

RELATO LIVRE

↓

OBJETIVO + CONTEXTO

↓

SINAIS EXTRAÍDOS

↓

S1–S8

↓

FRC CANDIDATOS

↓

RESPOSTAS ESTRUTURADAS

↓

CONVERGÊNCIA DE EVIDÊNCIAS

↓

TOP 3 FRC

↓

EXPLICAÇÃO

↓

PRÓXIMA INVESTIGAÇÃO / INTERVENÇÃO

## 3. Fontes de evidência do algoritmo

Cada FRC poderá receber evidência de quatro fontes independentes.

A — Resposta direta

Pergunta previamente vinculada a determinado fator.

Exemplo:

S2-Q02 → FRC-05

Resposta:

Frequentemente

gera evidência direta para FRC-05.

B — Sinal textual

O agente identifica no relato expressões equivalentes a sinais já catalogados.

Exemplo:

“Toda vez que volto, tenho que reler tudo.”

Sinais:

retomada · releitura · reconstrução de contexto

Candidatos:

FRC-05 · FRC-10.

C — Recorrência

O mesmo fator emerge em perguntas diferentes.

Exemplo:

S2-Q02 → FRC-05 S3-Q05 → FRC-05 S5-Q03 → FRC-05

A convergência aumenta a prioridade do fator.

D — Impacto operacional relatado

O usuário associa a situação a:

erro · atraso · abandono · retrabalho · esquecimento · perda de continuidade

Isso aumenta a prioridade de investigação, mas ainda não transforma o fator automaticamente em risco.

Essa cautela mantém a cadeia original:

Objetivo → Contexto → Demanda → Vulnerabilidade → Exposição → Risco → Evento/Impacto.

O_Projeto_Editorial 2.docx

# 4. Escala interna

As respostas recebem pesos internos apenas para ordenação:

Nunca           = 0

Raramente       = 1

Às vezes        = 2

Frequentemente  = 3

Quase sempre    = 4

Não se aplica   = null

Não sei         = null

Esses números nunca aparecem para o usuário como score cognitivo.

# 5. Cálculo de evidência por fator

Para cada FRC:

factor_evidence =

direct_answer

+ textual_signal

+ recurrence

+ operational_relevance

Sugestão inicial de pesos:

Resposta direta        40%

Sinal textual          25%

Recorrência            20%

Impacto operacional    15%

Isso é um baseline de produto a validar, não peso cientificamente estabelecido.

# 6. Regra de convergência

Um fator só deve aparecer entre os Top 3 quando cumprir pelo menos uma destas condições:

Regra A

2 fontes diferentes de evidência

Exemplo:

resposta estruturada + sinal textual.

Regra B

2 perguntas diferentes apontam para o mesmo FRC

Regra C

Uma resposta muito frequente + manifestação operacional claramente relacionada.

Isso reduz classificações baseadas em uma única frase ambígua.

# 7. Confidence

Em vez de percentual, usar somente:

Evidência limitada

Um único sinal ou informação insuficiente.

Evidência moderada

Múltiplos sinais convergentes.

Evidência consistente

Várias respostas independentes convergem para o mesmo fator e a manifestação descrita é coerente.

Internamente:

LOW

MEDIUM

HIGH

Mas o texto da interface deve usar:

“Poucos sinais” · “Alguns sinais convergentes” · “Vários sinais convergentes”.

# 8. Exemplo

Usuário:

“Estou escrevendo um relatório, mas WhatsApp e e-mail me interrompem toda hora; quando volto preciso reler para descobrir onde estava.”

Respostas:

S2-Q01 = Quase sempre S2-Q02 = Frequentemente S5-Q03 = Frequentemente

Extração:

interrupções

retomada

releitura

reconstrução de contexto

Associações:

FRC-05 Task Switching

FRC-15 Ambiente Digital

FRC-10 Externalização Cognitiva

Resultado:

1. FRC-05 — Task Switching

Vários sinais convergentes

Porque o usuário relatou interrupções seguidas de reconstrução recorrente do contexto.

2. FRC-15 — Ambiente Digital

Alguns sinais convergentes

Porque e-mail e mensagens atuam como fontes concorrentes durante a atividade.

3. FRC-10 — Externalização

Poucos sinais

Há indício de que o estado da tarefa não está suficientemente preservado externamente.

Observe a diferença: o agente explica por que classificou, em vez de simplesmente gerar um resultado.

# 9. Prioridade ≠ gravidade

O ranking significa:

“Comece investigando aqui.”

Não significa:

“Este é o fator mais grave da sua cognição.”

A ordenação considera apenas a situação fornecida.

Uma mesma pessoa pode obter rankings totalmente diferentes para:

escrever relatório · fazer reunião · estudar · organizar mudança · executar projeto.

Isso é coerente com o princípio do documento de que uma vulnerabilidade pode não representar risco em uma tarefa e tornar-se relevante em outra.

O_Projeto_Editorial 2.docx

# 10. Regra para fatores sistêmicos

FRC-19 — Sobrecarga sistêmica não deve vencer automaticamente porque vários fatores foram encontrados.

Ele só emerge quando:

existem fatores em 3 ou mais sentidos S1–S8;

há manifestações operacionais múltiplas;

as dificuldades aparecem combinadas na mesma execução.

FRC-20 — Cadeia de desvalor → valor também não deve ser classificado como problema individual comum.

Ele funciona principalmente como interpretação sistêmica do framework quando várias barreiras exigem esforço compensatório.

O_Projeto_Editorial 2.docx

# 11. Regra de insuficiência de dados

Se o agente não tiver evidência suficiente:

“Ainda não existem sinais suficientes para priorizar três fatores; preciso entender melhor onde a dificuldade acontece.”

Ele deve perguntar novamente.

Nunca completar o Top 3 apenas porque a interface espera três cards.

# 12. Output estruturado

classification_result:

primary_factor:

factor_id:

evidence_level:

supporting_questions: []

observed_signals: []

explanation:

secondary_factor:

factor_id:

evidence_level:

supporting_questions: []

observed_signals: []

explanation:

tertiary_factor:

factor_id:

evidence_level:

supporting_questions: []

observed_signals: []

explanation:

insufficient_evidence: false

investigated_senses: []

operational_manifestations: []

next_investigation:

# 13. Regra crítica de segurança

O algoritmo termina em:

FATOR CANDIDATO

e não em:

RISCO CONFIRMADO.

A evolução posterior será:

FATOR

↓

DEMANDA

↓

OBJETIVO + CONTEXTO

↓

EXPOSIÇÃO

↓

POSSÍVEL RISCO

Essa separação está alinhada à governança metodológica do schema mestre.

SCHEMA_RC_KNOWLEDGE_TO_ASSET_V1.yaml

RC-SCAN-CLASSIFICATION-ENGINE-V1 = DEFINIDO

Próxima tarefa 1:1: definir o Output do Scanner, isto é, exatamente como o mapa, Top 3 fatores, explicações, três níveis de solução e CTA serão apresentados ao usuário após a análise.

## Tarefa 20 — Output do Scanner TP-001

ID: RC-SCAN-OUTPUT-SPEC-V1 Objetivo: definir exatamente o que o usuário recebe após o scan, em qual ordem, com qual linguagem e como cada bloco conduz para ação, ferramenta e próximo conteúdo.

O output deve respeitar a arquitetura do projeto: problema → fator → demanda → controle → solução → CTA → métrica, sem transformar fator em risco confirmado.

SCHEMA_RC_KNOWLEDGE_TO_ASSET_V1.yaml

## 1. Cabeçalho do resultado

Título

Seu Mapa de Fatores Cognitivos

Subtítulo

Com base na situação que você descreveu, estes são os fatores que apresentam mais sinais para investigação nesta execução.

Contexto exibido

Objetivo analisado

Situação relatada

Contexto

Data do scan

Scan ID

Nunca exibir:

“Diagnóstico” “Resultado clínico” “Seu nível de risco cognitivo”

# 2. Resumo executivo

A primeira tela deve responder apenas:

O que apareceu

Exemplo:

Foram encontrados sinais principalmente relacionados a interrupções e troca de contexto, fragmentação do ambiente digital e dependência de reconstrução mental do estado da tarefa.

O que isso significa

Esses fatores podem aumentar a demanda necessária para executar esta atividade, mas o resultado não determina sozinho que exista um risco cognitivo.

Essa distinção mantém a regra metodológica de que demanda, vulnerabilidade, exposição e risco são conceitos diferentes.

O_Projeto_Editorial 2.docx

# 3. Top 3 fatores

A interface exibe até três cards.

## Card padrão

FRC-05 — Task Switching

Nível de evidência na situação Vários sinais convergentes

O que você relatou

Interrupções frequentes seguidas de necessidade de reler e reconstruir o ponto anterior.

Por que este fator apareceu

A alternância entre atividades pode exigir reconfiguração e recuperação do contexto anterior.

Onde aparece

S2 Interrupção · S5 Memória/Executivo · S3 Temporal

Manifestação observada

retomada · releitura · perda de continuidade

CTA do card

Ver o que posso testar

# 4. Mapa interativo

Depois do resumo, o usuário recebe a visão sistêmica.

SUA SITUAÇÃO

↓

SENTIDOS OPERACIONAIS

↓

FATORES IDENTIFICADOS

↓

DEMANDAS POSSÍVEIS

↓

MANIFESTAÇÕES

↓

INTERVENÇÕES

↓

FERRAMENTAS

Visualização

O centro do mapa contém:

Objetivo atual

Ao redor:

S1 · S2 · S3 · S4 · S5 · S6 · S7 · S8

Cada sentido abre os FRC associados.

Os fatores prioritários aparecem em primeiro plano; fatores secundários continuam acessíveis por progressive disclosure.

# 5. Output de solução em três níveis

Ao tocar em qualquer fator:

## Nível 1 — O que experimentar

Tática / técnica / controle

Exemplo para FRC-05:

Antes de interromper uma atividade, registre explicitamente o último estado concluído e a próxima ação necessária para retomá-la.

Tipo: controle preventivo/de retomada.

## Nível 2 — Como a tecnologia pode ajudar

Criar automaticamente um ponto de retomada contendo estado atual, última decisão, próximo passo e contexto necessário.

Produto possível: Resume Point

## Nível 3 — Recurso disponível

Se já existir:

Abrir Protocolo de Retomada

ou:

Usar no EXECUTAR

ou:

Gerar com Prompt

Se ainda não existir:

Em desenvolvimento

Isso é importante porque o sistema não deve inventar disponibilidade de ferramentas que ainda não foram produzidas.

# 6. Evidência

Cada recomendação terá opção:

Por que estamos recomendando isso?

Ao abrir:

Evidência

fonte;

claim autorizado;

tipo de evidência;

limite da conclusão.

Exemplo:

Evidência experimental Estudos sobre task switching encontram custos mensuráveis associados à mudança entre conjuntos de tarefas.

Limite

A magnitude do efeito depende da tarefa e do contexto e não determina, isoladamente, risco para o usuário.

Isso preserva a separação entre evidência científica e aplicação do framework.

SCHEMA_RC_KNOWLEDGE_TO_ASSET_V1.yaml

# 7. Plano de ação

O output não deve terminar em análise.

Ele entrega:

## Teste primeiro estas 3 mudanças

01 — Reduza uma fonte de interrupção Aplicar na próxima sessão de trabalho.

02 — Registre um ponto de retomada Antes da próxima troca de contexto.

03 — Centralize o estado da tarefa Evite reconstruí-lo entre aplicativos.

Cada ação deve possuir:

action_id

fator relacionado;

esforço estimado;

quando testar;

resultado esperado;

evidência associada.

# 8. Before / After esperado

Não prometer resultado.

Exibir como hipótese de teste:

Antes

interrupção → perda do estado → releitura → retomada

Experimento

interrupção → salvar estado → retornar

Resultado a observar

menos reconstrução de contexto

Essa estrutura transforma recomendação em experimento mensurável, coerente com a camada de evidência e aprendizado do schema.

SCHEMA_RC_KNOWLEDGE_TO_ASSET_V1.yaml

# 9. CTA principal

Para TP-001:

## Aplicar uma recomendação

Não usar como CTA primário:

comprar;

contratar;

conhecer EXECUTAR;

seguir perfil.

O primeiro objetivo é completar:

conteúdo visto → Scanner utilizado → primeira ação executada.

# 10. CTAs secundários

Aprofundar

Entenda como esses fatores geram exposição cognitiva

→ próximo Topic Pack / artigo.

Ferramenta

Abrir recurso recomendado

→ prompt, checklist, conversor, protocolo ou EXECUTAR.

Salvar

Salvar meu mapa

→ retenção / retorno.

# 11. Feedback

Após o usuário testar uma recomendação:

Essa mudança ajudou nesta atividade?

Respostas:

Ajudou · Ajudou parcialmente · Não percebi diferença · Piorou · Ainda não testei

Depois:

O que mudou?

Campo opcional.

Esse dado gera:

problem_id

factor_id

control_id

solution_id

result

feedback

e posteriormente:

RC-LEARN-NNN

conforme a camada de aprendizado definida pelo schema.

SCHEMA_RC_KNOWLEDGE_TO_ASSET_V1.yaml

# 12. Exemplo completo de output

Seu Mapa de Fatores Cognitivos

Objetivo: concluir relatório semanal.

Situação: mensagens e e-mails interrompem a escrita e, ao retornar, é necessário reler o documento.

Comece investigando

1. Task Switching Vários sinais convergentes.

2. Ambiente Digital Alguns sinais convergentes.

3. Externalização Cognitiva Alguns sinais convergentes.

Primeiro experimento

Crie um ponto de retomada antes de trocar de contexto.

Registre:

onde parou;

última decisão;

próximo passo;

informação necessária para continuar.

O que observar

Na próxima retomada, verifique se houve:

menos releitura;

menor tempo procurando o ponto anterior;

menor necessidade de reconstruir decisões.

Próxima ação

Criar meu Resume Point

# 13. Regra de progressive disclosure

O usuário inicialmente vê apenas:

Problema → Top 3 → 3 ações.

Somente quando desejar aprofundar:

sentidos → fatores secundários → mecanismo → evidência → framework → referências.

Isso é especialmente coerente com o próprio conteúdo do TP-001 sobre quantidade, hierarquia e competição informacional.

O_Projeto_Editorial 2.docx

# 14. Objetos gerados

Cada scan produz:

RC-SCAN-NNN

RC-PROBLEM-NNN

FRC matches

RC-CONTROL-NNN

RC-SOLUTION-NNN

RC-ACTION-NNN

RC-EVENT-NNN

RC-METRIC-NNN

RC-LEARN-NNN

Quando o problema já existir no catálogo canônico, deve ser referenciado em vez de duplicado, seguindo a regra one concept → one canonical ID.

SCHEMA_RC_KNOWLEDGE_TO_ASSET_V1.yaml

RC-SCAN-OUTPUT-SPEC-V1 = DEFINIDO

Próxima tarefa 1:1: definir o catálogo inicial de intervenções do Scanner, começando pelos 8 fatores principais do TP-001, com controle preventivo · detectivo · corretivo → ação prática → solução tecnológica → placeholder → métrica de resultado.

Tarefa 21 — Catálogo inicial de intervenções do Scanner

ID: RC-SCAN-INTERVENTION-CATALOG-V1 Escopo: 8 fatores centrais do TP-001. Regra: cada fator recebe controle preventivo → detectivo → corretivo → ação prática → solução tecnológica → placeholder existente → métrica observável.

# RC-SCAN-INTERVENTION-CATALOG-V1

## FRC-03 — Quantidade de informação

Objetivo do controle

Reduzir a quantidade de informação que precisa competir simultaneamente pela atenção sem eliminar informação necessária.

Preventivo — CTRL-FRC03-P

Controle: progressive disclosure + filtragem contextual.

Antes da execução, mostrar prioritariamente apenas informação necessária à ação atual e manter detalhes disponíveis sob demanda.

Base: o W3C recomenda reduzir conteúdo desnecessário, simplificar interfaces e manter poucos elementos principais visíveis. (W3C⁠)

Detectivo — CTRL-FRC03-D

Controle: detectar sinais de busca/releitura excessiva.

Sinais: muitas consultas · releitura · procura repetida · comparação manual · abandono da leitura

Corretivo — CTRL-FRC03-C

Controle: converter conteúdo existente para uma visão reduzida e hierarquizada.

Ação prática

Transformar:

Documento completo → Essencial agora → Ações → Evidências → Detalhes

Solução tecnológica

Cognitive Content Converter

Input: PDF · DOCX · texto · relatório

Output: resumo executivo · ações · prioridades · evidências · detalhes expansíveis

Placeholder

Conversor Custo Cognitivo + Callouts

Métrica operacional

tempo até localizar a informação necessária;

quantidade de releituras;

número de consultas ao documento;

next_action_identified.

# FRC-04 — Forma e visualização da informação

Objetivo do controle

Diminuir esforço de localização e interpretação provocado pela apresentação da informação.

Clutter visual está associado a maior dificuldade de busca e reconhecimento visual. (PubMed⁠)

Preventivo — CTRL-FRC04-P

Controle: hierarquia informacional pré-definida.

Utilizar:

prioridade → agrupamento semântico → contraste funcional → whitespace → progressive disclosure

Detectivo — CTRL-FRC04-D

Controle: identificar telas ou documentos onde elementos secundários competem visualmente com o conteúdo principal.

Sinais: não sei onde olhar · comparação manual · informação crítica não se destaca · elementos visualmente equivalentes

Corretivo — CTRL-FRC04-C

Controle: re-renderizar o mesmo conteúdo em uma estrutura cognitivamente mais navegável.

Ação prática

Aplicar uma versão:

ANTES — conteúdo plano

→

DEPOIS — título → decisão → ação → evidência → detalhe

Solução tecnológica

Cognitive View Engine

Um componente que recebe conteúdo estruturado e gera automaticamente modos:

Completo · Resumo · Execução · Evidências

Placeholder

Obsidian Cognitive View + Callouts + Conversor

Métrica operacional

tempo para encontrar informação crítica;

cliques/rolagem até a ação;

erros de localização;

escolha correta do próximo passo.

# FRC-07 — Clareza e escrita da tarefa

Objetivo do controle

Evitar que a pessoa precise reinterpretar a tarefa antes de conseguir executá-la.

O W3C recomenda deixar claros início, processo, recursos, próximo passo e conclusão em tarefas de múltiplas etapas. (W3C⁠)

Preventivo — CTRL-FRC07-P

Controle: validar a tarefa antes de entrar na fila de execução.

Regra operacional do framework:

ação + objeto + resultado + contexto + critério de conclusão

Essa fórmula é uma construção operacional do projeto, não uma fórmula científica validada.

Detectivo — CTRL-FRC07-D

Controle: detectar tarefas vagas.

Exemplos:

Organizar projeto Ver relatório Resolver apresentação Trabalhar marketing

Corretivo — CTRL-FRC07-C

Controle: reescrever a tarefa antes da execução.

Ação prática

ANTES

“Organizar apresentação.”

DEPOIS

“Revisar os 10 slides da apresentação X, corrigir títulos e marcar como concluída quando todos estiverem prontos para revisão.”

Solução tecnológica

TaskLint

Scanner automático que detecta:

ausência de verbo executável;

resultado indefinido;

contexto ausente;

critério de pronto ausente;

múltiplas ações embutidas.

Placeholder

Conversor de Tarefas + Template

Métrica operacional

time_to_first_action;

número de reinterpretações;

tarefas devolvidas por ambiguidade;

percentual de tarefas com critério de pronto.

# FRC-06 — Decomposição de tarefas

Objetivo do controle

Transformar objetivos abstratos em caminhos curtos e executáveis.

O W3C recomenda processos contendo apenas as etapas necessárias e separação das etapas opcionais. (W3C⁠)

Preventivo — CTRL-FRC06-P

Controle: decompor objetivos antes de enviá-los à execução.

Estrutura:

Objetivo → Entregável → Etapa → Próxima ação

Detectivo — CTRL-FRC06-D

Controle: detectar itens nos quais o usuário sabe o que deseja alcançar, mas não consegue identificar a primeira ação.

Sinais: não sei começar · tarefa grande demais · várias operações dentro da mesma tarefa

Corretivo — CTRL-FRC06-C

Controle: interromper a tentativa de execução e decompor o trabalho.

Ação prática

Perguntar:

“Qual é a menor ação observável que faz este objetivo avançar?”

Solução tecnológica

Task Decomposer

Input:

“Preciso lançar meu curso.”

Output:

entregáveis → etapas → dependências → próxima ação → Definition of Done

Placeholder

Conversor + Workflow + Checklist

Métrica operacional

tempo entre selecionar e iniciar;

quantidade de objetivos sem próxima ação;

etapas concluídas;

abandono antes da primeira ação.

# FRC-09 — Dependências e cadeia de valor

Objetivo do controle

Retirar da memória do executor a responsabilidade de reconstruir continuamente o que depende de quê.

Preventivo — CTRL-FRC09-P

Controle: tornar dependências explícitas antes da execução.

Cada atividade deve declarar:

depende_de · desbloqueia · estado · responsável

Detectivo — CTRL-FRC09-D

Controle: identificar trabalho iniciado enquanto pré-requisitos permanecem incompletos.

Sinais: bloqueio tardio · espera · retrabalho · tarefa começada cedo demais

Corretivo — CTRL-FRC09-C

Controle: pausar atividade bloqueada, identificar predecessor e reordenar a execução.

Ação prática

Converter:

Lista de tarefas

em:

Grafo de execução

Solução tecnológica

Dependency Mapper

Estados:

BLOCKED → READY → ACTIVE → DONE

Placeholder

Mapa + Workflow + EXECUTAR

Métrica operacional

bloqueios descobertos após início;

retrabalho por dependência;

tempo parado;

percentual de tarefas READY executadas sem bloqueio.

# FRC-05 — Task Switching

Objetivo do controle

Reduzir alternâncias evitáveis e preservar contexto quando uma mudança realmente for necessária.

Experimentos clássicos encontraram custo de desempenho mesmo em mudanças previsíveis entre tarefas, e estudos de interrupção mostram que pistas externas podem ajudar na retomada. (ORA⁠)

Preventivo — CTRL-FRC05-P

Controle: batching + proteção do bloco ativo.

Durante um bloco:

1 prioridade ativa

e interrupções não urgentes são capturadas externamente.

Detectivo — CTRL-FRC05-D

Controle: registrar trocas de contexto.

Sinais: app_changed · task_changed · interruption_received · resume_required

Corretivo — CTRL-FRC05-C

Controle: oferecer um ponto explícito de retomada.

Registrar antes da mudança:

onde parei · última decisão · próximo passo · contexto necessário

Ação prática

Criar manualmente um Resume Point antes de abandonar uma tarefa importante.

Solução tecnológica

Resume Point Engine

Ao trocar de tarefa:

SAVE STATE

→ última ação

→ decisão atual

→ próximo passo

→ documentos abertos

→ contexto

Ao retornar:

RESUME FROM HERE

Placeholder

EXECUTAR + Protocolo de Retomada

Métrica operacional

número de switches;

tempo para retomar;

releitura após interrupção;

quantidade de tarefas abandonadas após troca.

# FRC-11 — Memória prospectiva

Objetivo do controle

Reduzir dependência de lembrar mentalmente uma intenção no momento correto.

Experimentos de Gilbert mostraram que lembretes externos podem melhorar o cumprimento de intenções e são utilizados de forma adaptativa conforme carga de memória e probabilidade de distração. (Taylor &amp; Francis Online⁠)

Preventivo — CTRL-FRC11-P

Controle: converter intenção futura em gatilho externo.

Estrutura:

Quando X ocorrer → apresentar Y.

Detectivo — CTRL-FRC11-D

Controle: identificar tarefas conhecidas que são repetidamente esquecidas no momento adequado.

Sinais: eu sabia · esqueci na hora · lembrei depois · etapa omitida

Corretivo — CTRL-FRC11-C

Controle: após uma omissão, substituir a dependência de memória interna por um gatilho verificável.

Ação prática

Substituir:

“Lembrar de enviar relatório.”

por:

“Quando o relatório mudar para APROVADO → criar ação Enviar relatório.”

Solução tecnológica

Contextual Reminder Builder

Triggers possíveis:

horário · evento · status · localização lógica · conclusão anterior · calendário

Placeholder

Checklist + Automação + EXECUTAR + Prisma

Métrica operacional

ações esquecidas;

ações realizadas após gatilho;

lembretes ignorados;

percentual de intenções concluídas no contexto esperado.

# FRC-15 — Ambiente digital

Objetivo do controle

Fazer a tecnologia absorver trabalho administrativo sem criar novas fontes desnecessárias de competição e reorientação.

O W3C recomenda controle de interrupções, conteúdo manejável, caminhos críticos curtos e preparação explícita da tarefa. (W3C⁠)

Preventivo — CTRL-FRC15-P

Controle: workspace orientado à tarefa atual.

Princípio:

uma ação principal visível + demais estados persistidos fora do campo competitivo.

Detectivo — CTRL-FRC15-D

Controle: identificar fragmentação operacional.

Sinais:

múltiplos aplicativos necessários para uma ação;

informação duplicada;

notificações concorrentes;

estado distribuído;

alternância frequente de tela.

Corretivo — CTRL-FRC15-C

Controle: consolidar estado e reduzir fontes concorrentes durante a execução.

Ação prática

Para uma atividade crítica:

definir aplicativo principal;

fechar fontes não necessárias;

silenciar interrupções dispensáveis;

registrar estado e próximo passo num único local.

Solução tecnológica

Focused Workspace

Interface:

AGORA

↓

1 tarefa

1 contexto

1 próxima ação

CAPTURE

↓

interrupções externas

STATE

↓

progresso persistente

Placeholder

EXECUTAR — Card Único / Workspace

Métrica operacional

aplicativos utilizados por tarefa;

mudanças de janela;

interrupções;

tempo de retomada;

tarefas concluídas sem troca de workspace.

# CATÁLOGO DE RESULTADOS

As métricas acima são métricas de execução, não medidas clínicas.

O Scanner deverá medir mudanças como:

menos releitura menos reconstrução de contexto menos bloqueios tardios menos ações esquecidas menor latência para começar menos decisões repetidas maior continuidade

e nunca:

melhora de TDAH redução de neurodivergência score cerebral percentual de cura

# PADRÃO DE RECOMENDAÇÃO DO AGENTE

Para qualquer um dos oito fatores, a saída deve usar sempre a mesma estrutura:

FATOR

↓

O QUE OBSERVAMOS

↓

POR QUE VALE INVESTIGAR

↓

CONTROLE PREVENTIVO

↓

COMO DETECTAR

↓

O QUE FAZER QUANDO OCORRER

↓

AÇÃO PRÁTICA

↓

SOLUÇÃO TECNOLÓGICA

↓

RECURSO DISPONÍVEL

↓

O QUE MEDIR

# ARQUITETURA QUE EMERGE

Os oito fatores não exigem oito produtos independentes.

Eles convergem para cinco componentes reutilizáveis:

CONVERT FRC-03 · FRC-04

STRUCTURE FRC-06 · FRC-07 · FRC-09

RESUME FRC-05

REMEMBER FRC-11

FOCUS FRC-15

Esses componentes podem posteriormente operar dentro de um mesmo fluxo:

Scanner → identificar fator → selecionar controle → executar ferramenta → medir resultado.

Isso transforma o Scanner de um questionário em uma porta de entrada para uma biblioteca operacional de controles cognitivos.

A governança permanece compatível com o schema mestre: controle, solução, asset, evento de uso, métrica e aprendizado continuam objetos separados e rastreáveis.

RC-SCAN-INTERVENTION-CATALOG-V1 = DEFINIDO

Próxima tarefa 1:1 prevista no plano: formalizar o MVP funcional do Scanner, determinando o que realmente precisa ser desenvolvido para colocar a primeira versão gratuita dentro do blog, sem implementar ainda todas as cinco engines.

Base confirmada antes da especificação: o repositório ativo é Sas-Executar/payload-website-starter, branch main, conectado ao projeto Vercel payload-website-starter (prj_4ky5u6OSsCga7uutpOO0d9W2kZmC); o projeto payload-website-starter-os6w é duplicado e seus deployments estão sendo cancelados intencionalmente. O deployment de produção atual está READY, sem erros de runtime nas últimas 24 horas.

A rota /mapa-de-risco já existe e é hoje uma página Payload dinâmica; o [slug] consulta a collection pages e renderiza Hero + Blocks, portanto não precisamos recriar essa fundação.  O frontend também já possui as rotas editoriais, enquanto /api está ocupado pelo catch-all do Payload, então o endpoint do Scanner não deve competir com essa árvore.

# MVP-RC-SCAN-001

## Scanner de Fatores de Risco Cognitivo · MVP Funcional integrado ao Blog

Produto: RC-SOLUTION-001 Repositório canônico: Sas-Executar/payload-website-starter Projeto Vercel canônico: payload-website-starter Rota principal: /mapa-de-risco Status: READY FOR IMPLEMENTATION SPEC Escopo: MVP gratuito · TP-001 · 8 fatores prioritários Princípio: Agente interpreta; algoritmo classifica; catálogo determina intervenções.

# 01. DECISÃO PRINCIPAL

O MVP não será um novo aplicativo separado do blog.

O Scanner será incorporado à rota já existente:

/mapa-de-risco

A página atual continua apresentando:

Demanda cognitiva → Vulnerabilidade → Falha provável → Controle

e ganha abaixo dela:

INICIAR SCANNER

↓

situação real

↓

perguntas adaptativas

↓

Top 3 fatores

↓

ações recomendadas

↓

próximo passo

Isso preserva URL, identidade visual, navegação, CMS, SEO futuro e conexão editorial já existentes.

# 02. ARQUITETURA DE ROTA

Hoje /mapa-de-risco é resolvido pelo [slug] genérico do Payload.

Para o Scanner, transformar essa URL em rota explícita, seguindo o precedente já existente de Home e Sobre.

Estrutura:

src/app/(frontend)/

└── mapa-de-risco/

├── page.tsx

├── ScannerClient.tsx

└── api/

└── route.ts

A nova page.tsx deverá:

consultar o documento Payload mapa-de-risco;

preservar Hero e Blocks atuais;

renderizar o Scanner depois do conteúdo editorial;

manter Preview quando aplicável.

Também deve excluir mapa-de-risco do generateStaticParams() do [slug], como já acontece com home e sobre.

Por que

Isso evita:

novo domínio;

novo projeto Vercel;

iframe;

novo CMS;

colisão com /api do Payload;

migração de banco apenas para incorporar a interface;

design system paralelo.

# 03. ARQUITETURA FUNCIONAL

USUÁRIO

↓

ScannerClient

↓

/mapa-de-risco/api

↓

SCANNER AGENT

↓

extração de contexto e sinais

↓

CLASSIFIER TS

↓

Top 3 FRC

↓

CATÁLOGO APROVADO

↓

intervenções + evidências + placeholders

↓

OUTPUT ESTRUTURADO

↓

ScannerClient

A regra arquitetural mais importante:

O LLM não calcula sozinho o resultado do Scanner.

O agente interpreta linguagem natural.

O código determinístico aplica as regras de classificação aprovadas.

O catálogo determina quais intervenções podem ser exibidas.

# 04. ESCOPO DE CONHECIMENTO DO MVP

A metodologia possui 20 FRC canônicos.

O MVP implementará completamente apenas os 8 fatores do TP-001 que já possuem argumento, evidência, controles e catálogo de intervenção fechados:

FRC-03 Quantidade de informação

FRC-04 Forma e visualização

FRC-07 Clareza da tarefa

FRC-06 Decomposição

FRC-09 Dependências

FRC-05 Task switching

FRC-11 Memória prospectiva

FRC-15 Ambiente digital

Regra

Os outros 12 permanecem no conhecimento metodológico, mas não serão classificados como resultado principal enquanto não tiverem o mesmo nível de especificação operacional.

Se um relato indicar algo fora do catálogo:

“Esta situação pode envolver fatores que ainda não fazem parte da versão atual do Scanner.”

Não inventar recomendação.

# 05. COMPONENTES QUE PRECISAM SER DESENVOLVIDOS

## 5.1 ScannerShell

Responsável pela experiência completa.

Estados:

INTRO

→ CONTEXT

→ QUESTIONS

→ PROCESSING

→ RESULT

→ ACTION

→ FEEDBACK

## 5.2 SituationInput

Pergunta:

O que está exigindo mais esforço do que deveria?

Campos:

situação livre;

objetivo;

contexto.

Não solicitar diagnóstico.

## 5.3 AdaptiveQuestion

Uma pergunta por tela.

Usará o catálogo S1–S8 já aprovado.

Fluxo:

1 pergunta inicial por dimensão

→ identificar sinais

→ aprofundar somente 2–3 dimensões

Meta funcional:

aproximadamente 10–14 respostas, não todas as perguntas existentes.

## 5.4 ScanProgress

Não usar:

67% de risco

Usar progresso de processo:

CONTEXTO

2/4

MAPEAMENTO

5/8

ANÁLISE

...

## 5.5 FactorResultCard

Até três cards.

Cada card mostra:

FRC;

sinais encontrados;

motivo da associação;

sentidos envolvidos;

manifestações observadas;

nível qualitativo de evidência;

botão “Ver o que posso testar”.

## 5.6 RecommendationCard

Formato fixo:

OBSERVE

↓

EXPERIMENTE

↓

COMO FAZER

↓

O QUE MEDIR

A recomendação é carregada do catálogo aprovado.

## 5.7 EvidenceDrawer

Progressive disclosure.

O usuário só abre se desejar.

Contém:

claim autorizado;

referência;

tipo de evidência;

limite da interpretação;

indicação [E1] / [E2] / [S] / [FW].

## 5.8 CognitiveMap

O MVP não precisa começar com canvas, nós arrastáveis ou visualização complexa.

Primeira versão:

SUA SITUAÇÃO

↓

SENTIDOS

↓

TOP FATORES

↓

AÇÕES

Cards conectados visualmente e responsivos são suficientes.

O grafo radial/interativo completo fica para V2.

## 5.9 FeedbackControl

Pergunta final:

Essa recomendação ajudou nesta atividade?

Opções:

Ajudou

Ajudou parcialmente

Não percebi diferença

Piorou

Ainda não testei

# 06. AGENTE

Criar:

src/ai/scanner/

├── agent.ts

├── instructions.ts

├── schemas.ts

├── extractSignals.ts

└── safety.ts

Dependências novas:

@openai/agents

zod

O Agents SDK atual suporta agentes TypeScript, tools e structured outputs; Zod v4 pode ser usado diretamente como outputType. (OpenAI⁠)

O agente fará somente quatro coisas

compreender situação e objetivo;

extrair sinais observáveis;

escolher a próxima pergunta adaptativa;

produzir explicações em linguagem natural dentro dos claims autorizados.

O agente NÃO fará

scoring;

definição autônoma de risco;

criação de novos FRC;

criação de novas técnicas;

diagnóstico;

recomendação clínica.

# 07. CLASSIFICADOR DETERMINÍSTICO

Criar:

src/lib/scanner/classifier.ts

Entrada:

answers[]

observedSignals[]

context

objective

Saída:

candidateFactors[]

topFactors[]

evidenceLevel

Aplicar o algoritmo já aprovado:

Resposta direta      40%

Sinal textual        25%

Recorrência          20%

Impacto operacional  15%

Esses pesos são hipótese operacional versionada.

Nunca apresentar percentual ao usuário.

Condição mínima

FRC precisa apresentar convergência suficiente antes de entrar no resultado.

Sem dados:

insufficientEvidence: true

O agente pergunta mais.

# 08. CATÁLOGOS ESTÁTICOS

Para o MVP, não criar banco vetorial nem RAG.

Criar:

src/editorial/scanner/

├── senses.ts

├── factors.ts

├── questions.ts

├── interventions.ts

├── evidence.ts

└── claims.ts

Motivo

O domínio inicial é:

pequeno;

versionado;

altamente controlado;

sensível a inferências incorretas.

Um catálogo TypeScript/JSON oferece maior:

auditabilidade;

previsibilidade;

velocidade;

testabilidade;

controle científico.

RAG entra somente quando a base documental justificar.

# 09. RECOMENDAÇÕES DETERMINÍSTICAS

O LLM não deve inventar a intervenção final.

Exemplo:

FRC-05

↓

getIntervention(FRC-05)

↓

CTRL-FRC05-P

CTRL-FRC05-D

CTRL-FRC05-C

↓

Resume Point

O agente pode explicar o controle em linguagem natural.

Não pode trocar o controle autorizado por outra técnica inventada.

# 10. OUTPUT TYPE

Schema mínimo:

ScanAgentOutput

problemStatement

objective

context

observedSignals[]

answers[]

investigatedSenses[]

factorCandidates[]

topFactors[

factorId

supportingSignals[]

supportingQuestionIds[]

evidenceLevel

explanation

]

limitations[]

needsMoreInformation

nextQuestion?

Depois do retorno do agente:

Agent Output

+

Classifier

+

Intervention Catalog

=

FinalScanResult

A UI nunca renderiza diretamente texto livre do modelo como resultado metodológico.

# 11. API

Endpoint exclusivo:

POST /mapa-de-risco/api

Não criar /api/scanner no MVP porque o projeto já possui o catch-all /api/[...slug] do Payload.

Request

sessionId

turn

problemStatement

objective

context

answers[]

Response durante perguntas

status: &quot;question&quot;

questionId

question

options[]

Response final

status: &quot;result&quot;

scanResult

# 12. SESSÃO

MVP anônimo.

Não exigir:

login;

cadastro;

usuário Payload;

conta EXECUTAR.

Gerar:

scanSessionId

no navegador.

Persistência temporária:

sessionStorage

Opcionalmente:

localStorage

apenas para permitir recuperação local do último mapa.

# 13. PRIVACIDADE DO MVP

Por padrão:

não persistir o relato bruto do usuário em banco.

Isso é especialmente importante porque o texto livre pode conter informações pessoais ou de saúde.

Persistir inicialmente apenas eventos não sensíveis de produto.

Não enviar o relato bruto como propriedade de analytics.

# 14. ANALYTICS

O projeto já possui @vercel/analytics, então não precisa introduzir nova plataforma para validar o primeiro funil.

Registrar eventos:

scanner_open

scanner_start

scanner_context_complete

scanner_question_answer

scanner_complete

scanner_factor_open

scanner_recommendation_open

scanner_action_selected

scanner_feedback

scanner_next_content

Vercel Web Analytics suporta track() para eventos personalizados, inclusive com propriedades associadas.

North Star inicial

scanner_complete

→ scanner_action_selected

→ scanner_feedback

Não medir apenas pageviews.

# 15. O QUE NÃO PRECISA SER DESENVOLVIDO AGORA

## Fora do MVP

todos os 20 fatores com recomendações completas;

CONVERT Engine;

STRUCTURE Engine;

RESUME Engine funcional;

REMEMBER Engine;

FOCUS Engine;

automações reais;

integração EXECUTAR;

contas de usuário;

histórico em nuvem;

dashboard pessoal;

PDF personalizado;

Prisma personalizado;

upload de documentos;

análise de PDF;

voz;

agente multiagente;

fine-tuning;

vector database;

RAG geral sobre o blog;

mapa canvas avançado;

comparação longitudinal;

“score cognitivo”;

diagnóstico.

Esses itens não bloqueiam a validação da hipótese principal.

# 16. O QUE O MVP REALMENTE PRECISA PROVAR

A pergunta não é:

“Conseguimos construir um agente sofisticado?”

A pergunta é:

“Uma pessoa consegue descrever uma dificuldade, reconhecer fatores relevantes, receber uma recomendação compreensível e decidir testar alguma coisa?”

Portanto o MVP precisa provar cinco passos:

1. DESCREVER

2. RECONHECER

3. ENTENDER

4. ESCOLHER

5. TESTAR

# 17. FLUXO DE USUÁRIO FINAL

/mapa-de-risco

↓

“Mapeie uma situação real”

↓

Descrever problema

↓

Definir objetivo

↓

Perguntas adaptativas

↓

Top 3 fatores

↓

“Por que esses fatores apareceram?”

↓

3 ações possíveis

↓

Selecionar 1 ação

↓

“Teste nesta situação”

↓

Feedback posterior

# 18. INTEGRAÇÃO EDITORIAL

O Scanner precisa existir em três pontos.

Ponto 1 — Mapa de Risco

CTA principal:

MAPEAR MINHA SITUAÇÃO

Ponto 2 — Artigo TP-001

CTA:

Identifique quais fatores aparecem na sua execução.

Ponto 3 — Resultado do Scanner

CTA editorial:

Entenda como esses fatores podem gerar exposição cognitiva.

Isso cria:

ARTIGO

→ SCANNER

→ AÇÃO

→ PRÓXIMO ARTIGO

e não um chatbot isolado.

# 19. IDENTIDADE VISUAL

Não criar design system novo.

Usar o sistema que já está ativo:

t-display

t-heading

t-eyebrow

t-body

pill

bullet-dot

rc-border

rc-surface

rc-ink

rc-slate

rc-blue

rc-red

rc-amber

rc-sage

O Scanner deve parecer parte editorial nativa do Risco Cognitivo.

Não uma janela genérica de ChatGPT.

# 20. ACESSIBILIDADE

Preservar as melhorias recentes do projeto.

Obrigatório:

operação completa por teclado;

focus visible;

labels;

estados anunciados;

aria-live para nova pergunta/resultado;

não usar cor como única codificação;

botões com touch target adequado;

progressive disclosure;

uma decisão principal por tela;

suporte mobile 320px+;

respeito aos modos cognitivos já existentes.

# 21. VARIÁVEIS DE AMBIENTE

Adicionar somente:

OPENAI_API_KEY

Opcional:

RC_SCANNER_MODEL

RC_SCANNER_ENABLED

RC_SCANNER_ENABLED permite desligar o Scanner sem rollback caso haja incidente.

# 22. ERROR STATES

O MVP precisa tratar:

Agente indisponível

“Não consegui processar esta situação agora.”

CTA:

Tentar novamente

Evidência insuficiente

“Ainda preciso entender melhor o contexto.”

→ continuar perguntas.

Safety boundary

“O Scanner organiza fatores de execução e não realiza avaliação clínica.”

Timeout

Preservar respostas já preenchidas e permitir novo envio.

# 23. TESTES NECESSÁRIOS

## Unitários

classifier;

weights;

convergence rules;

factor mappings;

intervention lookup;

schema validation.

## Agent evals

Casos controlados:

information overload;

vague task;

hidden dependency;

interruption;

prospective memory;

digital fragmentation;

ambiguous/no evidence;

request for diagnosis.

## E2E

Adicionar ao Playwright já utilizado no projeto:

/mapa-de-risco

→ iniciar

→ preencher

→ responder

→ obter resultado

→ abrir recomendação

→ registrar ação

## Acessibilidade

teclado;

focus;

labels;

screen reader semantics;

reduced-motion quando aplicável.

# 24. DEPLOYMENT

Criar branch:

feat/rc-scanner-mvp

Fluxo:

GitHub branch

↓

Preview Deployment

↓

Agent tests

↓

E2E

↓

Mobile QA

↓

Accessibility QA

↓

Runtime logs

↓

PR

↓

main

↓

Production

Regra crítica

Deploy e validação somente no projeto:

payload-website-starter

Nunca utilizar:

payload-website-starter-os6w

# 25. DEFINITION OF DONE DO MVP

O MVP recebe GO quando:

/mapa-de-risco continua exibindo o conteúdo existente;

botão MAPEAR MINHA SITUAÇÃO funciona;

usuário descreve uma situação;

objetivo e contexto são coletados;

perguntas S1–S8 funcionam adaptativamente;

resultado considera apenas os 8 FRC autorizados;

Top 3 depende do classificador determinístico;

cada resultado explica sinais que levaram ao match;

cada fator possui uma recomendação autorizada;

nenhuma recomendação é criada livremente pelo LLM;

saída não usa linguagem diagnóstica;

resultado mostra no máximo 3 ações iniciais;

analytics registra o funil;

funcionamento mobile está validado;

teclado e semântica acessível estão validados;

erro de API possui fallback;

testes de classificação passam;

E2E principal passa;

deployment Preview passa;

produção não apresenta runtime error novo.

# 26. ARQUITETURA FINAL DO MVP

RISCO COGNITIVO BLOG

│

/mapa-de-risco

│

SCANNER CLIENT

│

situação + perguntas

│

▼

SCANNER AGENT

│

extrair sinais

│

▼

CLASSIFIER DETERMINÍSTICO

│

Top 3 FRC

│

▼

INTERVENTION CATALOG

│

┌────────────┼────────────┐

│            │            │

ENTENDA      EXPERIMENTE    MEÇA

│            │            │

└────────────┼────────────┘

│

▼

PRÓXIMA AÇÃO

│

▼

LEARNING

# 27. RESULTADO DO RECORTE

O MVP não implementa cinco engines.

Implementa uma única experiência vertical completa:

Situação real → investigação → Top 3 fatores → uma recomendação aplicável.

Essa é a menor versão capaz de validar simultaneamente:

utilidade do framework;

clareza da taxonomia;

capacidade do agente;

interesse pela ferramenta;

qualidade das recomendações;

CTA editorial;

demanda para futuras engines.

Artifact status: MVP-RC-SCAN-001 = FORMALIZADO

Um ponto adicional encontrado na inspeção: a rota /mapa-de-risco já usa exatamente a linguagem Demanda cognitiva · Vulnerabilidade · Falha provável · Controle e declara que o mapa “não é um diagnóstico”, portanto o Scanner pode evoluir essa página sem ruptura conceitual. Também confirmei que o projeto ativo já possui Analytics e Speed Insights, e o Agents SDK atual pode ser adicionado com @openai/agents + Zod v4 para structured outputs.

Não alterei código nem fiz deploy nesta tarefa. A próxima tarefa 1:1 é definir o Change Set exato do repositório — arquivos a criar, arquivos a modificar e dependências, antes de qualquer implementação.

Tópico

Resposta

5W2H

Contexto

O Change Set MVP-RC-SCAN-001 será aplicado exclusivamente em Sas-Executar/payload-website-starter, preservando Next.js 16, Payload, Analytics e a rota pública /mapa-de-risco já coberta pelo QA de produção.

What · Why

Hoje - Problema

/mapa-de-risco ainda é resolvido pelo [slug] genérico do Payload e não existe camada de Scanner, classificador, catálogo TP-001 ou endpoint próprio, enquanto /api já pertence ao catch-all do Payload.

What · Why

Agora - Processo

O desenvolvimento deve criar uma rota explícita /mapa-de-risco, incorporar o Scanner após o conteúdo Payload existente e separar interpretação por agente, classificação determinística e intervenção catalogada.

How · When

Amanhã - Progresso

Após o Change Set implementado haverá uma vertical funcional situação → perguntas → sinais → Top 3 FRC → ação, habilitável por feature flag e testável em Preview antes de qualquer merge para produção.

When · What

Passo 01

Criar src/app/(frontend)/mapa-de-risco/page.tsx, ScannerClient.tsx e api/route.ts, além de alterar src/app/(frontend)/[slug]/page.tsx para excluir mapa-de-risco do generateStaticParams, seguindo o precedente já aplicado a home e sobre.

What · How

Passo 02

Criar src/lib/scanner/types.ts, schemas.ts, classifier.ts, session.ts e safety.ts, mais src/editorial/scanner/factors.ts, questions.ts, interventions.ts, evidence.ts e claims.ts contendo somente FRC-03, FRC-04, FRC-07, FRC-06, FRC-09, FRC-05, FRC-11 e FRC-15.

What · How

Passo 03

Criar src/ai/scanner/agent.ts, instructions.ts e extractSignals.ts, alterar package.json e pnpm-lock.yaml para @openai/agents e zod, e adicionar tests/int/scanner-classifier.int.spec.ts, tests/int/scanner-catalog.int.spec.ts e cobertura Scanner em tests/production/release.e2e.spec.ts.

What · How

Atenção

O endpoint deve permanecer em /mapa-de-risco/api e não em /api/scanner, porque a árvore (payload)/api/[...slug] já é reservada ao Payload e uma implementação concorrente aumentaria risco de roteamento.

Where · Who

Alerta

O workflow atual de Production QA executa somente após push em main e aponta PLAYWRIGHT_BASE_URL para um endereço Vercel específico, portanto a primeira validação do Scanner deve ocorrer em Preview antes desse gate de produção. Comece Aqui Leo.md

What · When

Risco

Permitir que o modelo gere score ou intervenção livre comprometeria rastreabilidade e consistência metodológica, enquanto persistir relatos brutos aumentaria desnecessariamente a exposição de dados potencialmente sensíveis.

Why · What

Prevenção

O agente ficará restrito a interpretar contexto, extrair sinais e selecionar próxima pergunta, enquanto classifier.ts calcula convergência, o catálogo define intervenções e a sessão permanece prioritariamente em sessionStorage.

How

Entenda

O MVP não precisa das cinco engines porque a hipótese verificável é se o usuário consegue reconhecer fatores relevantes e escolher uma ação útil a partir de uma situação real.

Why

Estruture

A implementação deve permanecer modular em quatro blocos UI da rota → Agent → Classifier → Editorial Catalog, reutilizando os tokens visuais e o &lt;Analytics /&gt; já presentes no layout global. O_Projeto_Editorial 2.docx

How · Where

Execute

O executor deve abrir feat/rc-scanner-mvp, aplicar primeiro catálogo e classificador, depois endpoint e agente, depois UI e analytics, finalizar testes unitários/E2E e somente então submeter PR contra main.

Who · How · When

Entregue

O gate de saída é um Preview funcional de /mapa-de-risco com conteúdo editorial preservado, Scanner anônimo completo, no máximo 3 FRC e 3 ações, zero colisões com Payload, testes verdes e nenhum deploy manual para produção antes do merge.

What · When · How much

Entendido. A partir daqui meu papel neste fluxo fica restrito a arquitetura, produto, design, governança e especificação. Não vou alterar código, abrir branches, implementar componentes nem fazer deploy.

O bloco anterior sobre arquivos do repositório deve ser tratado apenas como levantamento técnico de contexto, útil para sabermos onde a solução poderá ser implementada posteriormente por um agente de engenharia. Ele não muda nosso workflow principal.

Onde o produto do Scanner ficou formalizado

Já temos este conjunto documental:

PRD-RC-SCAN-001 — problema, usuário, JTBD, proposta de valor, escopo e métricas.

FRD-RC-SCAN-001 — requisitos funcionais do Scanner.

UX-RC-SCAN-001 — fluxo de entrada, conversa, mapa, fatores e plano rápido.

AGENT-SPEC-RC-SCAN-001 — responsabilidade do agente, conhecimento autorizado e output estruturado.

TECH-SPEC-RC-SCAN-001 — arquitetura tecnológica conceitual.

ADR-RC-SCAN-001 — decisões principais: agente manager, structured output, sem fine-tuning inicial e arquitetura controlada.

DATA-RC-SCAN-001 — entidades de Scan, Observation, Recommendation, Event e Learning.

NFR-RC-SCAN-001 — performance, acessibilidade, confiabilidade e observabilidade.

SAFETY-RC-SCAN-001 — limites clínicos, linguagem e guardrails.

DELIVERY-RC-SCAN-001 — gates do MVP.

RC-SCAN-QUESTION-CATALOG-V1 — perguntas S1–S8.

RC-SCAN-CLASSIFICATION-ENGINE-V1 — regras de convergência e priorização.

RC-SCAN-OUTPUT-SPEC-V1 — formato do resultado.

RC-SCAN-INTERVENTION-CATALOG-V1 — controles preventivos, detectivos e corretivos dos oito fatores prioritários.

MVP-RC-SCAN-001 — recorte mínimo do produto.

Portanto, o produto já está suficientemente arquitetado para ficar estacionado como subprojeto do TP-001.

Decisão de governança

O Scanner entrou no meio do workflow porque surgiu como uma oportunidade de produto durante a definição do CTA.

Isso foi útil, mas agora devemos voltar ao eixo original:

TP-001 — Knowledge Pack → conteúdo master → solução → assets → distribuição → learning.

O Scanner passa a ocupar formalmente:

TP-001 → RC-SOLUTION-001 → Scanner de Fatores de Risco Cognitivo

e não deve continuar expandindo indefinidamente antes de terminarmos o Pack.

O que continua congelado

A cadeia aprovada do TP-001 permanece:

20 fatores canônicos

→ macrogrupos MECE

→ 8 fatores centrais

→ sequência narrativa

→ article outline

→ mapa argumentativo

→ evidence matrix

→ authorized claims

→ storyboard de 48 parágrafos

→ brief visual

→ matriz dos sentidos

→ matriz problema/solução

→ Scanner como solução principal.

Próxima etapa correta do workflow original

Nós havíamos chegado ao ponto em que faltava transformar toda essa arquitetura em produção controlada do Knowledge Master.

Portanto, a próxima tarefa 1:1 não será código e nem nova engenharia do Scanner.

Será:
