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

## FCP-1 source-window note

`FCP-1` uses the null records above as a bounded baseline retrieved/checked on 2026-08-24. PDG is a living annual review; future FCP tasks must not silently substitute later editions into `FCP-1` without a versioned update.

## FCP-2 provenance note

`FCP-2` adds no new external scientific source claims. It freezes comparison coordinates and decomposes the source-bound FCP-1 null baseline through those coordinates. Its internal artifacts are bound above by exact immutable commit/blob identifiers and must not be treated as independent empirical/theoretical authority.

## FCP-3 provenance note

`FCP-3` source-binds Reduced NFC from the noncanonical continuity record at `SRC-NFC-RED-001` and compares it with the already source-bound null baseline under byte-frozen FCP-2 rules. No older NFC-source excursion was required, no full NFC canon was imported, and no new external null source was added. Internal FCP-3 artifacts are provenance records, not independent scientific authorities.

## Branch-retention rule

Scientific provenance must bind exact commits/blobs rather than rely on mutable branch names. A historical research branch may therefore be retired after its exact commit is reachable from the accepted `main` history and all material internal references identify immutable provenance.

## Pending source intake

No authoritative source corpus has yet been bound for operational/algebraic quantum approaches, causal-set/order approaches, loop/spinfoam approaches, tensor/information approaches, asymptotic safety, string/holography, or categorical/process approaches.

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
