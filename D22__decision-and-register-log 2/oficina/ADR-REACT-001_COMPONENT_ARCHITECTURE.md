---
status: canonical
decision_id: ADR-REACT-001
route: D22
depends_on:
  - D11
  - D12
  - D19
---

# ADR-REACT-001 — Arquitetura de componentes da Oficina

## Contexto

A Oficina precisa renderizar soluções multiformato sem acoplar decisões editoriais ou taxonômicas ao código visual.

## Decisão

Adotar arquitetura React orientada por contratos. Componentes recebem dados do Super Schema, Store Submission e Asset Manifest. A árvore base inclui `AppShell`, `StorePage`, `SolutionCard`, `SolutionDetail`, `LearnPage`, `VerticalCarousel`, `VideoLoop` e `OnboardingFlow`.

O contrato técnico é `D12__engenharia/oficina/REACT_COMPONENT_CONTRACT.yaml`.

## Restrições

React não deve inferir claims, profissões, categorias, product type ou tokens visuais. A identidade visual deve consumir os tokens semânticos do Design System EXECUTAR pinado no submodule `D11__experiencia-e-projeto/oficina/design-system-source`, conforme `DESIGN_SYSTEM_BINDING.yaml`.

## Consequências

É possível evoluir o design sem alterar a semântica dos dados e reutilizar os mesmos componentes para Templates, Skills/Workflows, Ebooks, Artigos, Prompts, Plugins e Photo-prompts.
