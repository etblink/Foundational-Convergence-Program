# FCP-19 — Asymptotic Safety Source Intake

**Version:** 0.1.0  
**Framework:** `FW-AS`  
**Status:** SOURCE-INTAKE CANDIDATE  
**Exact parent:** `2d7473be495af1b210ee41de22101963f388c0c5`  
**New external sources bound:** 18

## 0. Purpose

FCP-19 source-binds the already-admitted `FW-AS` comparator without performing any cross-framework E1–E5 comparison. The intake separates the asymptotic-safety hypothesis from functional-RG implementations, truncation evidence, robustness evidence, matter extensions, physical-realization work, and phenomenology.

> **Preserve results, not theories.**

## 1. Minimal source-bound framework definition

At FCP-19 scope, `FW-AS` is the continuum quantum-field-theoretic ultraviolet-completion hypothesis that the gravitational RG flow possesses an appropriate interacting/non-Gaussian ultraviolet fixed point and a finite-dimensional UV critical surface, so that a continuum limit can be specified by finitely many relevant parameters.

This definition is a framework hypothesis. It is not identical to any one implementation used to investigate it.

The dominant concrete evidence in the bounded corpus comes from effective-average-action / functional-renormalization-group calculations in finite or otherwise controlled truncations, supplemented by higher-order truncation studies, dynamical-fluctuation methods, matter-coupled analyses, and increasingly direct Lorentzian constructions.

FCP-19 therefore freezes:

`ASYMPTOTIC_SAFETY_HYPOTHESIS != FUNCTIONAL_RG_IMPLEMENTATION`.

## 2. Framework taxonomy

`FCP19_AS_TAXONOMY = OUTCOME_A_ONE_FRAMEWORK`.

`IS_ASYMPTOTIC_SAFETY_ONE_SOURCE_BOUND_FRAMEWORK_AT_FCP_SCOPE = YES`.

`FRAMEWORK_SPLIT_CANDIDATE = 0`.

The following are bookkeeping layers, not framework IDs or subframeworks:

- `AS-H` — framework-level UV fixed-point / finite-critical-surface hypothesis;
- `AS-RG` — effective-average-action and functional-RG machinery;
- `AS-TRUNC` — finite/truncated model calculations;
- `AS-ROBUST` — regulator/gauge/parametrization/truncation robustness evidence;
- `AS-MATTER` — gravity-matter extensions;
- `AS-PHYS` — Lorentzian, UV-to-IR, observable and realization work;
- `AS-PHEN` — phenomenological and RG-improvement applications.

The source corpus contains materially different calculational implementations but does not establish different primitive commitments, model classes, physical scopes, or empirical burdens sufficient to force top-level framework splitting.

## 3. Evidence ladder

FCP-19 uses this source-scope ladder only:

- `AS-L0 = FRAMEWORK_HYPOTHESIS_OR_DEFINITION`
- `AS-L1 = EXACT_OR_FORMAL_RG_STRUCTURE`
- `AS-L2 = TRUNCATION_OR_MODEL_FIXED_POINT_RESULT`
- `AS-L3 = MULTI_TRUNCATION_OR_ROBUSTNESS_EVIDENCE`
- `AS-L4 = PHYSICAL_TRAJECTORY_REALIZATION_OR_IR_BRIDGE`
- `AS-L5 = FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR`

This ladder is not a convergence class, score, confidence percentage, or ranking.

## 4. Final external source corpus

### `SRC-FCP19-AS-WEINBERG-1979`

Steven Weinberg, *Ultraviolet Divergences in Quantum Theories of Gravitation*, in S. W. Hawking and W. Israel (eds.), **General Relativity: An Einstein Centenary Survey**, Cambridge University Press (1979), pp. 790–831, ISBN 0-521-22285-0.

Role: `AS-H` foundational definition/history.  
Bounded use: source for the fixed-point/finite-relevant-direction conception of asymptotic safety; not evidence that gravity actually realizes it.

### `SRC-FCP19-AS-REUTER-1998`

M. Reuter, *Nonperturbative evolution equation for quantum gravity*, **Phys. Rev. D 57, 971 (1998)**. DOI `10.1103/PhysRevD.57.971`; arXiv `hep-th/9605030`.

Role: `AS-RG`, `AS-TRUNC`.  
Bounded use: introduces the scale-dependent effective action and exact-form functional flow equation; solves a simple truncation and finds gravitational antiscreening. Exact flow machinery does not make its truncation solution exact.

### `SRC-FCP19-AS-SOUMA-1999`

W. Souma, *Non-Trivial Ultraviolet Fixed Point in Quantum Gravity*, **Prog. Theor. Phys. 102, 181–195 (1999)**. DOI `10.1143/PTP.102.181`; arXiv `hep-th/9907027`.

Role: `AS-TRUNC`.  
Bounded use: early d-dimensional functional-RG evidence for a non-Gaussian fixed point continuing to d=4; not a complete-theory fixed-point theorem.

### `SRC-FCP19-AS-LR-2002`

O. Lauscher and M. Reuter, *Ultraviolet fixed point and generalized flow equation of quantum gravity*, **Phys. Rev. D 65, 025013 (2002)**. DOI `10.1103/PhysRevD.65.025013`; arXiv `hep-th/0108040`.

Role: `AS-TRUNC`, `AS-ROBUST`.  
Bounded use: Einstein-Hilbert fixed-point evidence with explicit scheme-dependence study of universal quantities; supports robustness within that approximation but does not prove exact scheme independence.

### `SRC-FCP19-AS-CPR-2009`

A. Codello, R. Percacci and C. Rahmede, *Investigating the Ultraviolet Properties of Gravity with a Wilsonian Renormalization Group Equation*, **Ann. Phys. 324, 414–469 (2009)**. DOI `10.1016/j.aop.2008.08.008`; arXiv `0805.2909`.

Role: `AS-TRUNC`, `AS-ROBUST`.  
Bounded use: compares cutoff schemes and enlarges operator content through higher-derivative and polynomial-curvature truncations; finds a fixed point with a small number of UV-attractive directions in the studied approximations.

### `SRC-FCP19-AS-FLNR-2016`

K. Falls, D. F. Litim, K. Nikolakopoulos and C. Rahmede, *Further evidence for asymptotic safety of quantum gravity*, **Phys. Rev. D 93, 104022 (2016)**. DOI `10.1103/PhysRevD.93.104022`; arXiv `1410.4815`.

Role: `AS-TRUNC`, `AS-ROBUST`.  
Bounded use: high-order polynomial `f(R)` evidence up to the 34th power with bootstrap/convergence tests; strong evidence inside that truncation family, not exact theory-space control.

### `SRC-FCP19-AS-FKLR-2018`

K. G. Falls, C. R. King, D. F. Litim, K. Nikolakopoulos and C. Rahmede, *Asymptotic safety of quantum gravity beyond Ricci scalars*, **Phys. Rev. D 97, 086006 (2018)**. DOI `10.1103/PhysRevD.97.086006`; arXiv `1801.00162`.

Role: `AS-TRUNC`, `AS-ROBUST`.  
Bounded use: extends fixed-point evidence to actions involving Ricci-tensor invariants and reports three relevant couplings with rapid polynomial convergence; does not establish complete operator-basis convergence.

### `SRC-FCP19-AS-DBOPT-2018`

G. P. de Brito, N. Ohta, A. D. Pereira, A. A. Tomaz and M. Yamada, *Asymptotic safety and field parametrization dependence in the f(R) truncation*, **Phys. Rev. D 98, 026027 (2018)**. DOI `10.1103/PhysRevD.98.026027`; arXiv `1805.09656`.

Role: `AS-ROBUST`, limitation/counterevidence.  
Bounded use: demonstrates material field-parametrization dependence in background `f(R)` truncations, including two- versus three-relevant-direction fixed-point classes; blocks promotion of truncation-level relevant-direction counts to an exact physical count.

### `SRC-FCP19-AS-MRS-2011`

E. Manrique, S. Rechenberger and F. Saueressig, *Asymptotically Safe Lorentzian Gravity*, **Phys. Rev. Lett. 106, 251302 (2011)**. DOI `10.1103/PhysRevLett.106.251302`; arXiv `1102.5012`.

Role: `AS-PHYS`, Lorentzian truncation evidence.  
Bounded use: foliated/causal functional-RG construction relating Euclidean and Lorentzian flows and finding fixed points in an Einstein-Hilbert approximation; not completed Lorentzian QG or a full unitarity theorem.

### `SRC-FCP19-AS-SW-2025`

F. Saueressig and J. Wang, *Foliated asymptotically safe gravity: Lorentzian signature fluctuations from the Wick rotation*, **Phys. Rev. D 111, 106007 (2025)**. DOI `10.1103/PhysRevD.111.106007`; arXiv `2501.03752`.

Role: `AS-PHYS`, `AS-ROBUST`.  
Bounded use: establishes conditions relating Euclidean and Lorentzian beta functions and agreement for the graviton two-point flow in an Einstein-Hilbert truncation; important signature-robustness evidence, not complete Lorentzian realization.

### `SRC-FCP19-AS-DEP-2014`

P. Donà, A. Eichhorn and R. Percacci, *Matter matters in asymptotically safe quantum gravity*, **Phys. Rev. D 89, 084035 (2014)**. DOI `10.1103/PhysRevD.89.084035`; arXiv `1311.2898`.

Role: `AS-MATTER`, truncation evidence.  
Bounded use: finds approximation-dependent matter-content bounds and Standard-Model compatibility in a specified setup; compatibility is not Standard-Model derivation and the matter bounds are not framework-universal.

### `SRC-FCP19-AS-MPR-2016`

J. Meibohm, J. M. Pawlowski and M. Reichert, *Asymptotic safety of gravity-matter systems*, **Phys. Rev. D 93, 084035 (2016)**. DOI `10.1103/PhysRevD.93.084035`; arXiv `1510.07018`.

Role: `AS-MATTER`, `AS-ROBUST`.  
Bounded use: dynamical-propagator/vertex setup finds UV stability for broad fermion/scalar matter ranges within regulator-validity bounds and differs materially from background-coupling matter restrictions; preserves implementation dependence instead of voting by paper count.

### `SRC-FCP19-AS-NR-2006`

M. Niedermaier and M. Reuter, *The Asymptotic Safety Scenario in Quantum Gravity*, **Living Rev. Relativ. 9, 5 (2006)**. DOI `10.12942/lrr-2006-5`; arXiv `gr-qc/0610018`.

Role: review/synthesis across `AS-H`, `AS-RG`, continuum and realization criteria.  
Bounded use: authoritative early synthesis that explicitly separates formal FRG criteria, global trajectories and stability/positivity/unitarity requirements.

### `SRC-FCP19-AS-CRIT-2020`

A. Bonanno, A. Eichhorn, H. Gies, J. M. Pawlowski, R. Percacci, M. Reuter, F. Saueressig and G. P. Vacca, *Critical Reflections on Asymptotically Safe Gravity*, **Front. Phys. 8, 269 (2020)**. DOI `10.3389/fphy.2020.00269`; arXiv `2004.06810`.

Role: modern critical review/synthesis.  
Bounded use: source-binds progress and unresolved technical/conceptual questions; prevents source intake from equating accumulated fixed-point evidence with a completed quantum theory of spacetime.

### `SRC-FCP19-AS-PR-2024`

J. M. Pawlowski and M. Reichert, *Quantum Gravity from Dynamical Metric Fluctuations*, in **Handbook of Quantum Gravity** (2024). DOI `10.1007/978-981-19-3079-9_17-1`; arXiv `2309.10785`.

Role: modern dynamical-fluctuation review across `AS-RG`, `AS-PHYS`, `AS-MATTER`.  
Bounded use: reviews background/fluctuation separation, vertex-expansion convergence, UV–IR trajectories and Lorentzian spectral work; source-binds methodological maturity without promoting review synthesis to a complete-theory theorem.

### `SRC-FCP19-AS-EICHHORN-2026`

A. Eichhorn, *Asymptotically safe quantum gravity and its phenomenology — a review*, arXiv `2606.21522` (2026).

Role: current review/synthesis and phenomenology boundary.  
Bounded use: current preprint review reporting strong/compelling Euclidean pure-gravity fixed-point evidence, extensive matter work and rapidly developing Lorentzian/phenomenology programs. Because it is a 2026 preprint review, its strongest status statements are retained as synthesis judgments rather than independent theorem authority.

### `SRC-FCP19-AS-GRS-2019`

G. Gubitosi, C. Ripken and F. Saueressig, *Scales and Hierarchies in Asymptotically Safe Quantum Gravity: A Review*, **Found. Phys. 49, 972–990 (2019)**. DOI `10.1007/s10701-019-00263-1`; arXiv `1901.01731`.

Role: `AS-PHYS`, scale/predictivity review.  
Bounded use: reviews finite-critical-surface predictivity and explicit scale-spanning trajectories; observed `GΛ` and other low-energy inputs remain calibration, not independent AS predictions.

### `SRC-FCP19-AS-PLATANIA-2024`

A. Platania, *Black Holes in Asymptotically Safe Gravity*, in **Handbook of Quantum Gravity** (2024), pp. 1031–1095. DOI `10.1007/978-981-99-7681-2_24`; arXiv `2302.04272`.

Role: `AS-PHEN` phenomenology-boundary review.  
Bounded use: documents RG-improved black-hole models, improvement ambiguities and efforts toward first-principles control; black-hole phenomenology is not promoted to a compulsory base-framework prediction.

## 5. Corpus statistics

- `CANDIDATE_SOURCES_REVIEWED = 27`
- `FINAL_SOURCES_BOUND = 18`
- `FOUNDATIONAL_PRIMARY_COUNT = 12`
- `REVIEW_SYNTHESIS_COUNT = 6`
- `DIRECT_EMPIRICAL_SOURCE_COUNT = 0`
- `PHENOMENOLOGY_BOUNDARY_COUNT = 2`

The phenomenology-boundary count includes the current 2026 synthesis and the dedicated 2024 black-hole review. Neither supplies direct framework-level observational selection.

## 6. Reviewed but not bound

Nine additional candidate works were reviewed but excluded from the final window because they were redundant at the hard cap rather than scientifically disfavored:

- D'Angelo (2024) Lorentzian FRG — current Lorentzian scope already bounded by MRS-2011, SW-2025 and PR-2024;
- Christiansen et al. (2018) gravity with matter — matter scope already bounded by the deliberately contrasting DEP-2014/MPR-2016 pair plus current reviews;
- Falls (2016) cosmological-constant trajectory study — IR trajectory role covered by GRS-2019 and PR-2024;
- Spina (2025) black-hole review — phenomenology role redundant with PLATANIA-2024;
- Percacci (2017) book-length synthesis — review role redundant under the 18-source cap;
- Falls, Litim and Schröder (2019) — additional fixed-point analysis redundant with the high-order primary sequence already retained;
- additional higher-derivative truncation studies — redundant with LR-2002, CPR-2009, FLNR-2016 and FKLR-2018;
- Christiansen et al. dynamical pure-gravity vertex studies — represented through PR-2024 synthesis under the hard source cap;
- early RG-improved cosmology papers — phenomenology boundary represented by later reviews that explicitly discuss model dependence.

Search snippets, Wikipedia, blogs, popular accounts, social media, and unattributed summaries were not used as scientific authority.

## 7. Source-selection result

The source window supports a coherent `FW-AS` object while preserving important internal tensions:

1. an exact/formal functional flow equation can coexist with approximate truncation solutions;
2. Euclidean pure-gravity non-Gaussian fixed-point evidence is broad across truncations, but exact full-theory existence is not source-bound as a theorem;
3. relevant-direction counts are often small but can change with parametrization/approximation;
4. matter-compatibility conclusions depend materially on implementation;
5. Lorentzian evidence has advanced substantially, but completed Lorentzian unitarity/causality/observable realization is not established;
6. UV–IR trajectory and phenomenology programs are substantive but remain trajectory/model/calibration dependent;
7. no unavoidable framework-level empirical discriminator is source-bound.

## 8. Permanent anti-smuggling controls

> **ASYMPTOTIC-SAFETY HYPOTHESIS != FUNCTIONAL-RG IMPLEMENTATION.**

> **RG FLOW != PHYSICAL TIME EVOLUTION.**

> **FIXED POINT IN A TRUNCATION != FIXED POINT OF THE COMPLETE THEORY.**

> **TRUNCATION STABILITY != EXACT THEORY-SPACE CONTROL.**

> **REGULATOR ROBUSTNESS != PROVED REGULATOR INDEPENDENCE.**

> **GAUGE/PARAMETRIZATION STABILITY != COMPLETE PHYSICAL GAUGE INDEPENDENCE.**

> **FINITE RELEVANT DIRECTIONS IN A TRUNCATION != COMPLETE PREDICTIVITY THEOREM.**

> **EUCLIDEAN FIXED-POINT EVIDENCE != COMPLETED LORENTZIAN QUANTUM GRAVITY.**

> **UV COMPLETION != IR GENERAL RELATIVITY RECOVERY.**

> **IR GR RECOVERY != INDEPENDENT EMPIRICAL SELECTION OF ASYMPTOTIC SAFETY.**

> **MATTER COMPATIBILITY != STANDARD MODEL DERIVATION.**

> **CRITICAL EXPONENT != EMPIRICAL OBSERVABLE WITHOUT A PHYSICAL BRIDGE.**

> **OPTIONAL COSMOLOGY/BLACK-HOLE/PARTICLE PHENOMENOLOGY != BASE-FRAMEWORK PREDICTION.**

> **QFT/RG MATHEMATICS != AS-SPECIFIC FOUNDATIONAL CREDIT.**

> **ABSENCE OF ANOTHER UV COMPLETION != POSITIVE EVIDENCE FOR ASYMPTOTIC SAFETY.**

## 9. Intake verdict

> **`FW-AS` IS SOURCE-BOUND AS ONE ASYMPTOTIC-SAFETY FRAMEWORK CENTERED ON AN INTERACTING UV FIXED-POINT / FINITE-CRITICAL-SURFACE HYPOTHESIS. THE BOUNDED CORPUS CONTAINS BROAD MULTI-TRUNCATION EUCLIDEAN FIXED-POINT EVIDENCE, NONTRIVIAL ROBUSTNESS AND GRAVITY-MATTER STUDIES, AND INCREASING LORENTZIAN/UV–IR REALIZATION WORK. THE COMPLETE-THEORY FIXED POINT, EXACT PHYSICAL CRITICAL-SURFACE DIMENSION, FULL SCHEME/GAUGE/PARAMETRIZATION INDEPENDENCE, COMPLETED LORENTZIAN UNITARY REALIZATION, REALISTIC PARAMETER PREDICTION, AND UNAVOIDABLE FRAMEWORK-LEVEL EMPIRICAL DISCRIMINATOR REMAIN UNPROVED OR OPEN AT THIS SOURCE SCOPE.**

No cross-framework E1–E5 relation is assigned in FCP-19.