---
status: canonical
instruction_id: OFICINA-EDITORIAL-PRODUCTION-001
route: D19
---

# Produção editorial — Oficina

Entrada obrigatória: Production Handoff Bundle e Asset Manifest.

Produzir apenas assets requeridos pelo product_type. Masters devem gerar derivados sempre que possível para evitar divergência. Vídeo usa timeline determinística; loop/GIF deriva do master. Cards, carousel e onboarding usam wireframe/component contracts e aguardam tokens visuais oficiais para styling final.

Saída: assets em READY_FOR_QA ou blocker explícito.
