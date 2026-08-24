# FCP Claim Ledger

## Current state

Scientific claim entries are now permitted following completion of the governance initialization. `FCP-1` adds the first bounded source-qualified rows for the null competitor only. **No cross-framework score or verdict is inferred from these rows.**

## Claim record schema

Future claims should use the following fields:

| Field | Requirement |
|---|---|
| `claim_id` | stable FCP identifier |
| `title` | short descriptive name |
| `framework_ids` | one or more IDs from `FRAMEWORK_REGISTER.md` |
| `source_ids` | exact supporting source records |
| `claim_text` | precise proposition at declared scope |
| `assumptions` | complete material hypotheses |
| `classification` | exactly one primary allowed classification |
| `canonicity_level` | 1–5 where applicable |
| `weaker_framework_test` | result of Layer 10 |
| `physical_bridge` | explicit bridge or `NONE` |
| `empirical_binding` | explicit evidence/comparator or `NONE` |
| `falsification_condition` | what would defeat or downgrade the claim |
| `countermodels` | references or `NONE` |
| `scope_ceiling` | strongest permitted interpretation |
| `status` | `DRAFT`, `ACCEPTED`, `SUPERSEDED`, or `WITHDRAWN` |
| `supersedes` | prior claim IDs or `NONE` |
| `notes` | optional bounded notes |

## Primary classifications

- `SOURCE_DERIVED`
- `GENERIC_MATHEMATICS`
- `VALID_CONDITIONAL`
- `MODEL_CHOICE`
- `PHYSICAL_BRIDGE`
- `EMPIRICAL`
- `NONFORCED`
- `COUNTERMODELED`
- `OPEN`

---

# FCP-1 claim entries

## FCP1-NULL-001 — Standard Model gauge-QFT structure

- `framework_ids`: `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-NULL-PDG-EW-2026`, `SRC-NULL-PDG-QCD-2026`, `SRC-NULL-PDG-NU-2026`
- `claim_text`: At the bounded null-baseline scope, the Standard Model particle sector is defined as a renormalizable gauge quantum field theory with strong `SU(3)_C` and electroweak `SU(2)_L × U(1)_Y` gauge structure, the established fermion representations/families, and the minimal Higgs sector.
- `assumptions`: the Standard Model source definition and its declared field content.
- `classification`: `SOURCE_DERIVED`
- `canonicity_level`: `2` relative to the declared SM model; no deeper physical canonicity claimed.
- `weaker_framework_test`: gauge-QFT structure in general is generic; the specific gauge group/matter content is model-specific rather than mathematically inevitable.
- `physical_bridge`: scattering, decay, mass and coupling observables as defined in PDG particle-physics practice.
- `empirical_binding`: `NONE` for this definitional row; empirical support is recorded separately.
- `falsification_condition`: source-definition mismatch would invalidate this row; empirical failure of the SM would delimit the model but need not invalidate gauge QFT generally.
- `countermodels`: `NONE`
- `scope_ceiling`: definition/structure of the SM, not derivation of why nature chose this structure.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP1-NULL-002 — GR supplies actual classical dynamics

- `framework_ids`: `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-NULL-PDG-GR-2026`
- `claim_text`: Given the Einstein-Hilbert gravitational action, universal/minimal metric coupling, and suitable matter/initial-boundary data, GR yields Einstein's field equations and therefore an actual classical dynamical law rather than merely a set of permitted transformations.
- `assumptions`: GR action/coupling postulates and mathematically suitable data.
- `classification`: `SOURCE_DERIVED`
- `canonicity_level`: `2` relative to the declared GR model.
- `weaker_framework_test`: variational field equations are generic; the Einstein dynamics and universal metric coupling are the specific content.
- `physical_bridge`: metric/connection to timing, free fall, orbital motion, redshift and gravitational-wave observables.
- `empirical_binding`: recorded separately in `FCP1-NULL-005`.
- `falsification_condition`: mathematical nonderivability from the stated action or reproducible empirical failure at the declared regime.
- `countermodels`: `NONE`
- `scope_ceiling`: classical GR dynamics in its tested/modelled domain; no quantum-gravity completion implied.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP1-NULL-003 — Standard Model parameter values are not all internally predicted

- `framework_ids`: `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-NULL-PDG-EW-2026`, `SRC-NULL-PDG-QCD-2026`
- `claim_text`: Precision SM predictions require empirical input parameters and a declared renormalization/input scheme; the framework derives many relations among observables conditional on these inputs but does not internally derive every observed numerical parameter from deeper principles.
- `assumptions`: standard perturbative SM/QFT use of renormalized parameters.
- `classification`: `MODEL_CHOICE`
- `canonicity_level`: `N/A`
- `weaker_framework_test`: parameter fitting/input selection is common to many physical models.
- `physical_bridge`: renormalization conditions tied to measurable masses, decay widths, cross sections and couplings.
- `empirical_binding`: PDG electroweak/QCD input schemes and global fits.
- `falsification_condition`: a source-derived theorem predicting all listed independent inputs would supersede this row.
- `countermodels`: `NONE`
- `scope_ceiling`: parameter-origin underdetermination; does not imply that the conditional predictions lack empirical content.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP1-NULL-004 — Particle-sector precision success

- `framework_ids`: `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-NULL-PDG-EW-2026`, `SRC-NULL-PDG-QCD-2026`, `SRC-NULL-PDG-HIGGS-2026`
- `claim_text`: At the FCP-1 source window, electroweak precision observables, QCD running/coupling determinations, and measured Higgs interaction patterns show quantitative consistency with Standard Model predictions at their stated uncertainties and tested scopes.
- `assumptions`: source-qualified experimental inputs, theoretical calculations and uncertainty models used in the cited reviews.
- `classification`: `EMPIRICAL`
- `canonicity_level`: `5` only in the sense of empirical selection among tested alternatives at those observables; no foundational uniqueness inferred.
- `weaker_framework_test`: generic gauge theory/renormalization alone does not reproduce these specific quantitative agreements.
- `physical_bridge`: collider/hadronic cross sections, widths, asymmetries, masses and coupling-sensitive rates.
- `empirical_binding`: PDG 2026 electroweak global fit; PDG QCD running/coupling synthesis; PDG Higgs measurements.
- `falsification_condition`: reproducible statistically/systematically qualified deviations inconsistent with all allowed SM parameter values/theory uncertainties at the declared scope.
- `countermodels`: `NONE`
- `scope_ceiling`: empirical success of the specific particle model over tested observables; not proof of UV or ontological completeness.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP1-NULL-005 — GR precision and strong-field empirical success

- `framework_ids`: `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-NULL-PDG-GR-2026`, `SRC-NULL-LVK-GWTC5-TGR-2026`
- `claim_text`: GR is consistent with the bounded source set's precision weak-field, equivalence-principle, binary-pulsar and gravitational-wave tests, including the current GWTC-5 test suite at the stated measurement/model uncertainties.
- `assumptions`: calibration, waveform/environment/systematics and statistical models declared by the empirical sources.
- `classification`: `EMPIRICAL`
- `canonicity_level`: `5` only at tested observables/regimes.
- `weaker_framework_test`: generic metric/variational gravity does not automatically reproduce the tested Einstein predictions.
- `physical_bridge`: timing, free fall, redshift and gravitational-wave signal observables.
- `empirical_binding`: PDG 2026 gravitational tests; LVK GWTC-5 TGR 2026.
- `falsification_condition`: reproducible deviations from Einstein predictions beyond qualified uncertainty/systematic allowances.
- `countermodels`: `NONE`
- `scope_ceiling`: strong empirical support in tested regimes, not proof of exactness at arbitrary curvature, energy or quantum scale.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP1-NULL-006 — Minimal SM neutrino sector is incomplete

- `framework_ids`: `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-NULL-PDG-EW-2026`, `SRC-NULL-PDG-NU-2026`
- `claim_text`: The minimal renormalizable Standard Model field content described in the bounded sources gives massless neutrinos, while observed flavour oscillations require nonzero mass-squared differences and mixing; therefore the minimal SM particle model requires extension in the neutrino sector.
- `assumptions`: minimal SM field content and standard interpretation of oscillation data.
- `classification`: `EMPIRICAL`
- `canonicity_level`: `5` at the empirical inference that the minimal massless-neutrino model is insufficient.
- `weaker_framework_test`: the conclusion is specific to the mismatch between the minimal SM and neutrino data; it does not falsify QFT in general.
- `physical_bridge`: measured flavour-transition probabilities/event spectra.
- `empirical_binding`: PDG 2026 neutrino oscillation synthesis.
- `falsification_condition`: would require overturning established oscillation evidence or showing the cited minimal SM actually generates the required masses without extension.
- `countermodels`: empirical neutrino oscillation data function as the negative witness to minimal-SM completeness.
- `scope_ceiling`: incompleteness of the minimal SM; no unique neutrino-mass mechanism selected.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP1-NULL-007 — Dark-matter microscopic identity remains open

- `framework_ids`: `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-NULL-PDG-DM-2026`
- `claim_text`: Under the standard GR/cosmological interpretation represented in the bounded source, most of the non-baryonic dark-matter component is inferred gravitationally but its fundamental microscopic makeup remains unknown.
- `assumptions`: standard gravitational/cosmological interpretation at the cited source scope.
- `classification`: `OPEN`
- `canonicity_level`: `N/A`
- `weaker_framework_test`: the open problem is empirical/physical rather than distinctive mathematics.
- `physical_bridge`: gravitational dynamics, lensing, structure formation and cosmological abundance observables.
- `empirical_binding`: PDG 2026 dark-matter review.
- `falsification_condition`: a source-qualified microscopic identification accounting for the dominant component would supersede the open status.
- `countermodels`: `NONE`
- `scope_ceiling`: identifies a frontier; gives no positive credit to any specific dark-matter theory.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP1-NULL-008 — Dark-energy/cosmological-constant explanation remains open

- `framework_ids`: `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-NULL-PDG-DE-2026`
- `claim_text`: Cosmic acceleration is empirically established and a cosmological constant provides the simplest standard description, but the physical explanation of its observed small magnitude or the possibility of an alternative origin remains open at this baseline.
- `assumptions`: standard cosmological use of GR and the observational synthesis in the cited review.
- `classification`: `OPEN`
- `canonicity_level`: `N/A`
- `weaker_framework_test`: accelerated expansion as an empirical target is independent of any one deeper framework.
- `physical_bridge`: expansion-history, CMB and large-scale-structure observables at the review scope.
- `empirical_binding`: PDG 2026 dark-energy review.
- `falsification_condition`: a uniquely source/empirically selected physical mechanism with the required magnitude would supersede the open status.
- `countermodels`: `NONE`
- `scope_ceiling`: explanatory frontier, not evidence for a specific alternative.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP1-NULL-009 — No established unified UV-complete quantum-gravity dynamics in the bounded null baseline

- `framework_ids`: `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-NULL-PDG-GR-2026`, `SRC-NULL-PDG-EW-2026`, `SRC-NULL-PDG-QCD-2026`
- `claim_text`: The bounded null baseline contains classical Einstein gravity and quantum-field-theoretic matter dynamics but does not itself supply one source-qualified UV-complete dynamical theory unifying quantum fields with dynamical spacetime at arbitrary scales.
- `assumptions`: FCP-1's deliberately bounded null definition and source set.
- `classification`: `OPEN`
- `canonicity_level`: `N/A`
- `weaker_framework_test`: this is a frontier/scope statement, not positive evidence for any proposed quantum-gravity framework.
- `physical_bridge`: `NONE` beyond the established separate-domain bridges.
- `empirical_binding`: `NONE` as a direct quantum-gravity observation.
- `falsification_condition`: integration of a source-qualified, empirically established UV-complete quantum-gravity theory into the null baseline would supersede this row.
- `countermodels`: `NONE`
- `scope_ceiling`: absence of a completed unification in the bounded baseline; no claim that a specific style of UV completion is required.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP1-NULL-010 — Generic formal machinery receives no framework-specific convergence credit by itself

- `framework_ids`: `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-NULL-PDG-EW-2026`, `SRC-NULL-PDG-QCD-2026`, `SRC-NULL-PDG-GR-2026`
- `claim_text`: Action principles, gauge redundancy, representation theory, perturbation theory, renormalization-group flow, effective-theory reasoning and related generic mathematics are not by themselves specific enough to count as distinctive evidence for the null competitor in later foundational convergence scoring.
- `assumptions`: FCP Layer-10 weaker-framework rule.
- `classification`: `GENERIC_MATHEMATICS`
- `canonicity_level`: `N/A`
- `weaker_framework_test`: PASSES — these structures occur in many substantially weaker or different frameworks.
- `physical_bridge`: `NONE` required for the generic classification.
- `empirical_binding`: specific quantitative instantiations are scored separately in empirical rows.
- `falsification_condition`: a proof that a listed structure uniquely implies the full quantitative null competitor would require reclassification.
- `countermodels`: existence of alternative gauge/variational/renormalizable theories is sufficient to block uniqueness.
- `scope_ceiling`: generic structural tool only.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

---

## Rules

- One primary classification per claim.
- A claim may not exceed the authority of its sources and bridges.
- Negative and nonforcing results remain preserved when later work supersedes a stronger claim.
- No framework-level score is inferred automatically from individual claim rows.
- Cross-framework convergence credit may not be assigned until the comparator has independently completed the same protocol.
