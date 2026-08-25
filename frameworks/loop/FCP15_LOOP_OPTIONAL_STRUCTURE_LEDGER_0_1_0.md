# FCP-15 — Loop Optional / Model-Specific Structure Ledger

**Version:** 0.1.0  
**Framework:** `FW-LOOP`  
**Status:** OPTIONAL-STRUCTURE CANDIDATE

## 0. Rule

> **Base `FW-LOOP` != every construction used anywhere in loop quantum gravity, spin foams, loop cosmology, black-hole models or adjacent discrete quantum gravity.**

This ledger prevents higher-layer, model-specific or adjacent structures from being silently promoted into the base framework.

## 1. Canonical Hamiltonian prescriptions

### `LOOP-X1` — QSD / Hamiltonian-constraint prescriptions

- `source_ids`: `SRC-FCP15-LOOP-QSD-1998`, `SRC-FCP15-LOOP-TG-2024`, `SRC-FCP15-LOOP-AB-2021`
- `sector`: `LOOP-CANON`
- `layer`: `L2/L3`
- `status`: `SOURCE_BOUND_DYNAMICS_FAMILY; NOT_UNIQUE_BASE_DYNAMICS`
- `K_keys`: K3, K4, K5
- `scope`: concrete regulated quantum-constraint constructions and later refinements
- `firewall`: existence/well-definition of a Hamiltonian constraint operator does not establish unique physical dynamics, complete physical Hilbert space or uniquely correct regularization
- `split_candidate`: 0

### `LOOP-X2` — master-constraint / deparametrized physical-Hamiltonian programs

- `source_ids`: bounded indirectly by `SRC-FCP15-LOOP-TG-2024`, `SRC-FCP15-LOOP-AB-2021`
- `sector`: `LOOP-CANON`
- `layer`: `L2/L3`
- `status`: `OPTIONAL/ALTERNATIVE_DYNAMICS_IMPLEMENTATION`
- `K_keys`: K4, K5
- `scope`: later canonical dynamics strategies; FCP-15 does not source-bind every variant separately
- `firewall`: not back-projected into minimal kinematical core
- `split_candidate`: 0

## 2. Covariant amplitude models

### `LOOP-X3` — EPRL finite-`γ` model

- `source_ids`: `SRC-FCP15-LOOP-EPRL-2008`, `SRC-FCP15-LOOP-PEREZ-2013`
- `sector`: `LOOP-COVAR`
- `layer`: `L3`
- `status`: `NAMED_COVARIANT_DYNAMICS_MODEL`
- `K_keys`: K1, K3, K4, K8, K9
- `scope`: a central 4D spinfoam model implementing simplicity constraints and matching canonical boundary structure in the declared fixed-graph setting
- `firewall`: `EPRL != ALL SPINFOAMS != WHOLE FW-LOOP DYNAMICS`
- `split_candidate`: 0

### `LOOP-X4` — simplicity-constraint implementation / model variants

- `source_ids`: `SRC-FCP15-LOOP-EPRL-2008`, `SRC-FCP15-LOOP-PEREZ-2013`, `SRC-FCP15-LOOP-STEINHAUS-2020`
- `sector`: `LOOP-COVAR`
- `layer`: `L3`
- `status`: `MODEL_CHOICE / NONUNIQUE_IMPLEMENTATION`
- `K_keys`: K3, K4, K8
- `scope`: different treatments/variants can alter state spaces, amplitudes or dynamics
- `firewall`: no one variant is silently defined as the unique loop dynamics
- `split_candidate`: 0

## 3. Semiclassical structures

### `LOOP-X5` — coherent/semi-classical boundary states

- `source_ids`: `SRC-FCP15-LOOP-AB-2021`, `SRC-FCP15-LOOP-BARRETT-2010`, `SRC-FCP15-LOOP-BMP-2009`
- `sector`: both, with covariant calculations most explicit in this packet
- `layer`: `L4`
- `status`: `OPTIONAL_APPROXIMATION/STATE_PACKAGE`
- `K_keys`: K1, K5, K8, K9
- `scope`: selected states/boundary data peaked on classical/discrete geometry
- `firewall`: kinematical semi-classicality does not prove that the selected pair/history satisfies full dynamics
- `split_candidate`: 0

### `LOOP-X6` — large-spin Regge asymptotics

- `source_ids`: `SRC-FCP15-LOOP-BARRETT-2010`
- `sector`: `LOOP-COVAR`
- `layer`: `L4`
- `status`: `SOURCE_DERIVED_CONDITIONAL_SEMICLASSICAL_RESULT`
- `K_keys`: K8, K9
- `scope`: selected 4-simplex amplitude/boundary data and large-representation regime
- `firewall`: `REGGE_PHASE_AT_FIXED_SIMPLEX != FULL_CONTINUUM_EINSTEIN_DYNAMICS`
- `split_candidate`: 0

### `LOOP-X7` — low-order graviton/metric correlations

- `source_ids`: `SRC-FCP15-LOOP-BMP-2009`
- `sector`: `LOOP-COVAR`
- `layer`: `L4`
- `status`: `SOURCE_DERIVED_CONDITIONAL_LOW_ENERGY_RESULT`
- `K_keys`: K5, K8, K9
- `scope`: lowest vertex expansion and leading large-spin order
- `firewall`: not complete low-energy/continuum recovery
- `split_candidate`: 0

## 4. Refinement / renormalization / continuum structures

### `LOOP-X8` — spin-foam coarse-graining/RG program

- `source_ids`: `SRC-FCP15-LOOP-STEINHAUS-2020`
- `sector`: `LOOP-COVAR`
- `layer`: `L4`
- `status`: `SOURCE_BOUND_RESEARCH_PROGRAM_WITH_PARTIAL_MODEL_RESULTS`
- `K_keys`: K7, K8
- `scope`: boundary-data renormalization/coarse-graining and regulator-comparison methods
- `firewall`: graph/two-complex refinement is not RG unless amplitudes/physics are related through an explicit scale/coarse-graining map
- `split_candidate`: 0

### `LOOP-X9` — axiomatic/distributional continuum-limit structure

- `source_ids`: `SRC-FCP15-LOOP-BCMR-2026`
- `sector`: `LOOP-COVAR`
- `layer`: `L4`
- `status`: `SOURCE_DERIVED_CONDITIONAL_CONTINUUM_STRUCTURE`
- `K_keys`: K7, K8, K9
- `scope`: model-independent spin-foam axioms; strong-limit obstruction; distributional-limit rigging-map/physical-Hilbert construction under assumptions
- `firewall`: does not establish that a specific 4D EPRL/FK dynamics satisfies the required limit and recovers continuum GR
- `split_candidate`: 0

## 5. Immirzi parameter

### `LOOP-X10` — Barbero–Immirzi parameter `γ`

- `source_ids`: `SRC-FCP15-LOOP-AB-2021`, `SRC-FCP15-LOOP-EPRL-2008`
- `sector`: both
- `layer`: `L1/L3/L5`
- `status`: `QUANTIZATION/MODEL_PARAMETER_WITH_CALIBRATION_BURDEN`
- `K_keys`: K1, K5, K9, K10
- `scope`: enters canonical variables/geometric spectra and named spinfoam construction
- `firewall`: matching/fitting a `γ`-dependent result in an extension is not an independent base-framework prediction
- `split_candidate`: 0

## 6. Physical extensions explicitly excluded from base

The following remain `L5` unless separately source-bound in a later task:

### `LOOP-X11` — loop quantum cosmology

- `status`: `SYMMETRY_REDUCED_EXTENSION`
- `base_framework`: NO
- `empirical_back_projection`: PROHIBITED

### `LOOP-X12` — isolated-horizon / black-hole entropy packages

- `status`: `BOUNDARY/BLACK_HOLE_EXTENSION`
- `base_framework`: NO
- `empirical_back_projection`: PROHIBITED
- `firewall`: entropy matching under extension assumptions or parameter choices is not framework-wide experimental selection

### `LOOP-X13` — matter couplings / Standard Model realization

- `status`: `PHYSICAL_EXTENSION`
- `base_framework`: NOT SOURCE_BOUND BY FCP-15
- `K_keys`: K5, K9, K10

### `LOOP-X14` — group field theory

- `status`: `ADJACENT_REFORMULATION/EXTENSION; NOT BASE FW-LOOP`
- `reason`: EPRL and coarse-graining sources may mention GFT, but FCP-15 does not intake GFT as a framework or equate it with `FW-LOOP`

### `LOOP-X15` — tensor-network methods used for coarse graining

- `status`: `METHOD_IMPORT; NOT FW-TENSOR CONVERGENCE`
- `reason`: use of tensor-network renormalization as a computational method does not import the unaudited `FW-TENSOR` foundational family or create a cross-framework result

## 7. Phenomenology firewall

### `LOOP-X16` — modified-dispersion / Lorentz-violation effective models

- `source_ids`: `SRC-FCP15-LOOP-GHM-2012`
- `layer`: `L6`
- `status`: `MODEL/PHENOMENOLOGY_DEPENDENT`
- `K_keys`: K6, K9, K10
- `firewall`: observational constraints on effective MDR/Lorentz-violating models are not base `FW-LOOP` constraints unless the fundamental theory uniquely derives those models and their parameters

### `LOOP-X17` — generic Planck-scale phenomenology

- `source_ids`: `SRC-FCP15-LOOP-GHM-2012`
- `layer`: `L6`
- `status`: `PROPOSED/INTERMEDIATE_PHENOMENOLOGY`
- `firewall`: source explicitly leaves substantial work connecting fundamental LQG to specific phenomenological models

## 8. Framework-split assessment

No optional structure above forces a new top-level framework ID during FCP-15.

The largest internal distinction is canonical versus covariant dynamics; this is recorded by persistent `LOOP-CANON` / `LOOP-COVAR` labels rather than a split.

- `FRAMEWORK_SPLIT_CANDIDATE = 0`
- `FRAMEWORK_EXTENSION_CANDIDATE = 0`
- `KEY_EXTENSION_CANDIDATE = 0`

## 9. Permanent controls

> **KINEMATICAL CORE != OPTIONAL DYNAMICS PACKAGE.**

> **EPRL != ALL SPINFOAMS != WHOLE FW-LOOP.**

> **COHERENT STATE != DYNAMICALLY SELECTED SEMICLASSICAL HISTORY.**

> **REGGE ASYMPTOTICS != COMPLETE GR RECOVERY.**

> **REFINEMENT != RENORMALIZATION.**

> **GFT OR TENSOR-NETWORK METHOD != BASE FW-LOOP CONTENT.**

> **LQC OR BLACK-HOLE EXTENSION SUCCESS != FULL-LQG EMPIRICAL EVIDENCE.**

> **Preserve results, not theories.**
