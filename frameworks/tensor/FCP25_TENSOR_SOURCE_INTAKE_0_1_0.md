# FCP-25 Stage 1 — Tensor-Network / Information-Theoretic Source Intake

**Version:** 0.1.0

**Status:** FROZEN_STAGE1_CORPUS_CANDIDATE

**Checked:** 2026-08-27

**Historical intake umbrella:** `FW-TENSOR` (`ADMITTED_NOT_AUDITED`)

**Taxonomy effect:** none

## 1. Stage-1 result and scope

```text
FCP25_STAGE1_STATUS = QUALIFIED_CANDIDATE_COMPLETE_NOT_INTEGRATED

CANONICAL_BASELINE =
d5444f1653a051dd630e90fff1399480ed106c0d

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
SEARCH_LANE_COVERAGE = PASS
SOURCE_COVERAGE_GAPS = NONE

FROZEN_CORPUS_READY_FOR_STAGE2 = YES

TAXONOMY_OUTCOME = NOT_ADJUDICATED
FW_TENSOR_SURVIVES = NOT_ADJUDICATED
SUCCESSOR_FRAMEWORK_COUNT = NOT_ADJUDICATED
SUCCESSOR_FRAMEWORK_IDS_CREATED = 0
K1_K10_BASELINE = NOT_ADJUDICATED
CROSS_FRAMEWORK_COMPARISON = NONE
CONVERGENCE_CREDIT_ASSIGNED = 0
RECURRENCE_RECOMPUTATION = NOT_STARTED
FRAMEWORK_WINNER = NONE
SCALAR_FRAMEWORK_SCORE = FORBIDDEN
```

The corpus is coverage-driven. It contains sources that describe tensor networks as state representations, variational and coarse-graining algorithms, emergent-geometry proposals, AdS/CFT toy constructions, error-correcting descriptions, information-first proposals, limitations, and physical quantum-simulator realizations. Inclusion records source content; it neither endorses the content nor assigns the source to a final FCP framework.

## 2. Frozen source order

Two already-registered FCP-24 sources are reused as explicit holographic boundary inputs. They are not duplicated in `SOURCE_REGISTER.md`. Twenty-seven new records use the FCP-25 tensor namespace.

```text
01 SRC-FCP24-HOLO-MALDACENA-1998
02 SRC-FCP24-HOLO-RT-2006
03 SRC-FCP25-TENSOR-SCHOLLWOECK-2011
04 SRC-FCP25-TENSOR-VERSTRAETE-CIRAC-2004
05 SRC-FCP25-TENSOR-PEREZ-GARCIA-2007
06 SRC-FCP25-TENSOR-CIRAC-2021
07 SRC-FCP25-TENSOR-VIDAL-ER-2007
08 SRC-FCP25-TENSOR-VIDAL-MERA-2008
09 SRC-FCP25-TENSOR-LEVIN-NAVE-2007
10 SRC-FCP25-TENSOR-HAEGEMAN-TDVP-2016
11 SRC-FCP25-TENSOR-SCHUCH-2008
12 SRC-FCP25-TENSOR-GE-EISERT-2016
13 SRC-FCP25-TENSOR-SWINGLE-2012
14 SRC-FCP25-TENSOR-VAN-RAAMSDONK-2010
15 SRC-FCP25-TENSOR-FAULKNER-2014
16 SRC-FCP25-TENSOR-JACOBSON-2016
17 SRC-FCP25-TENSOR-CAO-CARROLL-MICHALAKIS-2017
18 SRC-FCP25-TENSOR-ALMHEIRI-DONG-HARLOW-2015
19 SRC-FCP25-TENSOR-PASTAWSKI-2015
20 SRC-FCP25-TENSOR-HAYDEN-2016
21 SRC-FCP25-TENSOR-DONG-HARLOW-WALL-2016
22 SRC-FCP25-TENSOR-HARLOW-2017
23 SRC-FCP25-TENSOR-BAO-2015
24 SRC-FCP25-TENSOR-JAHN-EISERT-2021
25 SRC-FCP25-TENSOR-LI-2019
26 SRC-FCP25-TENSOR-EVENBLY-VIDAL-2011
27 SRC-FCP25-TENSOR-HAEGEMAN-CMERA-2013
28 SRC-FCP25-TENSOR-MILSTED-VIDAL-2018
29 SRC-FCP25-TENSOR-BISWAS-2026
```

## 2A. Boundary-source consistency and frozen deferred-taxonomy docket

The two reused FCP-24 records remain explicit holographic boundary sources. Seven newly registered FCP-25 records are also cross-boundary inputs and carry `BOUNDARY_SOURCE` consistently in the frozen intake metadata and Source Register:

```text
SRC-FCP25-TENSOR-VAN-RAAMSDONK-2010
SRC-FCP25-TENSOR-FAULKNER-2014
SRC-FCP25-TENSOR-JACOBSON-2016
SRC-FCP25-TENSOR-CAO-CARROLL-MICHALAKIS-2017
SRC-FCP25-TENSOR-ALMHEIRI-DONG-HARLOW-2015
SRC-FCP25-TENSOR-DONG-HARLOW-WALL-2016
SRC-FCP25-TENSOR-HARLOW-2017
```

`BOUNDARY_SOURCE` is descriptive intake metadata only. It does not assign these works to `FW-TENSOR`, exclude them from later taxonomy, or create a successor framework.

The five `DEFERRED_TAXONOMY_DEPENDS_ON_STAGE2` candidates are frozen as the exact Stage-2 deferred-taxonomy docket; Stage 2 may adjudicate their relevance/boundary status but must not silently omit or replace them:

```text
C58 = QI_EXACT_HOLOGRAPHIC_MAPPING
C59 = MAY_DYNAMIC_SPACETIMES
C60 = MIYAJI_TAKAYANAGI_SURFACE_STATE
C61 = YANG_YANG_MEI_EMERGENT_ORDER
C62 = CHOU_CHANG_NONHERMITIAN_DS_CMERA
```

```text
BOUNDARY_SOURCE_TAGGING_CHECK = PASS
DEFERRED_TAXONOMY_DOCKET_FROZEN = PASS
TAXONOMY_OUTCOME = NOT_ADJUDICATED
```

## 3. Lane coverage without taxonomy adjudication

| Lane | Coverage | Principal source IDs | Descriptive Stage-1 finding |
|---|---|---|---|
| A — state architecture | `PASS` | 03–06, 11–12 | MPS/PEPS are controlled state representations with bond-dimension, canonical-form, gauge, approximation, contraction, and dimensionality qualifications. DMRG is expressible in MPS language; this does not make the representation an ontology. |
| B — entanglement renormalization/MERA | `PASS` | 07–08, 26–28 | MERA is a causal tensor-network ansatz and real-space entanglement-renormalization architecture for selected many-body states. Geometry associated with the network is interpretation- and construction-dependent. |
| C — renormalization/dynamics | `PASS` | 04, 07, 09–10, 27 | Coarse graining, imaginary-time ground-state search, variational projection of Schrödinger evolution, and actual physical dynamics are distinguishable source roles. Algorithms inherit a supplied Hamiltonian/model. |
| D — entanglement/emergent geometry | `PASS` | 13–17, 23, 26, 28 | Sources make materially different claims: discrete correlation geometry, AdS/CFT-conditioned spacetime connectivity, linearized gravitational constraints, small-ball entanglement equilibrium, and graph reconstruction from a chosen Hilbert-space factorization. Their assumptions and target dependence are explicit. |
| E — holographic tensor networks | `PASS` | 01–02, 13, 19–20, 23–24, 28–29 | Perfect/random/MERA-like networks reproduce selected RT-like, reconstruction, or code properties principally as AdS/CFT-motivated constructions or toy models. They do not by default supply independent holography or full bulk dynamics. |
| F — QEC/information reconstruction | `PASS` | 18–22, 24, 29 | Operator-algebra QEC, entanglement-wedge reconstruction, redundant encoding, and tensor-network codes are precise structural tools. The sources do not establish QEC as physical ontology or fundamental dynamics. |
| G — information-first proposals | `PASS` | 14, 16–17, 27 | Credible sources explicitly test foundational roles for entanglement or Hilbert-space structure, but with heterogeneous primitives and strong supplied assumptions. Stage 1 does not decide whether they form one framework, several, or boundary programs. |
| H — limitations/counterevidence | `PASS` | 05, 11–12, 23–24, 28 | Representation freedom, area-law insufficiency, bond/complexity limits, conventional AdS/MERA inconsistency conditions, toy-model ceilings, and competing MERA geometries were actively retained. |
| I — realization/observables/empirical contact | `PASS` | 03–04, 10, 15, 18–22, 25, 29 | Sources construct observables or implement supplied tensor/code models. The two experiments validate prepared quantum states/codes on simulators; they do not observe physical spacetime emergence or discriminate a tensor-network foundational framework. |

```text
DIRECT_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_FOUND = NO

THIS_IS_A_STAGE1_SOURCE_COVERAGE_FACT_ONLY = YES
FINAL_EMPIRICAL_CEILING_ADJUDICATION = RESERVED_FOR_STAGE2
```

## 4. Exact frozen source manifest

### 01 — `SRC-FCP24-HOLO-MALDACENA-1998`

- **Authors:** Juan M. Maldacena
- **Title:** *The Large N Limit of Superconformal Field Theories and Supergravity*
- **Year / venue:** 1998; *Advances in Theoretical and Mathematical Physics* 2, 231–252
- **DOI / arXiv:** `10.4310/ATMP.1998.v2.n2.a1`; `hep-th/9711200v3`
- **Stable location / access used:** `https://arxiv.org/abs/hep-th/9711200`; complete arXiv PDF
- **Source role / lanes:** `BOUNDARY_SOURCE`; `DUAL_DESCRIPTION`; E, F
- **Central Stage-2 propositions:** the holographic constructions in the corpus inherit a specific gauge/gravity duality lineage and stated large-N, CFT, string/M-theory, and decoupling domains.
- **Key scope ceiling:** not all CFTs, gravities, spacetimes, holography, or tensor networks; the source does not make tensor networks primitive.
- **Lineage/target dependence:** `DUAL_DESCRIPTION`; `ADS_CFT`; `CFT`; `STRING_M_THEORY`; supplied bulk/boundary targets.

### 02 — `SRC-FCP24-HOLO-RT-2006`

- **Authors:** Shinsei Ryu; Tadashi Takayanagi
- **Title:** *Holographic Derivation of Entanglement Entropy from AdS/CFT*
- **Year / venue:** 2006; *Physical Review Letters* 96, 181602
- **DOI / arXiv:** `10.1103/PhysRevLett.96.181602`; `hep-th/0603001v2`
- **Stable location / access used:** `https://arxiv.org/abs/hep-th/0603001`; complete arXiv PDF
- **Source role / lanes:** `BOUNDARY_SOURCE`; `OBSERVABLE_OR_RECONSTRUCTION_RESULT`; D, E, F
- **Central Stage-2 propositions:** an area/minimal-surface prescription is proposed and checked for declared AdS/CFT examples; many later network results reproduce an RT-like target.
- **Key scope ceiling:** supplied AdS/CFT setting and checked examples; neither a universal arbitrary-spacetime theorem nor independent evidence that a network graph is physical geometry.
- **Lineage/target dependence:** `TARGET_CONDITIONED_RECONSTRUCTION`; `ADS_CFT`; `CFT`; semiclassical bulk geometry; `RT_OR_HRT_TARGET_STRUCTURE`.

### 03 — `SRC-FCP25-TENSOR-SCHOLLWOECK-2011`

- **Authors:** Ulrich Schollwöck
- **Title:** *The density-matrix renormalization group in the age of matrix product states*
- **Year / venue:** 2011; *Annals of Physics* 326, 96–192
- **DOI / arXiv:** `10.1016/j.aop.2010.09.012`; `1008.3477v2`
- **Stable location / access used:** `https://arxiv.org/abs/1008.3477`; complete 122-page arXiv PDF
- **Source role / lanes:** `REVIEW_OR_SYNTHESIS`; `STATE_REPRESENTATION`; `NUMERICAL_OR_VARIATIONAL_TOOL`; A, C, I
- **Central Stage-2 propositions:** DMRG operates on MPS; Schmidt spectra and bond dimension control truncation; ground-state, real-time, imaginary-time, and finite-temperature algorithms are distinct procedures.
- **Key scope ceiling:** strongest for one-dimensional low-entanglement lattice systems; performance and accuracy are problem-, boundary-, and bond-dimension-dependent.
- **Lineage/target dependence:** `REPRESENTATION_OF_SUPPLIED_THEORY`; supplied lattice Hilbert space and Hamiltonian.

### 04 — `SRC-FCP25-TENSOR-VERSTRAETE-CIRAC-2004`

- **Authors:** Frank Verstraete; J. Ignacio Cirac
- **Title:** *Renormalization algorithms for Quantum-Many Body Systems in two and higher dimensions*
- **Year / venue:** 2004; arXiv technical preprint
- **DOI / arXiv:** none; `cond-mat/0407066v1`
- **Stable location / access used:** `https://arxiv.org/abs/cond-mat/0407066`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `STATE_REPRESENTATION`; `NUMERICAL_OR_VARIATIONAL_TOOL`; A, C, I
- **Central Stage-2 propositions:** PEPS extend MPS to higher-dimensional lattices and support variational ground-state, thermal, correlation, and evolution calculations.
- **Key scope ceiling:** every state is representable only with sufficiently large auxiliary dimension; practical contraction/evolution is approximate and tied to a supplied spin model.
- **Lineage/target dependence:** `REPRESENTATION_OF_SUPPLIED_THEORY`; `MODEL_OF_SUPPLIED_THEORY`; condensed-matter Hamiltonians.

### 05 — `SRC-FCP25-TENSOR-PEREZ-GARCIA-2007`

- **Authors:** David Pérez-García; Frank Verstraete; Michael M. Wolf; J. Ignacio Cirac
- **Title:** *Matrix Product State Representations*
- **Year / venue:** 2007; *Quantum Information and Computation* 7, 401–430
- **DOI / arXiv:** `10.26421/QIC7.5-6-1`; `quant-ph/0608197v2`
- **Stable location / access used:** `https://arxiv.org/abs/quant-ph/0608197`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `STATE_REPRESENTATION`; `LIMITATION_OR_COUNTEREXAMPLE`; A, H
- **Central Stage-2 propositions:** MPS have canonical forms and nontrivial representational freedom; equivalent tensors can encode the same state; bond and translation assumptions matter.
- **Key scope ceiling:** a classification of representations, not a physical ontology or state-selection law.
- **Lineage/target dependence:** `REPRESENTATION_OF_SUPPLIED_THEORY`; ordinary finite-dimensional quantum states.

### 06 — `SRC-FCP25-TENSOR-CIRAC-2021`

- **Authors:** J. Ignacio Cirac; David Pérez-García; Norbert Schuch; Frank Verstraete
- **Title:** *Matrix Product States and Projected Entangled Pair States: Concepts, Symmetries, and Theorems*
- **Year / venue:** 2021; *Reviews of Modern Physics* 93, 045003
- **DOI / arXiv:** `10.1103/RevModPhys.93.045003`; `2011.12127v2`
- **Stable location / access used:** `https://arxiv.org/abs/2011.12127`; complete 72-page arXiv PDF
- **Source role / lanes:** `REVIEW_OR_SYNTHESIS`; `STATE_REPRESENTATION`; `RG_OR_COARSE_GRAINING_ARCHITECTURE`; A, B, C, H
- **Central Stage-2 propositions:** MPS/PEPS describe wavefunctions via local tensors, virtual symmetries and entanglement routing; theorems, parent Hamiltonians, fixed points, and computational limitations have distinct scopes.
- **Key scope ceiling:** mathematical/state-structural synthesis; no claim that the virtual network is fundamental physical spacetime or dynamics.
- **Lineage/target dependence:** `REPRESENTATION_OF_SUPPLIED_THEORY`; supplied quantum many-body systems.

### 07 — `SRC-FCP25-TENSOR-VIDAL-ER-2007`

- **Authors:** Guifré Vidal
- **Title:** *Entanglement Renormalization*
- **Year / venue:** 2007; *Physical Review Letters* 99, 220405
- **DOI / arXiv:** `10.1103/PhysRevLett.99.220405`; `cond-mat/0512165v2`
- **Stable location / access used:** `https://arxiv.org/abs/cond-mat/0512165`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `RG_OR_COARSE_GRAINING_ARCHITECTURE`; B, C
- **Central Stage-2 propositions:** local disentanglers precede truncation in a real-space RG transformation and expose scale-organized entanglement in selected lattice ground states.
- **Key scope ceiling:** demonstrated numerically for declared one-dimensional critical systems; a coarse-graining prescription, not fundamental time evolution.
- **Lineage/target dependence:** `MODEL_OF_SUPPLIED_THEORY`; supplied lattice and Hamiltonian.

### 08 — `SRC-FCP25-TENSOR-VIDAL-MERA-2008`

- **Authors:** Guifré Vidal
- **Title:** *A class of quantum many-body states that can be efficiently simulated*
- **Year / venue:** 2008; *Physical Review Letters* 101, 110501
- **DOI / arXiv:** `10.1103/PhysRevLett.101.110501`; `quant-ph/0610099v1`
- **Stable location / access used:** `https://arxiv.org/abs/quant-ph/0610099`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `STATE_REPRESENTATION`; `ENTANGLEMENT_STRUCTURE`; B, C
- **Central Stage-2 propositions:** MERA is a logarithmic-depth tensor network/quantum circuit with causal cones enabling exact local expectation-value evaluation for its represented states.
- **Key scope ceiling:** an efficiently simulable variational class, not all quantum states, a selection principle, or physical causal spacetime.
- **Lineage/target dependence:** `REPRESENTATION_OF_SUPPLIED_THEORY`; supplied many-body state/model.

### 09 — `SRC-FCP25-TENSOR-LEVIN-NAVE-2007`

- **Authors:** Michael Levin; Cody P. Nave
- **Title:** *Tensor renormalization group approach to 2D classical lattice models*
- **Year / venue:** 2007; *Physical Review Letters* 99, 120601
- **DOI / arXiv:** `10.1103/PhysRevLett.99.120601`; `cond-mat/0611687v2`
- **Stable location / access used:** `https://arxiv.org/abs/cond-mat/0611687`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `RG_OR_COARSE_GRAINING_ARCHITECTURE`; C
- **Central Stage-2 propositions:** tensor contraction and truncation define a real-space numerical RG method for partition functions of supplied two-dimensional classical lattice models.
- **Key scope ceiling:** computational coarse graining; not quantum-state ontology, physical time evolution, or spacetime dynamics.
- **Lineage/target dependence:** `MODEL_OF_SUPPLIED_THEORY`; classical statistical lattice model.

### 10 — `SRC-FCP25-TENSOR-HAEGEMAN-TDVP-2016`

- **Authors:** Jutho Haegeman; Christian Lubich; Ivan Oseledets; Bart Vandereycken; Frank Verstraete
- **Title:** *Unifying time evolution and optimization with matrix product states*
- **Year / venue:** 2016; *Physical Review B* 94, 165116
- **DOI / arXiv:** `10.1103/PhysRevB.94.165116`; `1408.5056v2`
- **Stable location / access used:** `https://arxiv.org/abs/1408.5056`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `NUMERICAL_OR_VARIATIONAL_TOOL`; C, I
- **Central Stage-2 propositions:** TDVP projects supplied Hamiltonian evolution onto the MPS tangent manifold; real-time integration, imaginary-time evolution, and ground-state optimization are algorithmically related but physically distinct.
- **Key scope ceiling:** fixed variational manifold and projection/integration error; Hamiltonian and physical dynamics are external inputs.
- **Lineage/target dependence:** `REPRESENTATION_OF_SUPPLIED_THEORY`; condensed-matter Hamiltonian.

### 11 — `SRC-FCP25-TENSOR-SCHUCH-2008`

- **Authors:** Norbert Schuch; Michael M. Wolf; Frank Verstraete; J. Ignacio Cirac
- **Title:** *Entropy Scaling and Simulability by Matrix Product States*
- **Year / venue:** 2008; *Physical Review Letters* 100, 030504
- **DOI / arXiv:** `10.1103/PhysRevLett.100.030504`; `0705.0292v2`
- **Stable location / access used:** `https://arxiv.org/abs/0705.0292`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `LIMITATION_OR_COUNTEREXAMPLE`; A, H
- **Central Stage-2 propositions:** von Neumann area-law scaling alone does not ensure efficient MPS approximation; Rényi behavior and Schmidt-spectrum truncation carry stronger information.
- **Key scope ceiling:** precise MPS approximability statements, not a denial of MPS utility for natural ground states.
- **Lineage/target dependence:** `REPRESENTATION_OF_SUPPLIED_THEORY`; quantum spin states.

### 12 — `SRC-FCP25-TENSOR-GE-EISERT-2016`

- **Authors:** Yimin Ge; Jens Eisert
- **Title:** *Area laws and efficient descriptions of quantum many-body states*
- **Year / venue:** 2016; *New Journal of Physics* 18, 083026
- **DOI / arXiv:** `10.1088/1367-2630/18/8/083026`; `1411.2995v2`
- **Stable location / access used:** `https://arxiv.org/abs/1411.2995`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `LIMITATION_OR_COUNTEREXAMPLE`; A, H
- **Central Stage-2 propositions:** in dimensions at least two, even strong area laws do not generally imply efficient PEPS/MERA or other short descriptions.
- **Key scope ceiling:** existence/complexity results; they do not show that physically selected local-Hamiltonian ground states generally evade tensor networks.
- **Lineage/target dependence:** `REPRESENTATION_OF_SUPPLIED_THEORY`; abstract many-body state space.

### 13 — `SRC-FCP25-TENSOR-SWINGLE-2012`

- **Authors:** Brian Swingle
- **Title:** *Entanglement Renormalization and Holography*
- **Year / venue:** 2012; *Physical Review D* 86, 065007
- **DOI / arXiv:** `10.1103/PhysRevD.86.065007`; `0905.1317v1`
- **Stable location / access used:** `https://arxiv.org/abs/0905.1317`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `EMERGENT_GEOMETRY_PROPOSAL`; B, D, E, G
- **Central Stage-2 propositions:** organizing a many-body state by scale motivates a discrete higher-dimensional geometry; critical and finite-temperature states exhibit AdS- and black-hole-like structural analogies.
- **Key scope ceiling:** constructed from supplied many-body states and inspired by established gauge/gravity duality; analogy/structural reproduction is not a universal spacetime derivation.
- **Lineage/target dependence:** `DERIVED_OR_EMERGENT_CLAIM`; `ADS_CFT`; `CFT`; critical condensed-matter models; RT-like target.

### 14 — `SRC-FCP25-TENSOR-VAN-RAAMSDONK-2010`

- **Authors:** Mark Van Raamsdonk
- **Title:** *Building up spacetime with quantum entanglement*
- **Year / venue:** 2010; *General Relativity and Gravitation* 42, 2323–2329
- **DOI / arXiv:** `10.1007/s10714-010-1034-0`; `1005.3035v2`
- **Stable location / access used:** `https://arxiv.org/abs/1005.3035`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `INFORMATION_FIRST_FOUNDATIONAL_PROPOSAL`; `BOUNDARY_SOURCE`; D, G
- **Central Stage-2 propositions:** in gauge/gravity examples, changing entanglement connects or separates semiclassical spacetime regions.
- **Key scope ceiling:** concise conceptual argument grounded in gauge/gravity duality; not an independent microscopic theory, universal construction, or calibrated prediction.
- **Lineage/target dependence:** `DERIVED_OR_EMERGENT_CLAIM`; `ADS_CFT`; `CFT`; `STRING_M_THEORY`; semiclassical geometry.

### 15 — `SRC-FCP25-TENSOR-FAULKNER-2014`

- **Authors:** Thomas Faulkner; Monica Guica; Thomas Hartman; Robert C. Myers; Mark Van Raamsdonk
- **Title:** *Gravitation from Entanglement in Holographic CFTs*
- **Year / venue:** 2014; *Journal of High Energy Physics* 03, 051
- **DOI / arXiv:** `10.1007/JHEP03(2014)051`; `1312.7856v2`
- **Stable location / access used:** `https://arxiv.org/abs/1312.7856`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `OBSERVABLE_OR_RECONSTRUCTION_RESULT`; `BOUNDARY_SOURCE`; D, I
- **Central Stage-2 propositions:** for small perturbations of vacuum in CFTs with a semiclassical holographic dual, entanglement first-law constraints plus the holographic dictionary imply linearized bulk gravitational equations; RT yields linearized Einstein equations.
- **Key scope ceiling:** perturbative, ball-region, vacuum, AdS/CFT, semiclassical-dual, and dictionary assumptions; not independent derivation of full nonlinear gravity from a generic network.
- **Lineage/target dependence:** `TARGET_CONDITIONED_RECONSTRUCTION`; `ADS_CFT`; `CFT`; `RT_OR_HRT_TARGET_STRUCTURE`; semiclassical bulk geometry.

### 16 — `SRC-FCP25-TENSOR-JACOBSON-2016`

- **Authors:** Ted Jacobson
- **Title:** *Entanglement Equilibrium and the Einstein Equation*
- **Year / venue:** 2016; *Physical Review Letters* 116, 201101
- **DOI / arXiv:** `10.1103/PhysRevLett.116.201101`; `1505.04753v4`
- **Stable location / access used:** `https://arxiv.org/abs/1505.04753`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `INFORMATION_FIRST_FOUNDATIONAL_PROPOSAL`; `BOUNDARY_SOURCE`; D, G
- **Central Stage-2 propositions:** stationary/maximal vacuum entanglement in small geodesic balls at fixed volume is linked to the semiclassical Einstein equation under declared assumptions.
- **Key scope ceiling:** assumes finite universal UV entropy density and semiclassical geometry; conformal first-order result, with conjectural extension for nonconformal fields and acknowledged generality limits.
- **Lineage/target dependence:** `DERIVED_OR_EMERGENT_CLAIM`; quantum fields on classical spacetime; supplied Einstein-equation target.

### 17 — `SRC-FCP25-TENSOR-CAO-CARROLL-MICHALAKIS-2017`

- **Authors:** ChunJun Cao; Sean M. Carroll; Spyridon Michalakis
- **Title:** *Space from Hilbert Space: Recovering Geometry from Bulk Entanglement*
- **Year / venue:** 2017; *Physical Review D* 95, 024031
- **DOI / arXiv:** `10.1103/PhysRevD.95.024031`; `1606.08444v3`
- **Stable location / access used:** `https://arxiv.org/abs/1606.08444`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `INFORMATION_FIRST_FOUNDATIONAL_PROPOSAL`; `EMERGENT_GEOMETRY_PROPOSAL`; `BOUNDARY_SOURCE`; D, G
- **Central Stage-2 propositions:** given a chosen tensor-product decomposition and redundancy-constrained state, mutual information can weight a graph and multidimensional scaling can fit spatial geometry; entanglement perturbations yield a spatial Einstein-like relation.
- **Key scope ceiling:** factorization, redundancy constraint, distance ansatz, best-fit embedding, and supplied low-dimensional/geometric assumptions are material; the procedure can fail and does not uniquely select a physical factorization.
- **Lineage/target dependence:** `FOUNDATIONAL_PRIMITIVE_CLAIM` and `DERIVED_OR_EMERGENT_CLAIM`; ordinary quantum mechanics; target-conditioned geometric reconstruction.

### 18 — `SRC-FCP25-TENSOR-ALMHEIRI-DONG-HARLOW-2015`

- **Authors:** Ahmed Almheiri; Xi Dong; Daniel Harlow
- **Title:** *Bulk Locality and Quantum Error Correction in AdS/CFT*
- **Year / venue:** 2015; *Journal of High Energy Physics* 04, 163
- **DOI / arXiv:** `10.1007/JHEP04(2015)163`; `1411.7041v3`
- **Stable location / access used:** `https://arxiv.org/abs/1411.7041`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `QEC_OR_ENCODING_CONSTRUCTION`; `BOUNDARY_SOURCE`; F, E
- **Central Stage-2 propositions:** bulk locality and subregion reconstruction in AdS/CFT have an operator-algebra QEC interpretation; reconstruction limits correspond to code properties.
- **Key scope ceiling:** interpretive/structural result inside AdS/CFT and a low-energy code subspace; QEC is not established as physical microscopic dynamics or ontology.
- **Lineage/target dependence:** `DUAL_DESCRIPTION`; `ADS_CFT`; `CFT`; semiclassical bulk and reconstruction dictionary.

### 19 — `SRC-FCP25-TENSOR-PASTAWSKI-2015`

- **Authors:** Fernando Pastawski; Beni Yoshida; Daniel Harlow; John Preskill
- **Title:** *Holographic quantum error-correcting codes: Toy models for the bulk/boundary correspondence*
- **Year / venue:** 2015; *Journal of High Energy Physics* 06, 149
- **DOI / arXiv:** `10.1007/JHEP06(2015)149`; `1503.06237v2`
- **Stable location / access used:** `https://arxiv.org/abs/1503.06237`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `HOLOGRAPHIC_CONSTRUCTION`; `QEC_OR_ENCODING_CONSTRUCTION`; E, F
- **Central Stage-2 propositions:** perfect tensors build exact code isometries that reproduce selected RT-like entropy and redundant reconstruction features.
- **Key scope ceiling:** explicitly solvable toy models; stabilizer/perfect-tensor properties yield unrealistic spectra/correlators and do not derive AdS/CFT or bulk dynamics.
- **Lineage/target dependence:** `MODEL_OF_SUPPLIED_THEORY`; `ADS_CFT`; `RT_OR_HRT_TARGET_STRUCTURE`; QEC codes.

### 20 — `SRC-FCP25-TENSOR-HAYDEN-2016`

- **Authors:** Patrick Hayden; Sepehr Nezami; Xiao-Liang Qi; Nathaniel Thomas; Michael Walter; Zhao Yang
- **Title:** *Holographic duality from random tensor networks*
- **Year / venue:** 2016; *Journal of High Energy Physics* 11, 009
- **DOI / arXiv:** `10.1007/JHEP11(2016)009`; `1601.01694v3`
- **Stable location / access used:** `https://arxiv.org/abs/1601.01694`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `HOLOGRAPHIC_CONSTRUCTION`; E, F
- **Central Stage-2 propositions:** large-bond-dimension random networks map averaged Rényi calculations to spin models and reproduce RT-like minimal surfaces, entanglement-wedge encoding, and selected bulk corrections.
- **Key scope ceiling:** random ensemble, large bond dimension, saddle/averaging, graph, and supplied holographic targets; contrasts with full AdS/CFT Rényi structure remain.
- **Lineage/target dependence:** `MODEL_OF_SUPPLIED_THEORY`; `ADS_CFT`; `RT_OR_HRT_TARGET_STRUCTURE`; supplied bulk field.

### 21 — `SRC-FCP25-TENSOR-DONG-HARLOW-WALL-2016`

- **Authors:** Xi Dong; Daniel Harlow; Aron C. Wall
- **Title:** *Reconstruction of Bulk Operators within the Entanglement Wedge in Gauge-Gravity Duality*
- **Year / venue:** 2016; *Physical Review Letters* 117, 021601
- **DOI / arXiv:** `10.1103/PhysRevLett.117.021601`; `1601.05416v3`
- **Stable location / access used:** `https://arxiv.org/abs/1601.05416`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `OBSERVABLE_OR_RECONSTRUCTION_RESULT`; `BOUNDARY_SOURCE`; F, I
- **Central Stage-2 propositions:** a quantum-information theorem plus equality of bulk/boundary relative entropy implies entanglement-wedge reconstruction in AdS/CFT.
- **Key scope ceiling:** code subspace and holographic relative-entropy premises; a reconstruction theorem, not independent geometry, ontology, or dynamics.
- **Lineage/target dependence:** `DUAL_DESCRIPTION`; `ADS_CFT`; `CFT`; semiclassical entanglement wedge.

### 22 — `SRC-FCP25-TENSOR-HARLOW-2017`

- **Authors:** Daniel Harlow
- **Title:** *The Ryu–Takayanagi Formula from Quantum Error Correction*
- **Year / venue:** 2017; *Communications in Mathematical Physics* 354, 865–912
- **DOI / arXiv:** `10.1007/s00220-017-2904-z`; `1607.03901v2`
- **Stable location / access used:** `https://arxiv.org/abs/1607.03901`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `QEC_OR_ENCODING_CONSTRUCTION`; `BOUNDARY_SOURCE`; F, E
- **Central Stage-2 propositions:** finite-dimensional operator-algebra QEC theorems relate corrected RT-type formulas, subalgebra codes, area operators, and entanglement-wedge reconstruction.
- **Key scope ceiling:** a structural theorem for codes and an AdS/CFT interpretation; it does not show that a QEC code is fundamental spacetime matter or select a physical code.
- **Lineage/target dependence:** `DUAL_DESCRIPTION`; QEC mathematical structure; `ADS_CFT`; `RT_OR_HRT_TARGET_STRUCTURE`.

### 23 — `SRC-FCP25-TENSOR-BAO-2015`

- **Authors:** Ning Bao; ChunJun Cao; Sean M. Carroll; Aidan Chatwin-Davies; Nicholas Hunter-Jones; Jason Pollack; Grant N. Remmen
- **Title:** *Consistency Conditions for an AdS/MERA Correspondence*
- **Year / venue:** 2015; *Physical Review D* 91, 125036
- **DOI / arXiv:** `10.1103/PhysRevD.91.125036`; `1504.06632v2`
- **Stable location / access used:** `https://arxiv.org/abs/1504.06632`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `LIMITATION_OR_COUNTEREXAMPLE`; B, E, H
- **Central Stage-2 propositions:** matching trajectories, entropies, central charge, and covariant bounds imposes strong necessary conditions on a proposed AdS/MERA correspondence.
- **Key scope ceiling:** conventional MERA cannot completely reproduce bulk physics even at super-AdS scales under the declared identification; the result does not rule out generalized networks.
- **Lineage/target dependence:** `TARGET_CONDITIONED_RECONSTRUCTION`; `ADS_CFT`; `CFT`; semiclassical AdS geometry; RT/Bousso targets.

### 24 — `SRC-FCP25-TENSOR-JAHN-EISERT-2021`

- **Authors:** Alexander Jahn; Jens Eisert
- **Title:** *Holographic tensor network models and quantum error correction: A topical review*
- **Year / venue:** 2021; *Quantum Science and Technology* 6, 033002
- **DOI / arXiv:** `10.1088/2058-9565/ac0293`; `2102.02619v3`
- **Stable location / access used:** `https://arxiv.org/abs/2102.02619`; complete arXiv PDF
- **Source role / lanes:** `REVIEW_OR_SYNTHESIS`; `HOLOGRAPHIC_CONSTRUCTION`; `QEC_OR_ENCODING_CONSTRUCTION`; `LIMITATION_OR_COUNTEREXAMPLE`; E, F, H
- **Central Stage-2 propositions:** modern holographic tensor-network models are organized by AdS/CFT inputs, tensor-network constructions, code properties, and known refinements/limitations.
- **Key scope ceiling:** a topical model review, not evidence that the models constitute an independent complete quantum-gravity framework.
- **Lineage/target dependence:** `MODEL_OF_SUPPLIED_THEORY`; `ADS_CFT`; `CFT`; string-theory lineage; RT/QEC targets.

### 25 — `SRC-FCP25-TENSOR-LI-2019`

- **Authors:** Keren Li; Muxin Han; Dongxue Qu; Zichang Huang; Guilu Long; Yidun Wan; Dawei Lu; Bei Zeng; Raymond Laflamme
- **Title:** *Measuring Holographic Entanglement Entropy on a Quantum Simulator*
- **Year / venue:** 2019; *npj Quantum Information* 5, 30
- **DOI / arXiv:** `10.1038/s41534-019-0145-z`; `1705.00365v2`
- **Stable location / access used:** `https://arxiv.org/abs/1705.00365`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `PHYSICAL_REALIZATION_BRIDGE`; `EMPIRICAL_OR_PHENOMENOLOGICAL`; E, I
- **Central Stage-2 propositions:** a six-qubit NMR simulator prepares a rank-six perfect-tensor state and measures entropies reproducing the discrete perfect-tensor RT relation within reported fidelity/decoherence treatment.
- **Key scope ceiling:** experiment on a prepared code/tensor state; it tests the simulator and supplied mathematical model, not AdS/CFT in nature, physical spacetime emergence, or framework-level gravitational predictions.
- **Lineage/target dependence:** `MODEL_OF_SUPPLIED_THEORY`; perfect tensor; `ADS_CFT`; `RT_OR_HRT_TARGET_STRUCTURE`.

### 26 — `SRC-FCP25-TENSOR-EVENBLY-VIDAL-2011`

- **Authors:** Glen Evenbly; Guifré Vidal
- **Title:** *Tensor network states and geometry*
- **Year / venue:** 2011; *Journal of Statistical Physics* 145, 891–918
- **DOI / arXiv:** `10.1007/s10955-011-0237-4`; `1106.1082v1`
- **Stable location / access used:** `https://arxiv.org/abs/1106.1082`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `ENTANGLEMENT_STRUCTURE`; `EMERGENT_GEOMETRY_PROPOSAL`; A, B, D
- **Central Stage-2 propositions:** network topology preconditions correlation and entropy scaling; MPS/PEPS reflect lattice geometry while MERA supplies an additional scale dimension termed holographic geometry.
- **Key scope ceiling:** geometry is an organizing interpretation of represented states and geodesic scaling, not automatically physical spacetime or a metric satisfying gravitational dynamics.
- **Lineage/target dependence:** `REPRESENTATION_OF_SUPPLIED_THEORY`; supplied local Hamiltonian/critical ground state; holographic analogy.

### 27 — `SRC-FCP25-TENSOR-HAEGEMAN-CMERA-2013`

- **Authors:** Jutho Haegeman; Tobias J. Osborne; Henri Verschelde; Frank Verstraete
- **Title:** *Entanglement Renormalization for Quantum Fields in Real Space*
- **Year / venue:** 2013; *Physical Review Letters* 110, 100402
- **DOI / arXiv:** `10.1103/PhysRevLett.110.100402`; `1102.5524v2`
- **Stable location / access used:** `https://arxiv.org/abs/1102.5524`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `RG_OR_COARSE_GRAINING_ARCHITECTURE`; B, C, G
- **Central Stage-2 propositions:** a continuum generalization of MERA defines a variational class and real-space RG flow for quantum fields; the paper gives an explicit free nonrelativistic boson illustration.
- **Key scope ceiling:** variational construction with regulator/generator choices and a simple demonstrated model; interacting-theory power is argued, not established as universal.
- **Lineage/target dependence:** `REPRESENTATION_OF_SUPPLIED_THEORY`; supplied QFT and reference state.

### 28 — `SRC-FCP25-TENSOR-MILSTED-VIDAL-2018`

- **Authors:** Ashley Milsted; Guifré Vidal
- **Title:** *Geometric interpretation of the multi-scale entanglement renormalization ansatz*
- **Year / venue:** 2018; arXiv technical preprint
- **DOI / arXiv:** none; `1812.00529v1`
- **Stable location / access used:** `https://arxiv.org/abs/1812.00529`; complete arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `LIMITATION_OR_COUNTEREXAMPLE`; `EMERGENT_GEOMETRY_PROPOSAL`; B, D, E, H
- **Central Stage-2 propositions:** under a specified path-integral-geometry framework, ordinary MERA on a line/circle corresponds to a light sheet/cone rather than the hyperbolic plane or de Sitter spacetime; generalized circuits are proposed for other geometries.
- **Key scope ceiling:** depends on the adopted path-integral interpretation and CFT setting; it demonstrates nonuniqueness of geometric readings rather than selecting physical spacetime.
- **Lineage/target dependence:** `REPRESENTATION_OF_SUPPLIED_THEORY`; CFT path integral; competing target-conditioned geometry interpretations.

### 29 — `SRC-FCP25-TENSOR-BISWAS-2026`

- **Authors:** Debopriyo Biswas; Gong Cheng; Krishnanand Karthikeyan; Diana Muñoz-Valencia; Vincent P. Su; Hrant Gharibyan; Daiwei Zhu; Grant Salton; Evgeny Epifanovsky; Martin Roetteler; Christopher Monroe; John Preskill; Norbert M. Linke; ChunJun Cao; Crystal Noel
- **Title:** *Observation of gravity-like signatures in holographic codes on a quantum computer*
- **Year / venue:** 2026; arXiv technical preprint
- **DOI / arXiv:** none; `2607.12047v1`
- **Stable location / access used:** `https://arxiv.org/abs/2607.12047`; complete 32-page arXiv PDF
- **Source role / lanes:** `FOUNDATIONAL_PRIMARY`; `PHYSICAL_REALIZATION_BRIDGE`; `EMPIRICAL_OR_PHENOMENOLOGICAL`; E, F, I
- **Central Stage-2 propositions:** trapped-ion implementations of finite HaPPY-code circuits measure FLM-like entropy terms, magic-dependent entropic responses, and a wormhole-like code construction.
- **Key scope ceiling:** the source repeatedly identifies the implemented object as a toy holographic code and quantum-computing testbed; model-internal agreement is not observation of gravity, spacetime emergence, or AdS/CFT in nature.
- **Lineage/target dependence:** `MODEL_OF_SUPPLIED_THEORY`; HaPPY/QEC code; `ADS_CFT`; FLM/RT and wormhole-like supplied targets.

## 5. Source-coverage matrix

The matrix is descriptive. `None direct` means the source supplies no direct framework-level empirical discriminator; it is not an E-class judgment.

| Source ID | State or carrier architecture | Tensor-network role | Information-theoretic role | Dynamics or evolution | RG or coarse graining | Geometry or spacetime claim | Holographic lineage | QEC or encoding role | Physical realization | Observables | Empirical contact | Limitations or counterevidence | Foundational status claimed by source | Lineage or target dependence | Stage-2 taxonomy relevance |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `SRC-FCP24-HOLO-MALDACENA-1998` | Boundary CFT / bulk string-gravity dual | None | Duality dictionary | Dual dynamics supplied by correspondence | Scale/radial relation, not TN RG | Asymptotic AdS bulk | Direct AdS/CFT/string lineage | None | Decoupling limits/models | Boundary correlators ↔ bulk fields | None direct | Large-N/decoupling/model scope | Foundational duality proposal | `ADS_CFT`; CFT; string/M theory | Fixes lineage boundary; no TN independence |
| `SRC-FCP24-HOLO-RT-2006` | Boundary density matrices / bulk minimal surfaces | Target later reproduced by TNs | Entanglement entropy | Static prescription | None | Area/minimal-surface relation in AdS/CFT | Direct | Later QEC target only | Checked theoretical examples | Entanglement entropy | None direct | Proposal/example scope | Holographic result, not TN ontology | AdS/CFT; semiclassical geometry | Distinguishes supplied target from independent discovery |
| `SRC-FCP25-TENSOR-SCHOLLWOECK-2011` | MPS / DMRG state manifold | Representation and algorithms | Schmidt spectra/entanglement | Real/imaginary-time algorithms from supplied H | DMRG optimization | None physical | None | None | Many-body simulations | Energies/correlators | Simulation of supplied systems | 1D, bond, boundary and truncation limits | Tool/representation | QM and Hamiltonian supplied | Separates state architecture from framework |
| `SRC-FCP25-TENSOR-VERSTRAETE-CIRAC-2004` | PEPS on higher-D lattices | Variational representation | Virtual entangled pairs | Approximate real/imaginary evolution | Variational update | Network follows lattice, not spacetime | None | None | Numerical model realization | Correlators/energy | Simulation only | Bond/contraction/approximation dependence | Tool/representation | Supplied spin Hamiltonian | Tests whether PEPS is carrier or method |
| `SRC-FCP25-TENSOR-PEREZ-GARCIA-2007` | MPS canonical forms | Representation-equivalence theorem | Virtual-index freedom | None fundamental | None | None | None | None | Mathematical | State/parent-H properties | None | Gauge/representation nonuniqueness | Representation theory | Ordinary QM supplied | Redundancy/equivalence burden |
| `SRC-FCP25-TENSOR-CIRAC-2021` | MPS/PEPS/parent Hamiltonians | State architecture and theorem synthesis | Entanglement/symmetry routing | Supplied-H dynamics only | Fixed points and flows | No default spacetime | Boundary discussion only | Virtual symmetries, not QEC ontology | Many-body applications | Correlators/order data | Simulation/inherited | Contraction, completeness and theorem scopes | Tool/state class | Supplied QM/models | Broad taxonomy orientation |
| `SRC-FCP25-TENSOR-VIDAL-ER-2007` | Coarse-grained lattice sites | Disentanglers/isometries | Scale-layer entanglement | RG transformation, not time | Entanglement renormalization | No physical spacetime claim | None | Isometric structure only | Numerical critical chain | Local/entropy data | Simulation only | Demonstrated model class | RG architecture | Supplied Hamiltonian | Separates RG from dynamics/ontology |
| `SRC-FCP25-TENSOR-VIDAL-MERA-2008` | MERA causal network/state class | Efficient ansatz | Causal cones/entanglement | Circuit evaluation, not physical time | MERA/ER | Extra scale structure only | None in primary construction | Encoding analogy not primary | Numerical class | Local expectations | Simulation only | Selected efficiently represented states | State representation | Supplied many-body state | Defines MERA formulation label candidate |
| `SRC-FCP25-TENSOR-LEVIN-NAVE-2007` | Partition-function TN | Contraction/truncation algorithm | Entanglement-inspired numerics | No physical time | Classical tensor RG | Lattice only | None | None | Numerical Ising model | Magnetization/free energy | Inherited model agreement | Truncation and critical accuracy | Computational method | Supplied classical model | Excludes silent dynamics promotion |
| `SRC-FCP25-TENSOR-HAEGEMAN-TDVP-2016` | MPS variational manifold | Projected evolution/optimization | Tangent-space geometry | Supplied Schrödinger H projected | Imaginary-time optimization | None | None | None | Numerical | State/energy evolution | Inherited model agreement | Manifold/projection/integration error | Algorithmic unification | Supplied Hamiltonian | Dynamics-status discriminator |
| `SRC-FCP25-TENSOR-SCHUCH-2008` | MPS approximants | Approximation criterion | Rényi/Schmidt constraints | Hard time evolution examples | None | None | None | None | Mathematical | Observable-error bounds | None | Area law not sufficient | Limitation result | Ordinary QM | Anti-universal-representability control |
| `SRC-FCP25-TENSOR-GE-EISERT-2016` | PEPS/MERA/short descriptions | Efficient-description limits | Area-law state subspaces | None | None | None | None | QEC used in a construction | Mathematical | Complexity/approximability | None | Higher-D area law not sufficient | Limitation result | Abstract state space | Anti-promotion and model-class burden |
| `SRC-FCP25-TENSOR-SWINGLE-2012` | MERA/scale-organized state | Holographic analogy/construction | Entanglement by scale | State/RG structure | ER | Discrete AdS/black-hole-like geometry | AdS/CFT inspired and target supplied | None primary | Theoretical models | Correlation/entropy scaling | None direct | Analogy, model and equal-time scope | Emergent-geometry proposal | CFT/critical systems; AdS/RT | Tests independence versus lineage |
| `SRC-FCP25-TENSOR-VAN-RAAMSDONK-2010` | Boundary QFT factors/states | None required | Entanglement connects regions | State variation | None | Connected spacetime from entanglement | Direct AdS/CFT/string | None | Theoretical examples | Entanglement measures | None direct | Conceptual/duality-specific | Information-first proposal | AdS/CFT; string/M; semiclassical target | Information-first boundary, heterogeneous primitives |
| `SRC-FCP25-TENSOR-FAULKNER-2014` | Holographic CFT states | None essential | Entanglement first law | Linearized bulk constraints | None | Linearized gravity from entanglement constraints | Direct AdS/CFT | Relative-entropy structure later QEC | Theoretical | Entropy/stress tensor | None direct | Vacuum/ball/linearized/semiclassical | Holographic derivation | AdS/CFT; RT; Einstein target | Target-conditioned recovery burden |
| `SRC-FCP25-TENSOR-JACOBSON-2016` | QFT vacuum in small balls | None | Entanglement equilibrium | First-order variations | None | Semiclassical Einstein equation | Not necessarily AdS, but GR/QFT supplied | None | Theoretical | Entropy/area/energy variations | None direct | UV-density assumption; conformal and conjectural bounds | Information-first proposal | QFT on classical spacetime; Einstein target | Possible adjacent proposal, not automatically TN |
| `SRC-FCP25-TENSOR-CAO-CARROLL-MICHALAKIS-2017` | Chosen Hilbert factorization / weighted graph | Graph reconstruction, not necessarily TN | Mutual information as weight/distance | Perturbations of state | Optional coarse graining | Best-fit space; spatial Einstein analog | Bulk/AdS discussion but no boundary required by construction | QEC aids emergence map | Theoretical construction | Mutual information/curvature | None direct | Factorization, RC, embedding and failure cases | Explicit information-first proposal | QM plus geometric target/ansatz | Strong split/identity relevance |
| `SRC-FCP25-TENSOR-ALMHEIRI-DONG-HARLOW-2015` | AdS/CFT code subspace | Suggested TN realization | Operator-algebra QEC | Bulk EFT/CFT dynamics supplied | Radial encoding analogy | Bulk locality/reconstruction | Direct AdS/CFT | Central structural role | Theoretical | Reconstructed bulk operators | None direct | Code-subspace and duality scope | Duality dictionary | AdS/CFT; CFT; bulk EFT | QEC role: dictionary versus primitive |
| `SRC-FCP25-TENSOR-PASTAWSKI-2015` | Perfect-tensor hyperbolic code | Exact toy network | Redundant encoding | No realistic bulk dynamics | Radial layering | Discrete hyperbolic/RT-like geometry | Explicit AdS/CFT toy model | Central | Code construction | Entropy/logical operators | Simulator-capable, no nature test | Toy/stabilizer/perfect-tensor limits | Model, not complete framework | AdS/CFT; RT; QEC | Holographic construction identity/ceiling |
| `SRC-FCP25-TENSOR-HAYDEN-2016` | Random-tensor network | Ensemble holographic model | Entanglement assistance/encoding | Bulk field inserted, not derived dynamics | None fundamental | Minimal surfaces/black-hole-like transition | AdS/CFT motivated | Entanglement-wedge encoding | Theoretical ensemble | Rényi/entropy/correlators | None direct | Large-D, averaging, graph and spectrum limits | Generalized model claim | AdS/CFT; RT; supplied graph/bulk | Tests model heterogeneity and lineage |
| `SRC-FCP25-TENSOR-DONG-HARLOW-WALL-2016` | Holographic code subspace | None required | Relative entropy/QI theorem | Dynamics supplied by duality | None | Entanglement wedge | Direct AdS/CFT | Central reconstruction theorem | Theoretical | Bulk operator reconstruction | None direct | Relative-entropy/code assumptions | Duality reconstruction result | AdS/CFT; CFT; semiclassical wedge | QEC structural status |
| `SRC-FCP25-TENSOR-HARLOW-2017` | Finite-dimensional (sub)algebra codes | Abstract network-compatible code | OAQEC/entropy | None fundamental | None | Area operator/RT interpretation | AdS/CFT interpretation | Central theorem | Mathematical | Algebraic entropy/reconstruction | None direct | Code choice and holographic interpretation | Mathematical structure | QEC plus RT target | QEC not ontology by theorem alone |
| `SRC-FCP25-TENSOR-BAO-2015` | Conventional MERA versus AdS | Candidate correspondence tested | Entropy bounds | No bulk dynamics recovered | MERA | AdS geometry consistency tests | Explicit AdS/CFT | None central | Theoretical | Entropy/trajectory bounds | None direct | No conventional parameters fully reproduce bulk | Limitation result | AdS/CFT; CFT; RT/Bousso | Anti-promotion / split burden |
| `SRC-FCP25-TENSOR-JAHN-EISERT-2021` | Multiple holographic TN/code families | Review/taxonomy synthesis | QI/QEC roles | Model-dependent | Model-dependent | Model geometries | Direct string/AdS/CFT genealogy | Central across model families | Theoretical | Entropy/reconstruction | Reviews simulator prospects | Toy/model/fixed-area/correlation limits | Review; no unity claim imposed | AdS/CFT; RT; codes | Stage-2 map and heterogeneity evidence |
| `SRC-FCP25-TENSOR-LI-2019` | Six-qubit perfect tensor | Prepared tensor/code module | Measured entropies | Laboratory pulse control only | None | Discrete RT-like relation in model | AdS/CFT-inspired model | Perfect-code state | NMR realization | Tomographic entropies/fidelity | Direct model experiment | Small prepared model; decoherence | Simulation bridge, not ontology | Perfect tensor; RT target | Empirical firewall evidence |
| `SRC-FCP25-TENSOR-EVENBLY-VIDAL-2011` | MPS/PEPS/MERA homogeneous networks | Geometry organizes state structure | Correlation/entropy routing | None fundamental | MERA scale | Network/geodesic geometry | Holographic-principle connection | None | Theoretical/numerical | Correlations/entropy | None direct | Geometry describes structural scaling | Geometric interpretation | Supplied ground states/lattice | Graph-versus-spacetime distinction |
| `SRC-FCP25-TENSOR-HAEGEMAN-CMERA-2013` | Continuous MERA variational states | Continuum ansatz | Scale entanglement | Generator-defined flow, not physical time by default | Real-space QFT RG | No direct physical spacetime | Later holographic use, not primary result | None | Free-boson illustration | Correlators/entropy | Inherited model | Regulator/generator/model scope | Variational/RG construction | Supplied QFT/reference state | Continuum formulation status |
| `SRC-FCP25-TENSOR-MILSTED-VIDAL-2018` | MERA as path-integral circuit | Geometric interpretation test | Scale/circuit information | Path-integral map | MERA | Light sheet/cone; not ordinary hyperbolic/dS | Competing holographic/cosmological readings | None | Theoretical | Circuit/metric matching | None direct | Interpretation-framework dependence | Limitation and alternate geometry | CFT path-integral target | Geometric nonuniqueness burden |
| `SRC-FCP25-TENSOR-BISWAS-2026` | Finite HaPPY-code circuits | Implemented toy TN code | QEC, magic, entropy | Gate/circuit dynamics only | None | Gravity-/wormhole-like entropic signatures in model | Explicit AdS/CFT-inspired toy | Central | Trapped-ion realization | FLM-like entropy/magic metrics | Direct model experiment | Toy code, noise, finite system, fixed target | Quantum-simulation testbed | HaPPY; AdS/CFT; FLM/RT | Current empirical ceiling and realization |

## 6. Stage-2 readiness map

| Required later question | Corpus readiness | Principal source IDs | What remains for Stage 2 |
|---|---|---|---|
| Primitive or carrier status | Adequate | 03–08, 13–17, 19–24 | Decide whether any representation/proposal supplies a shared physical primitive. |
| Allowed model class | Adequate | 03–12, 19–20, 23–24, 26–28 | Separate MPS/PEPS/MERA, continuum, perfect/random-code, and proposal-specific domains. |
| State/configuration space | Adequate | 03–08, 17, 19–22, 27 | Determine whether classes share one state space or only ordinary QM/QFT ancestry. |
| Redundancy/equivalence | Adequate | 05–06, 18–22 | Distinguish virtual-index gauge, code redundancy, duality, and physical gauge. |
| Dynamics status | Adequate | 07, 09–10, 15–18, 27 | Separate RG/optimization/projected evolution from fundamental equations. |
| RG/coarse graining | Adequate | 07, 09–10, 26–28 | Decide whether it is method, formulation, or core framework content. |
| Information/entanglement role | Adequate | 06–08, 11–22, 24–29 | Classify descriptive, reconstructive, mechanistic, and primitive claims. |
| Spacetime/geometry status | Adequate | 01–02, 13–17, 19–20, 23–24, 26, 28–29 | Apply graph/metric/target and lineage firewalls. |
| Holographic lineage | Adequate | 01–02, 13–15, 18–25, 28–29 | Decide what is internal to AdS/CFT versus independently sourced. |
| QEC/encoding role | Adequate | 18–22, 24–25, 29 | Distinguish theorem, dictionary, model, mechanism, and primitive. |
| Physical realization | Adequate | 03–04, 10, 25, 29 | Distinguish model preparation from realization of spacetime ontology. |
| Observables | Adequate | 03–04, 10, 15, 18–22, 25, 29 | Identify model-internal and supplied-theory observables. |
| Calibration | Adequate | 03–04, 10, 25, 29 | Determine whether any calibration binds a framework rather than a simulator/model. |
| Empirical ceiling | Adequate | 25, 29 plus Lane-I search record | Adjudicate the bounded absence of a direct framework discriminator. |
| Open selection problems | Adequate | 05, 11–12, 17, 19–20, 23–24, 28 | Identify bond/network/code/factorization/model selection burdens. |
| Weaker framework/tool explanations | Adequate | 03–12, 18–25, 27–29 | Test whether ordinary QM/QFT/AdS-CFT plus computation explains the content. |
| Framework-split burden | Adequate | all; especially 03–10 versus 13–29 | Adjudicate unity, persistent labels, successors, or no stable object. |

## 7. Frozen firewalls and non-results

```text
TENSOR_NETWORK_REPRESENTATION != PHYSICAL_ONTOLOGY
COMPUTATIONAL_TOOL != FOUNDATIONAL_FRAMEWORK
NETWORK_GRAPH != PHYSICAL_SPACETIME
GRAPH_DISTANCE != PHYSICAL_METRIC_WITHOUT_A_BRIDGE
RENORMALIZATION_OR_OPTIMIZATION != FUNDAMENTAL_DYNAMICS_BY_DEFAULT
HOLOGRAPHIC_TENSOR_NETWORK != INDEPENDENT_OF_ADS_CFT_BY_DEFAULT
QEC_ROLE != PHYSICAL_ONTOLOGY
SIMULATOR_REALIZATION_OF_A_CODE != OBSERVATION_OF_SPACETIME_EMERGENCE
NUMERICAL_OR_MODEL_INTERNAL_AGREEMENT != FRAMEWORK_LEVEL_EMPIRICAL_SUPPORT
```

```text
TAXONOMY_OUTCOME = NOT_ADJUDICATED
FW_TENSOR_SURVIVES = NOT_ADJUDICATED
SUCCESSOR_FRAMEWORK_COUNT = NOT_ADJUDICATED
SUCCESSOR_FRAMEWORK_IDS_CREATED = 0
K1_K10_BASELINE_EXECUTION = NOT_STARTED
CROSS_FRAMEWORK_COMPARISON_EXECUTION = NOT_STARTED
CONVERGENCE_CREDIT_ASSIGNED = 0
RECURRENCE_RECOMPUTATION = NOT_STARTED
FRAMEWORK_WINNER = NONE
SCALAR_FRAMEWORK_SCORE = FORBIDDEN
```
