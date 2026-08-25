# FCP-15 — Loop Canonical / Covariant Relationship Ledger

**Version:** 0.1.0  
**Framework:** `FW-LOOP`  
**Internal sectors:** `LOOP-CANON`, `LOOP-COVAR`  
**Status:** TAXONOMY / FORMULATION-RELATIONSHIP CANDIDATE  
**E1–E5 cross-framework classification:** PROHIBITED IN FCP-15

## 0. Purpose

This ledger tests whether canonical loop quantum gravity and covariant/spinfoam formulations should remain one FCP framework. It uses the FCP-15 local taxonomy vocabulary only:

- `SAME_FRAMEWORK_DIFFERENT_FORMULATION`
- `CONDITIONAL_CORRESPONDENCE`
- `EXTENSION_DEPENDENT`
- `MATERIAL_FRAMEWORK_DIFFERENCE`
- `OPEN`
- `INSUFFICIENT_SOURCE_BINDING`

No entry is a convergence claim.

## 1. Controlling taxonomy verdict

`FCP15_LOOP_TAXONOMY = OUTCOME_B_INTERNAL_SUBFRAMEWORK_DISTINCTION`

`FW-LOOP` remains one top-level family, but `LOOP-CANON` and `LOOP-COVAR` must remain visible in all later comparisons until a stronger equivalence or split result is independently source-bound.

The decisive facts are:

1. canonical LQG supplies the shared quantum-geometry/spin-network kinematical lineage;
2. EPRL-type covariant models explicitly use matching spin-network boundary data and establish a fixed-graph bridge;
3. canonical and covariant dynamics are implemented by materially different mathematical constructions;
4. the fixed-graph/model bridge does not prove whole-sector physical-Hilbert or continuum-dynamics equivalence;
5. both sectors face a common continuum/GR/empirical burden, but shared target/burden does not prove formulation identity.

## 2. Relationship matrix

| Dimension | `LOOP-CANON` | `LOOP-COVAR` | FCP-15 relation | Scope ceiling |
|---|---|---|---|---|
| Primitive organization | canonical connection/triad or holonomy-flux phase-space quantization | covariant amplitude/path-integral organization, typically from constrained BF/Plebanski structure on two-complexes | `MATERIAL_FRAMEWORK_DIFFERENCE` within one family | different formulation primitives; shared GR target/history |
| Kinematical boundary states | spin-network/cylindrical states on graphs | spin-network boundary states in EPRL-type models | `CONDITIONAL_CORRESPONDENCE` | strong in named fixed-graph model; not all spinfoams/all canonical physical states |
| Area spectrum | kinematical discrete area operator, `γ` dependent | EPRL finite-`γ` source recovers matching constrained area spectrum | `CONDITIONAL_CORRESPONDENCE` | declared EPRL constraint/model scope only |
| Gauge / simplicity constraints | Gauss/diffeomorphism/Hamiltonian constraint architecture | BF/Plebanski simplicity constraints plus gauge structure in model construction | `MATERIAL_FRAMEWORK_DIFFERENCE` | source does not identify the full constraint systems |
| Dynamics object | Hamiltonian/scalar constraint and physical-Hamiltonian programs | vertex/face amplitudes and sums over labelled two-complexes | `MATERIAL_FRAMEWORK_DIFFERENCE` | both are dynamics routes, not one source-bound operator identity |
| Transition / physical inner product | constraint solving/group averaging/physical-Hilbert program | boundary amplitudes/spinfoam sum intended to encode transition/physical inner-product information | `CONDITIONAL_CORRESPONDENCE` | formal/selected-model relation; full 4D construction remains open |
| Graph/two-complex dependence | graph/cylindrical consistency and graph-changing operations | regulator/two-complex dependence, refinement/sum/coarse graining | `MATERIAL_FRAMEWORK_DIFFERENCE` | distinct regulator-management burdens |
| Semiclassical GR bridge | coherent/semi-classical states and effective canonical analysis in selected work | Regge-action large-spin asymptotics and low-order metric correlations | `CONDITIONAL_CORRESPONDENCE` | shared GR target; different partial bridges |
| Continuum limit | physical continuum encoded through background-independent representation/constraint completion; not a simple lattice-removal theorem | explicit refinement/coarse-graining/continuum-limit problem for discretized amplitudes | `MATERIAL_FRAMEWORK_DIFFERENCE` | continuum burdens are formulation-specific though target overlaps |
| Physical observables | Dirac/relational observable and physical-Hamiltonian problem | boundary amplitudes/physical-Hilbert observables require continuum/physical interpretation | `OPEN` | no complete cross-sector observable equivalence source-bound |
| Empirical burden | no base framework discriminator identified | no base framework discriminator identified | `OPEN` | shared absence is not evidence of equivalence |

## 3. EPRL bridge record

### `FCP15-LOOP-REL-001`

- `source_ids`: `SRC-FCP15-LOOP-EPRL-2008`, supported by `SRC-FCP15-LOOP-AB-2021`, `SRC-FCP15-LOOP-PEREZ-2013`
- `relationship`: `CONDITIONAL_CORRESPONDENCE`
- `domain`: canonical LQG spin-network boundary Hilbert data on a fixed graph / declared finite-`γ` setting
- `codomain`: constrained EPRL-type spinfoam boundary state/dynamics construction
- `preserved/source-bound`: boundary-state Hilbert-space match and area-spectrum match under the model's constraint implementation
- `not established`: full physical-Hilbert equality; unique dynamics; all spinfoam variants; continuum equivalence; empirical equivalence
- `taxonomy implication`: strong evidence against top-level split based merely on different canonical/covariant presentations, but insufficient for `SAME_FRAMEWORK_DIFFERENT_FORMULATION` across all physics layers
- `status`: `ACCEPTED`

## 4. Dynamics nonidentity record

### `FCP15-LOOP-REL-002`

- `source_ids`: `SRC-FCP15-LOOP-QSD-1998`, `SRC-FCP15-LOOP-TG-2024`, `SRC-FCP15-LOOP-PEREZ-2013`, `SRC-FCP15-LOOP-STEINHAUS-2020`, `SRC-FCP15-LOOP-AB-2021`
- `relationship`: `MATERIAL_FRAMEWORK_DIFFERENCE` within retained family
- `claim`: canonical Hamiltonian-constraint dynamics and covariant spinfoam amplitude dynamics are not source-bound as one unique whole-sector dynamics map
- `reason`: distinct construction, ambiguity/regulator burdens, physical-Hilbert/continuum incompleteness
- `split implication`: difference is material enough to require persistent sublabels, but shared state lineage/bridge and common physical target keep one top-level family at current source scope
- `status`: `ACCEPTED`

## 5. Physical-state / amplitude relationship

### `FCP15-LOOP-REL-003`

- `source_ids`: `SRC-FCP15-LOOP-PEREZ-2013`, `SRC-FCP15-LOOP-BCMR-2026`, `SRC-FCP15-LOOP-TG-2024`
- `relationship`: `OPEN / CONDITIONAL_CORRESPONDENCE`
- `claim`: spinfoam amplitudes are motivated as covariant/path-integral implementations of canonical constraint/physical-inner-product structure, and the 2026 axiomatic continuum analysis gives a rigging-map construction under declared distributional-limit assumptions
- `ceiling`: this does not establish that the full physical Hilbert space of canonical 4D LQG equals the continuum physical Hilbert space of a particular EPRL/FK model
- `status`: `ACCEPTED`

## 6. Semiclassical relationship

### `FCP15-LOOP-REL-004`

- `source_ids`: `SRC-FCP15-LOOP-BARRETT-2010`, `SRC-FCP15-LOOP-BMP-2009`, `SRC-FCP15-LOOP-AB-2021`
- `relationship`: `CONDITIONAL_CORRESPONDENCE`
- `claim`: covariant spinfoam amplitudes have source-bound large-spin/fixed-complex regimes that reproduce Regge-action phases and selected metric correlations compatible with expected perturbative behavior
- `ceiling`: these are target/approximation results and do not establish full canonical/covariant equivalence or continuum GR recovery
- `status`: `ACCEPTED`

## 7. Continuum/refinement relationship

### `FCP15-LOOP-REL-005`

- `source_ids`: `SRC-FCP15-LOOP-STEINHAUS-2020`, `SRC-FCP15-LOOP-BCMR-2026`
- `relationship`: `MATERIAL_FRAMEWORK_DIFFERENCE / OPEN`
- `claim`: covariant spin foams possess an explicit discretization/refinement/coarse-graining problem; model-independent continuum structure can be formalized, but the physical continuum limit remains model/dynamics dependent
- `canonical contrast`: canonical background-independent state representation is not itself a completed proof of physical continuum dynamics and does not eliminate the covariant regulator-removal problem
- `status`: `ACCEPTED`

## 8. Immirzi relationship

### `FCP15-LOOP-REL-006`

- `source_ids`: `SRC-FCP15-LOOP-AB-2021`, `SRC-FCP15-LOOP-EPRL-2008`
- `relationship`: `CONDITIONAL_CORRESPONDENCE`
- `claim`: the finite-`γ` EPRL construction reproduces the canonical area-spectrum dependence in its declared setting, creating a nontrivial cross-sector consistency check
- `ceiling`: `γ` remains a quantization/physical-calibration burden; matching `γ` dependence is not a derivation of its physical value or an empirical confirmation
- `status`: `ACCEPTED`

## 9. Weaker-framework and anti-smuggling controls

### Generic spin-network witness

Representation-labelled graphs can be constructed mathematically without completing quantum gravity dynamics. Therefore:

> **SPIN-NETWORK MATHEMATICS != UNIQUELY SELECTED QUANTUM GRAVITY.**

### Fixed-boundary bridge witness

A fixed-graph boundary-space identification can hold while physical inner products, dynamics, refinement and continuum limits remain inequivalent/open.

> **BOUNDARY-SPACE MATCH != WHOLE-FRAMEWORK EQUIVALENCE.**

### Common-target witness

Both sectors are designed to quantize/recover GR. Agreement with the same classical target in selected limits does not prove they are identical formulations at all layers.

> **COMMON GR TARGET != COMPLETE CANONICAL/COVARIANT EQUIVALENCE.**

## 10. Framework-separation test

Under the FCP-4 rule:

### Primitive commitments

Material formulation difference: yes, especially canonical constrained-Hamiltonian versus covariant amplitude construction.

### Allowed model class

Material difference exists among canonical quantization choices and spinfoam models/constraint implementations, but the bounded corpus supplies an explicit shared loop-quantum-geometry lineage and bridge rather than two unrelated model families.

### Physical scope

Both target background-independent quantum gravity and 3+1 GR recovery, while internal realization routes differ.

### Empirical burden

No source-bound framework-wide discriminator separates the sectors; both lack a complete empirical selection route at base-framework scope.

### Verdict

The differences are sufficient to prohibit pooling the sectors invisibly but insufficient at current source scope to demand separate top-level FCP framework IDs.

`FCP15_LOOP_TAXONOMY = OUTCOME_B_INTERNAL_SUBFRAMEWORK_DISTINCTION`

`FRAMEWORK_SPLIT_CANDIDATE = 0`

Persistent labels required:

- `LOOP-CANON`
- `LOOP-COVAR`

## 11. Future comparison rule

Any future `FW-LOOP` cross-framework comparison must:

1. identify which claims are common to the whole family;
2. label canonical-only claims `LOOP-CANON`;
3. label spinfoam-only claims `LOOP-COVAR`;
4. never award the whole family dynamics/continuum/empirical content derived from only one sector without an explicit bridge;
5. preserve the kinematics/dynamics and fixed-complex/continuum firewalls.

> **Preserve results, not theories.**
