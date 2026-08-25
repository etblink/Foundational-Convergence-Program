# FCP Source Register

## Purpose

This register records authoritative source locations and provenance bindings used by FCP. Registration does not imply endorsement, correctness, or scientific score.

## Status vocabulary

- `REGISTERED_POINTER_ONLY`
- `SOURCE_INTAKE_PENDING`
- `SOURCE_BOUND`
- `SUPERSEDED`
- `WITHDRAWN`

## Registered sources

| Source ID | Framework / role | Authority | Location | Status | Notes |
|---|---|---|---|---|---|
| `SRC-NFC-RED-001` | Reduced NFC handoff | Noncanonical research continuity derived from separately frozen NFC canon | repo `etblink/Nested-Fibrational-Cosmology`; branch `research/foundational-reduction-continuity`; file `research/NFC_FOUNDATIONAL_REDUCTION_CONTINUITY.md` | `SOURCE_BOUND` | Source-bound only for the reduced comparative object used in FCP-3. NFC canon is not imported or modified; this remains a noncanonical diagnostic/continuity source. |
| `SRC-NFC-CANON-ARCHIVE-001` | NFC canonical historical source provenance (`PROVENANCE_REPRODUCIBILITY_ONLY`) | Exact restored historical NFC Git object graph; provenance/reproducibility record only, not independent scientific authority | repo `etblink/Nested-Fibrational-Cosmology`; branch `archive/nfc-canonical-ed3047c2`; commit `ed3047c2cbc0abc34d2549dd27754e4d3d05af78`; root tree `00ef55ff36d5e9663ca1ef2c9566e2bc1396f973`; parent `dc72e0b07ce126d912b5f6ff85b0b5597dfaefeb` | `REGISTERED_POINTER_ONLY` | Public independent inspectability: YES. `ROLE=PROVENANCE_REPRODUCIBILITY_ONLY`; `NFC_CANON_IMPORTED_INTO_FCP_SCIENTIFIC_OBJECT=NO`; `REDUCED_NFC_COMPARATIVE_OBJECT_CHANGED=NO`; `FCP3_SOURCE_BINDING_REWRITTEN=NO`; `NFC_SCIENTIFIC_VALIDITY_ADJUDICATED_BY_THIS_ENTRY=NO`. |
| `SRC-NULL-PDG-2026-ROOT` | Null competitor / particle-physics master review | Particle Data Group, F. Takahashi et al., *Review of Particle Physics* (2026), Int. J. Mod. Phys. A 41, 2630011 (2026) | `https://pdg.lbl.gov/2026/` | `SOURCE_BOUND` | 2026 PDG edition used as the source spine for the bounded null baseline. |
| `SRC-NULL-PDG-EW-2026` | Null competitor / electroweak SM and QFT renormalization | PDG 2026, J. de Blas, S. Dittmaier, R. Kogler, *Electroweak Model and Constraints on New Physics*, revised May 2026 | `https://pdg.lbl.gov/2026/reviews/rpp2026-rev-standard-model.pdf` | `SOURCE_BOUND` | Defines electroweak SM as renormalizable `SU(2)×U(1)` gauge QFT; covers renormalization, input schemes, precision fits. |
| `SRC-NULL-PDG-QCD-2026` | Null competitor / strong interactions | PDG 2026, J. Huston, K. Rabbertz, G. Zanderighi, *Quantum Chromodynamics*, revised Aug. 2025 | `https://pdg.lbl.gov/2026/reviews/rpp2026-rev-qcd.pdf` | `SOURCE_BOUND` | Defines QCD as the `SU(3)` component of the SM; covers running coupling and experimental tests. |
| `SRC-NULL-PDG-HIGGS-2026` | Null competitor / Higgs sector | PDG 2026, M. Cepeda, L. Reina, P. Savard, *Status of Higgs Boson Physics*, revised Aug. 2025 | `https://pdg.lbl.gov/2026/reviews/rpp2026-rev-higgs-boson.pdf` | `SOURCE_BOUND` | Used for current Higgs-coupling and EWSB empirical baseline. |
| `SRC-NULL-PDG-NU-2026` | Null competitor / neutrino boundary | PDG 2026, M.C. Gonzalez-Garcia, R. Wendell, *Neutrino Masses, Mixing, and Oscillations*, revised Mar. 2026 | `https://pdg.lbl.gov/2026/reviews/rpp2026-rev-neutrino-mixing.pdf` | `SOURCE_BOUND` | Separates minimal-SM massless neutrinos from extensions required for massive neutrinos. |
| `SRC-NULL-PDG-GR-2026` | Null competitor / GR definition and experimental tests | PDG 2026, T. Damour, *Experimental Tests of Gravitational Theory*, revised Aug. 2025 | `https://pdg.lbl.gov/2026/reviews/rpp2026-rev-gravity-tests.pdf` | `SOURCE_BOUND` | Defines classical GR action/coupling at review scope and summarizes equivalence-principle, pulsar and GW tests. |
| `SRC-NULL-PDG-DM-2026` | Null competitor / dark-matter frontier | PDG 2026, L. Baudis, S. Profumo, *Dark Matter*, revised Aug. 2025 | `https://pdg.lbl.gov/2026/reviews/rpp2026-rev-dark-matter.pdf` | `SOURCE_BOUND` | Used only to establish that the dominant dark-matter microscopic composition remains unknown at the bounded source scope. |
| `SRC-NULL-PDG-DE-2026` | Null competitor / dark-energy frontier | PDG 2026, D.H. Weinberg, M. White, *Dark Energy*, revised Aug. 2025 | `https://pdg.lbl.gov/2026/reviews/rpp2026-rev-dark-energy.pdf` | `SOURCE_BOUND` | Used to delimit cosmological-constant/dark-energy explanatory scope. |
| `SRC-NULL-LVK-GWTC5-TGR-2026` | Null competitor / strong-field GR test | LIGO Scientific Collaboration, Virgo Collaboration, KAGRA Collaboration, *GWTC-5.0: Tests of General Relativity*, public record July 2026, LIGO-P2500781 | `https://dcc.ligo.org/LIGO-P2500781/public` | `SOURCE_BOUND` | Collaboration-level source for O4b/GWTC-5 GR tests used in FCP-1. |
| `SRC-FCP2-KEYS-001` | FCP-2 / preregistered comparison coordinates | Internal FCP governance/research artifact derived from FCP charter/protocol and FCP-1 baseline only | file `comparison_keys/FCP_COMPARISON_KEYS_0_1_0.md`; exact commit `c37fd5b27bb36c7a09b96f38437a7e56ec7393bf`; blob `b7ab7f547fa875bd8e63fbb8343f571d7f9fdc00` | `REGISTERED_POINTER_ONLY` | Defines K1–K10 and M1–M3 before first cross-framework comparison; immutable provenance does not depend on retaining the historical branch ref. |
| `SRC-FCP2-EQUIV-001` | FCP-2 / equivalence and convergence rules | Internal FCP governance/research artifact | file `comparison_keys/FCP_EQUIVALENCE_AND_CONVERGENCE_RULES_0_1_0.md`; exact commit `c37fd5b27bb36c7a09b96f38437a7e56ec7393bf`; blob `d7ef04becaf26c0f58500aab690e7f0c8adb9998` | `REGISTERED_POINTER_ONLY` | Freezes E1–E5 and convergence-credit rules before first competitor exposure. |
| `SRC-FCP2-NULL-DECOMP-001` | FCP-2 / null reference decomposition | Internal FCP decomposition of already source-bound FCP-1 material | file `frameworks/null_gr_qft_sm/FCP2_NULL_STRUCTURAL_DECOMPOSITION_0_1_0.md`; exact commit `c37fd5b27bb36c7a09b96f38437a7e56ec7393bf`; blob `c048117000e6964454d3dd57b18eb09a17052576` | `REGISTERED_POINTER_ONLY` | Adds no new external scientific source and no cross-framework verdict. |
| `SRC-FCP3-NFC-BIND-001` | FCP-3 / Reduced-NFC source binding | Internal FCP binding derived only from `SRC-NFC-RED-001` and the pre-existing FCP handoff | file `frameworks/nfc_reduced/FCP3_NFC_REDUCED_SOURCE_BINDING_0_1_0.md`; exact commit `53ff61acc28ebecddd5f83d614cf003e58e45377`; blob `5f7dee4842ddac3b34c94233462500265d1792a5` | `REGISTERED_POINTER_ONLY` | Fixes R1–R10 before FCP-3 correspondence assignment; no full NFC canon imported. |
| `SRC-FCP3-COMP-001` | FCP-3 / first cross-framework K1–K10 comparison | Internal FCP comparative artifact using frozen FCP-2 rules | file `comparisons/FCP3_NFC_REDUCED_VS_NULL_K1_K10_0_1_0.md`; exact commit `53ff61acc28ebecddd5f83d614cf003e58e45377`; blob `703949212cb37282df2eba26de10d07379a4cdb5` | `REGISTERED_POINTER_ONLY` | First Reduced-NFC/null comparison; internal analysis, not independent scientific authority. |
| `SRC-FCP3-CONV-001` | FCP-3 / convergence ledger | Internal FCP comparative artifact | file `convergence/FCP3_NFC_NULL_CONVERGENCE_LEDGER_0_1_0.md`; exact commit `53ff61acc28ebecddd5f83d614cf003e58e45377`; blob `ed4b6d52df464a6184c9b98e108e16625a346e08` | `REGISTERED_POINTER_ONLY` | Records E-class and convergence classifications. |
| `SRC-FCP3-DIV-001` | FCP-3 / divergence ledger | Internal FCP comparative artifact | file `convergence/FCP3_NFC_NULL_DIVERGENCE_LEDGER_0_1_0.md`; exact commit `53ff61acc28ebecddd5f83d614cf003e58e45377`; blob `555d30c2205de402cfdd5a2a2063523639987f4e` | `REGISTERED_POINTER_ONLY` | Records material differences without treating every difference as a defect. |
| `SRC-FCP3-HANDOFF-001` | FCP-3 / continuity handoff | Internal FCP handoff | file `handoffs/FCP3_NFC_VS_NULL_HANDOFF_0_1_0.md`; exact commit `53ff61acc28ebecddd5f83d614cf003e58e45377`; blob `6e0312b7a6f7e65cf74f140d9617c0b46b424141` | `REGISTERED_POINTER_ONLY` | Preserves bounded verdict and next-task rationale independently of branch-retention policy. |

### FCP-4 — AQFT source corpus

| Source ID | Framework / role | Authority | Location | Status | Notes |
|---|---|---|---|---|---|
| `SRC-FCP4-AQFT-HK-1964` | `FW-AQFT` / foundational algebraic QFT | Haag & Kastler, *An Algebraic Approach to Quantum Field Theory*, J. Math. Phys. 5 (1964) 848–861 | DOI `10.1063/1.1704187` | `SOURCE_BOUND` | Foundational primary source; later AQFT extensions are not back-projected into this core. |
| `SRC-FCP4-AQFT-BFV-2003` | `FW-AQFT` / locally covariant extension | Brunetti, Fredenhagen & Verch, *The generally covariant locality principle — A new paradigm for local quantum physics*, CMP 237 (2003) 31–68 | DOI `10.1007/s00220-003-0815-7`; arXiv `math-ph/0112041` | `SOURCE_BOUND` | Primary source for locally covariant QFT, functorial spacetime/algebra structure and relative Cauchy evolution; not minimal Haag–Kastler core. |
| `SRC-FCP4-AQFT-FV-2015` | `FW-AQFT` / modern synthesis | Fewster & Verch, *Algebraic quantum field theory in curved spacetimes* (2015) | DOI `10.1007/978-3-319-21353-8_4`; arXiv `1504.00586` | `SOURCE_BOUND` | Modern review of locally covariant AQFT, state selection and global/gauge structure. |
| `SRC-FCP4-AQFT-FV-MEAS-2020` | `FW-AQFT` / physical-realization theory | Fewster & Verch, *Quantum Fields and Local Measurements*, CMP 378 (2020) 851–889 | DOI `10.1007/s00220-020-03800-6`; arXiv `1810.06512` | `SOURCE_BOUND` | Specialized primary source for localized system–probe measurement schemes; not an empirical dataset. |
| `SRC-FCP4-AQFT-BFR-2025` | `FW-AQFT` / current pAQFT synthesis | Brunetti, Fredenhagen & Rejzner, *Perturbative algebraic quantum field theory and beyond* (2025) | arXiv `2512.14227` | `SOURCE_BOUND` | Current review used to delimit pAQFT/interacting-model extensions; pAQFT results are not minimal AQFT axioms. |

### FCP-4 — GPT / OPT source corpus

| Source ID | Framework / role | Authority | Location | Status | Notes |
|---|---|---|---|---|---|
| `SRC-FCP4-GPT-HARDY-2001` | `FW-GPTOPT` / foundational reconstruction | Hardy, *Quantum Theory From Five Reasonable Axioms* (2001) | arXiv `quant-ph/0101012` | `SOURCE_BOUND` | Primary reconstruction lineage; its additional axioms do not define all GPT/OPT frameworks. |
| `SRC-FCP4-GPT-BARRETT-2007` | `FW-GPTOPT` / foundational GPT | Barrett, *Information processing in generalized probabilistic theories*, PRA 75, 032304 (2007) | DOI `10.1103/PhysRevA.75.032304`; arXiv `quant-ph/0508211` | `SOURCE_BOUND` | Primary GPT source including classical, quantum and post-quantum models. |
| `SRC-FCP4-GPT-CDP-PUR-2010` | `FW-GPTOPT` / optional purification principle | Chiribella, D’Ariano & Perinotti, *Probabilistic theories with purification*, PRA 81, 062348 (2010) | DOI `10.1103/PhysRevA.81.062348`; arXiv `0908.1583` | `SOURCE_BOUND` | Purification is an added principle, not base GPT/OPT structure. |
| `SRC-FCP4-OPT-CHIRIBELLA-2014` | `FW-GPTOPT` / OPT framework synthesis | Chiribella, *Dilation of states and processes in operational-probabilistic theories* (2014) | DOI `10.4204/EPTCS.172.1`; arXiv `1412.8539` | `SOURCE_BOUND` | Concise source for OPT systems/processes/probabilities; dilation conclusions require named hypotheses. |
| `SRC-FCP4-GPT-MULLER-2021` | `FW-GPTOPT` / modern reconstruction synthesis | Müller, *Probabilistic Theories and Reconstructions of Quantum Theory*, SciPost Phys. Lect. Notes 28 (2021) | DOI `10.21468/SciPostPhysLectNotes.28`; arXiv `2011.01286` | `SOURCE_BOUND` | Separates broad GPT framework from additional reconstruction principles. |
| `SRC-FCP4-GPT-PLAVALA-2023` | `FW-GPTOPT` / modern GPT review | Plávala, *General probabilistic theories: An introduction*, Phys. Rep. 1033 (2023) 1–64 | DOI `10.1016/j.physrep.2023.09.001`; arXiv `2103.07469` | `SOURCE_BOUND` | Current broad review of convex GPT states, effects, measurements, transformations and theory models. |

### FCP-4 — CQM source corpus

| Source ID | Framework / role | Authority | Location | Status | Notes |
|---|---|---|---|---|---|
| `SRC-FCP4-CQM-AC-2004` | `FW-CQM` / foundational categorical quantum protocols | Abramsky & Coecke, *A categorical semantics of quantum protocols* (2004) | arXiv `quant-ph/0402130` | `SOURCE_BOUND` | Foundational primary source for the CQM tradition. |
| `SRC-FCP4-CQM-AC-2009` | `FW-CQM` / handbook synthesis | Abramsky & Coecke, *Categorical Quantum Mechanics*, Handbook of Quantum Logic and Quantum Structures, pp. 261–323 | arXiv `0808.1023` | `SOURCE_BOUND` | Mature early synthesis; not every monoidal category is a physical quantum theory. |
| `SRC-FCP4-CQM-CK-2017` | `FW-CQM` / modern monograph | Coecke & Kissinger, *Picturing Quantum Processes* (Cambridge, 2017) | DOI `10.1017/9781316219317`; ISBN `9781107104228` | `SOURCE_BOUND` | Systematic process-first/diagrammatic synthesis of quantum theory and classical-quantum interaction. |
| `SRC-FCP4-CQM-GS-2018` | `FW-CQM` / CQM–OPT bridge | Gogioso & Scandolo, *Categorical Probabilistic Theories*, EPTCS 266 (2018) 367–385 | DOI `10.4204/EPTCS.266.23`; arXiv `1701.08075` | `SOURCE_BOUND` | Primary bridge documenting similarities and differences between CQM and OPT; does not identify the full framework families. |

### FCP-7 — GPTOPT empirical supplement

| Source ID | Framework / role | Authority | Location | Status | Notes |
|---|---|---|---|---|---|
| `SRC-FCP7-GPT-MAZUREK-2021` | `FW-GPTOPT` / direct model-independent GPT tomography | Mazurek, Pusey, Resch & Spekkens, *Experimentally Bounding Deviations From Quantum Theory in the Landscape of Generalized Probabilistic Theories*, PRX Quantum 2, 020302 (2021) | DOI `10.1103/PRXQuantum.2.020302`; arXiv `1710.05948` | `SOURCE_BOUND` | Self-consistent GPT tomography for single-photon polarization; quantitatively bounds deviations from qubit geometry and inferred stronger-than-quantum CHSH capability; principal caveat is tomographic completeness. This pointer registers the source already frozen by the immutable FCP-7 empirical-supplement artifact and does not rewrite that history. |

### FCP-8 — GPTOPT quantum-boundary source layer

| Source ID | Framework / role | Authority | Location | Status | Notes |
|---|---|---|---|---|---|
| `SRC-FCP8-GPT-PR-1994` | `FW-GPTOPT` / post-quantum nonsignalling witness | Popescu & Rohrlich, *Quantum nonlocality as an axiom*, Found. Phys. 24, 379–385 (1994) | DOI `10.1007/BF02058098` | `SOURCE_BOUND` | Primary source for superquantum nonsignalling correlations; mathematical possibility, not observed reality. |
| `SRC-FCP8-GPT-TSIRELSON-1980` | `FW-GPTOPT` / quantum Bell bound | B. S. Cirel'son, *Quantum generalizations of Bell's inequality*, Lett. Math. Phys. 4, 93–100 (1980) | DOI `10.1007/BF00417500` | `SOURCE_BOUND` | Primary theorem source for quantum Bell-correlation restrictions. |
| `SRC-FCP8-GPT-IC-2009` | `FW-GPTOPT` / Information Causality | Pawłowski et al., *Information causality as a physical principle*, Nature 461, 1101–1104 (2009) | DOI `10.1038/nature08400`; arXiv `0905.2292` | `SOURCE_BOUND` | Strong partial post-quantum restriction; not complete quantum-set characterization. |
| `SRC-FCP8-GPT-ML-2010` | `FW-GPTOPT` / Macroscopic Locality | Navascués & Wunderlich, *A glance beyond the quantum model*, Proc. R. Soc. A 466, 881–890 (2010) | DOI `10.1098/rspa.2009.0453`; arXiv `0907.0372` | `SOURCE_BOUND` | Macroscopic classical-limit principle; permits post-quantum correlations. |
| `SRC-FCP8-GPT-AQ-2015` | `FW-GPTOPT` / principle-insufficiency countermodel | Navascués, Guryanova, Hoban & Acín, *Almost quantum correlations*, Nat. Commun. 6, 6288 (2015) | DOI `10.1038/ncomms7288`; arXiv `1403.4621` | `SOURCE_BOUND` | Strict post-quantum superset satisfying many proposed principles; not physically realized by source evidence. |
| `SRC-FCP8-GPT-IC-2026` | `FW-GPTOPT` / current IC status | Yu & Scarani, *Information causality beyond the random-access-code model*, Phys. Rev. A 114, 012202 (2026) | DOI `10.1103/s52j-2jr7` | `SOURCE_BOUND` | Current primary source; closes some gaps but reports remaining gaps for some correlation families. |
| `SRC-FCP8-GPT-RINGBAUER-2014` | `FW-GPTOPT` / empirical IC principle-test methodology | Ringbauer, Fedrizzi, Berry & White, *Information Causality in the Quantum and Post-Quantum Regime*, Sci. Rep. 4, 6955 (2014) | DOI `10.1038/srep06955` | `SOURCE_BOUND` | Supraquantum correlations are emulated through quantum-optical loss/postselection; not observation of natural post-quantum physics and not independent empirical selection of IC. |

### FCP-9 — Causal set theory source layer

| Source ID | Framework / role | Authority | Location | Status | Notes |
|---|---|---|---|---|---|
| `SRC-FCP9-CST-BLMS-1987` | controlled CST subset of `FW-CAUSAL` / `C0/C1` foundational definition | Bombelli, Lee, Meyer & Sorkin, *Space-Time as a Causal Set*, Phys. Rev. Lett. 59, 521–524 (1987) | DOI `10.1103/PhysRevLett.59.521` | `SOURCE_BOUND` | Foundational causal-set proposal; locally finite causal order and continuum motivation. Early quantum-dynamics remarks do not constitute a completed dynamics. |
| `SRC-FCP9-CST-SURYA-2019` | controlled CST subset / `C0–C6` modern synthesis | Sumati Surya, *The causal set approach to quantum gravity*, Living Rev. Relativ. 22, 5 (2019) | DOI `10.1007/s41114-019-0023-1`; arXiv `1903.11544` | `SOURCE_BOUND` | Authoritative review used to delimit core, continuum results, dynamics, matter/phenomenology and open problems; not sole theorem authority. |
| `SRC-FCP9-CST-SURYA-2025` | controlled CST subset / `C0–C6` current synthesis | Sumati Surya, *The Causal Set Approach to Quantum Gravity: An Introduction*, Lecture Notes in Physics 1036 (2025) | DOI `10.1007/978-3-031-84420-1`; ISBN `978-3-031-84420-1` | `SOURCE_BOUND` | Current monograph-level synthesis; maintains separation between kinematic CST, dynamics and phenomenology. |
| `SRC-FCP9-CST-MALAMENT-1977` | controlled CST subset / `C1` continuum causal reconstruction | D. B. Malament, *The class of continuous timelike curves determines the topology of spacetime*, J. Math. Phys. 18, 1399–1404 (1977) | DOI `10.1063/1.523436` | `SOURCE_BOUND` | Continuum theorem supporting the causal-structure reconstruction motivation under hypotheses; not a theorem that arbitrary finite causal sets uniquely recover spacetime. |
| `SRC-FCP9-CST-BHS-2009` | controlled CST subset / `C1` Lorentz-compatible discreteness | Bombelli, Henson & Sorkin, *Discreteness without symmetry breaking: a theorem*, Mod. Phys. Lett. A 24, 2579–2587 (2009) | DOI `10.1142/S0217732309031958`; arXiv `gr-qc/0605006` | `SOURCE_BOUND` | In the declared Poisson-sprinkling/Minkowski setting no equivariant measurable preferred-direction selector exists; does not make each realization pointwise Lorentz invariant or define dynamics. |
| `SRC-FCP9-CST-MULLER-2025` | controlled CST subset / `C1` current Hauptvermutung refinement | Olaf Müller, *On the Hauptvermutung of Causal Set Theory* (2025), current v2 29 Dec 2025 | arXiv `2503.01719` | `SOURCE_BOUND` | Current preprint with precise positive/negative formulations and a countable injectivity theorem; author cautions that these do not automatically settle the full historical finite physical CST reconstruction target. |
| `SRC-FCP9-CST-KR-1975` | controlled CST subset / `C1` generic-poset counterpressure | D. J. Kleitman & B. L. Rothschild, *Asymptotic Enumeration of Partial Orders on a Finite Set*, Trans. AMS 205, 205–220 (1975) | DOI `10.2307/1997200` | `SOURCE_BOUND` | Generic finite-poset asymptotics used only as a countermodel to kinematic inevitability of manifoldlikeness; not itself CST dynamics. |
| `SRC-FCP9-CST-RS-2000` | controlled CST subset / `C2` classical sequential growth | Rideout & Sorkin, *Classical sequential growth dynamics for causal sets*, Phys. Rev. D 61, 024002 (1999/2000) | DOI `10.1103/PhysRevD.61.024002`; arXiv `gr-qc/9904062` | `SOURCE_BOUND` | Primary CSG source; named covariance/causality/Markov assumptions constrain a broad stochastic family, not one uniquely selected physical law. |
| `SRC-FCP9-CST-OBS-2003` | controlled CST subset / `C2/K5` covariant observables | Brightwell, Dowker, García, Henson & Sorkin, *“Observables” in causal set cosmology*, Phys. Rev. D 67, 084031 (2003) | DOI `10.1103/PhysRevD.67.084031` | `SOURCE_BOUND` | Stem sets generate the covariant measurable algebra for a generic CSG family subject to stated measure-zero qualifications; not detector calibration. |
| `SRC-FCP9-CST-BD-2010` | controlled CST subset / `C1/C2` discrete operator/action | Benincasa & Dowker, *The Scalar Curvature of a Causal Set*, Phys. Rev. Lett. 104, 181301 (2010) | DOI `10.1103/PhysRevLett.104.181301`; arXiv `1001.2725` | `SOURCE_BOUND` | Discrete d'Alembertian/curvature/action with controlled continuum behavior under manifoldlike/smooth-field assumptions; not complete quantum dynamics. |
| `SRC-FCP9-CST-SZ-2020` | controlled CST subset / `C3` quantum sequential growth covariance | Surya & Zalel, *A criterion for covariance in complex sequential growth models*, Class. Quantum Grav. 37, 195030 (2020) | DOI `10.1088/1361-6382/ab987f`; arXiv `2003.11311` | `SOURCE_BOUND` | Primary covariance/measure-extension result for complex growth models; not unique quantum dynamics. |
| `SRC-FCP9-CST-SS-2026` | controlled CST subset / `C3` current QSG status | Srivastava & Surya, *Implementing Bell causality in Quantum Sequential Growth* (2026) | arXiv `2603.25503` | `SOURCE_BOUND` | Current preprint constraining candidate noncommutative transition algebras; explicitly an early step, with no general transition-operator solution. |
| `SRC-FCP9-CST-LAMBDA-2004` | controlled CST subset / `C5` cosmological phenomenology | Ahmed, Dodelson, Greene & Sorkin, *Everpresent Lambda*, Phys. Rev. D 69, 103523 (2004) | DOI `10.1103/PhysRevD.69.103523`; arXiv `astro-ph/0209274` | `SOURCE_BOUND` | Causal-set-inspired fluctuating-Lambda model using additional unimodular/stochastic assumptions; heuristic/model-specific, not core CST prediction. |
| `SRC-FCP9-CST-ZUNTZ-2008` | controlled CST subset / `C6` cosmological model constraint | Joe Zuntz, *The cosmic microwave background in a causal set universe*, Phys. Rev. D 77, 043002 (2008) | DOI `10.1103/PhysRevD.77.043002` | `SOURCE_BOUND` | CMB constraint on a declared causal-set dark-energy implementation; does not test every CST dynamics. |
| `SRC-FCP9-CST-PDS-2009` | controlled CST subset / `C5/C6` swerves/diffusion phenomenology | Philpott, Dowker & Sorkin, *Energy-momentum diffusion from spacetime discreteness*, Phys. Rev. D 79, 124047 (2009) | DOI `10.1103/PhysRevD.79.124047` | `SOURCE_BOUND` | Lorentz-invariant diffusion model and CMB blackbody bounds on phenomenological coefficients; not inevitable CST behavior. |
| `SRC-FCP9-CST-CDP-2010` | controlled CST subset / `C5/C6` polarization diffusion | Contaldi, Dowker & Philpott, *Polarization Diffusion from Spacetime Uncertainty*, Class. Quantum Grav. 27, 172001 (2010) | DOI `10.1088/0264-9381/27/17/172001`; arXiv `1001.4545` | `SOURCE_BOUND` | Declared polarization-diffusion model confronted with CMB polarization; model-specific empirical constraint. |

### FCP-9/FCP-10 — internal CST provenance bindings

| Source ID | Framework / role | Authority | Location | Status | Notes |
|---|---|---|---|---|---|
| `SRC-FCP9-CST-INTAKE-001` | `FW-CST` provenance / FCP-9 source intake | Internal FCP source-binding artifact; no independent external authority | file `frameworks/causal_set/FCP9_CAUSAL_SOURCE_INTAKE_0_1_0.md`; exact commit `54e29392a18adfe612c3a2f5262eef472a8f66d2`; blob `89b80b830324a97cdcd5ee37fc473c22c802a7ac` | `REGISTERED_POINTER_ONLY` | Immutable pointer to the controlling 16-source CST intake inherited by FCP-10. |
| `SRC-FCP9-CST-BASELINE-001` | `FW-CST` provenance / FCP-9 K1–K10 baseline | Internal FCP baseline artifact; no independent external authority | file `frameworks/causal_set/FCP9_CAUSAL_K1_K10_BASELINE_0_1_0.md`; exact commit `54e29392a18adfe612c3a2f5262eef472a8f66d2`; blob `dcac3f4f3f6ae63bddd1a1bed94c00342ae5b12c` | `REGISTERED_POINTER_ONLY` | Preserves R2/D2/E2, K1–K10 population, empirical-discriminator status, and the original eight-burden count including taxonomy. |
| `SRC-FCP10-CST-BINDING-001` | `FW-CST` provenance / canonical taxonomy binding | Internal FCP taxonomy artifact derived only from frozen FCP-9 records | file `frameworks/causal_set/FCP10_CST_CANONICAL_FRAMEWORK_BINDING_0_1_0.md`; exact commit `333563da9f511cdab0ce42ef263da9ad5f709c94`; blob `787de09a267ee28429e8d80c11f237b7eacad3e8` | `REGISTERED_POINTER_ONLY` | Canonicalizes `FW-CST` without adding external scientific sources or changing FCP-9 K1–K10 conclusions. Exact enclosing candidate commit is now recorded directly because the historical research branch has been retired after integration. |

### FCP-15 — Loop / spin-network / spinfoam source layer

| Source ID | Framework / role | Authority | Location | Status | Notes |
|---|---|---|---|---|---|
| `SRC-FCP15-LOOP-RS-1995` | `FW-LOOP` / `L1` spin-network basis | C. Rovelli & L. Smolin, *Spin networks and quantum gravity*, Phys. Rev. D 52, 5743–5759 (1995) | DOI `10.1103/PhysRevD.52.5743`; arXiv `gr-qc/9505006` | `SOURCE_BOUND` | Primary early spin-network/quantum-geometry source. Historical constraint-solution remarks are not promoted to current complete-dynamics status. |
| `SRC-FCP15-LOOP-AL-1997` | `FW-LOOP` / `L1/K5` quantum area operator | A. Ashtekar & J. Lewandowski, *Quantum Theory of Geometry I: Area Operators*, Class. Quantum Grav. 14, A55–A81 (1997) | DOI `10.1088/0264-9381/14/1A/006`; arXiv `gr-qc/9602046` | `SOURCE_BOUND` | Primary discrete-spectrum theorem on the kinematical Hilbert space; not detector-level evidence for directly observed minimum area. |
| `SRC-FCP15-LOOP-AL-2004` | `FW-LOOP` / canonical synthesis | A. Ashtekar & J. Lewandowski, *Background independent quantum gravity: A status report*, Class. Quantum Grav. 21, R53–R152 (2004) | DOI `10.1088/0264-9381/21/15/R01`; arXiv `gr-qc/0404018` | `SOURCE_BOUND` | Authoritative canonical review used to delimit quantum geometry, constraints, dynamics and realization burdens; not sole theorem authority. |
| `SRC-FCP15-LOOP-QSD-1998` | `FW-LOOP` / `LOOP-CANON` canonical constraint dynamics | T. Thiemann, *Quantum Spin Dynamics (QSD)*, Class. Quantum Grav. 15, 839–873 (1998) | DOI `10.1088/0264-9381/15/4/011`; arXiv `gr-qc/9606089` | `SOURCE_BOUND` | Primary Hamiltonian/Wheeler–DeWitt constraint-operator construction; does not by itself settle unique dynamics, physical Hilbert space or all constraint-algebra questions. |
| `SRC-FCP15-LOOP-TG-2024` | `FW-LOOP` / current canonical dynamics synthesis | T. Thiemann & K. Giesel, *Hamiltonian Theory: Dynamics*, in *Handbook of Quantum Gravity*, pp. 3777–3828 (2024) | DOI `10.1007/978-981-99-7681-2_97`; arXiv `2303.18172` | `SOURCE_BOUND` | Current structural review of quantum Einstein equations, physical-Hilbert interpretation, observables and physical Hamiltonian; not a theorem of uniquely completed dynamics. |
| `SRC-FCP15-LOOP-AB-2021` | `FW-LOOP` / modern family synthesis | A. Ashtekar & E. Bianchi, *A Short Review of Loop Quantum Gravity*, Rep. Prog. Phys. 84, 042001 (2021) | DOI `10.1088/1361-6633/abed91`; arXiv `2104.04394` | `SOURCE_BOUND` | Modern synthesis used for canonical/covariant scope, Barbero–Immirzi ambiguity and dynamics-status ceiling. |
| `SRC-FCP15-LOOP-EPRL-2008` | `FW-LOOP` / `LOOP-COVAR` finite-γ vertex and canonical bridge | J. Engle, E. Livine, R. Pereira & C. Rovelli, *LQG vertex with finite Immirzi parameter*, Nucl. Phys. B 799, 136–149 (2008) | DOI `10.1016/j.nuclphysb.2008.02.018`; arXiv `0711.0146` | `SOURCE_BOUND` | Primary named spinfoam model; fixed-graph boundary state/area-spectrum bridge to canonical LQG. Model variants and fixed-triangulation scope block whole-family identity. |
| `SRC-FCP15-LOOP-PEREZ-2013` | `FW-LOOP` / `LOOP-COVAR` spinfoam synthesis | A. Perez, *The Spin-Foam Approach to Quantum Gravity*, Living Rev. Relativ. 16, 3 (2013) | DOI `10.12942/lrr-2013-3`; arXiv `1205.2019` | `SOURCE_BOUND` | Authoritative review of 4D spinfoam construction and open dynamics issues; source-binds covariant sector without declaring one completed unique dynamics. |
| `SRC-FCP15-LOOP-BARRETT-2010` | `FW-LOOP` / `L4` Lorentzian spinfoam asymptotics | J. W. Barrett, R. J. Dowdall, W. J. Fairbairn, F. Hellmann & R. Pereira, *Lorentzian spin foam amplitudes: graphical calculus and asymptotics*, Class. Quantum Grav. 27, 165009 (2010) | DOI `10.1088/0264-9381/27/16/165009`; arXiv `0907.2440` | `SOURCE_BOUND` | Large-representation 4-simplex result yielding Lorentzian Regge-action phases for suitable boundary data; not full continuum GR recovery. |
| `SRC-FCP15-LOOP-BMP-2009` | `FW-LOOP` / `L4` metric correlations | E. Bianchi, E. Magliaro & C. Perini, *LQG propagator from the new spin foams*, Nucl. Phys. B 822, 245–269 (2009) | DOI `10.1016/j.nuclphysb.2009.07.016`; arXiv `0905.4082` | `SOURCE_BOUND` | Lowest vertex-expansion / leading large-spin metric-correlation calculation compared with perturbative graviton behavior; not complete low-energy limit. |
| `SRC-FCP15-LOOP-STEINHAUS-2020` | `FW-LOOP` / `L4/K7/K8` coarse graining and RG | S. Steinhaus, *Coarse Graining Spin Foam Quantum Gravity—A Review*, Front. Phys. 8, 295 (2020) | DOI `10.3389/fphy.2020.00295`; arXiv `2007.01315` | `SOURCE_BOUND` | Reviews background-independent boundary-data coarse graining; uniqueness, universality, full 4D coarse graining and continuum questions remain open. |
| `SRC-FCP15-LOOP-BCMR-2026` | `FW-LOOP` / `L4/K7/K8` current continuum-limit structure | M. Bruno, E. Colafranceschi, F. M. Mele & C. Rovelli, *The Structure of the Continuum Limit of Spin Foams*, Phys. Rev. D, accepted 5 Aug 2026 | DOI `10.1103/7493-9nb7`; arXiv `2603.16999` | `SOURCE_BOUND` | Current primary structural paper: strong-limit obstruction and weaker distributional/rigging-map construction under axioms; does not prove physical 4D EPRL continuum GR recovery. |
| `SRC-FCP15-LOOP-GHM-2012` | `FW-LOOP` / `L6/K10` phenomenology boundary | F. Girelli, F. Hinterleitner & S. A. Major, *Loop Quantum Gravity Phenomenology: Linking Loops to Observational Physics*, SIGMA 8, 098 (2012) | DOI `10.3842/SIGMA.2012.098`; arXiv `1210.1485` | `SOURCE_BOUND` | Reviews proposed/constrained Planck-scale phenomenology and explicitly preserves the incomplete link from fundamental LQG to specific phenomenological models; not a direct framework empirical record. |

### FCP-19 — Asymptotic Safety source layer

| Source ID | Framework / role | Authority | Location | Status | Notes |
|---|---|---|---|---|---|
| `SRC-FCP19-AS-WEINBERG-1979` | `FW-AS` / `AS-H` foundational hypothesis | S. Weinberg, *Ultraviolet Divergences in Quantum Theories of Gravitation*, in *General Relativity: An Einstein Centenary Survey* (1979), pp. 790–831 | Cambridge University Press; ISBN `0-521-22285-0` | `SOURCE_BOUND` | Foundational fixed-point / finite-relevant-direction conception; definition is not evidence that gravity realizes the hypothesis. |
| `SRC-FCP19-AS-REUTER-1998` | `FW-AS` / `AS-RG`, `AS-TRUNC` | M. Reuter, *Nonperturbative evolution equation for quantum gravity*, Phys. Rev. D 57, 971 (1998) | DOI `10.1103/PhysRevD.57.971`; arXiv `hep-th/9605030` | `SOURCE_BOUND` | Effective-average-action functional flow and simple truncation; exact-form flow machinery does not make the truncation solution exact. |
| `SRC-FCP19-AS-SOUMA-1999` | `FW-AS` / early fixed-point evidence | W. Souma, *Non-Trivial Ultraviolet Fixed Point in Quantum Gravity*, Prog. Theor. Phys. 102, 181–195 (1999) | DOI `10.1143/PTP.102.181`; arXiv `hep-th/9907027` | `SOURCE_BOUND` | Early d-dimensional fixed-point evidence reaching d=4; not complete theory-space control. |
| `SRC-FCP19-AS-LR-2002` | `FW-AS` / scheme robustness | O. Lauscher & M. Reuter, *Ultraviolet fixed point and generalized flow equation of quantum gravity*, Phys. Rev. D 65, 025013 (2002) | DOI `10.1103/PhysRevD.65.025013`; arXiv `hep-th/0108040` | `SOURCE_BOUND` | Einstein-Hilbert fixed-point and scheme-dependence study; robustness in the approximation is not exact scheme independence. |
| `SRC-FCP19-AS-CPR-2009` | `FW-AS` / enlarged truncations | A. Codello, R. Percacci & C. Rahmede, *Investigating the Ultraviolet Properties of Gravity with a Wilsonian Renormalization Group Equation*, Ann. Phys. 324, 414–469 (2009) | DOI `10.1016/j.aop.2008.08.008`; arXiv `0805.2909` | `SOURCE_BOUND` | Higher-derivative/polynomial-curvature and cutoff-scheme study; small relevant-direction count remains truncation scoped. |
| `SRC-FCP19-AS-FLNR-2016` | `FW-AS` / high-order `f(R)` evidence | K. Falls, D. F. Litim, K. Nikolakopoulos & C. Rahmede, *Further evidence for asymptotic safety of quantum gravity*, Phys. Rev. D 93, 104022 (2016) | DOI `10.1103/PhysRevD.93.104022`; arXiv `1410.4815` | `SOURCE_BOUND` | High polynomial order and bootstrap/convergence evidence; one operator family does not exhaust theory space. |
| `SRC-FCP19-AS-FKLR-2018` | `FW-AS` / beyond-Ricci-scalar evidence | K. G. Falls, C. R. King, D. F. Litim, K. Nikolakopoulos & C. Rahmede, *Asymptotic safety of quantum gravity beyond Ricci scalars*, Phys. Rev. D 97, 086006 (2018) | DOI `10.1103/PhysRevD.97.086006`; arXiv `1801.00162` | `SOURCE_BOUND` | Ricci-tensor invariants stabilize the studied fixed point; not complete operator-basis convergence. |
| `SRC-FCP19-AS-DBOPT-2018` | `FW-AS` / parametrization limitation | G. P. de Brito, N. Ohta, A. D. Pereira, A. A. Tomaz & M. Yamada, *Asymptotic safety and field parametrization dependence in the f(R) truncation*, Phys. Rev. D 98, 026027 (2018) | DOI `10.1103/PhysRevD.98.026027`; arXiv `1805.09656` | `SOURCE_BOUND` | Parametrization can change fixed-point class/relevant-direction count; blocks exactification of truncation counts. |
| `SRC-FCP19-AS-MRS-2011` | `FW-AS` / Lorentzian truncation | E. Manrique, S. Rechenberger & F. Saueressig, *Asymptotically Safe Lorentzian Gravity*, Phys. Rev. Lett. 106, 251302 (2011) | DOI `10.1103/PhysRevLett.106.251302`; arXiv `1102.5012` | `SOURCE_BOUND` | Euclidean/Lorentzian fixed points in foliated Einstein-Hilbert approximation; not completed Lorentzian QG. |
| `SRC-FCP19-AS-SW-2025` | `FW-AS` / current Lorentzian signature robustness | F. Saueressig & J. Wang, *Foliated asymptotically safe gravity: Lorentzian signature fluctuations from the Wick rotation*, Phys. Rev. D 111, 106007 (2025) | DOI `10.1103/PhysRevD.111.106007`; arXiv `2501.03752` | `SOURCE_BOUND` | Euclidean/Lorentzian flow agreement for studied two-point Einstein-Hilbert setup; not full unitarity/causality completion. |
| `SRC-FCP19-AS-DEP-2014` | `FW-AS` / gravity-matter constraints | P. Donà, A. Eichhorn & R. Percacci, *Matter matters in asymptotically safe quantum gravity*, Phys. Rev. D 89, 084035 (2014) | DOI `10.1103/PhysRevD.89.084035`; arXiv `1311.2898` | `SOURCE_BOUND` | Approximation-dependent matter bounds and SM compatibility; compatibility is not derivation. |
| `SRC-FCP19-AS-MPR-2016` | `FW-AS` / dynamical gravity-matter robustness | J. Meibohm, J. M. Pawlowski & M. Reichert, *Asymptotic safety of gravity-matter systems*, Phys. Rev. D 93, 084035 (2016) | DOI `10.1103/PhysRevD.93.084035`; arXiv `1510.07018` | `SOURCE_BOUND` | Dynamical setup finds broad matter stability within validity bounds; retained in tension with background-style matter restrictions. |
| `SRC-FCP19-AS-NR-2006` | `FW-AS` / foundational review and continuum criteria | M. Niedermaier & M. Reuter, *The Asymptotic Safety Scenario in Quantum Gravity*, Living Rev. Relativ. 9, 5 (2006) | DOI `10.12942/lrr-2006-5`; arXiv `gr-qc/0610018` | `SOURCE_BOUND` | Review explicitly separates fixed-point evidence, global trajectories, and stability/positivity/unitarity requirements. |
| `SRC-FCP19-AS-CRIT-2020` | `FW-AS` / critical modern synthesis | A. Bonanno et al., *Critical Reflections on Asymptotically Safe Gravity*, Front. Phys. 8, 269 (2020) | DOI `10.3389/fphy.2020.00269`; arXiv `2004.06810` | `SOURCE_BOUND` | Critical review of progress and unresolved technical/conceptual issues; prevents completion-by-consensus. |
| `SRC-FCP19-AS-PR-2024` | `FW-AS` / dynamical-fluctuation synthesis | J. M. Pawlowski & M. Reichert, *Quantum Gravity from Dynamical Metric Fluctuations*, in *Handbook of Quantum Gravity* (2024) | DOI `10.1007/978-981-19-3079-9_17-1`; arXiv `2309.10785` | `SOURCE_BOUND` | Reviews background/fluctuation separation, vertices, UV–IR trajectories and Lorentzian spectral work; not an exact fixed-point theorem. |
| `SRC-FCP19-AS-EICHHORN-2026` | `FW-AS` / current synthesis and phenomenology boundary | A. Eichhorn, *Asymptotically safe quantum gravity and its phenomenology — a review* (2026) | arXiv `2606.21522` | `SOURCE_BOUND_REVIEW_PREPRINT` | Current synthesis reports robust Euclidean evidence and advancing matter/Lorentzian/phenomenology work; review-level status judgments are not independent theorem authority. |
| `SRC-FCP19-AS-GRS-2019` | `FW-AS` / scales, trajectories and predictivity | G. Gubitosi, C. Ripken & F. Saueressig, *Scales and Hierarchies in Asymptotically Safe Quantum Gravity: A Review*, Found. Phys. 49, 972–990 (2019) | DOI `10.1007/s10701-019-00263-1`; arXiv `1901.01731` | `SOURCE_BOUND` | Reviews finite-critical-surface predictivity and selected realistic trajectories; observed low-energy parameters remain calibration where used. |
| `SRC-FCP19-AS-PLATANIA-2024` | `FW-AS` / black-hole phenomenology boundary | A. Platania, *Black Holes in Asymptotically Safe Gravity*, in *Handbook of Quantum Gravity* (2024), pp. 1031–1095 | DOI `10.1007/978-981-99-7681-2_24`; arXiv `2302.04272` | `SOURCE_BOUND` | Reviews RG-improved models, ambiguities and first-principles efforts; optional black-hole phenomenology is not a mandatory base-framework prediction. |

## FCP-1 source-window note

`FCP-1` uses the null records above as a bounded baseline retrieved/checked on 2026-08-24. PDG is a living annual review; future FCP tasks must not silently substitute later editions into `FCP-1` without a versioned update.

## FCP-2 provenance note

`FCP-2` adds no new external scientific source claims. It freezes comparison coordinates and decomposes the source-bound FCP-1 null baseline through those coordinates. Its internal artifacts are bound above by exact immutable commit/blob identifiers and must not be treated as independent empirical/theoretical authority.

## FCP-3 provenance note

`FCP-3` source-binds Reduced NFC from the noncanonical continuity record at `SRC-NFC-RED-001` and compares it with the already source-bound null baseline under byte-frozen FCP-2 rules. No older NFC-source excursion was required, no full NFC canon was imported, and no new external null source was added. Internal FCP-3 artifacts are provenance records, not independent scientific authorities.

## FCP-4 source-window note

`FCP-4` freezes the AQFT/GPTOPT/CQM source window at **2026-08-24**. It adds 15 authoritative external source records: 7 foundational/primary framework sources, 7 review/synthesis sources, and 1 specialized primary physical-realization source. It adds **zero independent framework-level empirical source records**. Reproduction of standard QM/QFT empirical results is treated as inherited model evidence unless a framework-specific discriminator is separately source-bound.

No source in FCP-4 authorizes cross-framework convergence credit.

## FCP-7 source-window note

FCP-7 adds exactly one bounded empirical GPT source, `SRC-FCP7-GPT-MAZUREK-2021`, to answer its K10-B theory-space constraint question. The source's exact interpretation remains frozen by `frameworks/gpt_opt/FCP7_GPTOPT_EMPIRICAL_SOURCE_SUPPLEMENT_0_1_0.md`.

## FCP-8 source-window note

FCP-8 adds **6 theoretical primary/current-status sources and 1 empirical principle-test source**. It reuses the FCP-7 Mazurek empirical source. No FCP-8 source authorizes a claim that the complete GPTOPT space is experimentally excluded or that one quantum-boundary principle is uniquely selected by nature.

## FCP-9 source-window note

FCP-9 adds **16** external CST/order records, checked on **2026-08-24**: **14 foundational/primary**, **2 modern review/synthesis**, **4 dedicated dynamics**, and **3 direct empirical/observational constraint** records. Scientific-role categories overlap. The corpus source-binds causal set theory proper as a controlled subset of the over-broad `FW-CAUSAL` umbrella; it does not source-bind every causal/order-theoretic approach and authorizes no cross-framework convergence credit.

## FCP-10 taxonomy/source note

FCP-10 external source additions: **0**. FCP-10 taxonomy-only supplemental source additions: **0**. The FCP-9 16-source corpus remains the authoritative external source window for canonical `FW-CST`. FCP-10 changes framework identity/provenance only: historical `FW-CAUSAL` is superseded, `FW-CST` is source-bound and ready, and the unspecified adjacent causal/order remainder is deferred pending separate source intake.

## FCP-15 source-window note

FCP-15 adds exactly **13** external `FW-LOOP` works, checked on **2026-08-24**: **7 foundational/primary** and **6 review/synthesis** works, including **1 phenomenology-boundary review**. It adds **zero direct empirical/observational source records**. The corpus source-binds one loop-quantum-gravity family with persistent internal `LOOP-CANON` and `LOOP-COVAR` labels, partial/conditional continuum results, and no framework-level empirical discriminator. It performs no cross-framework E1–E5 comparison.

## FCP-19 source-window note

FCP-19 adds exactly **18** external `FW-AS` works, checked on **2026-08-24**: **12 foundational/primary** and **6 review/synthesis** records, including **2 phenomenology-boundary review roles** and **zero direct empirical/observational source records**. The source window deliberately retains implementation-sensitive evidence on field parametrization and gravity–matter restrictions rather than deciding by source count. It source-binds one coherent Asymptotic Safety framework, distinguishes the UV fixed-point hypothesis from functional-RG implementations/truncations, and performs no cross-framework E1–E5 comparison.

## Branch-retention rule

Scientific provenance must bind exact commits/blobs rather than rely on mutable branch names. A historical research branch may therefore be retired after its exact commit is reachable from the accepted `main` history and all material internal references identify immutable provenance.

## Pending source intake

Source-bound and ready:

- `FW-AQFT`;
- `FW-GPTOPT`;
- `FW-CQM`;
- `FW-CST`;
- `FW-LOOP`;
- `FW-AS`.

Historical superseded umbrella:

- `FW-CAUSAL` — retained for provenance; superseded by the FCP-10 framework split.

Still pending/deferred source intake:

- adjacent causal/order-theoretic approaches distinct from CST, with no single placeholder framework ID admitted;
- tensor/information approaches;
- string/holography;
- broader `FW-CAT` categorical/process/topos/effectus approaches.

## Provenance requirements for future entries

Each source entry should record, where applicable:

- exact title and authors/institution;
- version/date;
- DOI/arXiv/ISBN/official URL or repository ref;
- file/commit/blob hash when a frozen artifact is used;
- source role: primary definition, theorem source, empirical record, review, or diagnostic;
- framework scope;
- supersession relation;
- known limitations.

No source should be treated as authoritative merely because it is convenient or agrees with an expected conclusion.