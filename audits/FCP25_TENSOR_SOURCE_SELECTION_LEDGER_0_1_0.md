# FCP-25 Stage 1 — Tensor-Network / Information-Theoretic Source-Selection Ledger

**Version:** 0.1.0

**Status:** FROZEN_STAGE1_SELECTION_AUDIT_CANDIDATE

**Search date:** 2026-08-27

**Publication cutoff:** 2026-08-27

**Candidate ceiling:** 80

**Admission ceiling:** 32

## 1. Custody and sequence

```text
CANONICAL_BASELINE = d5444f1653a051dd630e90fff1399480ed106c0d
PREREGISTRATION_COMMIT = 7631019eca0407a1cad6241b6d06ce87082ab4e0
PREREGISTRATION_COMMIT_MESSAGE = Preregister FCP-25 tensor-network source intake
COMMIT_1_BEFORE_EXTERNAL_SEARCH = PASS
EXTERNAL_SCIENTIFIC_SEARCH_BEGAN_ONLY_AFTER_COMMIT_1 = YES
SEARCH_DATE = 2026-08-27
SOURCE_PUBLICATION_CUTOFF = PASS
CANDIDATE_SOURCE_COUNT_REVIEWED = 62
ADMITTED_SOURCE_COUNT = 29
REJECTED_SOURCE_COUNT = 22
DEFERRED_SOURCE_COUNT = 11
```

Repository and GitHub baseline reads preceded Commit 1 and were not scientific-source discovery. No third-party paper or substantial excerpt is stored in the repository. The audit records bibliographic identity, access route, disposition, and a proposition-level reason.

## 2. Reproducible query families

The searches used public web discovery only for navigation, then resolved candidate identity and technical content through arXiv, journal or proceedings pages, DOI records, author manuscripts, or institutional copies. Search-result snippets were not treated as scientific evidence.

| Date | Lane | Query or query family | Database or search surface | Selection purpose |
|---|---|---|---|---|
| 2026-08-27 | A | `matrix product states DMRG relation review`; `PEPS original`; `tensor network states bond dimension area law exact approximate representation`; `MPS canonical form gauge freedom` | Web discovery; arXiv; APS; Elsevier; QIC; RMP | Resolve state/carrier architecture, representation theorems, gauge redundancy, and approximation scope. |
| 2026-08-27 | B | `entanglement renormalization original`; `MERA critical systems causal cone`; `MERA network geometry limitation`; `continuous MERA` | Web discovery; arXiv; APS; Springer | Separate ER/MERA scale architecture from physical geometry, causality, and time. |
| 2026-08-27 | C | `tensor renormalization group Levin Nave`; `tensor network real time imaginary time TDVP`; `MPS variational evolution`; `tensor renormalization versus physical dynamics` | Web discovery; arXiv; APS; Springer | Distinguish contraction, optimization, projected evolution, RG, and supplied physical dynamics. |
| 2026-08-27 | D | `entanglement emergent spacetime geometry Einstein equations`; `entanglement builds spacetime`; `Hilbert space factorization spatial geometry`; `entanglement equilibrium gravity` | Web discovery; arXiv; APS; JHEP; Springer | Resolve assumptions and target dependence behind geometry/gravity claims. |
| 2026-08-27 | E | `MERA AdS analogy`; `holographic tensor networks perfect tensor random tensor network`; `RT tensor network limitations`; `experimental holographic code` | Web discovery; arXiv; JHEP; APS; Nature; IOP | Map AdS/CFT lineage, toy constructions, RT-like results, reconstruction, and model ceilings. |
| 2026-08-27 | F | `AdS CFT quantum error correction operator algebra`; `bulk reconstruction subregion duality`; `entanglement wedge reconstruction tensor network code`; `quantum error correction holography review` | Web discovery; arXiv; JHEP; APS; Springer | Separate mathematical encoding, duality dictionary, reconstruction theorem, and physical-mechanism claims. |
| 2026-08-27 | G | `information first foundational physics entanglement spacetime`; `tensor network foundational ontology`; `it from qubit emergent geometry`; boundary checks for `GPT CQM causal graphity information geometry` | Web discovery; arXiv; journal full text | Seek direct foundational claims while testing boundaries against existing FCP objects and generic quantum-information language. |
| 2026-08-27 | H | `tensor network limitations counterexample area law not sufficient`; `PEPS representation limitations`; `MERA AdS no go`; `tensor network geometric interpretation nonunique`; `holographic tensor network toy model limitations` | Web discovery; arXiv; APS; IOP; Springer | Actively seek adverse results, nonuniqueness, target dependence, and absent dynamics. |
| 2026-08-27 | I | `tensor network experiment quantum simulator observables`; `holographic tensor network experimental realization`; `HaPPY code quantum computer`; `tensor network phenomenology falsification`; `gravity-like signatures holographic code` | Web discovery; arXiv; APS; Nature; institutional repositories | Test physical realization, observables, calibration, and the direct framework-level empirical ceiling. |

## 3. Candidate disposition ledger

`Full text` below records whether technically sufficient source text was available for the review that produced the disposition. Full-text sufficiency is mandatory for admission, but a navigation-only or plainly out-of-scope candidate can be rejected without elevating its text to scientific evidence.

| No. | Lane(s) | Candidate source | Search/access surface | Full text | Disposition | Disposition reason |
|---:|---|---|---|---|---|---|
| C01 | E;F | Maldacena, *The Large N Limit of Superconformal Field Theories and Supergravity* (1998), `hep-th/9711200` | arXiv; journal DOI | Yes | `ADMITTED` as `SRC-FCP24-HOLO-MALDACENA-1998` | Reused boundary source needed to expose AdS/CFT and string/M-theory lineage; not duplicated in the register. |
| C02 | D;E;F | Ryu and Takayanagi, *Holographic Derivation of Entanglement Entropy from AdS/CFT* (2006), `hep-th/0603001` | arXiv; APS | Yes | `ADMITTED` as `SRC-FCP24-HOLO-RT-2006` | Reused boundary source fixes the RT target later reproduced by network models. |
| C03 | A;C;I | Schollwöck, *The density-matrix renormalization group in the age of matrix product states* (2011), `1008.3477` | arXiv; Elsevier | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-SCHOLLWOECK-2011` | Authoritative synthesis tying DMRG to MPS while documenting algorithms, observables, and truncation limits. |
| C04 | A;C;I | Verstraete and Cirac, *Renormalization algorithms for Quantum-Many Body Systems in two and higher dimensions* (2004), `cond-mat/0407066` | arXiv | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-VERSTRAETE-CIRAC-2004` | Primary PEPS architecture and supplied-Hamiltonian variational evolution. |
| C05 | A;H | Pérez-García et al., *Matrix Product State Representations* (2007), `quant-ph/0608197` | arXiv; QIC | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-PEREZ-GARCIA-2007` | Primary canonical-form and representation-freedom result needed for the redundancy burden. |
| C06 | A;C;H | Cirac et al., *Matrix product states and projected entangled pair states: Concepts, symmetries, theorems* (2021), `2011.12127` | arXiv; APS | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-CIRAC-2021` | Modern authoritative review spanning MPS/PEPS theorem scope, virtual symmetries, contraction, and limits. |
| C07 | B;C | Vidal, *Entanglement Renormalization* (2007), `cond-mat/0512165` | arXiv; APS | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-VIDAL-ER-2007` | Primary disentangler/isometry and real-space RG construction. |
| C08 | B | Vidal, *Class of Quantum Many-Body States That Can Be Efficiently Simulated* (2008), `quant-ph/0610099` | arXiv; APS | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-VIDAL-MERA-2008` | Primary MERA state class and causal-cone architecture. |
| C09 | C | Levin and Nave, *Tensor Renormalization Group Approach to Two-Dimensional Classical Lattice Models* (2007), `cond-mat/0611687` | arXiv; APS | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-LEVIN-NAVE-2007` | Primary tensor-contraction coarse graining that prevents RG from being promoted to physical time evolution. |
| C10 | C;I | Haegeman et al., *Unifying time evolution and optimization with matrix product states* (2016), `1408.5056` | arXiv; APS | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-HAEGEMAN-TDVP-2016` | Primary TDVP treatment distinguishing supplied Schrödinger dynamics from projection and optimization. |
| C11 | A;H | Schuch et al., *Entropy scaling and simulability by Matrix Product States* (2008), `0705.0292` | arXiv; APS | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-SCHUCH-2008` | Adverse theorem: an area law alone is not a sufficient generic MPS-simulability guarantee. |
| C12 | A;H | Ge and Eisert, *Area laws and efficient descriptions of quantum many-body states* (2016), `1411.2995` | arXiv; IOP | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-GE-EISERT-2016` | Higher-dimensional counterweight to universal efficient-description claims. |
| C13 | B;D;E | Swingle, *Entanglement Renormalization and Holography* (2012), `0905.1317` | arXiv; APS | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-SWINGLE-2012` | Primary MERA/AdS analogy with explicit critical-system and holographic targets. |
| C14 | D;E;G | Van Raamsdonk, *Building up spacetime with quantum entanglement* (2010), `1005.3035` | arXiv; Springer | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-VAN-RAAMSDONK-2010` | Direct entanglement/spacetime foundational claim with explicit AdS/CFT lineage. |
| C15 | D;E;F | Faulkner et al., *Gravitation from Entanglement in Holographic CFTs* (2014), `1312.7856` | arXiv; JHEP | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-FAULKNER-2014` | Primary linearized-gravity result whose assumptions and supplied holographic target are taxonomically material. |
| C16 | D;G | Jacobson, *Entanglement Equilibrium and the Einstein Equation* (2016), `1505.04753` | arXiv; APS | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-JACOBSON-2016` | Information-first boundary proposal not dependent on a tensor network; necessary heterogeneity evidence. |
| C17 | D;G;H | Cao, Carroll, and Michalakis, *Space from Hilbert Space: Recovering Geometry from Bulk Entanglement* (2017), `1606.08444` | arXiv; APS | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-CAO-CARROLL-MICHALAKIS-2017` | Explicit factorization/mutual-information reconstruction proposal including failure conditions and target choices. |
| C18 | E;F | Almheiri, Dong, and Harlow, *Bulk Locality and Quantum Error Correction in AdS/CFT* (2015), `1411.7041` | arXiv; JHEP | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-ALMHEIRI-DONG-HARLOW-2015` | Primary source for the QEC interpretation of AdS/CFT bulk reconstruction. |
| C19 | E;F | Pastawski et al., *Holographic quantum error-correcting codes: Toy models for the bulk/boundary correspondence* (2015), `1503.06237` | arXiv; JHEP | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-PASTAWSKI-2015` | Defining perfect-tensor/HaPPY toy construction and its declared model ceiling. |
| C20 | E;F | Hayden et al., *Holographic duality from random tensor networks* (2016), `1601.01694` | arXiv; JHEP | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-HAYDEN-2016` | Primary random-network extension with large-bond/ensemble and supplied-graph qualifications. |
| C21 | E;F | Dong, Harlow, and Wall, *Reconstruction of Bulk Operators within the Entanglement Wedge in Gauge-Gravity Duality* (2016), `1601.05416` | arXiv; APS | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-DONG-HARLOW-WALL-2016` | Primary subregion/entanglement-wedge reconstruction theorem in a supplied duality. |
| C22 | E;F | Harlow, *The Ryu-Takayanagi Formula from Quantum Error Correction* (2017), `1607.03901` | arXiv; Springer | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-HARLOW-2017` | Operator-algebra QEC source needed to distinguish theorem structure from ontology. |
| C23 | B;D;E;H | Bao et al., *Consistency Conditions for an AdS/MERA Correspondence* (2015), `1504.06632` | arXiv; APS | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-BAO-2015` | Adverse source testing and limiting a conventional AdS/MERA identification. |
| C24 | D;E;F;H | Jahn and Eisert, *Holographic tensor network models and quantum error correction: A topical review* (2021), `2102.02619` | arXiv; IOP | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-JAHN-EISERT-2021` | Authoritative taxonomy/orientation review retaining model-family and fixed-area/toy limitations. |
| C25 | E;I | Li et al., *Measuring Holographic Entanglement Entropy on a Quantum Simulator* (2019), `1705.00365` | arXiv; Nature | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-LI-2019` | Direct small perfect-tensor realization; necessary to enforce the simulator-versus-foundational-evidence firewall. |
| C26 | B;D;H | Evenbly and Vidal, *Tensor network states and geometry* (2011), `1106.1082` | arXiv; Springer | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-EVENBLY-VIDAL-2011` | Primary geometric interpretation across MPS/PEPS/MERA needed to distinguish structural geometry from spacetime. |
| C27 | B;C;G | Haegeman et al., *Entanglement Renormalization for Quantum Fields in Real Space* (2013), `1102.5524` | arXiv; APS | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-HAEGEMAN-CMERA-2013` | Primary cMERA continuum variational/RG construction. |
| C28 | B;D;E;H | Milsted and Vidal, *Geometric interpretation of the multi-scale entanglement renormalization ansatz* (2018), `1812.00529` | arXiv | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-MILSTED-VIDAL-2018` | Adverse/alternative result showing MERA geometry depends on the path-integral interpretation. |
| C29 | E;F;I | Biswas et al., *Observation of gravity-like signatures in holographic codes on a quantum computer* (2026), `2607.12047` | arXiv | Yes | `ADMITTED` as `SRC-FCP25-TENSOR-BISWAS-2026` | Pre-cutoff primary realization of finite HaPPY-code observables; retained with an explicit toy-simulator ceiling. |
| C30 | A–F | Wikipedia, *Tensor network* | General web | No authority review | `REJECTED_LOW_AUTHORITY` | Navigation-only encyclopedia; not admissible scientific authority. |
| C31 | A–C | TensorNetwork.org educational pages and library index | General web | No | `REJECTED_LOW_AUTHORITY` | Useful software/education navigation, but no source-bound technical proposition requiring this authority level. |
| C32 | A;I | Wall et al., *Tensor-network discriminator architecture for classification of quantum data on quantum computers* (2022), `2202.10911` | arXiv; APS | Yes | `REJECTED_TOOL_ONLY_NO_FOUNDATIONAL_ROLE` | Machine-learning classifier for supplied quantum data; no direct foundational architecture claim. |
| C33 | A;I | Araz and Spannowsky, *Classical versus quantum: Comparing tensor-network-based quantum circuits on Large Hadron Collider data* (2022), `2202.10471` | arXiv; APS | Yes | `REJECTED_TOOL_ONLY_NO_FOUNDATIONAL_ROLE` | ML comparison on simulated LHC data; numerical performance is not framework-level empirical support. |
| C34 | A;C;I | Zhang et al., *Qubit-efficient simulation of thermal states with quantum tensor networks* (2022), *Phys. Rev. B* 106, 165126 | APS; author manuscript | Yes | `REJECTED_TOOL_ONLY_NO_FOUNDATIONAL_ROLE` | Variational thermal-state algorithm for supplied many-body systems; redundant for the empirical firewall. |
| C35 | C;I | Chertkov et al., *Holographic dynamics simulations with a trapped-ion quantum computer* (2022), *Nature Physics* 18, 1074 | Nature; author manuscript | Yes | `REJECTED_TOOL_ONLY_NO_FOUNDATIONAL_ROLE` | “Holographic” denotes qubit-reuse/compression of an infinite-state simulation, not gravitational holography or foundational dynamics. |
| C36 | A;I | MacCormack, Galda, and Lyon, *Simulating Large PEPs Tensor Networks on Small Quantum Devices* (2021), `2110.00507` | arXiv | Yes | `REJECTED_TOOL_ONLY_NO_FOUNDATIONAL_ROLE` | Proof-of-concept PEPS simulation of a supplied model; proposition covered by admitted realization sources. |
| C37 | G | Chiribella, D'Ariano, and Perinotti, *Informational derivation of quantum theory* (2011), `1011.6451` | arXiv; APS | Yes | `REJECTED_OUT_OF_SCOPE` | Quantum reconstruction belongs naturally to existing `FW-GPTOPT`; no direct TN/spacetime architecture claim. |
| C38 | G | Coecke, Pavlovic, and Vicary, *A new description of orthogonal bases* / classical-structure CQM line (2008) | arXiv; journal | Yes | `REJECTED_OUT_OF_SCOPE` | Categorical process structure belongs naturally to existing `FW-CQM`; information language alone does not cross the boundary. |
| C39 | G | Markopoulou, *Quantum causal histories* (1999), `hep-th/9904009` | arXiv | Yes | `REJECTED_OUT_OF_SCOPE` | Causal-set/Hilbert-space history architecture is not a tensor-network source and crosses the existing causal boundary. |
| C40 | G | Konopka, Markopoulou, and Severini, *Quantum Graphity: a model of emergent locality* (2008), `0801.0861` | arXiv; APS | Yes | `REJECTED_OUT_OF_SCOPE` | Dynamical graph model is not a tensor-network or QEC construction; graph vocabulary is insufficient for intake. |
| C41 | D;G | Verlinde, *On the Origin of Gravity and the Laws of Newton* (2011), `1001.0785` | arXiv; JHEP | Yes | `REJECTED_OUT_OF_SCOPE` | Entropic-gravity proposal lacks a direct tensor-network/code/information-carrier architecture relevant to the historical umbrella. |
| C42 | A | White, *Density matrix formulation for quantum renormalization groups* (1992) | APS | Yes | `REJECTED_REDUNDANT_AT_PROPOSITION_LEVEL` | Historical DMRG priority retained in search record; the DMRG–MPS propositions needed here are more fully covered by C03. |
| C43 | A | Fannes, Nachtergaele, and Werner, *Finitely correlated states on quantum spin chains* (1992) | Springer | Yes | `REJECTED_REDUNDANT_AT_PROPOSITION_LEVEL` | Historical state-class source; no additional Stage-2 proposition beyond C05–C06 at the bounded scope. |
| C44 | A | Östlund and Rommer, *Thermodynamic Limit of Density Matrix Renormalization* (1995) | APS | Yes | `REJECTED_REDUNDANT_AT_PROPOSITION_LEVEL` | Historical DMRG/MPS connection is covered in more technically comprehensive form by C03. |
| C45 | A | Orús, *A practical introduction to tensor networks: Matrix product states and projected entangled pair states* (2014), `1306.2164` | arXiv; Elsevier | Yes | `REJECTED_REDUNDANT_AT_PROPOSITION_LEVEL` | Clear tutorial but no unique proposition beyond C03, C04, and C06. |
| C46 | A;H | Eisert, Cramer, and Plenio, *Colloquium: Area laws for the entanglement entropy* (2010), `0808.3773` | arXiv; APS | Yes | `REJECTED_REDUNDANT_AT_PROPOSITION_LEVEL` | Area-law orientation is covered by the admitted technical limitation pair C11–C12 and TN reviews. |
| C47 | D | Lashkari et al., *Gravitational dynamics from entanglement thermodynamics* (2014), `1308.3716` | arXiv; JHEP | Yes | `REJECTED_REDUNDANT_AT_PROPOSITION_LEVEL` | Linearized holographic-gravity proposition is covered by C15, which supplies the needed assumptions in the frozen corpus. |
| C48 | D;E | Czech et al., *Tensor Networks from Kinematic Space* (2016), `1512.01548` | arXiv; JHEP | Yes | `REJECTED_REDUNDANT_AT_PROPOSITION_LEVEL` | Adds a specialized AdS3/CFT2 reconstruction route but no indispensable proposition beyond admitted lineage/model sources. |
| C49 | F | Cotler et al., *Entanglement Wedge Reconstruction via Universal Recovery Channels* (2019), `1704.05839` | arXiv; APS | Yes | `REJECTED_REDUNDANT_AT_PROPOSITION_LEVEL` | Recovery-channel refinement is technically valuable but not needed beyond C18 and C21–C22 for Stage-2 taxonomy. |
| C50 | G | Wheeler, *Information, Physics, Quantum: The Search for Links* (1990) | Proceedings/scan metadata | Perspective | `REJECTED_PROGRAMMATIC_OR_PERSPECTIVE_ONLY` | Foundational slogan and agenda lack a sufficiently specific source-bound model architecture for this intake. |
| C51 | G | Aguirre, Foster, and Merali (eds.), *It From Bit or Bit From It?* (2015) | Publisher/book metadata | Perspective collection | `REJECTED_PROGRAMMATIC_OR_PERSPECTIVE_ONLY` | Essay collection is orientation, not a single technical program with stable propositions. |
| C52 | A | Orús, *Tensor networks for complex quantum systems* (2019), `1812.04011` | arXiv; Nature Reviews Physics | Yes | `DEFERRED_USEFUL_BUT_NOT_NEEDED_FOR_STAGE1` | Useful broad review; C03 and C06 provide sufficient technical orientation without a fourth synthesis source. |
| C53 | A | Bridgeman and Chubb, *Hand-waving and interpretive dance: an introductory course on tensor networks* (2017), `1603.03039` | arXiv; IOP | Yes | `DEFERRED_USEFUL_BUT_NOT_NEEDED_FOR_STAGE1` | High-quality pedagogical synthesis but proposition-level redundant at the 32-source ceiling. |
| C54 | C | Evenbly and Vidal, *Tensor Network Renormalization* (2015), `1412.0732` | arXiv; APS | Yes | `DEFERRED_USEFUL_BUT_NOT_NEEDED_FOR_STAGE1` | Important algorithmic refinement; Levin–Nave plus ER/MERA and TDVP suffice for the Stage-2 dynamics/RG distinction. |
| C55 | C | Gu and Wen, *Tensor-entanglement-filtering renormalization approach and symmetry-protected topological order* (2009), `0903.1069` | arXiv; APS | Yes | `DEFERRED_USEFUL_BUT_NOT_NEEDED_FOR_STAGE1` | Specialized RG refinement; no unique foundational-status proposition needed for Stage 2. |
| C56 | E;F;H | Dong, McBride, and Weng, *Holographic tensor networks with bulk gauge symmetries* (2024), `2309.06436` | arXiv; JHEP | Yes | `DEFERRED_USEFUL_BUT_NOT_NEEDED_FOR_STAGE1` | Addresses fixed-area limitations, but the limitation and model-family burden are already exposed by C20 and C24. |
| C57 | F | Cao and Lackey, *Quantum Lego: Building Quantum Error Correction Codes from Tensor Networks* (2022), `2109.08158` | arXiv; APS | Yes | `DEFERRED_USEFUL_BUT_NOT_NEEDED_FOR_STAGE1` | General modular code construction is relevant but not necessary to determine the holographic-QEC taxonomy boundary. |
| C58 | E;F | Qi, *Exact holographic mapping and emergent space-time geometry* (2013), `1309.6282` | arXiv | Yes | `DEFERRED_TAXONOMY_DEPENDS_ON_STAGE2` | Potentially independent exact-map formulation; whether it is a successor identity or holographic model requires Stage-2 criteria. |
| C59 | D;E | May, *Tensor networks for dynamic spacetimes* (2017), `1611.06220` | arXiv; JHEP | Yes | `DEFERRED_TAXONOMY_DEPENDS_ON_STAGE2` | Dynamic causal-network proposal could affect an internal formulation boundary; current frozen sources expose the issue sufficiently. |
| C60 | D;E;G | Miyaji and Takayanagi, *Surface/State Correspondence as a Generalized Holography* (2015), `1503.03542` | arXiv; PTEP | Yes | `DEFERRED_TAXONOMY_DEPENDS_ON_STAGE2` | Broader holographic proposal sits at the FCP-24 remainder boundary; admission now could prejudge ownership. |
| C61 | C;D;G | Yang, Yang, and Mei, *Spacetime as emergent order: a testable framework from string-net condensation to geometric thermodynamics* (2026), DOI `10.3389/fspas.2026.1839487` | Publisher open full text | Yes | `DEFERRED_TAXONOMY_DEPENDS_ON_STAGE2` | Pre-cutoff direct foundational proposal with strong new primitives and assumptions; may be CQM/condensed-matter boundary rather than a TN successor. |
| C62 | B;D;E | Chou and Chang, *Emergent de Sitter Space and Non-Unitary Tensor Networks from Non-Hermitian Quantum Criticality* (2026), `2606.17983` | arXiv | Yes | `DEFERRED_TAXONOMY_DEPENDS_ON_STAGE2` | Pre-cutoff specialized non-Hermitian cMERA/dS construction; successor-versus-model status requires Stage-2 rules. |

## 4. Disposition totals

| Disposition | Count |
|---|---:|
| `ADMITTED` | 29 |
| `REJECTED_LOW_AUTHORITY` | 2 |
| `REJECTED_TOOL_ONLY_NO_FOUNDATIONAL_ROLE` | 5 |
| `REJECTED_OUT_OF_SCOPE` | 5 |
| `REJECTED_REDUNDANT_AT_PROPOSITION_LEVEL` | 8 |
| `REJECTED_ABSTRACT_ONLY` | 0 |
| `REJECTED_IDENTITY_UNRESOLVED` | 0 |
| `REJECTED_TECHNICALLY_INSUFFICIENT` | 0 |
| `REJECTED_PROGRAMMATIC_OR_PERSPECTIVE_ONLY` | 2 |
| `REJECTED_POST_CUTOFF` | 0 |
| `DEFERRED_USEFUL_BUT_NOT_NEEDED_FOR_STAGE1` | 6 |
| `DEFERRED_TAXONOMY_DEPENDS_ON_STAGE2` | 5 |
| **Total serious candidates reviewed** | **62** |

The five taxonomy-sensitive sources C58–C62 were deferred rather than rejected. Their exclusion from the 29-source core therefore remains visible to Stage 2. This exact five-source set is frozen as the Stage-2 deferred-taxonomy docket: Stage 2 may adjudicate their relevance/boundary status but must not silently omit or replace them. No rejected source was identified whose exclusion could materially alter the Stage-2 taxonomy at the current proposition scope.

The frozen docket identifiers are:

```text
C58 = QI_EXACT_HOLOGRAPHIC_MAPPING
C59 = MAY_DYNAMIC_SPACETIMES
C60 = MIYAJI_TAKAYANAGI_SURFACE_STATE
C61 = YANG_YANG_MEI_EMERGENT_ORDER
C62 = CHOU_CHANG_NONHERMITIAN_DS_CMERA
```

```text
REJECTED_SOURCE_WHOSE_EXCLUSION_COULD_MATERIALLY_ALTER_STAGE2_TAXONOMY = NONE

TAXONOMY_SENSITIVE_DEFERRED_CANDIDATES =
C58_QI_EXACT_HOLOGRAPHIC_MAPPING;
C59_MAY_DYNAMIC_SPACETIMES;
C60_MIYAJI_TAKAYANAGI_SURFACE_STATE;
C61_YANG_YANG_MEI_EMERGENT_ORDER;
C62_CHOU_CHANG_NONHERMITIAN_DS_CMERA
```

## 5. Admission and adverse-source checks

All 29 admitted sources satisfy:

```text
IDENTITY_RESOLVED = YES
BIBLIOGRAPHIC_METADATA_VERIFIED = YES
FULL_TEXT_OR_TECHNICALLY_SUFFICIENT_SOURCE_TEXT = YES
DO_NOT_USE_ABSTRACT_ONLY_FOR_STRONG_TECHNICAL_BINDING = OBSERVED
```

Six admitted sources carry an explicit `LIMITATION_OR_COUNTEREXAMPLE` role or central adverse proposition: C05, C11, C12, C23, C24, and C28. Additional limitations are retained in every admitted manifest record. Tool-only experiments C32–C36 were not promoted to foundational evidence, while the admitted realization sources C25 and C29 were retained with explicit model ceilings. Sources were neither rejected for weakening `FW-TENSOR` nor admitted for supporting a preferred taxonomy.

```text
SOURCE_SELECTION_CHERRY_PICKING_CHECK = PASS
ADVERSE_SOURCE_SEARCH = PASS
PROPOSITION_LEVEL_REDUNDANCY_CHECK = PASS
SOURCE_IDENTITY_CHECK = PASS
FULL_TEXT_SUFFICIENCY_CHECK = PASS
COPYRIGHT_BOUNDARY = PASS

NEGATIVE_OR_LIMITING_SOURCES_ACTIVELY_SOUGHT = YES
ALL_MANDATORY_SEARCH_LANES_COVERED = YES
SOURCE_COVERAGE_GAPS = NONE
SOURCE_SELECTION_WAS_OUTCOME_DRIVEN = NO
BOUNDARY_SOURCE_TAGGING_CHECK = PASS
BOUNDARY_SOURCE_REGISTER_INTAKE_CONSISTENCY = PASS
DEFERRED_TAXONOMY_DOCKET_FROZEN = PASS
ADMISSION_CEILING_EXCEEDED = NO
CANDIDATE_REVIEW_CEILING_EXCEEDED = NO
```

### Boundary-source consistency docket

The following admitted FCP-25 sources are frozen as `BOUNDARY_SOURCE` inputs because their propositions materially cross the historical `FW-TENSOR` intake boundary into holographic, QEC, information-first, QFT/GR, or adjacent foundational structure:

```text
SRC-FCP25-TENSOR-VAN-RAAMSDONK-2010
SRC-FCP25-TENSOR-FAULKNER-2014
SRC-FCP25-TENSOR-JACOBSON-2016
SRC-FCP25-TENSOR-CAO-CARROLL-MICHALAKIS-2017
SRC-FCP25-TENSOR-ALMHEIRI-DONG-HARLOW-2015
SRC-FCP25-TENSOR-DONG-HARLOW-WALL-2016
SRC-FCP25-TENSOR-HARLOW-2017
```

This label is a taxonomy-neutral boundary control, not an exclusion or framework-membership decision.

## 6. Scientific selection boundary

This ledger is an intake audit, not a scientific taxonomy decision. Candidate dispositions describe fitness for the frozen Stage-1 corpus only. In particular:

```text
TAXONOMY_OUTCOME = NOT_ADJUDICATED
FW_TENSOR_SURVIVES = NOT_ADJUDICATED
SUCCESSOR_FRAMEWORK_COUNT = NOT_ADJUDICATED
SUCCESSOR_FRAMEWORK_IDS_CREATED = 0
K1_K10_ADJUDICATION = NOT_STARTED
CROSS_FRAMEWORK_COMPARISONS = 0
CONVERGENCE_CREDIT_ASSIGNED = 0
RECURRENCE_RECOMPUTATION = NOT_STARTED
FRAMEWORK_WINNER = NONE
SCALAR_FRAMEWORK_SCORE = FORBIDDEN
```
