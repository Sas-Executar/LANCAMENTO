---
status: canonical
decision_id: ADR-UX-001
route: D22
depends_on: D11
---

# ADR-UX-001 — Arquitetura de informação da Oficina

## Contexto

A Oficina é uma loja multiformato com soluções organizadas como cards e páginas de detalhe. As referências visuais fornecidas mostram padrões recorrentes de marketplace/discovery, diretório, detalhe e aprendizagem.

## Decisão

Adotar cinco superfícies: **Discover**, **Collections**, **Solution Detail**, **Learn** e **Onboarding**. Cards são a unidade primária de descoberta e formam uma família compartilhada entre soluções, artigos e conteúdos de aprendizagem. Start e Download são ações semanticamente distintas.

A estrutura de wireframe é canônica em `D11__experiencia-e-projeto/oficina/WIREFRAME_TOKENS.yaml`. A identidade visual não é derivada das referências e será fornecida separadamente.

## Consequências

O schema precisa fornecer dados estáveis para cards, filtros, detalhe, aprendizagem e onboarding. A UI React deve consumir contratos, não carregar regras editoriais internas.
