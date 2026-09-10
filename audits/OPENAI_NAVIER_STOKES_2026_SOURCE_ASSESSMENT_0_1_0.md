# OpenAI Navier–Stokes 2026 Source Assessment 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_SOURCE_INTAKE
ASSESSMENT_STATUS = COMPLETE
DATE = 2026-09-10
PRIMARY_FCP_CLASSIFICATION = SOURCE_DERIVED
FRAMEWORK_ADMISSION = NO
K1_K10_EFFECT = NONE_BY_THIS_INTAKE
CONVERGENCE_CREDIT = NONE
EMPIRICAL_CREDIT = NONE
CURRENT_K9_CLOSED_CORPUS_EFFECT = NONE
```

## 1. Source identity

The primary mathematical source is OpenAI's 166-page paper *Finite Time Blowup for Navier–Stokes*, released through OpenAI on 2026-09-08. The companion machine-readable proof source is the public Lean 4 repository `openai/NavierStokesAndEuler`, pinned for this assessment to commit:

```text
COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
TREE = a503f07635f200c0f2f9c5361df1fa07f95c4741
```

The pinned repository README states that it formalizes both the Navier–Stokes and Euler results and identifies the Navier–Stokes results with alternatives (C) and (D) in the Clay formulation.

## 2. Exact Navier–Stokes claim preserved by FCP

The paper's Theorem 1.1 claims the following for **every viscosity `ν > 0`**:

- there is a smooth compactly supported external force `f` on `R^3 × (0,∞)`;
- the velocity begins from rest, `u(·,0)=0`;
- velocity and pressure are smooth for `0 <= t < 1` and spatially supported in one compact set;
- kinetic energy remains uniformly bounded, equivalently the velocity remains uniformly bounded in `L^2`;
- the velocity nevertheless becomes unbounded in `L^∞` as `t` approaches `1`;
- consequently, for that same force and initial datum there is no global smooth solution having uniformly bounded kinetic energy.

The paper states that this establishes alternative (C) in Fefferman's Millennium problem formulation and, by compact support/periodization, alternative (D) on the three-torus.

### Material scope qualifier

```text
FORCING = PRESENT, SMOOTH, COMPACTLY_SUPPORTED
INITIAL_VELOCITY = ZERO
DIMENSION = 3
INCOMPRESSIBILITY = YES
VISCOSITY = ARBITRARY_POSITIVE_CONSTANT
FINITE_ENERGY = UNIFORMLY_BOUNDED
CLAIMED_SINGULAR_BEHAVIOR = L_INFINITY_VELOCITY_BLOWUP_AT_FINITE_TIME
```

The forcing qualifier is essential. This intake does **not** record a theorem that the unforced three-dimensional Navier–Stokes Cauchy problem develops a singularity.

## 3. Formalization status

The pinned OpenAI repository says its whole-space theorem supplies smooth initial data and forcing for which no global smooth solution with uniformly bounded kinetic energy exists, and gives the corresponding periodic-torus result. It also supplies build instructions using Lean 4, Mathlib, and Lake, plus an independent-proof-checking pathway.

FCP therefore records:

```text
FORMAL_CERTIFICATE_PUBLISHED = YES
FORMAL_CERTIFICATE_PROVENANCE_PINNED = YES
FCP_INDEPENDENT_REPLAY_PERFORMED = NO
INDEPENDENT_EXTERNAL_MATHEMATICAL_ACCEPTANCE_ESTABLISHED = NO
```

The distinction matters under `EPISTEMIC_RULES.md`: a formal artifact produced with the result is stronger than an informal announcement, but it is not relabeled as independent verification merely because it is machine-checkable.

## 4. External status at the intake date

OpenAI publicly describes the result as resolving the Navier–Stokes Millennium Prize problem by establishing alternatives (C) and (D). Independent news coverage reports it as an OpenAI **claim** of a major mathematical breakthrough rather than as a completed community adjudication.

At the 2026-09-10 intake date, the Clay Mathematics Institute still lists Navier–Stokes among the unsolved Millennium Prize Problems. Clay's prize rules also require, before it will consider a proposed solution, publication in a qualifying outlet, a waiting period of at least two years, and general acceptance in the global mathematics community.

Accordingly FCP records:

```text
OPENAI_RESOLUTION_CLAIM = YES
CMI_CANONICAL_RESOLUTION_STATUS = NOT_YET_RECOGNIZED
GLOBAL_MATHEMATICS_ACCEPTANCE = NOT_YET_ESTABLISHED_BY_THIS_INTAKE
```

This is a status distinction, not a negative judgment on the proof.

## 5. FCP relevance

The paper is important to FCP, but not because it supplies a new foundational framework. Its immediate value is as a sharply stated theorem claim about the limitations of a familiar nonlinear continuum effective description under smooth forcing.

A narrow lesson is worth preserving prospectively:

> Even smooth, deterministic continuum equations with dissipative terms can, at least according to the new theorem claim, admit finite-time loss of bounded velocity under smooth forcing while a global integral quantity remains bounded.

Under FCP's anti-smuggling and promotion rules, that observation cannot be generalized into a claim that continuum spacetime, GR, QFT, hydrodynamics in nature, or any candidate foundational framework must break down similarly. Navier–Stokes is an effective classical fluid equation, and mathematical singularity of a model is not itself an empirical observation of a physical singularity.

Therefore:

```text
NEW_FRAMEWORK = NO
EXISTING_FRAMEWORK_TAXONOMY_CHANGE = NO
K1_K10_RECLASSIFICATION = NO
PAIRWISE_COMPARISON_CHANGE = NO
E1_E5_CHANGE = NO
RECURRENCE_CHANGE = NO
EMPIRICAL_DISCRIMINATOR = NO
PHYSICAL_CANONICITY = NO
GENERIC_MATHEMATICS_RELEVANCE = YES, WITH_SCOPE_GUARD
```

## 6. Relationship to the active K9 operation

Canonical FCP state selected a prospective K9-only null-control reanalysis whose corpus is closed. This new source postdates that closure and was separately authorized. It is therefore **not admissible evidence inside that K9 run** unless a future prospective governance operation explicitly reopens the source window.

```text
ACTIVE_K9_CORPUS_CONTAMINATED = NO
ACTIVE_K9_PREREGISTRATION_CHANGED = NO
ACTIVE_K9_NEXT_STEP_CHANGED = NO
```

## 7. Recommended future verification, without current promotion

If FCP later chooses to deepen this source, the highest-value next operation would be an independent reproducibility audit of the pinned Lean formalization together with expert mathematical review of the correspondence between the formal statement and Fefferman alternatives (C)/(D). That future audit should be separately preregistered and should remain distinct from prize recognition.

Until then the result is preserved as a high-significance, precisely scoped, source-derived theorem claim with a public formal certificate and no FCP framework or convergence promotion.
