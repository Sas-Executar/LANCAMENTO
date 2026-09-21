# Protocolo de Entrada, Alteração e Saída

## 1. Entrada do agente

Antes de agir, o agente deve registrar ou resolver:

| Campo | Obrigatório | Regra |
|---|---:|---|
| `request_id` | sim | ID único da solicitação |
| `agent_id` | sim | identidade do agente/serviço |
| `scope` | sim | objetos e operações autorizadas |
| `input_object_ids` | sim | IDs canônicos, nunca apenas nomes |
| `expected_output` | sim | tipo, formato e destino |
| `risk_level` | sim | LOW/MEDIUM/HIGH |
| `write_authority` | sim | READ_ONLY ou lista de mutações permitidas |

Sequência obrigatória:

1. Consultar `v_master_index`.
2. Confirmar versão e estado dos objetos.
3. Carregar somente relações necessárias.
4. Verificar gates epistêmicos e de acesso.
5. Declarar conflito, ausência ou ambiguidade antes de escrever.

## 2. Regras durante a operação

- Não criar novo conceito se existir termo ou alias equivalente.
- Não alterar IDs, `created_at`, `created_by` ou eventos históricos.
- Não copiar texto de evidência para assets como se fosse claim editorial.
- Não elevar classe epistêmica automaticamente.
- Não registrar resultado observado sem unidade, janela e origem.
- Não usar `CAUSES` sem aprovação humana e suporte explícito.
- Não calcular prioridade antes de filtrar dependência, hard constraints, capacidade e WIP.
- Toda alteração material gera `audit_event`; toda promoção gera `status_event`.

## 3. Handoff de saída

Toda saída deve entregar:

| Campo | Descrição |
|---|---|
| `request_id` | correlação com a entrada |
| `agent_id` | responsável pela execução |
| `objects_read` | IDs e versões consultados |
| `objects_created` | IDs, tipos e versões |
| `objects_updated` | versão anterior e nova |
| `relations_created` | origem, tipo e destino |
| `gates_evaluated` | PASS/FAIL com evidência |
| `unresolved_items` | lacunas, conflitos ou decisões humanas |
| `next_action` | próximo passo inequívoco |
| `output_hash` | hash do payload/artefato |

## 4. Gates de promoção

| Transição | Gate |
|---|---|
| DRAFT → PROPOSED | identidade, owner, origem e escopo |
| PROPOSED → APPROVED | revisão humana e ausência de conflito |
| APPROVED → IMPLEMENTED | artefato/feature verificável |
| IMPLEMENTED → TESTED | protocolo e resultado registrados |
| TESTED → PUBLISHED | aprovação editorial/operacional e tracking |
| PUBLISHED → MEASURED | janela fechada e eventos completos |
| MEASURED → LEARNED | decisão e racional registrados |

## 5. Controle de concorrência

- Escrita usa versão esperada (`expected_version`).
- Divergência de versão interrompe a operação; não há last-write-wins.
- IDs são reservados antes de operações longas.
- Mudanças em taxonomia, estados, enums ou relações causais exigem revisão de governança.

## 6. Critérios de bloqueio

Bloquear a saída quando houver:

- referência a objeto inexistente;
- ciclo em dependências de ações;
- asset sem problema, solução ou CTA primário;
- claim promovida sem evidência ou ressalva;
- hipótese/feature apresentada como fato científico;
- métrica sem janela, unidade ou origem;
- publicação sem versão imutável;
- promoção sem gate documentado.

