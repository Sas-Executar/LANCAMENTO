---
status: canonical
onboarding_id: OFICINA_ROUTES_PRODUCTION_ONBOARDING
route: D19
---

# Onboarding — rotas e produção da Oficina

Este é o ponto de entrada para pessoas e agentes que precisam transformar uma skill, template, prompt, plugin, ebook, artigo, workflow ou outro ativo em uma solução publicável na Oficina.

## 1. Regra de roteamento

A política do repositório é **primary-purpose**: cada arquivo fica na rota de sua finalidade principal. Dependências entre áreas são feitas por referência cruzada; a mesma fonte canônica não deve ser copiada para duas rotas.

Para a Oficina, a divisão operacional é:

| Rota | Responsabilidade no fluxo |
|---|---|
| **D11 — Experiência e projeto** | UX, wireframes, Design System, composição visual e experiência. |
| **D12 — Engenharia** | componentes, implementação, renderização, integrações e contratos técnicos. |
| **D19 — Assets e CTA** | rota primária da solução: schema, classificação, bundle, assets, store submission e release. |
| **D22 — Decision log** | ADRs e decisões arquiteturais/governança. |
| **D23 — Blueprints** | padrões reutilizáveis que transcendem uma solução específica. |

As demais rotas continuam sendo fonte canônica de conteúdo de domínio. Exemplo: uma fonte jurídica continua em D02; uma solução publicada na Oficina referencia essa fonte em D19, sem duplicá-la.

## 2. Ordem de leitura

Antes de escrever: `README.md → AGENTS.md → MASTER_INDEX.md → _governance/ROUTES.json → REPOSITORY_MAP.md → ENTRY_PROTOCOL → EXIT_PROTOCOL`.

Para produzir uma solução, leia em seguida:

`solution-store/README.md → OFICINA_PRODUCTION_RUNBOOK.yaml → SUPER_SCHEMA_SOLUTION.yaml → DESIGN_SYSTEM_BINDING.yaml → REACT_COMPONENT_CONTRACT.yaml`.

## 3. Fluxo de produção

```text
SOURCE
  ↓
INGESTED
  ↓
CLASSIFIED
  ↓
SCHEMA_COMPLETE         G1
  ↓
BUNDLE_READY            G2
  ↓
IN_EDITORIAL_PRODUCTION
  ↓
ASSETS_READY            G3
  ↓
QA_READY                G4
  ↓
STORE_READY             G5
  ↓
PUBLISHED               G6
```

### SOURCE → INGESTED

Identifique `task_id`, origem, owner, source refs, objetivo e rota primária. Soluções da loja entram em D19. Conteúdo de domínio permanece em sua rota original e é referenciado.

### INGESTED → CLASSIFIED

Classifique nesta ordem: **product type → área principal/secundárias → profissões → task types → artifact types → tags/node keys**. Não invente IDs fora dos registries.

### CLASSIFIED → SCHEMA_COMPLETE

Preencha o `SUPER_SCHEMA_SOLUTION.yaml`: camada pública 3PN3, contrato, 5W2H interno, matriz de 18 campos, controle de 24 campos, ficha interna, 3 melhores usos, 3 riscos/overkill, scoring baseado em evidência, produção comercial e rastreabilidade.

### SCHEMA_COMPLETE → BUNDLE_READY

Gere o Production Handoff Bundle. O bundle é o contrato imutável de entrada para produção; não use arquivos soltos como substituto do handoff.

### BUNDLE_READY → IN_EDITORIAL_PRODUCTION

Produza somente os assets requeridos pelo `product_type`. A camada visual deve consumir `D11/.../DESIGN_SYSTEM_BINDING.yaml`; a implementação deve seguir `D12/.../REACT_COMPONENT_CONTRACT.yaml`.

O conjunto típico inclui card, poster, vídeo master, variantes, video loop, GIF fallback, carousel vertical, screenshots, onboarding HTML, download package e store listing.

### ASSETS_READY → QA_READY

Valide legibilidade, responsividade, acessibilidade, claims/evidências, links, CTA, áudio/licenças, overflow, sincronização, formatos e privacidade.

### QA_READY → STORE_READY → PUBLISHED

Feche listing e URLs finais. Publicar apenas com G1–G5 verdes. Depois da publicação, registre URL e data no Release Manifest e promova G6.

## 4. Handoffs entre rotas

**D19 → D11:** enviar `solution_id`, requisitos de assets, contexto e referências.  
**D11 → D12:** enviar binding do Design System, wireframe, estados e interações.  
**D12 → D19:** devolver build/render refs, limitações e artefatos produzidos.  
**Qualquer rota → D22:** abrir ADR quando houver decisão estrutural que precise sobreviver à execução.

## 5. Regra visual

O Design System EXECUTAR importado em D11 é a fonte visual canônica. Não inferir ou substituir tokens quando existir token semântico. Referências externas podem orientar arquitetura, nunca substituir o SOT visual.

## 6. Primeiro exemplo a consultar

Use `D19__assets-e-cta/solution-store/obsidian-editorial/` como golden reference. Ele contém solução preenchida, store submission, card, carousel, onboarding, vídeo, asset manifest, release manifest e Production Handoff Bundle.

## 7. Checklist de saída

Uma execução termina somente quando: rota está correta, fonte não foi duplicada, receipt foi criado, índices foram sincronizados, validação de governança passou e a mudança foi entregue por PR/merge.

A versão legível por máquina deste onboarding é `ONBOARDING_ROUTES_PRODUCTION.yaml`.
