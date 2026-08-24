# FCP Equivalence and Convergence Rules

**Version:** 0.1.0  
**Status:** FROZEN CANDIDATE — FCP-2  
**Applies to:** all future cross-framework comparisons unless superseded by an explicit governance revision.

## 0. Purpose

This file defines what FCP may mean by **same**, **equivalent**, **analogous**, or **convergent** before any speculative framework is compared against the null baseline.

The governing prohibition is:

> **Vocabulary matching, metaphor matching, diagram resemblance, and retrospective identification do not establish convergence.**

---

# 1. Equivalence classes permitted in FCP

## E1 — Exact structural equivalence

Two structures receive `E1_EXACT_STRUCTURAL` status only when there is an explicit mathematical isomorphism/equivalence at the declared level preserving all material structure used in the comparison.

Required record:

- source objects;
- exact map(s);
- domain/codomain;
- preserved operations/relations;
- inverse/equivalence data where applicable;
- scope limitations.

An isomorphism of one reduced object does not imply equivalence of the full frameworks.

---

## E2 — Functorial / representation equivalence

Two structures receive `E2_FUNCTORIAL_REPRESENTATION` status when an explicitly defined map/functor translates one representation into the other while preserving the material composition, transformation, state, observable, or probability structure relevant to the claim.

Required record:

- translation map/functor;
- structures preserved and not preserved;
- faithfulness/fullness/invertibility status where relevant;
- observable consequences;
- scope ceiling.

Lossy embeddings or nonfaithful mappings must be described as such and cannot silently receive exact-equivalence credit.

---

## E3 — Controlled limit equivalence

Two structures receive `E3_CONTROLLED_LIMIT` status when one framework recovers a target structure from another in a mathematically controlled limit, approximation, continuum regime, low-energy regime, classical limit, thermodynamic limit, or other declared asymptotic procedure.

Required record:

- limit/control parameter;
- target quantities;
- convergence/error notion;
- domain where the approximation is valid;
- which structures survive or fail;
- whether physical calibration is preserved.

Qualitative statements such as 'becomes GR' or 'looks classical' are insufficient without a controlled recovery map and error/scope statement.

---

## E4 — Empirical equivalence

Two framework claims receive `E4_EMPIRICAL` status when they produce operationally equivalent predictions for a declared observable set within a declared tolerance/uncertainty model.

Required record:

- observable set;
- preparation/initial conditions;
- parameter treatment;
- tolerance/uncertainty model;
- data or test domain;
- known observables outside the equivalence scope.

Empirical equivalence does not imply ontological or mathematical equivalence.

---

## E5 — Functional analogy

Two structures receive `E5_FUNCTIONAL_ANALOGY` status when they play recognizably similar explanatory or organizational roles but no stronger structural, functorial, limit, or empirical equivalence has been established.

Examples of allowable descriptions include 'both remove representational redundancy' or 'both mediate local-to-global consistency' if the exact mechanisms differ.

`E5_FUNCTIONAL_ANALOGY` earns **no strong convergence credit by itself**.

---

# 2. Prohibited equivalence shortcuts

The following are never sufficient by themselves:

- same terminology;
- similar diagrams;
- same number of sectors, dimensions, nodes, generators, or layers;
- metaphorical similarity;
- common use of category theory, gauge theory, graph theory, information theory, variational principles, or quotienting;
- post hoc relabeling chosen because it makes structures appear equivalent;
- matching only after framework-specific free parameters have been tuned to the target structure;
- correspondence asserted only at the level of interpretation with no structure-preserving map.

If only one of these is available, the correct status is `NO_EQUIVALENCE_ESTABLISHED` or at most `E5_FUNCTIONAL_ANALOGY`.

---

# 3. Convergence-credit levels

## Cnv-S — Strong convergence

`STRONG_CONVERGENCE` requires all of:

1. independent motivation or derivation in the compared frameworks;
2. non-generic structure;
3. at least `E1`, `E2`, `E3`, or sufficiently specific `E4` equivalence;
4. no material correspondence introduced solely after seeing the target result;
5. explicit source provenance;
6. explicit assumptions and selection status;
7. physical bridge if physical significance is claimed.

Strong convergence means different starting points independently lead to materially equivalent, non-generic structure.

It does **not** automatically establish that the shared structure is fundamental or uniquely true.

---

## Cnv-M — Moderate convergence

`MODERATE_CONVERGENCE` applies when materially similar non-generic structure is present, but one or more of the following holds:

- substantial model choice enters one or both derivations;
- the correspondence is partial/lossy;
- only a controlled regime is equivalent;
- a physical bridge is conditional;
- multiple inequivalent realizations remain.

Moderate convergence is evidence of recurring structure, not uniqueness.

---

## Cnv-W — Weak convergence

`WEAK_CONVERGENCE` applies when frameworks share generic mathematics, broad organizational principles, common consistency requirements, or modeling tools.

Examples can include quotienting, variational principles, symmetry, coarse-graining, category-theoretic composition, finite-state descriptions, perturbative expansions, and other common machinery.

Weak convergence is scientifically recordable but earns **zero framework-specific convergence credit**.

---

## Cnv-0 — No convergence credit

`NO_CONVERGENCE_CREDIT` applies when the asserted correspondence is based only on terminology, metaphor, diagram resemblance, interpretive similarity, or a post hoc mapping without preserved structure.

---

# 4. Generic-mathematics rule

> **Generic mathematics earns zero framework-specific convergence credit.**

A generic structure may still matter if a **particular non-generic quantitative instantiation** is independently derived.

For example, the mere presence of an action principle carries no distinctive convergence credit. A uniquely derived action with a nontrivial quantitative coefficient/structure that independently matches another framework may qualify for stronger analysis.

The burden is on the claimant to isolate the non-generic content.

---

# 5. Independence rule

Convergence requires independence at the level relevant to the claim.

Record whether one framework:

- historically influenced the other;
- explicitly imported the compared structure;
- was tuned using the target framework;
- used the same empirical input to fix the allegedly convergent quantity;
- used a shared mathematical theorem that makes the result generic.

Shared ancestry does not invalidate a useful equivalence, but it reduces evidence that the structure was independently rediscovered.

---

# 6. Selection-rule discipline

Before granting convergence credit, classify each compared structure using FCP meta-key M1:

- `PRIMITIVE`
- `SOURCE_DERIVED`
- `MODEL_CHOICE`
- `EMPIRICALLY_FIXED`
- `UNDERDETERMINED`

A match between two `MODEL_CHOICE` entries is not strong convergence merely because the choices coincide.

A source-derived structure matching an empirically fixed structure must state the asymmetry explicitly.

---

# 7. Physical-credit discipline

A mathematical equivalence cannot be promoted to physical convergence without K9.

Required questions:

1. Do both sides possess an explicit physical realization map?
2. Are the mapped observables materially the same?
3. Is calibration preserved by the correspondence?
4. Does the correspondence survive uncertainty/error analysis?
5. Is the physical interpretation source-derived, selected, or merely suggested?

If not, the convergence ceiling remains mathematical.

---

# 8. Empirical-credit discipline

Empirical convergence is not awarded merely because both frameworks can accommodate the same observation.

For framework-specific empirical credit, record:

- comparator;
- prediction before the discriminating data where possible;
- free/fitted parameters;
- uncertainty model;
- decision rule;
- whether the prediction is also obtained by a weaker framework.

A shared fit to already-known data after independent parameter adjustment is at most compatibility unless a stronger criterion is met.

---

# 9. Anti-retrofitting rule

The comparison-key set K1–K10 and these equivalence/convergence rules are frozen at version `0.1.0` before the first cross-framework comparison.

Future framework audits may not rewrite a key because the framework uses unfamiliar ontology or mathematics.

If a genuinely missing comparison dimension is discovered, create:

`KEY_EXTENSION_CANDIDATE`

A valid extension requires a separately versioned governance change that:

1. demonstrates framework-neutral necessity;
2. identifies affected prior audits;
3. reruns those audits under the revised key set;
4. preserves the superseded version for provenance.

---

# 10. Comparison-record minimum

Every future claim of convergence must state:

- framework IDs;
- source IDs;
- K-key(s) involved;
- M1 selection status on each side;
- M2 canonicity level on each side;
- M3 scope ceiling on each side;
- equivalence class `E1`–`E5` or `NONE`;
- convergence class `STRONG`, `MODERATE`, `WEAK`, or `NONE`;
- weaker-framework test;
- physical bridge status;
- empirical binding status;
- known counterexamples/selection problems.

---

# Freeze statement

Version `0.1.0` freezes the equivalence and convergence standards **before first competitor exposure**.

> **No framework receives convergence credit for asking the question, sharing vocabulary, or using generic mathematics. Credit begins only where an independently justified, materially non-generic correspondence is established.**