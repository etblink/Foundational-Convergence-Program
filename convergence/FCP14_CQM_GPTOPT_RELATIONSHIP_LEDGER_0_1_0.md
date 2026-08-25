# FCP-14 — CQM/GPTOPT Relationship Ledger

**Version:** 0.1.0  
**Frameworks:** `FW-CQM` vs. `FW-GPTOPT`  
**Status:** RELATIONSHIP LEDGER CANDIDATE

## 0. Rule

Every positive relation is classified separately by structural strength, bridge dependence, quantum inheritance, optional-extension status and independence. A relation may be mathematically strong while receiving zero independent convergence credit.

Local buckets:

- `CG-G` generic shared shell;
- `CG-T` bridge/translation relation;
- `CG-I` quantum-inherited overlap;
- `CG-N` non-generic independently shared structure;
- `CG-X` extension-dependent relation;
- `CG-D` material divergence;
- `CG-E` empirically distinct;
- `CG-O` open/no source-bound relation.

## 1. Generic shared shell

### `CG-G1` — system/process typing

**Keys:** K1, K3  
**CQM:** objects and morphisms  
**GPTOPT:** systems and processes/events/transformations  
**Weaker-framework witness:** generic process categories/classical circuits  
**E-class:** none for distinctive credit  
**Disposition:** `GENERIC_MATHEMATICS`

The broad correspondence is real but too weak to identify either framework.

### `CG-G2` — sequential composition

**Key:** K3  
**CQM:** morphism composition  
**GPTOPT:** sequential process/circuit composition  
**Weaker-framework witness:** ordinary category theory, circuits, stochastic processes  
**Disposition:** zero distinctive credit.

### `CG-G3` — parallel/composite typing

**Keys:** K3, K8  
**CQM:** monoidal composition  
**GPTOPT:** declared parallel/composite-system composition  
**Weaker-framework witness:** symmetric monoidal process theories  
**Disposition:** generic shell only; does not select physical composite state space.

### `CG-G4` — generic state/effect process syntax

**Keys:** K1, K5  
**CQM:** `I -> A`, `A -> I`  
**GPTOPT/OPT:** preparations/states and effects  
**Weaker-framework witness:** generic process theory with a unit  
**Disposition:** generic typing until probability/operational structure is added.

### `CG-G5` — circuit/diagram compositional reasoning

**Keys:** K3, K8  
**Disposition:** presentation/compositional shell. Diagrammatic convenience receives no physical credit.

Generic shared relation rows: **5**.

## 2. Bridge/translation relations

All rows in this section materially use `SRC-FCP4-CQM-GS-2018` and therefore carry `BRIDGE_MEDIATED = 1`.

### `CG-T1` — enriched state/effect translation

**Keys:** K1, K5  
**CQM side:** probabilistically enriched/categorical-probabilistic state/effect processes  
**GPTOPT side:** operational states/effects with probability semantics  
**Map:** state process -> operational preparation/state; effect process -> operational effect  
**Preserved:** typing; declared probability semantics under bridge hypotheses  
**Not established:** all convex state geometry, all physical effect sets, all CQM/GPTOPT models  
**E-class:** restricted `E2_FUNCTORIAL_REPRESENTATION`  
**Independence:** bridge-mediated; zero independent convergence.

### `CG-T2` — enriched process translation

**Key:** K3  
**Map:** CQM process morphism -> operational transformation/event  
**Preserved:** sequential composition; declared parallel composition; probability evaluation where supplied  
**Not established:** full/faithful/essentially-surjective whole-family equivalence  
**E-class:** restricted `E2`  
**Independence:** bridge-mediated.

### `CG-T3` — measurement/probability translation

**Key:** K5  
**Map:** categorical-probabilistic effects/tests/scalars -> operational tests/outcome probabilities at named bridge scope  
**E-class:** restricted `E2`  
**Limitation:** probabilistic enrichment is not minimal CQM; exhaustive physical effect-set selection remains open.

### `CG-T4` — compositional bridge

**Key:** K8  
**Map:** monoidal/compositional structure -> declared operational composite/process composition  
**Preserved:** formal compositional typing  
**Not preserved/selected:** unique GPT composite cone; local-tomography sufficiency; physical global state space  
**E-class:** restricted `E2`  
**Independence:** bridge-mediated.

Bridge/translation relation rows: **4**.

## 3. Quantum-inherited overlap

These rows arise when both framework families instantiate ordinary quantum theory. They are not evidence of independent framework convergence.

### `CG-I1` — ordinary quantum states

**Key:** K1  
**Relation:** CQM quantum models and GPTOPT `G4` quantum embedding represent ordinary quantum states.  
**E-class:** bounded model-level `E2`  
**Status:** `QUANTUM_INHERITED_OVERLAP`.

### `CG-I2` — quantum channels/processes

**Keys:** K3, K4  
**Relation:** ordinary unitary/CP quantum processes can be represented on both sides.  
**E-class:** bounded model-level `E2`  
**Status:** common-target inheritance; actual dynamics comes from the quantum model.

### `CG-I3` — quantum effects/Born probabilities

**Key:** K5  
**E-class:** bounded model-level `E2`  
**Status:** empirical support belongs to ordinary quantum theory.

### `CG-I4` — standard quantum composites

**Key:** K8  
**Relation:** standard quantum tensor/composite structure appears in named quantum realizations on both sides.  
**E-class:** bounded model-level `E2`  
**Status:** does not establish a framework-wide composite-selection theorem.

Quantum-inherited E1/E2 relation rows: **4**.

## 4. Non-generic independently shared structure

No relation satisfies all of:

1. non-generic after weaker-framework subtraction;
2. not merely ordinary-quantum inheritance;
3. not bridge-mediated/retrospectively constructed;
4. physical semantics sufficiently aligned;
5. source-bound on both sides with an explicit map.

`CG-N` independently justified relation rows: **0**.

## 5. Optional/extension-dependent relations

### `CG-X1` — dagger versus reversibility

**CQM:** optional dagger  
**GPTOPT:** reversible transformations/continuous reversibility in named models or reconstruction packages  
**Strongest relation:** at most E5 functional analogy  
**Control:** `DAGGER != PHYSICAL REVERSIBILITY`.

No theorem in the frozen corpus establishes either implication framework-wide.

### `CG-X2` — compactness versus purification/dilation

**CQM:** optional compact closure/cups/caps/map-state duality  
**GPTOPT:** optional purification and reversible dilation  
**Strongest relation:** `NO_SOURCE_BOUND_EQUIVALENCE`; functional analogy only where physically motivated  
**Control:** `COMPACTNESS != PURIFICATION`.

### `CG-X3` — Frobenius/classical structures versus operational classical systems

**CQM:** optional categorical classical structures  
**GPTOPT:** classical operational models, distinguishability/effect structure  
**Strongest relation:** E5 unless a named model supplies stronger correspondence  
**Limitation:** optional algebraic structure versus model-class member.

### `CG-X4` — CPM versus operational transformations

**CQM:** optional CPM/mixed-state construction  
**GPTOPT:** general transformation classes  
**Quantum subrelation:** CP maps are `CG-I2`, quantum-inherited  
**Whole-family relation:** no equivalence; GPTOPT transformation classes can be broader model data.

### `CG-X5` — categorical probabilistic bridge

**CQM:** `CQM-X4` bridge residue  
**GPTOPT:** probabilistic operational process structure  
**E-class:** restricted E2  
**Status:** `CG-T` + `CG-X`; bridge-mediated, not independent.

Extension-dependent relation rows: **5**.

## 6. Material divergences

### `CG-D1` — equivalence doctrine

Categorical equality/coherence is not the same framework doctrine as operational indistinguishability relative to a test/effect family.

### `CG-D2` — probability and convex structure

GPTOPT carries normalized operational probabilities and standard GPT convex state/effect geometry at core family scope. Minimal CQM does not.

### `CG-D3` — allowed model class

GPTOPT explicitly includes classical, quantum and postquantum/nonquantum operational models and multiple composites. CQM is quantum-motivated categorical/process theory with toy/non-Hilbert categorical models but no source-bound theorem identifying its whole model family with GPTOPT.

### `CG-D4` — optional-structure burdens

CQM dagger/compact/Frobenius/CPM structures and GPTOPT purification/local-tomography/continuous-reversibility/reconstruction principles are distinct named assumptions. No pooling is permitted.

### `CG-D5` — composite-system selection

GPTOPT explicitly exposes minimal/maximal/intermediate composite ambiguity. A CQM monoidal product does not discharge that physical state/effect selection burden.

### `CG-D6` — quantum-target role

CQM is primarily a quantum reformulation/structural refinement at bounded scope. GPTOPT is a broader generalization/reconstruction possibility framework containing quantum theory as one model.

### `CG-D7` — empirical-theory-space role

GPTOPT has source-bound empirical narrowing of bounded generalized regions to L2. CQM has no framework-level empirical discriminator and inherits ordinary quantum success through concrete models.

Material-divergence ledger rows: **7**.

## 7. Open/no-positive-relation results

### `CG-O1` — K4 dynamics

Both base frameworks lack a universal history selector. Shared absence earns zero convergence credit.

### `CG-O2` — K6 spacetime causality

No source-bound framework-level identity among monoidal parallelism, no-signalling, operational causality and Lorentzian causality.

### `CG-O3` — K7 RG/scale

No pairwise source-bound scale relation.

### `CG-O4` — K10 pairwise empirical discriminator

No observable source-bound as a CQM-vs-GPTOPT framework discriminator.

Open/no-positive-relation rows: **4**.

## 8. Empirical result

`CG-E` rows: **0**.

FCP-8 L2 empirical narrowing is real GPTOPT theory-space evidence, but it does not select CQM over GPTOPT and does not transform the bridge into an E4 relation.

## 9. Independent-convergence accounting

- bridge-mediated E1/E2 rows: **4**;
- quantum-inherited E1/E2 rows: **4**;
- independently justified E1/E2 rows: **0**;
- independent `STRONG_CONVERGENCE`: **0**;
- independent `MODERATE_CONVERGENCE`: **0**.

## 10. Framework-separation result

The bridge defines a scientifically useful intersection/common enriched process territory, not full framework identity. Material differences remain in probability structure, model class, optional assumptions, composite selection, operational semantics and empirical role.

`FCP4_FRAMEWORK_SEPARATION = PRESERVED`.

Continuity rule:

> **Preserve results, not theories.**
