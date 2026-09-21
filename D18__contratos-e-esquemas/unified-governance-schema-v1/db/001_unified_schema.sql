-- RC Unified Governance Schema v1.0
-- Target: PostgreSQL 17 / Supabase
-- Apply first in a homologation environment.

begin;

create schema if not exists rc_ugs;
revoke all on schema rc_ugs from anon, authenticated;

create type rc_ugs.epistemic_class as enum
  ('A_OBSERVED','B_PRIMARY','C_PUBLISHED','D_INTERNAL','E_INFERRED');
create type rc_ugs.lifecycle_status as enum
  ('DRAFT','PROPOSED','APPROVED','IMPLEMENTED','TESTED','PUBLISHED','MEASURED','LEARNED','ARCHIVED','REJECTED','SUPERSEDED');
create type rc_ugs.validation_status as enum
  ('NOT_VALIDATED','SUPPORTED','TESTING','VALIDATED','REJECTED');
create type rc_ugs.learning_decision as enum
  ('RECYCLE','UPDATE','SCALE','ARCHIVE','KEEP','REJECT');

create table rc_ugs.schema_registry (
  schema_id text not null,
  version text not null,
  status rc_ugs.lifecycle_status not null default 'PROPOSED',
  checksum text not null,
  definition jsonb not null,
  created_at timestamptz not null default now(),
  primary key (schema_id, version)
);

create table rc_ugs.object_registry (
  object_id text primary key,
  object_type text not null,
  title text not null check (length(trim(title)) > 0),
  status rc_ugs.lifecycle_status not null default 'DRAFT',
  version integer not null default 1 check (version > 0),
  epistemic_class rc_ugs.epistemic_class not null,
  validation_status rc_ugs.validation_status not null default 'NOT_VALIDATED',
  owner_id text not null,
  canonical_uri text,
  source_object_id text references rc_ugs.object_registry(object_id),
  created_at timestamptz not null default now(),
  created_by text not null,
  updated_at timestamptz not null default now(),
  metadata jsonb not null default '{}'::jsonb
);

create index object_registry_type_status_idx on rc_ugs.object_registry(object_type, status);
create index object_registry_owner_idx on rc_ugs.object_registry(owner_id);
create index object_registry_metadata_gin on rc_ugs.object_registry using gin(metadata);

create table rc_ugs.object_alias (
  alias_id bigint generated always as identity primary key,
  object_id text not null references rc_ugs.object_registry(object_id),
  alias text not null,
  language text not null default 'pt-BR',
  normalized_alias text generated always as (lower(trim(alias))) stored,
  unique (language, normalized_alias, object_id)
);

create table rc_ugs.status_event (
  status_event_id uuid primary key default gen_random_uuid(),
  object_id text not null references rc_ugs.object_registry(object_id),
  from_status rc_ugs.lifecycle_status,
  to_status rc_ugs.lifecycle_status not null,
  gate_id text not null,
  rationale text not null,
  occurred_at timestamptz not null default now(),
  actor_id text not null
);

create table rc_ugs.audit_event (
  audit_event_id uuid primary key default gen_random_uuid(),
  object_id text not null references rc_ugs.object_registry(object_id),
  action text not null,
  payload_hash text not null,
  details jsonb not null default '{}'::jsonb,
  occurred_at timestamptz not null default now(),
  actor_id text not null
);

create table rc_ugs.taxonomy_term (
  term_id text primary key references rc_ugs.object_registry(object_id),
  vocabulary text not null,
  canonical_term text not null,
  definition text,
  parent_term_id text references rc_ugs.taxonomy_term(term_id),
  unique (vocabulary, canonical_term)
);

create table rc_ugs.knowledge_record (
  knowledge_id text primary key references rc_ugs.object_registry(object_id),
  management_function text not null,
  executive_domain text,
  human_capacity text not null,
  investigated_vulnerability text,
  operational_function text,
  operational_mechanism text,
  operational_consequence text,
  candidate_compensation text,
  product_design_conclusion text,
  limitations text
);

create table rc_ugs.claim (
  claim_id text primary key references rc_ugs.object_registry(object_id),
  statement text not null,
  scope text not null,
  qualifiers text,
  falsification_criterion text
);

create table rc_ugs.source (
  source_id text primary key references rc_ugs.object_registry(object_id),
  source_type text not null,
  locator text not null,
  authors text,
  publisher text,
  published_at date,
  accessed_at date,
  fingerprint text,
  unique nulls not distinct (fingerprint)
);

create table rc_ugs.evidence (
  evidence_id text primary key references rc_ugs.object_registry(object_id),
  source_id text not null references rc_ugs.source(source_id),
  locator_within_source text,
  synthesis text not null,
  scope text not null,
  limitations text,
  extraction_method text,
  evidence_hash text
);

create table rc_ugs.evidence_claim (
  evidence_id text not null references rc_ugs.evidence(evidence_id),
  claim_id text not null references rc_ugs.claim(claim_id),
  relationship text not null check (relationship in ('SUPPORTS','CHALLENGES','CONTEXTUALIZES')),
  strength text not null check (strength in ('LOW','MODERATE','HIGH','NOT_ASSESSED')),
  rationale text not null,
  primary key (evidence_id, claim_id, relationship)
);

create table rc_ugs.problem (
  problem_id text primary key references rc_ugs.object_registry(object_id),
  statement text not null,
  audience text not null,
  consequence text not null,
  objective_id text,
  execution_context text,
  management_domain text,
  lifecycle_stage text,
  priority integer not null default 0,
  principle_mechanism_id text
);

create table rc_ugs.mechanism (
  mechanism_id text primary key references rc_ugs.object_registry(object_id),
  description text not null,
  cause text,
  effect text,
  manifestation text
);

create table rc_ugs.problem_mechanism (
  problem_id text not null references rc_ugs.problem(problem_id),
  mechanism_id text not null references rc_ugs.mechanism(mechanism_id),
  basis text not null,
  primary key (problem_id, mechanism_id)
);

create table rc_ugs.risk (
  risk_id text primary key references rc_ugs.object_registry(object_id),
  problem_id text not null references rc_ugs.problem(problem_id),
  objective_id text not null,
  context text not null,
  cognitive_demand text,
  cognitive_cost_type text,
  exposure_trigger text not null,
  risk_event text not null,
  impact text not null,
  classification text not null
);

create table rc_ugs.compensation_hypothesis (
  hypothesis_id text primary key references rc_ugs.object_registry(object_id),
  risk_id text not null references rc_ugs.risk(risk_id),
  statement text not null,
  expected_effect text not null,
  target_mechanism_id text references rc_ugs.mechanism(mechanism_id),
  success_metric_name text not null
);

create function rc_ugs.enforce_hypothesis_epistemic_class() returns trigger
language plpgsql as $$
begin
  if not exists (
    select 1 from rc_ugs.object_registry
    where object_id = new.hypothesis_id and epistemic_class = 'E_INFERRED'
  ) then
    raise exception 'compensation hypothesis must start as E_INFERRED';
  end if;
  return new;
end;
$$;

create trigger compensation_hypothesis_epistemic_gate
before insert on rc_ugs.compensation_hypothesis
for each row execute function rc_ugs.enforce_hypothesis_epistemic_class();

create table rc_ugs.intervention (
  intervention_id text primary key references rc_ugs.object_registry(object_id),
  hypothesis_id text not null references rc_ugs.compensation_hypothesis(hypothesis_id),
  control_type text not null,
  intervention_class text not null,
  method text,
  tactic text,
  technique text,
  tool text
);

create table rc_ugs.solution (
  solution_id text primary key references rc_ugs.object_registry(object_id),
  problem_id text not null references rc_ugs.problem(problem_id),
  name text not null,
  family text not null,
  input_description text not null,
  transformation text not null,
  output_description text not null,
  before_state text,
  after_state text,
  offer_route text
);

create table rc_ugs.feature (
  feature_id text primary key references rc_ugs.object_registry(object_id),
  solution_id text not null references rc_ugs.solution(solution_id),
  hypothesis_id text not null references rc_ugs.compensation_hypothesis(hypothesis_id),
  specification jsonb not null,
  acceptance_criteria jsonb not null default '[]'::jsonb
);

create table rc_ugs.cta (
  cta_id text primary key references rc_ugs.object_registry(object_id),
  label text not null,
  destination text not null,
  funnel_stage text not null,
  success_metric text not null
);

create table rc_ugs.asset (
  asset_id text primary key references rc_ugs.object_registry(object_id),
  problem_id text not null references rc_ugs.problem(problem_id),
  solution_id text not null references rc_ugs.solution(solution_id),
  format text not null,
  sequence integer,
  funnel_stage text,
  objective text not null,
  core_message text not null,
  hook text,
  primary_cta_id text not null references rc_ugs.cta(cta_id),
  production_owner text not null
);

create table rc_ugs.asset_version (
  asset_id text not null references rc_ugs.asset(asset_id),
  version integer not null check (version > 0),
  content_uri text not null,
  content_hash text not null,
  status rc_ugs.lifecycle_status not null,
  created_at timestamptz not null default now(),
  created_by text not null,
  primary key (asset_id, version),
  unique (asset_id, content_hash)
);

create table rc_ugs.distribution_event (
  event_id text primary key references rc_ugs.object_registry(object_id),
  asset_id text not null,
  asset_version integer not null,
  channel text not null,
  planned_at timestamptz,
  occurred_at timestamptz not null,
  url text not null,
  tracking jsonb not null default '{}'::jsonb,
  foreign key (asset_id, asset_version) references rc_ugs.asset_version(asset_id, version)
);

create table rc_ugs.execution_context (
  context_id text primary key references rc_ugs.object_registry(object_id),
  current_state jsonb not null,
  available_time_minutes integer not null check (available_time_minutes > 0),
  capacity jsonb not null,
  hard_constraints jsonb not null default '[]'::jsonb,
  wip_state jsonb not null,
  environment jsonb not null default '{}'::jsonb,
  captured_at timestamptz not null default now()
);

create table rc_ugs.action (
  action_id text primary key references rc_ugs.object_registry(object_id),
  objective_id text not null,
  estimated_duration_minutes integer not null check (estimated_duration_minutes > 0),
  required_capacity jsonb not null default '{}'::jsonb,
  hard_constraints jsonb not null default '[]'::jsonb,
  flow_priority numeric not null default 0,
  value_priority numeric not null default 0,
  context_requirements jsonb not null default '{}'::jsonb,
  completion_evidence text not null
);

create table rc_ugs.action_dependency (
  action_id text not null references rc_ugs.action(action_id),
  depends_on_action_id text not null references rc_ugs.action(action_id),
  dependency_type text not null default 'FINISH_TO_START',
  primary key (action_id, depends_on_action_id),
  check (action_id <> depends_on_action_id)
);

create table rc_ugs.recommendation (
  recommendation_id text primary key references rc_ugs.object_registry(object_id),
  context_id text not null references rc_ugs.execution_context(context_id),
  action_id text not null references rc_ugs.action(action_id),
  eligibility_snapshot jsonb not null,
  ranking_snapshot jsonb not null,
  rationale text not null,
  fallback_action_id text references rc_ugs.action(action_id),
  created_at timestamptz not null default now()
);

create table rc_ugs.metric_event (
  metric_event_id text primary key references rc_ugs.object_registry(object_id),
  subject_id text not null references rc_ugs.object_registry(object_id),
  metric_name text not null,
  value numeric not null,
  unit text not null,
  window_start timestamptz not null,
  window_end timestamptz not null,
  source text not null,
  dimensions jsonb not null default '{}'::jsonb,
  observed_at timestamptz not null default now(),
  check (window_end >= window_start)
);

create index metric_event_rollup_idx on rc_ugs.metric_event(subject_id, metric_name, window_start, window_end);

create table rc_ugs.experiment (
  experiment_id text primary key references rc_ugs.object_registry(object_id),
  hypothesis_id text not null references rc_ugs.compensation_hypothesis(hypothesis_id),
  feature_id text references rc_ugs.feature(feature_id),
  protocol jsonb not null,
  success_criterion jsonb not null,
  started_at timestamptz,
  ended_at timestamptz,
  result_summary text
);

create table rc_ugs.learning (
  learning_id text primary key references rc_ugs.object_registry(object_id),
  subject_id text not null references rc_ugs.object_registry(object_id),
  decision rc_ugs.learning_decision not null,
  rationale text not null,
  based_on_metric_ids text[] not null check (cardinality(based_on_metric_ids) > 0),
  decided_at timestamptz not null default now(),
  decided_by text not null,
  next_review_at timestamptz
);

create table rc_ugs.relation_edge (
  relation_id uuid primary key default gen_random_uuid(),
  from_object_id text not null references rc_ugs.object_registry(object_id),
  relation_type text not null,
  to_object_id text not null references rc_ugs.object_registry(object_id),
  epistemic_class rc_ugs.epistemic_class not null,
  rationale text not null,
  supporting_claim_ids text[] not null default '{}',
  supporting_evidence_ids text[] not null default '{}',
  confidence numeric check (confidence between 0 and 1),
  approved_by text,
  created_at timestamptz not null default now(),
  check (from_object_id <> to_object_id),
  check (relation_type <> 'CAUSES' or (approved_by is not null and cardinality(supporting_evidence_ids) > 0))
);

create index relation_edge_from_idx on rc_ugs.relation_edge(from_object_id, relation_type);
create index relation_edge_to_idx on rc_ugs.relation_edge(to_object_id, relation_type);

create view rc_ugs.v_master_index as
select object_id, object_type, title, status, version, epistemic_class,
       validation_status, owner_id, canonical_uri, updated_at
from rc_ugs.object_registry;

create view rc_ugs.v_evidence_trace as
select c.claim_id, c.statement, ec.relationship, ec.strength,
       e.evidence_id, e.synthesis, e.scope, s.source_id, s.locator
from rc_ugs.claim c
join rc_ugs.evidence_claim ec on ec.claim_id = c.claim_id
join rc_ugs.evidence e on e.evidence_id = ec.evidence_id
join rc_ugs.source s on s.source_id = e.source_id;

-- Compatibility read model for the original 18-field cognition/product matrix.
-- Source/evidence/taxonomy values are returned as canonical object IDs so callers
-- can resolve current versions without duplicating scientific content.
create view rc_ugs.v_legacy_cognition_product_18 as
select
  '1.0.1'::text as schema_version,
  k.knowledge_id as row_id,
  k.management_function as funcoes_fundamentais_gestao_projetos,
  k.executive_domain as funcoes_executivas_area_gestao_projetos,
  k.human_capacity as capacidades_humanas_operacionais_exigidas,
  k.investigated_vulnerability as funcao_deficit_tdah,
  r.metadata ->> 'fonte_clinica_ids' as fonte_clinica,
  r.metadata ->> 'fonte_cientifica_ids' as fonte_cientifica,
  r.metadata ->> 'funcao_executiva_cognitiva_ids' as funcao_executiva_cognitiva,
  r.metadata ->> 'evidence_ids' as evidencia,
  k.operational_function as impacto_operacional_funcao_afetada,
  k.operational_mechanism as impacto_operacional_mecanismo,
  k.operational_consequence as impacto_operacional_consequencia,
  k.candidate_compensation as impacto_operacional_compensacao,
  k.product_design_conclusion as conclusao_produto_design,
  r.epistemic_class as classe_epistemica,
  r.validation_status as estado_validacao,
  k.limitations as observacoes
from rc_ugs.knowledge_record k
join rc_ugs.object_registry r on r.object_id = k.knowledge_id;

create view rc_ugs.v_solution_asset_pipeline as
select p.problem_id, so.solution_id, so.name as solution_name,
       a.asset_id, a.format, av.version, av.status,
       de.event_id, de.channel, de.occurred_at, de.url
from rc_ugs.problem p
join rc_ugs.solution so on so.problem_id = p.problem_id
left join rc_ugs.asset a on a.solution_id = so.solution_id
left join rc_ugs.asset_version av on av.asset_id = a.asset_id
left join rc_ugs.distribution_event de
  on de.asset_id = av.asset_id and de.asset_version = av.version;

-- Candidate view applies deterministic hard filters only. Ranking stays in an audited service.
create view rc_ugs.v_action_catalog as
select a.action_id, r.title, a.objective_id, a.estimated_duration_minutes,
       a.required_capacity, a.hard_constraints, a.flow_priority,
       a.value_priority, a.context_requirements, a.completion_evidence
from rc_ugs.action a
join rc_ugs.object_registry r on r.object_id = a.action_id
where r.status in ('APPROVED','IMPLEMENTED','TESTED');

-- Event tables are append-only. Corrections use compensating events.
create function rc_ugs.prevent_event_mutation() returns trigger
language plpgsql as $$
begin
  raise exception 'append-only table: create a compensating event';
end;
$$;

create trigger status_event_immutable before update or delete on rc_ugs.status_event
for each row execute function rc_ugs.prevent_event_mutation();
create trigger audit_event_immutable before update or delete on rc_ugs.audit_event
for each row execute function rc_ugs.prevent_event_mutation();
create trigger distribution_event_immutable before update or delete on rc_ugs.distribution_event
for each row execute function rc_ugs.prevent_event_mutation();
create trigger recommendation_immutable before update or delete on rc_ugs.recommendation
for each row execute function rc_ugs.prevent_event_mutation();
create trigger metric_event_immutable before update or delete on rc_ugs.metric_event
for each row execute function rc_ugs.prevent_event_mutation();
create trigger learning_immutable before update or delete on rc_ugs.learning
for each row execute function rc_ugs.prevent_event_mutation();

commit;
