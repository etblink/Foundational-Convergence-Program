# FCP-5 — AQFT vs. Null Baseline K1–K10 Reformulation/Extension Control

**Version:** 0.1.0  
**Frameworks:** `FW-AQFT` vs. `FW-NULL-GRQFTSM`  
**Comparison-key version:** `FCP_COMPARISON_KEYS_0_1_0`  
**AQFT source-intake version:** `FCP4_AQFT_SOURCE_INTAKE_0_1_0`  
**Comparative binding:** `FCP5_AQFT_COMPARATIVE_BINDING_0_1_0`  
**Status:** COMPARISON CANDIDATE

## 0. Controlling question

> **What scientific content does AQFT add beyond the null baseline's already-successful QFT sector?**

This is primarily a reformulation/extension control, not a contest between independent theories.

## 1. Analytical buckets

- `R` — `REFORMULATION`
- `S` — `STRUCTURAL_REFINEMENT`
- `E` — `MODEL_CLASS_EXTENSION`
- `P` — `PHYSICAL_EXTENSION`
- `D` — `EMPIRICALLY_DISTINCT`
- `O` — `OPEN`

Primary per-key assignment is used for bookkeeping; secondary content is recorded explicitly.

## 2. K1–K10 matrix

| Key | AQFT | Null QFT/SM sector | AQFT M1/M2/M3 | Null M1/M2/M3 | E1–E5 | Primary relationship | Additional AQFT content? |
|---|---|---|---|---|---|---|---|
| **K1 State/carrier** | Abstract local/global observable algebra with states as positive functionals; Hilbert representations secondary | QFT fields/operators/states in Hilbert/Fock/algebraic representations according to regime | `SOURCE_DERIVED`; `C2–C3`; framework/representation scope | `SOURCE_DERIVED` + model/preparation choices; `C2–C3`, tested consequences `C5` | `E2_FUNCTORIAL_REPRESENTATION` at bounded structural level | **R** | Representation independence is a real sharpening, but not a new empirical state space by itself. |
| **K2 Redundancy/equivalence** | Physical emphasis on abstract algebra over faithful representation; sector/equivalence structure formulation-dependent | Gauge redundancy, basis/representation freedom, algebraic descriptions already admissible | `SOURCE_DERIVED`; `C2–C3`; no unique ontology | `SOURCE_DERIVED`; `C2–C3` | `E2` for representation relation; generic isomorphism machinery otherwise | **S** | AQFT sharpens representation-independence doctrine; generic algebraic equivalence receives zero distinctive credit. |
| **K3 Allowed transformations** | Core inclusions/automorphisms; LCQFT embeddings and algebra morphisms across spacetimes | Gauge/symmetry/representation/intervention/RG transformations | core `SOURCE_DERIVED`; LCQFT extension `MODEL_CHOICE/SOURCE_DERIVED`; `C2–C3` | heterogeneous `SOURCE_DERIVED/MODEL_CHOICE`; `C2–C3` | core `E2`; LCQFT cross-background organization not reduced to one null map | **E** | LCQFT supplies a broader covariant model organization across backgrounds; category composition itself is generic. |
| **K4 Dynamics/history selector** | Concrete models may have automorphic evolution; LCQFT relative Cauchy evolution describes metric-response under extra conditions; no universal AQFT history selector | SM/QFT action and quantum rules supply actual sector dynamics conditional on states/parameters | framework-wide selector `UNDERDETERMINED`; model dynamics `SOURCE_DERIVED`; `C2–C3` | sector dynamics `SOURCE_DERIVED`; tested consequences `C5` | `E2/E5` depending concrete model; no framework-wide identity | **S** | AQFT clarifies algebraic/dynamical separation and metric-response structure; it does not replace concrete QFT dynamics. |
| **K5 Observables/measurement** | Local observable algebras are central; Fewster–Verch system–probe framework gives induced localized observables/instruments under stated hypotheses | Mature QFT/SM observables plus calibrated detector/event interfaces | core `SOURCE_DERIVED`; measurement extension `PHYSICAL_BRIDGE`; `C2–C4` at formal/physical semantics, no independent `C5` | definitions `SOURCE_DERIVED`, calibration `EMPIRICALLY_FIXED`, tested `C5` | core observable relation `E2`; measurement extension at most `E5` absent calibration equivalence theorem | **P** | Local measurement framework is physically interpreted additional structure, but calibration/numerical predictions remain model-inherited. |
| **K6 Locality/causality** | Local algebras indexed by supplied spacetime regions; spacelike separation constrains commutation; LCQFT uses globally hyperbolic spacetimes | Relativistic locality/microcausality on spacetime | locality axiom `PRIMITIVE/SOURCE_DERIVED` relative to AQFT; consequences `SOURCE_DERIVED`; `C2–C3` | locality framework `PRIMITIVE/SOURCE_DERIVED`; tested propagation can reach `C5` | `E2` in concrete embeddings/models; no derivation of spacetime | **S** | AQFT makes locality structurally explicit and supports model-independent consequences, but causal geometry is input rather than derived. |
| **K7 Scale/RG** | No intrinsic minimal-core RG; pAQFT/interacting extensions contain renormalization/scale structure | QFT has established RG, running couplings, EFT and matching | core `UNDERDETERMINED`; pAQFT extension `SOURCE_DERIVED/MODEL_CHOICE`; `C2–C3` | `SOURCE_DERIVED/MODEL_CHOICE`, quantitative results may reach `C5` | extension-specific; no framework-wide E1–E4 identity | **E** | pAQFT is a genuine model-construction extension at source scope, but renormalization mathematics itself is not AQFT-specific. |
| **K8 Local-to-global** | Nets/functors organize consistent local algebras across regions; LCQFT extends this across globally hyperbolic spacetimes; no preferred global state follows generically | QFT has local fields/observables and model-specific global consistency, but no single FCP-1 universal net/functor doctrine | `SOURCE_DERIVED` relative to axioms; `C2–C3`; preferred global state `UNDERDETERMINED` | mixed `SOURCE_DERIVED/MODEL_CHOICE`; `C2–C3` | abstract net/functor machinery generic; physical specialization is source-qualified but lineage-related | **E** | LCQFT supplies a distinctive model-class architecture across backgrounds; its categorical form alone is generic and causal geometry remains supplied. |
| **K9 Physical realization/calibration** | Spacetime regions/local observables/states have direct physical semantics; concrete masses/couplings/rates/calibration come from models and experiments | Mature QFT/SM calibration to measured particle observables | physical semantics `SOURCE_DERIVED`; numerical calibration `MODEL_CHOICE/EMPIRICALLY_FIXED` only in concrete models; up to `C4`, no independent framework `C5` | calibrated bridges often `C5` | `E2/E4` only through concrete shared QFT models, hence inherited | **R** | AQFT realizes the same QFT domain in a sharper local language; quantitative empirical success is `EMPIRICALLY_INHERITED`. |
| **K10 Empirical discriminator** | No abstract AQFT-vs-null observable satisfying frozen K10 criteria is source-bound | Null QFT/SM has many model-level quantitative tests | `UNDERDETERMINED`; no framework-level `C5` distinction | tested model relations `C5` | no independent E4 discriminator | **O** | `NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`. |

## 3. Primary-key counts

- primarily `REFORMULATION`: **2** (`K1`, `K9`)
- primarily `STRUCTURAL_REFINEMENT`: **3** (`K2`, `K4`, `K6`)
- primarily `MODEL_CLASS_EXTENSION`: **3** (`K3`, `K7`, `K8`)
- primarily `PHYSICAL_EXTENSION`: **1** (`K5`)
- `EMPIRICALLY_DISTINCT`: **0**
- primarily `OPEN`: **1** (`K10`)

These are categorical counts, not a score.

## 4. Generic-only substructures

Four recurring pieces are explicitly denied AQFT-specific credit by themselves:

1. abstract operator-algebra isomorphism/representation machinery;
2. category/functor composition as mathematics;
3. net/isotony/gluing organization absent its specific physical specialization;
4. generic renormalization/perturbative machinery absent AQFT-specific hypotheses/results.

Their use inside AQFT can support non-generic physical theorems, but the generic machinery itself earns zero framework-specific convergence credit.

## 5. Material AQFT–null divergences

FCP-5 records four material scope differences, none automatically a defect:

### DV1 — framework-level dynamics

The null QFT/SM sector contains concrete empirically successful dynamical laws. Abstract AQFT does not supply one universal history selector; concrete model dynamics are supplied model-by-model. `DIFFERENCE_IN_SCOPE`.

### DV2 — background geometry

LCQFT broadens QFT across curved backgrounds but starts from globally hyperbolic Lorentzian spacetimes and admissible embeddings. It does not derive the metric/causal substrate. `MISSING_DEEPER_SELECTION`, not contradiction.

### DV3 — scale structure

The null QFT baseline includes working RG/EFT structure generally; minimal AQFT does not. pAQFT supplies extension-level renormalization/model construction. `DIFFERENCE_IN_SCOPE`.

### DV4 — quantitative empirical selection

The null QFT/SM sector has calibrated particle predictions; abstract AQFT has no independent framework-level discriminator and inherits quantitative success through concrete QFT models. `EMPIRICAL_SCOPE_DIFFERENCE`.

## 6. Assumptions versus consequences

FCP-5 does not report isotony, locality, covariance or time-slice conditions as discoveries merely because they appear in an AQFT axiom set.

- **Locality postulated**: causal separation implies the relevant algebraic commutation/independence condition in the chosen formulation.
- **Derived consequence**: theorems obtained from the axiom plus other stated assumptions.
- **LCQFT covariance**: supplied by the functorial framework; consequences such as relative Cauchy evolution require additional structure.
- **Time-slice**: not silently part of every AQFT model.

## 7. Locally covariant QFT control

LCQFT is a genuine source-qualified extension beyond a fixed-background Haag–Kastler presentation because it organizes one theory covariantly over a class of globally hyperbolic spacetimes and recovers fixed-spacetime nets as special cases.

This earns `MODEL_CLASS_EXTENSION`/structural credit, not quantum-gravity credit. The source spacetime category already contains Lorentzian metric and causal structure.

Relative Cauchy evolution gives a mathematically controlled response to background metric perturbations under named assumptions and is related to stress-energy structure. It is not a universal cosmic history selector.

## 8. Measurement control

Fewster–Verch supplies a physically interpreted localized system–probe construction: bounded-region coupling, scattering map, induced system observables, post-selected instruments and causal composition under factorization hypotheses.

FCP-5 records this as the strongest `PHYSICAL_EXTENSION` candidate in the bounded AQFT source set because it adds explicit physical measurement architecture beyond a bare observable algebra.

It remains non-empirical at framework level: no independent AQFT-versus-null detector outcome is source-bound.

## 9. Curved-spacetime control

QFT formulated on a classical curved spacetime is not quantum gravity. In BFV/LCQFT the metric geometry and global-hyperbolicity class are supplied externally; the quantum field theory is defined covariantly over those classical backgrounds.

## 10. Empirical inheritance

The following are `EMPIRICALLY_INHERITED` when reproduced by a concrete AQFT/pAQFT realization of ordinary QFT:

- masses and couplings;
- cross sections and decay rates;
- Standard Model spectra and event distributions;
- other quantitative QFT observables calibrated through the underlying model.

AQFT compatibility with these successes is scientifically relevant but is not independent evidence selecting the abstract algebraic framework over empirically equivalent formulations.

## 11. Independent convergence control

FCP-5 finds **no `STRONG_CONVERGENCE` or `MODERATE_CONVERGENCE` claim that should be interpreted as independent AQFT–null convergence**.

Where close structural correspondence exists, the correct descriptor is predominantly `REFORMULATION_RELATION`, because AQFT was developed as an algebraic formulation/extension of QFT rather than as an independent foundational theory later found to agree with it.

This prevents later FCP work from double-counting expected QFT–AQFT agreement as independent convergence evidence.

## 12. Structures worth carrying into a later Reduced-NFC comparison

If a later NFC–AQFT comparison is authorized, carry only source-qualified structures that survived this control:

1. **representation-independent observable/state organization** — but mark its core QFT relation as reformulational;
2. **localized observable-net structure and physical locality consequences** — distinguish locality input from consequences;
3. **LCQFT functorial covariance across spacetimes** — genuine model-class extension, but background geometry supplied;
4. **local-to-global net/functor architecture** — generic categorical shell excluded from credit; physical specialization retained;
5. **localized system–probe measurement architecture** — physically interpreted extension;
6. **relative Cauchy evolution** — optional LCQFT/time-slice structure, not universal dynamics;
7. **no-preferred-state/global-state-selection burden** where explicitly source-bound.

Do not carry ordinary operator algebra, category composition, generic quotient/isomorphism, or generic renormalization as AQFT-specific convergence targets.

## 13. Required verdicts

1. AQFT is substantially a **reformulation and structural sharpening** of QFT at core scope.
2. K1/K9 are primarily reformulational; K2/K4/K6 primarily sharpen structure; K3/K7/K8 contain extension-level content; K5 contains the strongest physically interpreted extension; K10 remains open/no discriminator.
3. Generic operator-algebra/category/net/renormalization machinery receives zero distinctive credit by itself.
4. AQFT locality is physically meaningful but is postulated relative to supplied spacetime causal structure; AQFT does not derive spacetime locality from a deeper substrate.
5. AQFT has no universal framework-level history selector; concrete models supply dynamics, while relative Cauchy evolution is a conditional metric-response structure.
6. AQFT has a distinctive local-to-global organization; its purely categorical shell fails the genericization test, while its physical specialization and LCQFT extension remain source-qualified structure.
7. Physical semantics are intrinsic; numerical calibration is largely inherited from concrete QFT models.
8. `NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`.
9. Independent-convergence terminology is inappropriate for most AQFT–null agreement; use `REFORMULATION_RELATION`.
10. `KEY_EXTENSION_CANDIDATE`: **0**.

## 14. Controlling verdict

> **AQFT IS PRIMARILY A STRUCTURAL REFORMULATION/SHARPENING OF QFT AT CORE SCOPE, WITH SOURCE-QUALIFIED LCQFT/pAQFT MODEL-CLASS EXTENSIONS AND A LOCALIZED PHYSICAL MEASUREMENT EXTENSION, BUT NO INDEPENDENT FRAMEWORK-LEVEL EMPIRICAL DISCRIMINATOR AT CURRENT SOURCE SCOPE.**

> **AQFT–NULL RELATION CLASSIFIED BEFORE ANY NFC–AQFT COMPARISON.**
