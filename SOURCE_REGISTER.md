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
| `SRC-NFC-RED-001` | Reduced NFC handoff | Noncanonical research continuity derived from separately frozen NFC canon | repo `etblink/Nested-Fibrational-Cosmology`; branch `research/foundational-reduction-continuity`; file `research/NFC_FOUNDATIONAL_REDUCTION_CONTINUITY.md` | `REGISTERED_POINTER_ONLY` | NFC canon is **not imported** into FCP. This pointer is the controlling handoff to the reduction work. |
| `SRC-NULL-PDG-2026-ROOT` | Null competitor / particle-physics master review | Particle Data Group, F. Takahashi et al., *Review of Particle Physics* (2026), Int. J. Mod. Phys. A 41, 2630011 (2026) | `https://pdg.lbl.gov/2026/` | `SOURCE_BOUND` | Current 2026 PDG edition used as the source spine for the bounded null baseline. |
| `SRC-NULL-PDG-EW-2026` | Null competitor / electroweak SM and QFT renormalization | PDG 2026, J. de Blas, S. Dittmaier, R. Kogler, *Electroweak Model and Constraints on New Physics*, revised May 2026 | `https://pdg.lbl.gov/2026/reviews/rpp2026-rev-standard-model.pdf` | `SOURCE_BOUND` | Defines electroweak SM as renormalizable `SU(2)×U(1)` gauge QFT; covers renormalization, input schemes, precision fits. |
| `SRC-NULL-PDG-QCD-2026` | Null competitor / strong interactions | PDG 2026, J. Huston, K. Rabbertz, G. Zanderighi, *Quantum Chromodynamics*, revised Aug. 2025 | `https://pdg.lbl.gov/2026/reviews/rpp2026-rev-qcd.pdf` | `SOURCE_BOUND` | Defines QCD as the `SU(3)` component of the SM; covers running coupling and experimental tests. |
| `SRC-NULL-PDG-HIGGS-2026` | Null competitor / Higgs sector | PDG 2026, M. Cepeda, L. Reina, P. Savard, *Status of Higgs Boson Physics*, revised Aug. 2025 | `https://pdg.lbl.gov/2026/reviews/rpp2026-rev-higgs-boson.pdf` | `SOURCE_BOUND` | Used for current Higgs-coupling and EWSB empirical baseline. |
| `SRC-NULL-PDG-NU-2026` | Null competitor / neutrino boundary | PDG 2026, M.C. Gonzalez-Garcia, R. Wendell, *Neutrino Masses, Mixing, and Oscillations*, revised Mar. 2026 | `https://pdg.lbl.gov/2026/reviews/rpp2026-rev-neutrino-mixing.pdf` | `SOURCE_BOUND` | Explicitly separates minimal-SM massless neutrinos from extensions required for massive neutrinos. |
| `SRC-NULL-PDG-GR-2026` | Null competitor / GR definition and experimental tests | PDG 2026, T. Damour, *Experimental Tests of Gravitational Theory*, revised Aug. 2025 | `https://pdg.lbl.gov/2026/reviews/rpp2026-rev-gravity-tests.pdf` | `SOURCE_BOUND` | Defines classical GR action/coupling at review scope and summarizes equivalence-principle, pulsar and GW tests. |
| `SRC-NULL-PDG-DM-2026` | Null competitor / dark-matter frontier | PDG 2026, L. Baudis, S. Profumo, *Dark Matter*, revised Aug. 2025 | `https://pdg.lbl.gov/2026/reviews/rpp2026-rev-dark-matter.pdf` | `SOURCE_BOUND` | Used only to establish that the dominant dark-matter microscopic composition remains unknown at current source scope. |
| `SRC-NULL-PDG-DE-2026` | Null competitor / dark-energy frontier | PDG 2026, D.H. Weinberg, M. White, *Dark Energy*, revised Aug. 2025 | `https://pdg.lbl.gov/2026/reviews/rpp2026-rev-dark-energy.pdf` | `SOURCE_BOUND` | Used to delimit cosmological-constant/dark-energy explanatory scope. |
| `SRC-NULL-LVK-GWTC5-TGR-2026` | Null competitor / latest strong-field GR test | LIGO Scientific Collaboration, Virgo Collaboration, KAGRA Collaboration, *GWTC-5.0: Tests of General Relativity*, public record July 2026, LIGO-P2500781 | `https://dcc.ligo.org/LIGO-P2500781/public` | `SOURCE_BOUND` | Current 2026 collaboration-level source for O4b/GWTC-5 GR tests; cumulative test sample includes 168 confident events. |

## FCP-1 source-window note

`FCP-1` uses the source records above as a bounded baseline retrieved/checked on 2026-08-24. PDG is a living annual review; future FCP tasks must not silently substitute later editions into `FCP-1` without a versioned update.

## Pending source intake

No authoritative source corpus has yet been bound for reduced NFC inside FCP beyond the noncanonical handoff pointer, nor for operational/algebraic quantum approaches, causal-set/order approaches, loop/spinfoam approaches, tensor/information approaches, asymptotic safety, string/holography, or categorical/process approaches.

## Provenance requirements for future entries

Each source entry should record, where applicable:

- exact title and authors/institution;
- version/date;
- DOI/arXiv/ISBN/official URL or repository ref;
- file/commit hash when a frozen artifact is used;
- source role: primary definition, theorem source, empirical record, review, or diagnostic;
- framework scope;
- supersession relation;
- known limitations.

No source should be treated as authoritative merely because it is convenient or agrees with an expected conclusion.
