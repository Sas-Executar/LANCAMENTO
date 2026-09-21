---
status: canonical
route: D11
---

# Oficina — UX, wireframes e Design System

A Oficina consome o Design System EXECUTAR como fonte visual canônica.

## Fonte importada

- Repositório: `Sas-Executar/Desyng-System-ecossitema.`
- Branch acompanhada: `claude/design-handoff-specs-ulc1r1`
- Commit pinado: `3784189e789a5b16fc2bdaaa6854a4bdc1bcad77`
- Modo: Git submodule
- Caminho local: `design-system-source/`

O submodule preserva o repositório completo. Dentro dele, `design-system/` é o package de especificação e `references/` mantém as fontes, imagens e rastreabilidade.

## Contratos locais

- `DESIGN_SYSTEM_BINDING.yaml` — binding, SOT e regras de consumo.
- `WIREFRAME_TOKENS.yaml` — estrutura/hierarquia/interação da Oficina.
- `../../D12__engenharia/oficina/REACT_COMPONENT_CONTRACT.yaml` — contrato React.

## Regra

Não editar o conteúdo importado dentro do submodule a partir de LANCAMENTO. Alterações do Design System devem acontecer no repositório-fonte e entrar aqui por avanço explícito do commit pinado em PR revisado.

Wireframes podem usar referências externas por arquitetura, mas componentes finais devem consumir os tokens semânticos do Design System EXECUTAR.
