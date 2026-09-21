# Change Receipt — D19-COMMERCIAL-VIDEO-SCHEMA-001

- **task_id:** D19-COMMERCIAL-VIDEO-SCHEMA-001
- **date:** 2026-09-21
- **primary_route:** D19 — `D19__assets-e-cta`
- **classification:** update + create
- **source:** solicitação explícita do mantenedor em conversa.
- **objective:** ampliar o Super Schema com uma camada padronizada de produção comercial e criar o template preenchido de vídeo do Obsidian Editorial.
- **output:** YAML canônico + instância de produção.
- **status:** completed

## Arquivos afetados

- `D19__assets-e-cta/solution-store/SUPER_SCHEMA_SOLUTION.yaml`
- `D19__assets-e-cta/solution-store/README.md`
- `D19__assets-e-cta/solution-store/obsidian-editorial/solution.yaml`
- `D19__assets-e-cta/solution-store/obsidian-editorial/VIDEO_PRODUCTION.yaml`
- `_governance/receipts/2026-09/D19-COMMERCIAL-VIDEO-SCHEMA-001.md`
- `REPOSITORY_MAP.md` (sincronizado pelo modelo do gerador)

## Decisões

1. O Super Schema foi elevado para v1.2.
2. A camada `commercial_production` preserva os grupos projeto, mensagem, entrega, marca, direção, cenas, áudio, execução e validação.
3. Vídeo e web interativa são saídas distintas; HTML/CSS/JS não é tratado como MP4 automaticamente.
4. Render de vídeo exige tempo determinístico por quadro: `t = frame / fps`.
5. `setInterval`, scroll e relógio de parede não podem definir o tempo durante renderização.
6. Alegações comerciais precisam apontar para evidência; métricas não medidas não podem ser inventadas.
7. O briefing preenchido do Obsidian Editorial é canônico em `VIDEO_PRODUCTION.yaml`; `solution.yaml` apenas referencia esse arquivo para evitar duplicação.
8. O vídeo usa dados fictícios identificados e não depende de logo não autorizado.
9. Publicação permanece bloqueada até confirmação da URL pública do CTA e licenças de áudio.

## Validação

- Governança: **PASS** — Repository Governance run #10.
- Índices: **PASS** — `REPOSITORY_MAP.md` sincronizado e verificado pelo workflow.
- Revisão de claims: nenhuma métrica quantitativa não medida foi adicionada.

## Handoff

Branch: `feat/d19-commercial-video-schema`.
PR: `#2`.
Autorização de merge: concedida pelo mantenedor; merge permitido após workflow verde.
