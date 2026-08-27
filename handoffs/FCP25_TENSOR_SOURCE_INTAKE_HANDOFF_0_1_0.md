# FCP-25 Stage 1 — Tensor-Network / Information-Theoretic Source-Intake Handoff

**Version:** 0.1.0

**Status:** QUALIFIED_CANDIDATE_COMPLETE_NOT_INTEGRATED

**Checked:** 2026-08-27

**Candidate branch:** `research/fcp25-tensor-source-intake`

## 1. Bounded handoff state

```text
FCP25_STAGE1 = QUALIFIED_CANDIDATE_COMPLETE_NOT_INTEGRATED

FROZEN_CORPUS_READY_FOR_STAGE2 = YES

TAXONOMY_OUTCOME = NOT_ADJUDICATED
FW_TENSOR_SURVIVES = NOT_ADJUDICATED
SUCCESSOR_FRAMEWORK_COUNT = NOT_ADJUDICATED
SUCCESSOR_FRAMEWORK_IDS_CREATED = 0

K1_K10_BASELINE = NOT_STARTED
CROSS_FRAMEWORK_COMPARISON = NOT_STARTED
CONVERGENCE_CREDIT_ASSIGNED = 0
RECURRENCE_RECOMPUTATION = NOT_STARTED
FRAMEWORK_WINNER = NONE
SCALAR_FRAMEWORK_SCORE = FORBIDDEN

CANONICAL_FCP25_SELECTED = NO
CANONICAL_FCP25_STARTED = NO
FCP26_STARTED = NO
```

This handoff records a local scientific candidate only. It does not alter canonical routing, select FCP-25 on `main`, begin Stage 2, or integrate any result.

## 2. Provenance and frozen scope

```text
CANONICAL_REPOSITORY = etblink/Foundational-Convergence-Program
CANONICAL_MAIN = d5444f1653a051dd630e90fff1399480ed106c0d
CANONICAL_MAIN_TREE = a2d4db0aff4548e12f3655b03d3423f9aed38f6b

PREREGISTRATION_COMMIT = 7631019eca0407a1cad6241b6d06ce87082ab4e0
PREREGISTRATION_TREE = afa2302f2fddf5bdb15fe339daf1ee9274fc16f8
PREREGISTRATION_EXACT_PARENT = d5444f1653a051dd630e90fff1399480ed106c0d
PREREGISTRATION_MESSAGE = Preregister FCP-25 tensor-network source intake

SOURCE_PUBLICATION_CUTOFF = 2026-08-27
CANDIDATE_SOURCE_COUNT_REVIEWED = 62
ADMITTED_SOURCE_COUNT = 29
NEW_FCP25_SOURCE_RECORD_COUNT = 27
REUSED_PREEXISTING_SOURCE_RECORD_COUNT = 2
REJECTED_SOURCE_COUNT = 22
DEFERRED_SOURCE_COUNT = 11
FULL_TEXT_SUFFICIENT_COUNT = 29
PRIMARY_TECHNICAL_SOURCE_COUNT = 26
REVIEW_OR_SYNTHESIS_SOURCE_COUNT = 3
LIMITATION_OR_COUNTEREVIDENCE_SOURCE_COUNT = 6
SEARCH_LANES_COVERED = A;B;C;D;E;F;G;H;I
SOURCE_COVERAGE_GAPS = NONE
```

The frozen corpus is defined by the source order in `frameworks/tensor/FCP25_TENSOR_SOURCE_INTAKE_0_1_0.md`. Two FCP-24 holographic sources are reused as boundary sources; 27 newly admitted records are appended to `SOURCE_REGISTER.md`. Reuse does not assign the broader holographic remainder to `FW-TENSOR`.

## 3. Stage-2 readiness

The corpus supplies technically sufficient sources for all required later questions without deciding them:

| Stage-2 question | Readiness | Handoff note |
|---|---|---|
| Primitive or carrier status | `READY` | Representation, tool, encoding, and direct foundational claims are all present and distinguishable. |
| Allowed model class | `READY` | MPS, PEPS, MERA/cMERA, tensor RG, perfect/random networks, QEC codes, and information-first proposals are source-delimited. |
| State or configuration space | `READY` | State-manifold, factorization, code-subspace, QFT, and supplied-model domains are explicit. |
| Redundancy or equivalence structure | `READY` | MPS gauge freedom, virtual-index equivalence, code redundancies, and model dependence are represented. |
| Dynamics status | `READY` | Physical Hamiltonian evolution, TDVP projection, imaginary-time search, optimization, circuit control, and absent dynamics are separated. |
| RG or coarse-graining status | `READY` | ER, MERA, tensor RG, cMERA, and non-RG uses are present. |
| Information or entanglement role | `READY` | Descriptor, resource, reconstruction input, code structure, and proposed primitive roles are all indexed. |
| Spacetime or geometry status | `READY` | Network geometry, correlation geometry, AdS/CFT-conditioned geometry, entanglement equilibrium, and counterevidence are present. |
| Holographic lineage | `READY` | AdS/CFT, CFT, string/M theory, semiclassical bulk, RT/HRT, and supplied-target dependencies are explicit. |
| QEC or encoding role | `READY` | Mathematical code, duality dictionary, operator-algebra theorem, toy network, and simulator roles are source-bound. |
| Physical realization | `READY` | Many-body simulation, prepared code states, and a recent finite-code quantum-simulator experiment are bounded. |
| Observables | `READY` | Condensed-matter observables, entropies, reconstructed operators, relative entropy, and code metrics are represented. |
| Calibration | `READY` | Supplied Hamiltonians, exact toy targets, tomography, circuit calibration, and absent external calibration are distinguishable. |
| Empirical ceiling | `READY` | Direct model realizations and tool successes are present; no direct framework-level discriminator was found. |
| Open selection problems | `READY` | Bond dimension, contraction, ansatz choice, factorization, graph, code, Hamiltonian, and continuum selection burdens are exposed. |
| Weaker framework or tool explanations | `READY` | Representation, computation, supplied-theory model, duality dictionary, and target-conditioned explanations are retained. |
| Framework split burden | `READY` | Internal heterogeneity and possible common architecture can both be evaluated from the frozen corpus. |

```text
STAGE2_READINESS_MISSING_SOURCE_CATEGORIES = NONE
DIRECT_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_FOUND = NO
DIRECT_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_STATUS = STAGE1_SOURCE_COVERAGE_FACT_ONLY
FINAL_EMPIRICAL_CEILING_ADJUDICATION = RESERVED_FOR_STAGE2
```

## 3A. Boundary-source and deferred-taxonomy handoff

The Stage-1 corpus freezes seven newly registered cross-boundary FCP-25 inputs as `BOUNDARY_SOURCE`:

```text
SRC-FCP25-TENSOR-VAN-RAAMSDONK-2010
SRC-FCP25-TENSOR-FAULKNER-2014
SRC-FCP25-TENSOR-JACOBSON-2016
SRC-FCP25-TENSOR-CAO-CARROLL-MICHALAKIS-2017
SRC-FCP25-TENSOR-ALMHEIRI-DONG-HARLOW-2015
SRC-FCP25-TENSOR-DONG-HARLOW-WALL-2016
SRC-FCP25-TENSOR-HARLOW-2017
```

The exact Stage-2 deferred-taxonomy docket is also frozen:

```text
C58 = QI_EXACT_HOLOGRAPHIC_MAPPING
C59 = MAY_DYNAMIC_SPACETIMES
C60 = MIYAJI_TAKAYANAGI_SURFACE_STATE
C61 = YANG_YANG_MEI_EMERGENT_ORDER
C62 = CHOU_CHANG_NONHERMITIAN_DS_CMERA
```

These controls preserve taxonomy neutrality. They do not decide framework membership, successor count, or whether any deferred source belongs in a final Stage-2 framework object.

```text
BOUNDARY_SOURCE_TAGGING_CHECK = PASS
BOUNDARY_SOURCE_REGISTER_INTAKE_CONSISTENCY = PASS
DEFERRED_TAXONOMY_DOCKET_FROZEN = PASS
```

## 4. Qualification gates

| Gate | Result |
|---|---|
| `REPOSITORY_IDENTITY` | `PASS` |
| `CANONICAL_BASELINE` | `PASS` |
| `COMMIT_1_BEFORE_EXTERNAL_SEARCH` | `PASS` |
| `SOURCE_PUBLICATION_CUTOFF` | `PASS` |
| `SEARCH_LANE_COVERAGE` | `PASS` |
| `SOURCE_QUALITY` | `PASS` |
| `SOURCE_IDENTITY_RESOLUTION` | `PASS` |
| `FULL_TEXT_SUFFICIENCY` | `PASS` |
| `ADVERSE_SOURCE_SEARCH` | `PASS` |
| `SOURCE_SELECTION_CHERRY_PICKING_CHECK` | `PASS` |
| `PROPOSITION_LEVEL_REDUNDANCY_CHECK` | `PASS` |
| `BOUNDARY_SOURCE_TAGGING_CHECK` | `PASS` |
| `BOUNDARY_SOURCE_REGISTER_INTAKE_CONSISTENCY` | `PASS` |
| `DEFERRED_TAXONOMY_DOCKET_FROZEN` | `PASS` |
| `COPYRIGHT_BOUNDARY` | `PASS` |
| `SOURCE_REGISTER_APPEND_ONLY` | `PASS` |
| `PREEXISTING_SOURCE_REGISTER_ROWS_CHANGED` | `0` |
| `FRAMEWORK_REGISTER_CHANGED` | `NO` |
| `CLAIM_LEDGER_CHANGED` | `NO` |
| `CURRENT_STATE_CHANGED` | `NO` |
| `README_CHANGED` | `NO` |
| `COMPARISON_PROTOCOL_CHANGED` | `NO` |
| `FCP_CHARTER_CHANGED` | `NO` |
| `TAXONOMY_OUTCOME` | `NOT_ADJUDICATED` |
| `SUCCESSOR_FRAMEWORK_IDS_CREATED` | `0` |
| `K1_K10_ADJUDICATION` | `NOT_STARTED` |
| `CROSS_FRAMEWORK_COMPARISONS` | `0` |
| `CONVERGENCE_CREDIT_ASSIGNED` | `0` |
| `RECURRENCE_RECOMPUTATION` | `NOT_STARTED` |
| `FRAMEWORK_WINNER` | `NONE` |
| `SCALAR_FRAMEWORK_SCORE` | `FORBIDDEN` |
| `FCP26_STARTED` | `NO` |
| `ALLOWED_PATH_BOUNDARY` | `PASS` |
| `COMMIT_COUNT` | `2` |
| `WORKTREE` | `CLEAN_AT_QUALIFIED_TIP` |

The Git-object checks, exact candidate blobs, remote-race recheck, and bundle hash are reported outside this self-containing second commit because a commit cannot truthfully embed its own object ID or the later bundle hash.

## 5. Frozen controls and append-only mutation

The candidate is required to preserve these exact blobs at its tip:

```text
CURRENT_STATE.md = d7e0dd9b6abe21b49433e6c6b277fd7516f7816f
CLAIM_LEDGER.md = bc014f75055996f214a5d2e8f0174b67b3124607
README.md = 87c2d16d79f9840c46f443692050a46b1be3a1e8
FRAMEWORK_REGISTER.md = c1a2e5c9489ac493bf218834bc5aea07e8a16f5a
COMPARISON_PROTOCOL.md = 190ce97bde2d43d6b1c6c30f5d9ed032939b3308
FCP_CHARTER.md = 579819121d1733e1746868941a3a282de2cf1ac9

SOURCE_REGISTER_OLD_BLOB = 9153b580960fb83d0e3bfc236ce24a7e7e4e6096
PREEXISTING_SOURCE_REGISTER_BYTES_CHANGED = 0
NEW_SOURCE_REGISTER_ROWS_APPENDED = 27
```

`FRAMEWORK_REGISTER.md` remains untouched, so canonical `FW-TENSOR = ADMITTED_NOT_AUDITED` is neither preserved nor dissolved by a Stage-1 assumption.

## 6. Remote and publication firewall

```text
CANDIDATE_BRANCH = research/fcp25-tensor-source-intake
BRANCH_MODE = LOCAL_ONLY
PUBLISHED = NO
INTEGRATED = NO
REMOTE_BRANCH_CREATED = NO
PULL_REQUEST_OPENED = NO
MAIN_UPDATED = NO
TAG_CREATED = NO
```

## 7. Stop boundary

The next authorized action is independent Project Lead review of the two-commit candidate and its bundle. This handoff grants no authority to:

- adjudicate A–D;
- create, rename, split, preserve, or delete a successor framework;
- perform K1–K10 or E1–E5 work;
- compare with any existing FCP framework or the null;
- assign convergence credit or a winner;
- recompute recurrence;
- publish or integrate the branch;
- begin FCP-26.

```text
STOP_AFTER_STAGE1 = YES
WAIT_FOR_SEPARATE_STAGE2_AUTHORIZATION = YES
```
