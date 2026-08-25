# FCP-16 — Loop / Null-GR Subtraction Ledger

**Version:** 0.1.0  
**Status:** DUAL-SUBTRACTION / RESIDUE CANDIDATE  
**Exact base:** `6b41558d8ff98d343721920c4a528381af2e9d8e`  
**New external scientific sources:** 0

## 0. Purpose

This ledger records what is removed from apparent `FW-LOOP`/GR agreement before any independent convergence credit is considered, and what non-generic loop structure remains after subtraction.

The subtraction is asymmetric by design: a structure can be scientifically real on the loop side yet still earn zero **independent loop↔GR convergence credit** because it is generic, inherited, target-conditioned, optional, or empirically inherited.

## 1. S0 — Generic mathematics removed

The following receive zero loop-specific convergence credit by themselves:

- graphs and combinatorial complexes;
- Hilbert-space machinery;
- generic representation theory;
- `SU(2)`/Lorentz representation theory as mathematics alone;
- generic constrained-Hamiltonian methods;
- generic action/variational principles;
- generic path-integral/BF/simplicial machinery;
- generic coarse-graining/RG vocabulary;
- generic gluing/composition;
- generic operator algebra.

Key incidence: K1–K9.

Permanent rule:

> **GENERIC MATHEMATICS != FOUNDATIONAL CONVERGENCE.**

## 2. S1 — Classical-GR lineage removed from independent credit

FCP-16 does not award independent loop credit merely for retaining or quantizing classical-GR-related structure such as:

- background independence;
- coordinate/diffeomorphism redundancy;
- generally covariant constraint organization;
- classical Lorentzian/Einstein target geometry;
- classical Regge/Plebanski/Einstein content used as a target or model-building input;
- the broad fact that the theory seeks a quantum realization of GR.

Key incidence: K1, K2, K3, K4, K6, K8, K9.

The closed packet does not freeze an explicit GR-metric ↔ connection/triad map adequate for pairwise E2, so FCP-16 records lineage without inventing the stronger translation relation.

## 3. S2 — Quantization-specific addition retained but not automatically promoted

The following are real additions beyond classical GR presentation:

- nonperturbative holonomy-flux/cylindrical/spin-network quantum state structure;
- discrete kinematical geometric operators/spectra;
- quantum Hamiltonian/scalar-constraint operators and graph-changing actions;
- spinfoam quantum amplitudes;
- quantum boundary-state structures;
- `γ`-dependent quantum-geometric structures.

Key incidence: K1, K3, K4, K5, K8, K9.

These survive as loop-specific content, but:

> **QUANTIZATION-SPECIFIC ADDITION != PHYSICAL OR EMPIRICAL SELECTION.**

## 4. S3 — Model/regularization/extension content controlled

The following are not silently promoted to universal base `FW-LOOP`:

- QSD or other Hamiltonian prescriptions as the unique dynamics;
- master-constraint/deparametrized implementations;
- EPRL as all spinfoams;
- simplicity-constraint/model variants;
- selected two-complexes/triangulations;
- coherent/semi-classical state packages;
- particular coarse-graining schemes;
- particular matter couplings;
- LQC;
- black-hole/isolated-horizon packages;
- GFT/tensor-network method imports;
- modified-dispersion/Lorentz-violation phenomenology.

Key incidence: K3, K4, K5, K7, K8, K9, K10.

## 5. S4 — GR-target-conditioned recovery controlled

### Regge asymptotics

`SRC-FCP15-LOOP-BARRETT-2010` source-binds large-representation/fixed-simplex Lorentzian Regge-action asymptotics under suitable boundary data.

FCP-16 retains this as a real conditional semiclassical result.

It is removed from **independent** convergence credit because the target geometry is supplied/selected and because the closed packet does not freeze the complete E3 limit/error/calibration record.

### Low-order metric correlations

`SRC-FCP15-LOOP-BMP-2009` source-binds selected metric correlations at lowest vertex expansion and leading large-spin order compared with perturbative behavior.

This remains a bounded approximation result, not complete low-energy GR recovery.

### Coarse graining / continuum

`SRC-FCP15-LOOP-STEINHAUS-2020` and `SRC-FCP15-LOOP-BCMR-2026` source-bind a genuine continuum/refinement program and conditional structural results.

They do not establish regulator-independent physical 4D GR recovery for a selected loop dynamics.

Key incidence: K7, K8, K9.

Permanent rule:

> **TARGET-CONDITIONED GR RECOVERY != INDEPENDENT CONVERGENCE.**

## 6. S5 — Empirical inheritance removed

The null baseline owns the empirical evidence for tested GR observables.

No GR timing, orbital, pulsar or gravitational-wave success is transferred to `FW-LOOP` merely because a loop construction aims to recover or is compatible with GR.

Likewise, observational constraints on optional loop-inspired effective models are not base-framework tests.

Key incidence: K9, K10.

Permanent rule:

> **RECOVERED GR EMPIRICAL SUCCESS != INDEPENDENT LOOP EMPIRICAL EVIDENCE.**

## 7. S6 — `FCP16_LOOP_NULL_SUBTRACTED_RESIDUE`

The following survive S0–S5 and are sufficiently non-generic/source-bound to carry forward.

### `LOOP-R1` — Nonperturbative quantum-geometric kinematics

- `scope`: `FW-LOOP`, strongest canonical realization in `LOOP-CANON`
- `type`: foundational / structural quantum addition
- `universal_or_optional`: common loop-family lineage at bounded scope
- `source_ids`: `SRC-FCP15-LOOP-RS-1995`, `SRC-FCP15-LOOP-AL-1997`, `SRC-FCP15-LOOP-AL-2004`, `SRC-FCP15-LOOP-AB-2021`
- `content`: holonomy-flux/cylindrical/spin-network quantum geometry with kinematical discrete geometric spectra
- `loop_GR_E_class`: E5 only at role level
- `physical_calibration`: incomplete
- `empirical_status`: unselected
- `open_burdens`: physical Hilbert space, physical observables, continuum and detector bridge

### `LOOP-R2` — Canonical quantum dynamics program

- `scope`: `LOOP-CANON`
- `type`: dynamical quantum addition
- `universal_or_optional`: source-bound family of canonical dynamics implementations; no unique base dynamics
- `source_ids`: `SRC-FCP15-LOOP-QSD-1998`, `SRC-FCP15-LOOP-TG-2024`, `SRC-FCP15-LOOP-AB-2021`
- `content`: quantum Hamiltonian/scalar-constraint and related physical-Hamiltonian programs
- `loop_GR_E_class`: E5 only; no explicit E2/E3 dynamics map frozen
- `physical_calibration`: incomplete
- `empirical_status`: unselected
- `open_burdens`: regularization/selection, solution space, physical inner product, observables

### `LOOP-R3` — Covariant spinfoam dynamics program

- `scope`: `LOOP-COVAR`
- `type`: dynamical / structural quantum addition
- `universal_or_optional`: named model family; EPRL not all spinfoams
- `source_ids`: `SRC-FCP15-LOOP-EPRL-2008`, `SRC-FCP15-LOOP-PEREZ-2013`
- `content`: constrained spinfoam amplitudes and transition structure
- `loop_GR_E_class`: E5 only at role level
- `physical_calibration`: incomplete
- `empirical_status`: unselected
- `open_burdens`: model choice, regulator/two-complex removal, physical Hilbert interpretation, continuum

### `LOOP-R4` — Canonical/covariant internal bridge

- `scope`: internal `LOOP-CANON` ↔ `LOOP-COVAR`
- `type`: structural consistency/translation residue
- `universal_or_optional`: fixed-graph/named EPRL scope
- `source_ids`: `SRC-FCP15-LOOP-EPRL-2008`, `SRC-FCP15-LOOP-AB-2021`, `SRC-FCP15-LOOP-PEREZ-2013`
- `content`: source-bound boundary-state/area-spectrum correspondence within the loop family
- `loop_GR_E_class`: not a loop↔GR E-class
- `physical_calibration`: incomplete
- `empirical_status`: none
- `open_burdens`: complete physical-Hilbert/dynamics/continuum equivalence

### `LOOP-R5` — Loop-specific coarse-graining / continuum program

- `scope`: predominantly `LOOP-COVAR`
- `type`: scale/globalization structural residue
- `universal_or_optional`: research program plus conditional structural results
- `source_ids`: `SRC-FCP15-LOOP-STEINHAUS-2020`, `SRC-FCP15-LOOP-BCMR-2026`
- `content`: background-independent boundary-data coarse graining and explicit continuum-limit structures
- `loop_GR_E_class`: E5 in current closed packet; E3 not source-qualifiable under frozen internal provenance
- `physical_calibration`: open
- `empirical_status`: none
- `open_burdens`: physical 4D model realization, universality, GR recovery

### `LOOP-R6` — Barbero–Immirzi quantization/selection burden

- `scope`: both internal sectors at declared uses
- `type`: framework/model-parameter structural residue
- `universal_or_optional`: material loop quantization parameter/burden; exact use formulation dependent
- `source_ids`: `SRC-FCP15-LOOP-AB-2021`, `SRC-FCP15-LOOP-EPRL-2008`
- `content`: `γ` dependence in canonical quantum geometry and named covariant construction
- `loop_GR_E_class`: NONE as a positive GR correspondence
- `physical_calibration`: unresolved
- `empirical_status`: unselected
- `open_burdens`: physical value/selection and calibration

Retained non-generic residue items: **6**.

## 8. `DO_NOT_CARRY_AS_INDEPENDENT_LOOP_CONVERGENCE`

The following may be scientifically useful but must not be carried as independent loop/GR convergence:

1. generic graph/Hilbert/representation/constraint/path-integral/BF mathematics;
2. background independence by itself;
3. diffeomorphism/gauge redundancy by itself;
4. classical GR constraint/connection/Regge/Plebanski target content as independent loop discovery;
5. the bare fact that GR is quantized;
6. fixed-complex gluing as continuum globalization;
7. Regge-action asymptotics as complete GR recovery;
8. low-order metric/graviton correlations as complete low-energy recovery;
9. refinement as RG without physical coarse-graining maps;
10. axiomatic continuum structure as proof of the selected 4D physical model limit;
11. GR's empirical success reproduced in a target regime;
12. fitted/selected `γ` values as predictions;
13. LQC/black-hole/matter extensions as base framework content;
14. loop-inspired MDR/Lorentz-violation phenomenology as base framework evidence;
15. the null baseline's lack of UV-complete QG as positive evidence for loop.

## 9. Residue decision

The residue is scientifically nonempty and sufficiently specific for a later controlled comparison:

`FCP16_NULL_SUBTRACTED_LOOP_RESIDUE_NONEMPTY = YES`.

It contains more than generic graph mathematics, GR reformulation, ordinary target recovery or inherited empirical success.

No source strengthening is required merely to identify this residue.

A source-strengthening phase would be required only if a later task needs stronger loop↔GR E2/E3 classification for the omitted explicit maps/limits.

## 10. Open-burden carry-forward

FCP-16 preserves nine main selection burdens:

1. complete physical-state/physical-inner-product construction;
2. unique or universal quantum dynamics;
3. full canonical/covariant dynamics relation;
4. regulator/two-complex/refinement independence;
5. continuum/3+1 Einstein recovery;
6. realistic matter/low-energy QFT realization;
7. physical-observable/detector calibration;
8. physical selection/calibration of `γ` and related choices;
9. framework-level empirical discrimination.

`OPEN_BURDEN_COUNT = 9`.

## 11. Governance

- `FRAMEWORK_SPLIT_CANDIDATE = 0`
- `FRAMEWORK_EXTENSION_CANDIDATE = 0`
- `KEY_EXTENSION_CANDIDATE = 0`
- `NEW_EXTERNAL_SOURCES = 0`

> **Preserve results, not theories.**
