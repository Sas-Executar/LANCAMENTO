---
status: canonical
instruction_id: OFICINA-EDITORIAL-PRODUCTION-001
route: D19
---

# Produção editorial — Oficina

Entrada obrigatória: Production Handoff Bundle e Asset Manifest.

Produzir apenas assets requeridos pelo product_type. Masters devem gerar derivados sempre que possível para evitar divergência. Vídeo usa timeline determinística; loop/GIF deriva do master. Cards, carousel, onboarding e vídeo devem consumir o Design System canônico vinculado em `D11__experiencia-e-projeto/oficina/DESIGN_SYSTEM_BINDING.yaml`, usando tokens semânticos e sem hardcode quando houver token equivalente.

Saída: assets em READY_FOR_QA ou blocker explícito.
