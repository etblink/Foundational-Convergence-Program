# FCP Claim Ledger

## Current state

Scientific claim entries began with FCP-1. FCP-3 adds the first bounded cross-framework claims under preregistered FCP-2 coordinates. **No overall numerical framework score or winner is inferred from these rows.**

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

# FCP-3 cross-framework claim entries

## FCP3-NFC-001 — Reduced-NFC comparative object is source-bound to the reduction

- `framework_ids`: `FW-NFC-RED`
- `source_ids`: `SRC-NFC-RED-001`, `SRC-FCP3-NFC-BIND-001`
- `claim_text`: FCP-3 admits Reduced NFC only as the reduced relational operational object `K_red=(C,T)` plus the bounded R1–R10 survivor set and six survivor questions; discarded historical NFC claims are excluded.
- `assumptions`: FCP-3 provenance firewall and the noncanonical reduction continuity record.
- `classification`: `SOURCE_DERIVED`
- `canonicity_level`: `2` as a comparative reduction record; no physical canonicity implied.
- `weaker_framework_test`: not applicable to the provenance identity itself.
- `physical_bridge`: `NONE`
- `empirical_binding`: `NONE`
- `falsification_condition`: a documented error in the reduction provenance or an explicit superseding reduction would require revision.
- `countermodels`: `NONE`
- `scope_ceiling`: comparative identity of Reduced NFC only, not renewed NFC canon or ToE status.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP3-CROSS-001 — K2 quotient/equivalence recurrence is generic

- `framework_ids`: `FW-NFC-RED`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP3-NFC-BIND-001`, `SRC-FCP2-NULL-DECOMP-001`, `SRC-FCP3-COMP-001`
- `claim_text`: Reduced-NFC observational equivalence and null-baseline gauge/diffeomorphism redundancy share generic equivalence/quotient machinery, but FCP-3 does not establish that they encode the same physical equivalence relation.
- `assumptions`: frozen K2 and E1–E5 rules.
- `classification`: `GENERIC_MATHEMATICS`
- `canonicity_level`: NFC `C2` relative to `T`; null `C2–C3` relative to component theory.
- `weaker_framework_test`: PASSES — equivalence relations and quotients occur in substantially weaker frameworks.
- `physical_bridge`: `NONE` connecting the two equivalence semantics.
- `empirical_binding`: null redundancy has domain-level empirical support; no cross-framework empirical equivalence.
- `falsification_condition`: an explicit E1/E2/E3/E4 correspondence preserving physical observables could upgrade the claim.
- `countermodels`: generic existence of inequivalent physical theories using quotient structures blocks uniqueness.
- `scope_ceiling`: `K2`; strongest correspondence `E5`; convergence `WEAK`; zero framework-specific credit.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`
- `notes`: NFC M1 `MODEL_CHOICE/SOURCE_DERIVED`; null M1 mainly `SOURCE_DERIVED` after theory declaration.

## FCP3-CROSS-002 — K3 transformation recurrence is generic

- `framework_ids`: `FW-NFC-RED`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP3-NFC-BIND-001`, `SRC-FCP2-NULL-DECOMP-001`, `SRC-FCP3-COMP-001`
- `claim_text`: Both frameworks organize licensed/composable transformations, but no structure-preserving map identifies Reduced-NFC admissible processes with the null baseline's heterogeneous gauge, symmetry, interaction, intervention, representation, and RG transformations.
- `assumptions`: frozen K3 distinction between transformation classes and dynamics.
- `classification`: `GENERIC_MATHEMATICS`
- `canonicity_level`: both at most `C2–C3` within declared frameworks.
- `weaker_framework_test`: PASSES — categories/monoids of maps are generic.
- `physical_bridge`: no cross-framework map.
- `empirical_binding`: `NONE` for the generic cross-framework structure.
- `falsification_condition`: explicit E1/E2/E3 map preserving material transformation roles could upgrade.
- `countermodels`: many mathematical systems have composable transformations without shared physics.
- `scope_ceiling`: `K3`; `E5`; `WEAK_CONVERGENCE`; zero framework-specific credit.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP3-CROSS-003 — K5 formal observable-family recurrence is generic

- `framework_ids`: `FW-NFC-RED`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP3-NFC-BIND-001`, `SRC-FCP2-NULL-DECOMP-001`, `SRC-FCP3-COMP-001`
- `claim_text`: Reduced NFC and the null baseline both possess formal observable/test structures, but Reduced NFC does not presently match the null baseline's calibrated measurement interface and no cross-framework observable equivalence is established.
- `assumptions`: frozen K5 separation of formal observables, physical interpretation, calibration, and exhaustion.
- `classification`: `GENERIC_MATHEMATICS`
- `canonicity_level`: NFC `C2` relative to `T`; null formal structures `C2–C3`, tested observables can reach `C5`.
- `weaker_framework_test`: PASSES — formal observable families are generic.
- `physical_bridge`: absent across frameworks; null has its own calibrated bridges.
- `empirical_binding`: none for cross-framework equivalence.
- `falsification_condition`: a source-bound E2/E3/E4 observable map with preserved calibration could upgrade.
- `countermodels`: formal observation languages can share algebraic form while measuring different physical quantities.
- `scope_ceiling`: `K5`; `E5`; `WEAK_CONVERGENCE` only at formal level.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP3-CROSS-004 — K8 local-to-global recurrence is generic

- `framework_ids`: `FW-NFC-RED`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP3-NFC-BIND-001`, `SRC-FCP2-NULL-DECOMP-001`, `SRC-FCP3-COMP-001`
- `claim_text`: Both sides encounter local-to-global consistency burdens, but FCP-3 finds no shared non-generic obstruction invariant or E1–E4 correspondence; the common content is generic globalization logic.
- `assumptions`: frozen K8 and source-bound reduced/null structures.
- `classification`: `GENERIC_MATHEMATICS`
- `canonicity_level`: mostly `C2–C3` relative to supplied structures.
- `weaker_framework_test`: PASSES — patching/globalization problems are widespread across mathematics and physics.
- `physical_bridge`: null has specific physical instances; no cross-framework physical bridge.
- `empirical_binding`: `NONE` for the generic commonality.
- `falsification_condition`: isolation of a specific independently derived shared obstruction with E1–E3/E4 support would upgrade.
- `countermodels`: many inequivalent theories have local-to-global problems.
- `scope_ceiling`: `K8`; `E5`; `WEAK_CONVERGENCE`; remains a high-value open comparison question.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP3-CROSS-005 — K1/K6/K7 similarities do not exceed functional analogy

- `framework_ids`: `FW-NFC-RED`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP3-COMP-001`, `SRC-FCP3-CONV-001`
- `claim_text`: At current source scope, state-carrier role (K1), locality role (K6), and inter-description/scale role (K7) have no E1–E4 correspondence and remain functional analogies only.
- `assumptions`: frozen equivalence rules and absence of explicit structure-preserving carrier, causal, or RG maps.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` cross-framework.
- `weaker_framework_test`: role-level similarities occur in many unrelated frameworks.
- `physical_bridge`: `NONE`
- `empirical_binding`: `NONE`
- `falsification_condition`: an explicit E1/E2/E3/E4 correspondence for any key would supersede the relevant part.
- `countermodels`: generic modeling systems can have carriers/locality/scale descriptions without sharing physics.
- `scope_ceiling`: `E5_FUNCTIONAL_ANALOGY`; no convergence credit.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP3-CROSS-006 — Reduced NFC lacks a counterpart to null sector dynamics

- `framework_ids`: `FW-NFC-RED`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-NFC-RED-001`, `SRC-FCP3-NFC-BIND-001`, `SRC-FCP2-NULL-DECOMP-001`
- `claim_text`: Reduced NFC's admissible process structure does not presently supply a source-derived global physical-history selector comparable in evidentiary role to GR or SM/QFT sector dynamics.
- `assumptions`: frozen K4 distinction between allowed transformations and actual dynamics.
- `classification`: `NONFORCED`
- `canonicity_level`: NFC no physical canonicity; null sector laws framework-canonical with empirically tested consequences.
- `weaker_framework_test`: not a generic-similarity claim; it is a missing-selection result.
- `physical_bridge`: absent for Reduced-NFC foundational dynamics.
- `empirical_binding`: null sector dynamics bound by FCP-1; no NFC counterpart.
- `falsification_condition`: source-binding a Reduced-NFC deterministic/stochastic/variational history selector with physical realization would require revision.
- `countermodels`: multiple allowed NFC processes/selection policies recorded by the reduction.
- `scope_ceiling`: K4 divergence; does not imply null UV completeness or unique cosmic history.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP3-CROSS-007 — Reduced NFC lacks comparable calibrated physical realization

- `framework_ids`: `FW-NFC-RED`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-NFC-RED-001`, `SRC-FCP3-NFC-BIND-001`, `SRC-FCP2-NULL-DECOMP-001`
- `claim_text`: Reduced NFC presently lacks a general source-bound calibration bridge comparable to the null baseline's mappings from formal variables to measured time, length, masses, couplings, rates, spectra, gravitational-wave strain, and related observables.
- `assumptions`: frozen K9 requirements.
- `classification`: `NONFORCED`
- `canonicity_level`: NFC physical canonicity/calibration not established; null operational realizations can reach `C5` at tested scope.
- `weaker_framework_test`: not a generic-similarity claim.
- `physical_bridge`: absent on Reduced-NFC foundational side.
- `empirical_binding`: null calibration chains source-bound in FCP-1.
- `falsification_condition`: a source-qualified Reduced-NFC realization/calibration map satisfying K9 would supersede.
- `countermodels`: multiple historical branch realizations/choices prevent source selection.
- `scope_ceiling`: K9 divergence; no claim that null ontology is uniquely fundamental.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP3-CROSS-008 — No current Reduced-NFC empirical discriminator against null baseline

- `framework_ids`: `FW-NFC-RED`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-NFC-RED-001`, `SRC-FCP3-COMP-001`
- `claim_text`: At the FCP-3 source scope, no Reduced-NFC foundational prediction satisfies all frozen K10 requirements needed to discriminate it from the bounded GR+QFT+SM null baseline.
- `assumptions`: K10 comparator/observable/uncertainty/decision-rule/provenance requirements.
- `classification`: `OPEN`
- `canonicity_level`: `N/A`.
- `weaker_framework_test`: not applicable until a discriminator exists.
- `physical_bridge`: insufficient for a foundational discriminator.
- `empirical_binding`: `NONE` for Reduced NFC versus null.
- `falsification_condition`: a preregistered source-bound Reduced-NFC prediction satisfying K10 would supersede the open status.
- `countermodels`: `NONE`
- `scope_ceiling`: `NO_CURRENT_EMPIRICAL_DISCRIMINATOR`; not impossibility of future prediction.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP3-CROSS-009 — Strong/moderate NFC–null convergence is not established

- `framework_ids`: `FW-NFC-RED`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP3-COMP-001`, `SRC-FCP3-CONV-001`, `SRC-FCP3-DIV-001`
- `claim_text`: After applying frozen K1–K10, E1–E5, weaker-framework, selection, physical-bridge, and quantitative tests, FCP-3 establishes no strong or moderate NFC–null convergence candidate at current source scope.
- `assumptions`: FCP-2 comparison rules and FCP-3 source bindings.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` cross-framework.
- `weaker_framework_test`: the apparent correspondences that survive are generic or functional analogies.
- `physical_bridge`: no E1–E4 cross-framework physical bridge established.
- `empirical_binding`: no Reduced-NFC K10 discriminator.
- `falsification_condition`: a future source-qualified non-generic E1–E4 correspondence would supersede the relevant negative result.
- `countermodels`: genericization/vocabulary-erasure and differing physical semantics defeat the stronger inference.
- `scope_ceiling`: bounded negative/nonforcing result; not proof that future nontrivial convergence is impossible.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`
- `notes`: strong `0`; moderate `0`; weak/generic `4`; functional analogy only `3`; no correspondence `3`; material divergences `9`.

---

## Rules

- One primary classification per claim.
- A claim may not exceed the authority of its sources and bridges.
- Negative and nonforcing results remain preserved when later work supersedes a stronger claim.
- No framework-level numerical score is inferred automatically from individual claim rows.
- Cross-framework convergence credit requires the frozen FCP-2 correspondence and weaker-framework rules.
