# FCP Claim Ledger

## Current state

Scientific claim entries began with FCP-1. FCP-15L reconciled the durable central provenance spine through FCP-15, FCP-16 through FCP-18 appended the later controls/meta-audit, FCP-19 appended the Asymptotic Safety source-intake findings, FCP-20 appended the AS/null-GR subtraction/control result, and FCP-21 appends the Reduced-NFC/null-subtracted-AS controlled comparison without altering prior durable claim rows. The ledger now contains **62 durable rows through FCP-21**. **No overall numerical framework score or winner is inferred from these rows.**

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

# FCP-5 AQFT/null reformulation-extension claims

## FCP5-AQFT-001 — Core AQFT/QFT agreement is primarily a reformulation relation

- `framework_ids`: `FW-AQFT`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP4-AQFT-HK-1964`, `SRC-FCP4-AQFT-FV-2015`, `SRC-FCP2-NULL-DECOMP-001`
- `claim_text`: At the bounded source scope, core AQFT's abstract observable/state and representation-independent organization substantially reformulates and sharpens physical content already belonging to relativistic QFT rather than constituting an independently derived competing theory.
- `assumptions`: FCP-4 source boundary and frozen FCP-2 equivalence/convergence rules.
- `classification`: `SOURCE_DERIVED`
- `canonicity_level`: `C2–C3` relative to the AQFT/QFT formulations; no ontological uniqueness.
- `weaker_framework_test`: abstract operator algebras and representations are generic; the AQFT physical specialization is source-qualified but historically lineage-related to QFT.
- `physical_bridge`: same relativistic QFT domain in concrete realizations.
- `empirical_binding`: successful concrete QFT predictions are `EMPIRICALLY_INHERITED`, not independent AQFT selection.
- `falsification_condition`: a source-qualified AQFT structure with independent derivation and discriminating physical consequences could supersede the relevant reformulation classification.
- `countermodels`: empirically equivalent alternative QFT formulations block inference from formal representation to independent empirical theory.
- `scope_ceiling`: `REFORMULATION_RELATION`; no independent strong/moderate convergence credit.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP5-AQFT-002 — LCQFT supplies a source-qualified model-class extension but not quantum gravity

- `framework_ids`: `FW-AQFT`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP4-AQFT-BFV-2003`, `SRC-FCP4-AQFT-FV-2015`, `SRC-FCP2-NULL-DECOMP-001`
- `claim_text`: Locally covariant QFT extends fixed-background AQFT by organizing a theory functorially over globally hyperbolic spacetimes and admissible embeddings; this is additional structural/model-class content relative to the bounded null presentation, while Lorentzian metric/causal geometry remains supplied rather than derived.
- `assumptions`: LCQFT source category, functorial axioms and stated supplementary conditions.
- `classification`: `SOURCE_DERIVED`
- `canonicity_level`: `C2–C3` within LCQFT; no physical canonicity of the background category inferred.
- `weaker_framework_test`: category/functor mathematics is generic, but the physical specialization to locally covariant QFT is not exhausted by the generic shell.
- `physical_bridge`: QFT on supplied classical globally hyperbolic spacetimes.
- `empirical_binding`: inherited through concrete QFT models; no independent framework-level discriminator.
- `falsification_condition`: showing the bounded null baseline already source-binds an equivalent cross-background structure would downgrade the 'additional relative to bounded null' wording; deriving the metric from LCQFT would require new sources beyond this claim.
- `countermodels`: generic functors without QFT semantics defeat any claim that functoriality alone is physically distinctive.
- `scope_ceiling`: `MODEL_CLASS_EXTENSION`; explicitly **not quantum gravity** and not derivation of spacetime.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP5-AQFT-003 — AQFT encodes and sharpens locality; it does not derive causal geometry from weaker foundations

- `framework_ids`: `FW-AQFT`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP4-AQFT-HK-1964`, `SRC-FCP4-AQFT-BFV-2003`, `SRC-FCP4-AQFT-FV-2015`, `SRC-FCP2-NULL-DECOMP-001`
- `claim_text`: AQFT makes relativistic locality structurally explicit through spacetime-indexed local algebras and causal/locality conditions, but the relevant spacetime causal structure and locality axiom are inputs to the framework rather than a derivation of physical locality from a nonspatiotemporal substrate.
- `assumptions`: source-specified spacetime background/category and AQFT locality/causality conditions.
- `classification`: `NONFORCED`
- `canonicity_level`: locality structure `C2–C3` within the supplied framework; tested causal propagation in concrete QFT belongs to the null empirical record.
- `weaker_framework_test`: commutation and net structure are generic; physical relativistic localization depends on supplied spacetime semantics.
- `physical_bridge`: spacelike separation and localized QFT observables.
- `empirical_binding`: inherited from relativistic QFT/model realizations; no independent AQFT locality discriminator.
- `falsification_condition`: a source-qualified derivation of spacetime causal structure from weaker AQFT primitives would supersede the nonforcing part.
- `countermodels`: algebraic/net systems can satisfy analogous formal locality relations without encoding physical Lorentzian causality.
- `scope_ceiling`: structural sharpening and consequences of locality, not origin of spacetime causality.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP5-AQFT-004 — Localized AQFT measurement theory supplies a physical bridge without independent empirical distinction

- `framework_ids`: `FW-AQFT`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP4-AQFT-FV-MEAS-2020`, `SRC-FCP2-NULL-DECOMP-001`
- `claim_text`: The Fewster–Verch localized system–probe construction supplies source-qualified physical measurement architecture, including localized couplings, induced system observables and causally consistent instrument composition under stated hypotheses; it does not by itself calibrate all detectors or yield an AQFT-vs-null empirical discriminator.
- `assumptions`: system/probe theories, bounded coupling region, scattering construction and causal-factorization conditions of the cited source.
- `classification`: `PHYSICAL_BRIDGE`
- `canonicity_level`: up to `C4` as physically interpreted framework architecture; no independent `C5` selection.
- `weaker_framework_test`: completely positive maps/instruments are generic; the locally covariant system–probe realization is the source-specific content.
- `physical_bridge`: explicit system, probe, interaction region and induced observable semantics.
- `empirical_binding`: `NONE` as an independent comparison discriminator.
- `falsification_condition`: failure of the source construction under its stated hypotheses would invalidate; a distinct AQFT experimental prediction would require a separate empirical claim.
- `countermodels`: generic instrument formalisms show that abstract CP-map structure alone is non-distinctive.
- `scope_ceiling`: physical measurement framework, not universal calibration or empirical selection of AQFT.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP5-AQFT-005 — Abstract AQFT does not supply one universal physical history selector

- `framework_ids`: `FW-AQFT`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP4-AQFT-BFV-2003`, `SRC-FCP4-AQFT-FV-2015`, `SRC-FCP4-AQFT-BFR-2025`, `SRC-FCP2-NULL-DECOMP-001`
- `claim_text`: Concrete AQFT/pAQFT models may possess genuine dynamics and LCQFT may supply relative Cauchy evolution under extra conditions, but the bounded abstract AQFT framework does not select one universal physical history across all models and spacetimes comparable to the concrete SM/QFT sector laws of the null baseline.
- `assumptions`: separation of core AQFT, LCQFT/time-slice structure, pAQFT model construction and concrete model dynamics.
- `classification`: `NONFORCED`
- `canonicity_level`: model dynamics `C2–C3`; framework-wide history selection underdetermined.
- `weaker_framework_test`: automorphisms and response maps do not generically select physical histories.
- `physical_bridge`: concrete model-dependent dynamics; no universal framework bridge.
- `empirical_binding`: concrete QFT model predictions inherit the null empirical record.
- `falsification_condition`: a source-qualified universal AQFT dynamical-selection law would supersede.
- `countermodels`: distinct AQFT models with different dynamics suffice to block universal selection.
- `scope_ceiling`: K4 scope difference; does not deny real dynamics in concrete AQFT models.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP5-AQFT-006 — AQFT has no source-bound framework-level empirical discriminator against the null QFT baseline

- `framework_ids`: `FW-AQFT`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP4-AQFT-HK-1964`, `SRC-FCP4-AQFT-BFV-2003`, `SRC-FCP4-AQFT-FV-MEAS-2020`, `SRC-FCP4-AQFT-BFR-2025`, `SRC-FCP2-NULL-DECOMP-001`
- `claim_text`: At the FCP-5 source scope, no abstract AQFT prediction satisfies all frozen K10 requirements needed to distinguish AQFT empirically from the bounded successful QFT/SM sector; quantitative success of concrete AQFT representations is therefore recorded as empirical inheritance unless independently discriminating evidence is supplied.
- `assumptions`: frozen K10 comparator/observable/uncertainty/decision/provenance requirements.
- `classification`: `OPEN`
- `canonicity_level`: `N/A` at framework-comparison level.
- `weaker_framework_test`: reproducing an already successful model does not independently select one formal representation.
- `physical_bridge`: present through concrete QFT models and the measurement framework, but no distinct AQFT observable is identified.
- `empirical_binding`: `EMPIRICALLY_INHERITED`; no independent dataset/source record.
- `falsification_condition`: a preregistered source-bound AQFT-specific prediction satisfying K10 would supersede this open status.
- `countermodels`: empirically equivalent formulations block inference from reproduction to independent empirical selection.
- `scope_ceiling`: `NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`; not proof that none can ever exist.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP5-AQFT-007 — AQFT/null structural agreement does not count as independent foundational convergence

- `framework_ids`: `FW-AQFT`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP4-AQFT-HK-1964`, `SRC-FCP4-AQFT-BFV-2003`, `SRC-FCP2-EQUIV-001`
- `claim_text`: Because the bounded AQFT tradition is explicitly an algebraic reformulation/extension lineage of QFT, close AQFT–null structural agreement is not counted as `INDEPENDENT_CONVERGENCE`; core agreement is labeled `REFORMULATION_RELATION`, while additional LCQFT/pAQFT/measurement structures are evaluated separately on their own source-qualified merits.
- `assumptions`: historical/mathematical dependence of the formulations plus frozen FCP convergence-credit rules.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` cross-framework.
- `weaker_framework_test`: expected agreement between a theory and its reformulation cannot establish independent recurrence from separate primitives.
- `physical_bridge`: inherited through shared QFT models.
- `empirical_binding`: no independent AQFT selection.
- `falsification_condition`: demonstration that a specific compared structure arose independently under the FCP independence criterion and satisfies non-generic E1–E4 requirements would permit reevaluation of that structure only.
- `countermodels`: alternate empirically equivalent reformulations show why agreement alone is insufficient.
- `scope_ceiling`: no strong/moderate **independent** AQFT–null convergence credit from expected reformulation agreement.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

---

# FCP-6 Reduced-NFC/AQFT controlled-comparison claims

## FCP6-CROSS-001 — No nontrivial Reduced-NFC/AQFT convergence survives AQFT subtraction

- `framework_ids`: `FW-NFC-RED`, `FW-AQFT`
- `source_ids`: `SRC-NFC-RED-001`, `SRC-FCP3-NFC-BIND-001`, `SRC-FCP4-AQFT-HK-1964`, `SRC-FCP4-AQFT-BFV-2003`, `SRC-FCP4-AQFT-FV-2015`, `SRC-FCP4-AQFT-FV-MEAS-2020`, `SRC-FCP4-AQFT-BFR-2025`, `SRC-FCP2-EQUIV-001`
- `claim_text`: After subtracting AQFT reformulational content, generic mathematics, supplied axioms and empirically inherited QFT success, FCP-6 establishes no strong or moderate Reduced-NFC/AQFT convergence at its bounded source scope; surviving similarities are weak/generic or functional, while dynamics, realization and pairwise empirical selection remain material asymmetries or open burdens.
- `assumptions`: the FCP-5-qualified AQFT residue, the FCP-3 Reduced-NFC binding, and frozen FCP-2 K1–K10/E1–E5 and independence rules.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` cross-framework.
- `weaker_framework_test`: PASSES for surviving quotient/observable/globalization commonalities; generic or role-level recurrence cannot establish framework-specific convergence.
- `physical_bridge`: No E1–E4 two-sided physical bridge is source-bound between Reduced NFC and the FCP-5-qualified AQFT residue.
- `empirical_binding`: `NO_CURRENT_PAIRWISE_EMPIRICAL_DISCRIMINATOR`; shared absence is not empirical equivalence.
- `falsification_condition`: A future source-qualified non-generic E1–E4 Reduced-NFC/AQFT correspondence satisfying the frozen independence and physical-bridge burdens would supersede the relevant negative scope.
- `countermodels`: FCP-6 subtraction controls plus semantic differences in equivalence, locality, measurement, dynamics and realization block the stronger inference.
- `scope_ceiling`: bounded negative/nonforcing FCP-6 result; not a theorem that no future correspondence can exist.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`
- `notes`: strong `0`; moderate `0`; weak/generic `3`; functional analogy `4`; no correspondence `3`.

---

# FCP-7 GPTOPT baseline claims

## FCP7-GPTOPT-001 — GPTOPT is a general operational meta-framework and does not select quantum theory by itself

- `framework_ids`: `FW-GPTOPT`
- `source_ids`: `SRC-FCP4-GPT-HARDY-2001`, `SRC-FCP4-GPT-BARRETT-2007`, `SRC-FCP4-GPT-CDP-PUR-2010`, `SRC-FCP4-OPT-CHIRIBELLA-2014`, `SRC-FCP4-GPT-MULLER-2021`, `SRC-FCP4-GPT-PLAVALA-2023`
- `claim_text`: At the FCP-7 source scope, GPTOPT is a coherent operational/probabilistic meta-framework containing classical, quantum and broader-than-quantum models; quantum theory is an embedded/special model class and is not selected by the base framework without additional reconstruction principles or empirical restriction.
- `assumptions`: the FCP-4 GPT/OPT source window and the FCP-7 separation of G0–G6 layers.
- `classification`: `SOURCE_DERIVED`
- `canonicity_level`: `C2–C3` relative to declared GPT/OPT framework structure; no physical uniqueness.
- `weaker_framework_test`: Generic convexity, composition and operational syntax are not distinctive by themselves; the physically interpreted GPTOPT theory-space structure is source-qualified.
- `physical_bridge`: Operational preparation/effect/transformation semantics provide laboratory-facing interpretation, while complete calibration remains model dependent.
- `empirical_binding`: Quantum empirical success belongs to the selected quantum model; it is not automatic empirical confirmation of the whole GPTOPT family.
- `falsification_condition`: A source-qualified result showing that base GPTOPT alone uniquely fixes the quantum state/effect/composite/transformation structure would supersede the nonselection statement.
- `countermodels`: Classical and post-quantum GPT models inside the admitted family block unique quantum selection from the base framework.
- `scope_ceiling`: `GENERALIZATION_RELATION` to quantum theory at whole-family level; not independent convergence or quantum reconstruction from the base alone.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP7-GPTOPT-002 — Composite, dynamics and reconstruction selection remain additional GPTOPT burdens

- `framework_ids`: `FW-GPTOPT`
- `source_ids`: `SRC-FCP4-GPT-HARDY-2001`, `SRC-FCP4-GPT-BARRETT-2007`, `SRC-FCP4-GPT-CDP-PUR-2010`, `SRC-FCP4-OPT-CHIRIBELLA-2014`, `SRC-FCP4-GPT-MULLER-2021`, `SRC-FCP4-GPT-PLAVALA-2023`, `SRC-FCP2-KEYS-001`
- `claim_text`: FCP-7 finds that local GPT state spaces do not by themselves uniquely determine the physical composite theory, native transformations describe allowed processes rather than one universal physical history law, and quantum-reconstruction principles such as continuity/reversibility, purification or other named axiom packages are additional selection assumptions rather than base GPTOPT theorems.
- `assumptions`: the FCP-7 G0–G6 decomposition and frozen distinctions among K3 transformations, K4 dynamics, K8 composition and K9 realization.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` for unique physical selection.
- `weaker_framework_test`: Convex/process/composite mathematics permits multiple lawful models and tensor/composite choices; no base-level uniqueness follows.
- `physical_bridge`: Operational probabilities/tests supply physical semantics but do not select one global composite cone, one dynamics, or one reconstruction package.
- `empirical_binding`: No framework-level discriminator validates one reconstruction package or the whole GPTOPT family at FCP-7 scope.
- `falsification_condition`: A source-qualified theorem deriving a unique physical composite, actual dynamics and quantum structure from the admitted base GPTOPT assumptions would supersede the corresponding burdens.
- `countermodels`: Minimal/maximal/intermediate composites, post-quantum nonsignalling models and alternative reconstruction packages witness nonuniqueness.
- `scope_ceiling`: durable GPTOPT selection-burden result; does not deny strong conditional consequences of named extra axioms.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

---

# FCP-8 GPTOPT empirical theory-space claims

## FCP8-GPTOPT-001 — Quantum-boundary and composite-system selection remain open in GPTOPT

- `framework_ids`: `FW-GPTOPT`
- `source_ids`: `SRC-FCP8-GPT-PR-1994`, `SRC-FCP8-GPT-TSIRELSON-1980`, `SRC-FCP8-GPT-IC-2009`, `SRC-FCP8-GPT-ML-2010`, `SRC-FCP8-GPT-AQ-2015`, `SRC-FCP8-GPT-IC-2026`, `SRC-FCP4-GPT-BARRETT-2007`, `SRC-FCP4-GPT-PLAVALA-2023`
- `claim_text`: At the FCP-8 source scope, no-signalling is too weak to select quantum correlations; Information Causality and Macroscopic Locality substantially restrict post-quantum possibilities but do not uniquely characterize the complete quantum set; almost-quantum correlations provide a reusable insufficiency witness; and local state spaces plus local tomography do not uniquely select the quantum composite cone.
- `assumptions`: the declared Bell scenarios, GPT composite constructions and exact principle hypotheses in the frozen FCP-8 source window.
- `classification`: `OPEN`
- `canonicity_level`: `N/A` for unique physical/foundational selection.
- `weaker_framework_test`: Multiple post-quantum models satisfy substantial subsets of the proposed constraints, so the principles do not force the desired unique boundary.
- `physical_bridge`: Bell correlations and operational composite structures are physically interpretable, but complete global GPT composite tomography/selection is not source-bound.
- `empirical_binding`: No principle is independently selected as nature's unique foundational law at this scope.
- `falsification_condition`: A source-qualified complete characterization plus independent physical selection of the relevant quantum boundary/composite rule would supersede the open status.
- `countermodels`: PR-box and almost-quantum correlations; minimal/maximal/intermediate composite possibilities.
- `scope_ceiling`: `QUANTUM_BOUNDARY_SELECTION_OPEN`; `QUANTUM_BOUNDARY_PRINCIPLE_UNDERDETERMINATION`; `COMPOSITE_SYSTEM_SELECTION_OPEN`.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP8-GPTOPT-002 — Experiment narrows bounded GPT theory space without globally selecting quantum theory

- `framework_ids`: `FW-GPTOPT`
- `source_ids`: `SRC-FCP7-GPT-MAZUREK-2021`, `SRC-FCP8-GPT-RINGBAUER-2014`
- `claim_text`: FCP-8 source-binds genuine experimental narrowing of bounded GPT possibilities: model-independent single-photon GPT tomography constrains deviations from qubit state/effect geometry, while the Information-Causality laboratory task probes the principle using emulated/postselected supraquantum statistics; these results do not globally select quantum theory from the full GPTOPT space or confirm GPTOPT as a fundamental theory.
- `assumptions`: the tomography-completeness caveat of the Mazurek analysis and the loss/postselection construction used in the Ringbauer Information-Causality experiment.
- `classification`: `EMPIRICAL`
- `canonicity_level`: up to bounded empirical selection level `L2`; no global `L3/L4` selection.
- `weaker_framework_test`: Excluding particular low-dimensional deviations or exercising an emulated task does not uniquely select the full quantum framework.
- `physical_bridge`: Laboratory preparation/measurement statistics within the declared photon-polarization and Information-Causality tasks.
- `empirical_binding`: Positive bounded empirical constraint, not observation of natural post-quantum physics and not unique principle/framework selection.
- `falsification_condition`: Broader complete tomography or a discriminating experiment selecting a unique quantum boundary could raise the empirical ceiling; failure of the cited analyses would invalidate the bounded constraint.
- `countermodels`: Tomography incompleteness and emulated supraquantum statistics block global-selection inference.
- `scope_ceiling`: highest FCP-8 empirical-selection level `L2`; no `L3/L4` global quantum selection.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

---

# FCP-9 causal-set source-intake claims

## FCP9-CST-001 — Causal set theory has a source-bound discrete causal-order core

- `framework_ids`: `FW-CAUSAL`
- `source_ids`: `SRC-FCP9-CST-BLMS-1987`, `SRC-FCP9-CST-SURYA-2019`, `SRC-FCP9-CST-SURYA-2025`
- `claim_text`: FCP-9 source-binds causal set theory proper as a locally finite causal order with primitive causal/discrete physical interpretation and an explicit continuum-approximation burden linking order to continuum causality and cardinality to volume; the broader historical `FW-CAUSAL` causal/order umbrella is too broad and therefore opens a framework-split candidate.
- `assumptions`: the BLMS causal-set lineage and the bounded FCP-9 source taxonomy; adjacent causal/order programs are not silently pooled.
- `classification`: `SOURCE_DERIVED`
- `canonicity_level`: `C2–C3` within the controlled CST lineage; no unique physical theory selection.
- `weaker_framework_test`: Generic partial-order mathematics alone is insufficient; the causal/discrete physical interpretation and continuum burden are the source-qualified CST content.
- `physical_bridge`: Order/causality and number/volume are continuum-realization semantics under declared approximation conditions.
- `empirical_binding`: No framework-level empirical selection follows from defining the causal-set carrier.
- `falsification_condition`: A source audit showing that the claimed core is not shared by the controlled CST lineage, or that the umbrella is scientifically coherent under the frozen separation rule, would require revision.
- `countermodels`: Adjacent causal/order approaches with materially different commitments block treating the historical umbrella as one source-bound competitor.
- `scope_ceiling`: FCP-9 source-intake/taxonomy result; suggested `FW-CST` successor not yet enacted until FCP-10.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP9-CST-002 — CST kinematics does not determine unique continuum or physical dynamics

- `framework_ids`: `FW-CAUSAL`
- `source_ids`: `SRC-FCP9-CST-SURYA-2019`, `SRC-FCP9-CST-SURYA-2025`, `SRC-FCP9-CST-MULLER-2025`, `SRC-FCP9-CST-KR-1975`, `SRC-FCP9-CST-RS-2000`, `SRC-FCP9-CST-SZ-2020`, `SRC-FCP9-CST-SS-2026`, `SRC-FCP9-CST-BD-2010`
- `claim_text`: FCP-9 finds no framework-wide derivation of a unique realistic continuum, manifoldlikeness, 3+1 dimension, topology or complete quantum dynamics from minimal CST kinematics. Core CST is D0; classical sequential growth reaches a bounded D2 family with coupling freedom; quantum sequential-growth programs are nontrivial but incomplete; continuum recovery remains R2 framework-wide with sharper conditional subresults.
- `assumptions`: the FCP-9 separation of minimal kinematics, optional CSG/QSG dynamics, manifoldlike continuum inputs and controlled reconstruction results.
- `classification`: `OPEN`
- `canonicity_level`: framework-level physical selection unresolved.
- `weaker_framework_test`: Generic poset abundance and multiple lawful growth/quantum-growth constructions show that kinematics alone does not force the desired physical sector.
- `physical_bridge`: Faithful embedding, order/number semantics and discrete operator/action limits provide conditional realization bridges, not dynamics selecting the bridge target.
- `empirical_binding`: No empirical selection of one CST dynamics or continuum is source-bound.
- `falsification_condition`: A source-qualified selected CST dynamics yielding robust manifoldlike 3+1 GR plus matter with controlled continuum uniqueness would supersede the relevant open burdens.
- `countermodels`: Kleitman–Rothschild generic-poset counterpressure; CSG coupling freedom; incomplete QSG families.
- `scope_ceiling`: `TRADITIONAL_FINITE_CONTINUUM_UNIQUENESS_OPEN_REFINED`; `MANIFOLDLIKENESS_SELECTION_OPEN`; R2/D2 ceiling at FCP-9.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP9-CST-003 — CST empirical constraints are model-specific rather than framework-selecting

- `framework_ids`: `FW-CAUSAL`
- `source_ids`: `SRC-FCP9-CST-LAMBDA-2004`, `SRC-FCP9-CST-ZUNTZ-2008`, `SRC-FCP9-CST-PDS-2009`, `SRC-FCP9-CST-CDP-2010`, `SRC-FCP9-CST-SURYA-2019`
- `claim_text`: FCP-9 source-binds observational constraints on declared causal-set-inspired cosmological and diffusion phenomenology, but these tests constrain additional parameterized models rather than an unavoidable prediction of minimal CST; no framework-level CST empirical discriminator is identified.
- `assumptions`: the explicit additional assumptions and phenomenological parameterizations of Everpresent-Lambda, swerves/energy diffusion and polarization diffusion models.
- `classification`: `EMPIRICAL`
- `canonicity_level`: bounded `E2` model-specific empirical scope; no framework-level selection.
- `weaker_framework_test`: Different CST-compatible dynamics/phenomenology can avoid the exact constrained model, so model exclusion does not select or falsify the entire framework.
- `physical_bridge`: CMB and related observable quantities in the declared phenomenological implementations.
- `empirical_binding`: Real observational constraints at model scope; no E3 positive framework discriminator or E4 framework selection.
- `falsification_condition`: A source-qualified unavoidable CST prediction satisfying the full K10 framework-discriminator burden would supersede the framework-level open ceiling.
- `countermodels`: Multiplicity of optional CST phenomenology blocks inheritance from one tested model to the full framework.
- `scope_ceiling`: `NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`; highest FCP-9 empirical level E2 model-specific.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

---

# FCP-10 CST taxonomy-resolution claim

## FCP10-CST-001 — FW-CAUSAL is superseded and FW-CST is the canonical source-bound successor

- `framework_ids`: `FW-CAUSAL`, `FW-CST`
- `source_ids`: `SRC-FCP9-CST-INTAKE-001`, `SRC-FCP9-CST-BASELINE-001`, `SRC-FCP10-CST-BINDING-001`
- `claim_text`: FCP-10 resolves the FCP-9 taxonomy defect by preserving historical `FW-CAUSAL` as `SUPERSEDED_BY_FRAMEWORK_SPLIT` and admitting `FW-CST` as the canonical source-bound Causal Set Theory comparator; the unspecified adjacent order-theoretic remainder is deferred pending separate source intake, with no empty placeholder framework created.
- `assumptions`: the frozen FCP-4 framework-separation rule and the unchanged FCP-9 scientific packet.
- `classification`: `SOURCE_DERIVED`
- `canonicity_level`: repository/framework taxonomy canonicity only; no physical uniqueness.
- `weaker_framework_test`: A taxonomy label alone provides no scientific credit; the split is justified only by the source-bound difference between CST proper and the unbound adjacent remainder.
- `physical_bridge`: No new physical bridge is introduced by the taxonomy action.
- `empirical_binding`: FCP-9 R2/D2/E2 and no-framework-discriminator status remain unchanged.
- `falsification_condition`: A later source intake showing the deferred remainder forms the same framework under the frozen separation rule could motivate a separately authorized taxonomy revision.
- `countermodels`: The FCP-9 over-broad umbrella itself is the negative witness against silent pooling.
- `scope_ceiling`: taxonomy/provenance result only; CSG remains optional C2, QSG provisional C3, sprinkling a continuum-sampling construction, and matter/phenomenology extension-level.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`
- `notes`: FCP-10 added zero external scientific sources and performed no cross-framework comparison.

---

# FCP-11 CST/null-GR control claims

## FCP11-CSTNULL-001 — CST is not a GR reformulation, but GR-like recovery is predominantly target-conditioned

- `framework_ids`: `FW-CST`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP9-CST-INTAKE-001`, `SRC-FCP9-CST-BASELINE-001`, `SRC-FCP10-CST-BINDING-001`, `SRC-FCP2-NULL-DECOMP-001`, `SRC-FCP2-EQUIV-001`
- `claim_text`: FCP-11 finds that CST's locally finite carrier, primitive causal order and fundamental spacetime discreteness are additional foundational commitments rather than a mere representation of GR; however, its strongest GR-like faithful-embedding, operator/action and continuum results are predominantly target-conditioned reconstruction or compatibility results and therefore do not constitute independent emergence or independent strong/moderate convergence with GR.
- `assumptions`: canonical `FW-CST` from FCP-10, the FCP-9 source window, the bounded null/GR decomposition, and frozen FCP-2 equivalence/independence rules.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` cross-framework; exact substructure E2/E3 relations remain conditional on their named bridges/limits.
- `weaker_framework_test`: Generic order/combinatorial mathematics and supplied Lorentzian/manifoldlike targets are insufficient for CST-specific emergence credit.
- `physical_bridge`: Faithful embedding/order-preserving and selected continuum-limit bridges exist at bounded substructure scope; they do not provide whole-framework equivalence or dynamics selection.
- `empirical_binding`: GR/QFT empirical success in recovered/target regimes is inherited, not independent CST evidence.
- `falsification_condition`: A source-qualified, non-target-conditioned derivation of manifoldlike GR dynamics from selected CST dynamics satisfying frozen independence criteria would supersede the relevant negative classification.
- `countermodels`: Sprinkling into a chosen Lorentzian manifold and manifold-conditioned continuum limits demonstrate why reconstruction need not be dynamical emergence.
- `scope_ceiling`: CST is a genuine additional foundational proposal, but FCP-11 independent strong convergence `0`, moderate convergence `0`; target-conditioned E2/E3 subrelations remain local.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP11-CSTNULL-002 — CST dynamics, matter realization and framework-level empirical selection remain open after null control

- `framework_ids`: `FW-CST`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP9-CST-BASELINE-001`, `SRC-FCP10-CST-BINDING-001`, `SRC-FCP9-CST-RS-2000`, `SRC-FCP9-CST-SZ-2020`, `SRC-FCP9-CST-SS-2026`, `SRC-FCP9-CST-ZUNTZ-2008`, `SRC-FCP9-CST-PDS-2009`, `SRC-FCP9-CST-CDP-2010`, `SRC-FCP2-NULL-DECOMP-001`
- `claim_text`: After FCP-11 null/GR subtraction, optional CST dynamics do not source-bind a selected manifoldlike GR-plus-matter history law, realistic Standard Model matter/calibration remains extension/open, and model-specific phenomenology does not supply a framework-level CST empirical discriminator.
- `assumptions`: FCP-9/FCP-10 CST identity and levels R2/D2/E2, with null QFT/SM calibration used only as comparator rather than inherited CST evidence.
- `classification`: `OPEN`
- `canonicity_level`: framework-level dynamics/realization/empirical selection unresolved.
- `weaker_framework_test`: Possessing a stochastic/quantum-growth family or phenomenological model does not force one physical law or framework-wide empirical signature.
- `physical_bridge`: Order/number and selected continuum/operator bridges exist; complete matter/detector calibration from one selected CST quantum dynamics does not.
- `empirical_binding`: `NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`; empirical ladder remains E2 model-specific.
- `falsification_condition`: A source-qualified selected CST quantum dynamics recovering calibrated GR+SM observables and yielding a discriminating prediction would supersede the relevant open status.
- `countermodels`: CSG coupling freedom, incomplete QSG and optional phenomenology block whole-framework promotion.
- `scope_ceiling`: R2 framework-wide continuum; strongest bounded optional dynamics D2; E2 model-specific; null UV incompleteness is not positive CST evidence.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

---

# FCP-12 Reduced-NFC/CST comparison claims

## FCP12-CROSS-001 — No nontrivial Reduced-NFC/CST convergence survives dual subtraction

- `framework_ids`: `FW-NFC-RED`, `FW-CST`
- `source_ids`: `SRC-FCP3-NFC-BIND-001`, `SRC-FCP9-CST-BASELINE-001`, `SRC-FCP10-CST-BINDING-001`, `SRC-FCP2-EQUIV-001`
- `claim_text`: After both Reduced-NFC provenance restriction and FCP-11 CST null/GR subtraction, FCP-12 establishes no E1–E4 pairwise relation and no strong or moderate convergence; six surviving E5 relations are only generic or functional, while CST's causal/discrete carrier, manifold-selection burden and partial realization have no source-bound Reduced-NFC counterpart.
- `assumptions`: Reduced NFC exactly as frozen in FCP-3, canonical CST only after FCP-11 subtraction, and frozen FCP-2 correspondence/independence rules.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` cross-framework.
- `weaker_framework_test`: Generic relational, quotient, observation and local/global structures occur in substantially weaker systems and therefore do not earn distinctive convergence credit.
- `physical_bridge`: No two-sided source-bound E1–E4 physical bridge is established.
- `empirical_binding`: No current Reduced-NFC/CST pairwise empirical discriminator.
- `falsification_condition`: A future source-qualified non-generic E1–E4 relation surviving both provenance and null/GR subtraction would supersede the relevant negative result.
- `countermodels`: Finite description is not CST spacetime discreteness; observational quotient is not order isomorphism; interface structure is not primitive causal order.
- `scope_ceiling`: E1 `0`, E2 `0`, E3 `0`, E4 `0`, E5-only `6`, none `4`; strong `0`, moderate `0`.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP12-CROSS-002 — Congruence, Viability and Interface Sufficiency remain discovery questions rather than convergence results

- `framework_ids`: `FW-NFC-RED`, `FW-CST`
- `source_ids`: `SRC-FCP3-NFC-BIND-001`, `SRC-FCP9-CST-BASELINE-001`, `SRC-FCP10-CST-BINDING-001`, `SRC-FCP2-KEYS-001`, `SRC-FCP2-EQUIV-001`
- `claim_text`: FCP-12 identifies no source-bound CST theorem playing the Reduced-NFC Congruence, manifold-Viability or finite Interface-Sufficiency roles; these three remain unresolved discovery questions, while Globalization, Realization and Dynamics are defeated as present convergence candidates by genericity or material asymmetry.
- `assumptions`: the six FCP-3 Reduced-NFC survivor questions and the FCP-11-qualified CST residue.
- `classification`: `OPEN`
- `canonicity_level`: `N/A` for unresolved pairwise discovery questions.
- `weaker_framework_test`: A shared question, generic underdetermination or finite local data does not itself supply a shared theorem.
- `physical_bridge`: No source-bound CST factorization/invariance theorem matching the stated Reduced-NFC roles is identified.
- `empirical_binding`: `NONE` for the three discovery questions.
- `falsification_condition`: A source-bound CST theorem with the exact non-generic logical role of one survivor question could close that discovery item and support a new separately authorized comparison.
- `countermodels`: Current CST stems/intervals/manifoldlikeness definitions and optional dynamics do not force the claimed factorization or viability properties.
- `scope_ceiling`: `UNRESOLVED_DISCOVERY`: Congruence, Viability, Interface Sufficiency; `DEFEATED_AS_CONVERGENCE`: Globalization, Realization, Dynamics.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

---

# FCP-13 CQM/null-QM control claims

## FCP13-CQMNULL-001 — CQM/ordinary-QM agreement is lineage-related reformulation and structural refinement, not independent convergence

- `framework_ids`: `FW-CQM`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP4-CQM-AC-2004`, `SRC-FCP4-CQM-AC-2009`, `SRC-FCP4-CQM-CK-2017`, `SRC-FCP4-CQM-GS-2018`, `SRC-FCP2-NULL-DECOMP-001`, `SRC-FCP2-EQUIV-001`
- `claim_text`: FCP-13 classifies CQM as a lineage-related process/compositional reformulation and structural refinement of ordinary quantum theory: concrete quantum models support bounded E2 representation relations, but generic category/process/diagram mathematics and lineage-related quantum structure do not count as independently discovered convergence.
- `assumptions`: the four-source CQM window, the established quantum/QFT null sector, and frozen FCP-2 E1–E5/independence rules.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` for independent convergence; representation canonicity remains model/hypothesis relative.
- `weaker_framework_test`: Generic categories, monoidal composition and string diagrams occur far beyond quantum physics; expected agreement between a theory and its reformulation does not establish independent recurrence.
- `physical_bridge`: Concrete quantum representations provide E2 structure at bounded model/named-extension scope, not whole-family equivalence.
- `empirical_binding`: Standard quantum empirical success is `EMPIRICALLY_INHERITED`, not independent CQM evidence.
- `falsification_condition`: A source-qualified CQM result independently derived under the FCP independence criterion and carrying non-generic physical/empirical consequences could supersede that result's nonconvergence classification.
- `countermodels`: Toy/non-Hilbert categorical models and generic categorical structures block uniqueness and framework-wide identity with ordinary QM.
- `scope_ceiling`: FCP-13 E2 count `6` at bounded representation scope, but independent strong convergence `0`, moderate convergence `0`.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP13-CQMNULL-002 — CQM retains structural and optional-extension residue but no framework-level empirical discriminator

- `framework_ids`: `FW-CQM`
- `source_ids`: `SRC-FCP4-CQM-AC-2004`, `SRC-FCP4-CQM-AC-2009`, `SRC-FCP4-CQM-CK-2017`, `SRC-FCP4-CQM-GS-2018`, `SRC-FCP2-KEYS-001`
- `claim_text`: After FCP-13 subtraction, the durable CQM residue is process-first compositional abstraction, representation-independent protocol theorem schemas under named hypotheses, and explicitly optional dagger/compact/classical-interface/CPM/probabilistic-bridge structures; no source-bound framework-level CQM empirical discriminator is identified.
- `assumptions`: generic categorical machinery, diagrammatic presentation and ordinary quantum empirical success are excluded from CQM-specific credit; optional structures are not promoted into minimal core.
- `classification`: `OPEN`
- `canonicity_level`: structural results up to framework/model-relative levels; empirical selection absent.
- `weaker_framework_test`: Generic composition/diagram syntax is available in weaker frameworks; only additional named categorical hypotheses support the retained non-generic schemas.
- `physical_bridge`: Physical semantics/calibration arrives through selected concrete quantum/probabilistic models.
- `empirical_binding`: `NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`; reproduced quantum success remains inherited.
- `falsification_condition`: A source-qualified CQM-specific K10 discriminator or proof that an optional package is universally forced by the framework would supersede the corresponding ceiling.
- `countermodels`: Toy/non-Hilbert models and optional-package variation demonstrate that minimal CQM does not uniquely select all ordinary quantum physical structure.
- `scope_ceiling`: structural/optional-extension residue only; no independent CQM E4 relation.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

---

# FCP-14 CQM/GPTOPT qualification-remediated claims

## FCP14-CQMGPT-001 — A source-bound CQM/GPTOPT bridge does not qualify for pairwise E2 in the frozen packet

- `framework_ids`: `FW-CQM`, `FW-GPTOPT`
- `source_ids`: `SRC-FCP4-CQM-GS-2018`, `SRC-FCP4-CQM-AC-2004`, `SRC-FCP4-CQM-AC-2009`, `SRC-FCP4-CQM-CK-2017`, `SRC-FCP4-GPT-BARRETT-2007`, `SRC-FCP4-GPT-PLAVALA-2023`, `SRC-FCP2-EQUIV-001`
- `claim_text`: Final qualification-remediated FCP-14 preserves a real categorical-probabilistic CQM/GPTOPT bridge but withholds pairwise E2 because the frozen internal packet does not contain the explicit map/functor/representation data required by FCP-2; all positive FCP-14 key relations therefore top out at E5.
- `assumptions`: the closed FCP-14 source window, final remediation-qualified packet, and the frozen FCP-2 requirement that E2 be supported by an explicit declared map/representation preserving the relevant structure.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` pairwise; provenance ceiling controls classification.
- `weaker_framework_test`: Bridge existence and translatable roles do not by themselves establish the exact structure-preserving pairwise representation demanded for E2.
- `physical_bridge`: `SOURCE_BOUND_BRIDGE = YES`; `BRIDGE_MEDIATED = YES`; exact pairwise E2 map not frozen.
- `empirical_binding`: No pairwise E4 discriminator.
- `falsification_condition`: A separately authorized source-strengthening phase freezing the required explicit map data could permit reevaluation; the current packet cannot.
- `countermodels`: The qualification defect in the provisional candidate is the direct negative witness against inferring E2 from bridge existence alone.
- `scope_ceiling`: `E2_NOT_SOURCE_QUALIFIABLE_AT_CURRENT_PACKET = YES`; FCP14 pairwise E2 backfill forbidden.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`
- `notes`: Final E-class counts: E1 `0`, E2 `0`, E3 `0`, E4 `0`, E5-only `6`, none `4`.

## FCP14-CQMGPT-002 — CQM and GPTOPT remain materially distinct after dual subtraction

- `framework_ids`: `FW-CQM`, `FW-GPTOPT`
- `source_ids`: `SRC-FCP4-CQM-GS-2018`, `SRC-FCP4-CQM-AC-2004`, `SRC-FCP4-CQM-AC-2009`, `SRC-FCP4-CQM-CK-2017`, `SRC-FCP4-GPT-BARRETT-2007`, `SRC-FCP4-GPT-PLAVALA-2023`, `SRC-FCP7-GPT-MAZUREK-2021`, `SRC-FCP8-GPT-AQ-2015`, `SRC-FCP2-EQUIV-001`
- `claim_text`: After generic, quantum-inheritance, bridge-dependence and optional-structure subtraction, FCP-14 finds zero independently justified non-generic CQM/GPTOPT convergence: GPTOPT retains distinct convex/probabilistic geometry, composite-selection burden and broader empirical theory space, while CQM retains named process-theoretic/optional categorical residue; FCP-4 framework separation is preserved.
- `assumptions`: final FCP-13 CQM residue, FCP-7/FCP-8 GPTOPT residue, and final remediation-qualified FCP-14 relationship accounting.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` cross-framework.
- `weaker_framework_test`: Generic process/probability/composition shells and common quantum targets do not discharge independent-convergence burden.
- `physical_bridge`: The source-bound bridge is retained as translation/interface residue, not a merger or whole-family containment theorem.
- `empirical_binding`: GPTOPT's bounded L2 narrowing does not select CQM; no pairwise empirical discriminator.
- `falsification_condition`: A future source-qualified independent non-generic E1–E4 relation or whole-family equivalence theorem could supersede the relevant separation result.
- `countermodels`: Physical composite-cone ambiguity, operational-equivalence semantics and differing optional/base structures block framework collapse.
- `scope_ceiling`: independent strong convergence `0`; moderate convergence `0`; `FCP4_FRAMEWORK_SEPARATION = PRESERVED`.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

---

# FCP-15 loop-family source-intake claims

## FCP15-LOOP-001 — FW-LOOP is source-bound as one family with persistent canonical/covariant subframework labels

- `framework_ids`: `FW-LOOP`
- `source_ids`: `SRC-FCP15-LOOP-RS-1995`, `SRC-FCP15-LOOP-AL-2004`, `SRC-FCP15-LOOP-AB-2021`, `SRC-FCP15-LOOP-EPRL-2008`, `SRC-FCP15-LOOP-PEREZ-2013`
- `claim_text`: FCP-15 source-binds one top-level loop-quantum-gravity family while requiring persistent `LOOP-CANON` and `LOOP-COVAR` internal labels: common loop quantum-geometry/spin-network lineage and a fixed-graph EPRL boundary bridge are source-bound, but canonical Hamiltonian and covariant spinfoam dynamics remain materially distinct constructions without complete whole-sector equivalence.
- `assumptions`: the exact 13-source FCP-15 window and the FCP-4 framework-separation rule applied without importing adjacent GFT/CDT/tensor/LQC programs into base `FW-LOOP`.
- `classification`: `SOURCE_DERIVED`
- `canonicity_level`: framework taxonomy/source-binding level; no physical uniqueness.
- `weaker_framework_test`: Shared graphs/representations alone would be generic; the loop-specific quantum-geometric lineage and named canonical/covariant bridge supply the source-bound family relation.
- `physical_bridge`: EPRL-type fixed-graph spin-network boundary relation is conditional/model scoped; whole physical-Hilbert/dynamics equivalence remains open.
- `empirical_binding`: No empirical selection follows from retaining one framework family.
- `falsification_condition`: A future source intake demonstrating materially different primitive/model-class/physical burdens requiring separate top-level IDs, or a complete equivalence collapsing the sublabels, could motivate separate taxonomy revision.
- `countermodels`: Distinct canonical constraint and covariant amplitude constructions block treating the internal sectors as merely notation.
- `scope_ceiling`: `OUTCOME_B_INTERNAL_SUBFRAMEWORK_DISTINCTION`; `FRAMEWORK_SPLIT_CANDIDATE = 0`; no cross-framework E1–E5 assignment.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP15-LOOP-002 — Mature loop kinematics does not establish unique framework-wide dynamics or continuum GR recovery

- `framework_ids`: `FW-LOOP`
- `source_ids`: `SRC-FCP15-LOOP-AL-1997`, `SRC-FCP15-LOOP-QSD-1998`, `SRC-FCP15-LOOP-TG-2024`, `SRC-FCP15-LOOP-EPRL-2008`, `SRC-FCP15-LOOP-BARRETT-2010`, `SRC-FCP15-LOOP-BMP-2009`, `SRC-FCP15-LOOP-STEINHAUS-2020`, `SRC-FCP15-LOOP-BCMR-2026`, `SRC-FCP15-LOOP-AB-2021`
- `claim_text`: FCP-15 finds mature source-bound spin-network/quantum-geometric kinematics and substantive canonical constraint and covariant spinfoam dynamics programs, but no unique framework-wide physical history law, complete canonical/covariant dynamics equivalence, regulator-independent continuum selection, full physical-observable calibration, or complete 3+1 GR recovery is source-bound.
- `assumptions`: strict separation of L1 kinematics, L2 constraints, L3 formulation-dependent dynamics and L4 semiclassical/coarse-graining/continuum results.
- `classification`: `OPEN`
- `canonicity_level`: framework-wide dynamics, continuum and calibration selection unresolved.
- `weaker_framework_test`: A discrete operator spectrum, graph structure, constraint operator, fixed-complex amplitude or asymptotic expansion does not by itself force physical spacetime discreteness, dynamics or continuum GR.
- `physical_bridge`: Area/volume spectra, EPRL boundary structure, Regge asymptotics, low-order correlations and continuum/coarse-graining constructions provide partial conditional bridges.
- `empirical_binding`: Recovered GR-target behavior is not independent loop empirical confirmation.
- `falsification_condition`: A source-qualified selected loop dynamics with controlled regulator-independent continuum limit, complete physical observables and calibrated GR+matter recovery would supersede the corresponding open burdens.
- `countermodels`: Kinematical spectra without detector bridge; distinct constraint/amplitude choices; fixed-complex gluing; asymptotic/low-order results; open coarse-graining universality.
- `scope_ceiling`: `FRAMEWORK_WIDE_UNIQUE_DYNAMICS_OPEN`; `DISCRETE_COMPOSITION_SOURCE_BOUND / PHYSICAL_GLOBALIZATION_OPEN`; `PARTIAL_REALIZATION / FRAMEWORK_CALIBRATION_OPEN`.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`
- `notes`: Parameter firewall preserved: Barbero–Immirzi dependence/fitting is not converted into an independent prediction.

## FCP15-LOOP-003 — No framework-level loop empirical discriminator is source-bound

- `framework_ids`: `FW-LOOP`
- `source_ids`: `SRC-FCP15-LOOP-GHM-2012`, `SRC-FCP15-LOOP-AB-2021`, `SRC-FCP15-LOOP-TG-2024`
- `claim_text`: FCP-15 identifies no direct empirical/observational source satisfying the frozen K10 burden for an unavoidable base-`FW-LOOP` discriminator; loop-inspired phenomenology remains intermediate/model dependent and agreement with recovered GR or parameter fitting is not independent framework evidence.
- `assumptions`: base `FW-LOOP` is separated from optional matter/cosmology/black-hole/phenomenology extensions, and empirical inheritance/parameter firewalls are enforced.
- `classification`: `OPEN`
- `canonicity_level`: no framework-level empirical selection.
- `weaker_framework_test`: Phenomenological models can add assumptions not forced by base LQG, so constraining them cannot automatically confirm or exclude the whole framework.
- `physical_bridge`: Proposed Planck-scale phenomenological links exist, but the source record does not establish a compulsory base-framework-to-detector chain.
- `empirical_binding`: `NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`; FCP-15 direct empirical source count `0`.
- `falsification_condition`: A source-qualified unavoidable loop prediction with comparator, observable, parameter treatment, uncertainty, experiment and decision criterion satisfying K10 would supersede.
- `countermodels`: Model-dependent dispersion/Lorentz-violation and other loop-inspired phenomenology illustrate the extra-assumption gap.
- `scope_ceiling`: no framework-level K10 evidence; no cross-framework E4 or other E1–E5 relation assigned in FCP-15.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

# FCP-16 Loop/null-GR control claims

## FCP16-LOOPNULL-001 — Loop retains non-generic quantum structure after null/GR subtraction without independent E1–E4 convergence

- `framework_ids`: `FW-LOOP`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP15-LOOP-RS-1995`, `SRC-FCP15-LOOP-AL-1997`, `SRC-FCP15-LOOP-AL-2004`, `SRC-FCP15-LOOP-QSD-1998`, `SRC-FCP15-LOOP-AB-2021`, `SRC-FCP15-LOOP-EPRL-2008`, `SRC-FCP15-LOOP-PEREZ-2013`, `SRC-FCP15-LOOP-STEINHAUS-2020`, `SRC-FCP15-LOOP-BCMR-2026`, `SRC-FCP2-NULL-DECOMP-001`, `SRC-FCP2-EQUIV-001`
- `claim_text`: FCP-16 finds that `FW-LOOP` is not merely a reformulation of GR: after subtracting generic mathematics, classical-GR lineage, optional/model-specific structure, target-conditioned GR recovery and empirical inheritance, a non-generic residue remains in loop quantum-geometric kinematics, canonical/covariant quantum-dynamics programs, their bounded internal bridge, continuum/coarse-graining structure and the Barbero–Immirzi selection burden. However, the closed packet freezes no explicit loop↔GR E2 map and no complete E3 limit/error record, so no independent E1–E4 loop/GR convergence is established.
- `assumptions`: the exact FCP-15 loop source packet, FCP-1/FCP-2 null/GR baseline, and frozen FCP-2 generic-math, independence, physical-bridge and E1–E5 rules.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` cross-framework; retained loop structures are framework/model relative at their declared scopes.
- `weaker_framework_test`: PASSES for generic graph/representation/constraint/path-integral machinery and classical-GR lineage; those structures are removed before the loop-specific quantum residue is retained.
- `physical_bridge`: partial quantum-geometric and semiclassical/continuum bridges exist, but complete physical-state, observable/calibration and continuum-GR bridges remain open.
- `empirical_binding`: recovered GR success is `EMPIRICALLY_INHERITED`; no independent loop E4 discriminator.
- `falsification_condition`: an explicit source-qualified loop↔GR E1/E2/E3/E4 relation satisfying the frozen map/limit/physical/empirical burdens could supersede the relevant provenance ceiling, while a source audit showing the retained residue is wholly generic or classical-GR reformulation would require revision.
- `countermodels`: spin-network mathematics without selected dynamics; kinematical spectra without detector bridge; model-dependent canonical/covariant dynamics; fixed-complex asymptotics and open continuum selection.
- `scope_ceiling`: E1 `0`, E2 `0`, E3 `0`, E4 `0`, E5-only `9`, NONE `1`; independent strong convergence `0`, moderate convergence `0`.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`
- `notes`: `FW-LOOP` remains one family with persistent `LOOP-CANON` / `LOOP-COVAR` labels; no taxonomy change.

## FCP16-LOOPNULL-002 — Loop dynamics, continuum recovery, calibration and framework-level empirical selection remain open after null control

- `framework_ids`: `FW-LOOP`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP15-LOOP-QSD-1998`, `SRC-FCP15-LOOP-TG-2024`, `SRC-FCP15-LOOP-EPRL-2008`, `SRC-FCP15-LOOP-PEREZ-2013`, `SRC-FCP15-LOOP-BARRETT-2010`, `SRC-FCP15-LOOP-BMP-2009`, `SRC-FCP15-LOOP-STEINHAUS-2020`, `SRC-FCP15-LOOP-BCMR-2026`, `SRC-FCP15-LOOP-GHM-2012`, `SRC-FCP15-LOOP-AB-2021`, `SRC-NULL-PDG-GR-2026`, `SRC-NULL-LVK-GWTC5-TGR-2026`, `SRC-FCP2-EQUIV-001`
- `claim_text`: After FCP-16 null/GR subtraction, canonical and covariant loop dynamics remain substantive but nonunique/incomplete; fixed-complex Regge asymptotics, low-order metric correlations and continuum-limit structures remain partial and target-conditioned rather than complete GR recovery; the Barbero–Immirzi parameter and detector/observable calibration remain physical-selection burdens; and no unavoidable base-`FW-LOOP` empirical discriminator is source-bound.
- `assumptions`: FCP-15 separation of kinematics, dynamics, optional structures, continuum and phenomenology plus FCP-16 empirical-inheritance and provenance ceilings.
- `classification`: `OPEN`
- `canonicity_level`: framework-wide dynamics, continuum, calibration and empirical selection unresolved.
- `weaker_framework_test`: a constraint operator, named spinfoam amplitude, asymptotic match, refinement structure, fitted parameter or optional phenomenological model does not force a unique physical loop theory or framework discriminator.
- `physical_bridge`: partial/conditional; no complete selected 4D continuum + matter + detector calibration chain.
- `empirical_binding`: `FCP16_INDEPENDENT_LOOP_E4 = 0`; `NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`.
- `falsification_condition`: a source-qualified selected loop dynamics with controlled regulator-independent GR+matter recovery, calibrated physical observables and an unavoidable discriminating prediction would supersede the corresponding open statuses.
- `countermodels`: Hamiltonian regularization freedom, spinfoam model/two-complex dependence, fixed-simplex asymptotics, low-order truncation, continuum-universality gap, gamma calibration and model-specific phenomenology.
- `scope_ceiling`: `FRAMEWORK_WIDE_UNIQUE_DYNAMICS_OPEN`; `COMPLETE_LOOP_GR_CONTINUUM_RECOVERY = OPEN`; `FRAMEWORK_LEVEL_LOOP_PHYSICAL_CALIBRATION = OPEN`.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`
- `notes`: null quantum-gravity incompleteness is not positive loop evidence; no new external source is added.



---

# FCP-17 Reduced-NFC/loop controlled comparison claims

## FCP17-NFCLOOP-001 — No nontrivial Reduced-NFC/loop convergence survives the dual firewall

- `framework_ids`: `FW-NFC-RED`, `FW-LOOP`
- `source_ids`: `SRC-FCP3-NFC-BIND-001`, `SRC-FCP15-LOOP-RS-1995`, `SRC-FCP15-LOOP-AL-1997`, `SRC-FCP15-LOOP-AL-2004`, `SRC-FCP15-LOOP-QSD-1998`, `SRC-FCP15-LOOP-AB-2021`, `SRC-FCP15-LOOP-EPRL-2008`, `SRC-FCP15-LOOP-PEREZ-2013`, `SRC-FCP15-LOOP-STEINHAUS-2020`, `SRC-FCP15-LOOP-BCMR-2026`, `SRC-FCP2-EQUIV-001`
- `claim_text`: After restricting Reduced NFC to the exact FCP-3 comparative object and `FW-LOOP` to the six-item FCP-16 null-subtracted residue, FCP-17 establishes no independently non-generic E1–E4 pairwise convergence. Six keys retain only E5 generic or functional relations, while K2, K4, K9 and K10 have no qualified pairwise correspondence; the closed packet freezes no NFC↔loop E2 map, no NFC↔loop E3 controlled limit, and no pairwise E4 discriminator.
- `assumptions`: frozen FCP-3 Reduced-NFC provenance/genericity ceilings, the FCP-16 loop null/GR subtraction firewall, and unchanged FCP-2 K1–K10/E1–E5 rules.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` cross-framework; all positive relations remain role/scope bounded.
- `weaker_framework_test`: PASSES for generic relational carriers, quotienting, formal observables, adjacency, composition, refinement and local/global organization; those features occur in substantially weaker systems.
- `physical_bridge`: no two-sided source-bound NFC↔loop physical map is established; loop partial realization remains unmatched by a general Reduced-NFC realization.
- `empirical_binding`: `FCP17_INDEPENDENT_E4 = 0`; inherited GR/QM success and optional phenomenology are excluded.
- `falsification_condition`: a future source-qualified non-generic NFC↔loop E1/E2/E3/E4 relation satisfying the frozen map/limit/physical/empirical burdens would supersede the relevant negative classification.
- `countermodels`: generic relational/network carrier without loop quantum geometry; loop quantum geometry without `T`-relative observational quotient; composition without dynamics; boundary data without FIS; loop-internal bridge without NFC involvement.
- `scope_ceiling`: E1 `0`, E2 `0`, E3 `0`, E4 `0`, E5-only `6`, NONE `4`; independent strong convergence `0`, moderate convergence `0`.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP17-NFCLOOP-002 — Survivor questions produce no non-generic pass and expose dynamics/realization asymmetry

- `framework_ids`: `FW-NFC-RED`, `FW-LOOP`
- `source_ids`: `SRC-FCP3-NFC-BIND-001`, `SRC-FCP15-LOOP-QSD-1998`, `SRC-FCP15-LOOP-TG-2024`, `SRC-FCP15-LOOP-EPRL-2008`, `SRC-FCP15-LOOP-PEREZ-2013`, `SRC-FCP15-LOOP-STEINHAUS-2020`, `SRC-FCP15-LOOP-BCMR-2026`, `SRC-FCP15-LOOP-AB-2021`, `SRC-FCP2-KEYS-001`, `SRC-FCP2-EQUIV-001`
- `claim_text`: FCP-17 finds no non-generic pass among the six Reduced-NFC survivor questions: Congruence and Interface Sufficiency have no frozen loop-residue counterpart, Viability is only weak-generic, Globalization is only a functional analogy, and Realization and Dynamics are defeated as convergence by material asymmetry because loop retains partial physical bridges and substantive quantum-dynamics programs while Reduced NFC supplies neither a general calibrated realization nor a selected physical history law.
- `assumptions`: the FCP-3 six-survivor-question set and only `LOOP-R1` through `LOOP-R6` after FCP-16 subtraction.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` for pairwise survivor status.
- `weaker_framework_test`: shared open questions, invariant-set logic, boundary language and local/global organization are available in weaker frameworks and do not constitute a common theorem.
- `physical_bridge`: loop partial/target-conditioned realization exists at bounded scope; no matching general Reduced-NFC bridge.
- `empirical_binding`: `NONE`; survivor-question outcomes are structural/provenance results.
- `falsification_condition`: a future source-bound loop theorem matching an NFC survivor's exact non-generic logical role, or a source-bound Reduced-NFC physical dynamics/realization matching loop structure, could reopen the corresponding disposition.
- `countermodels`: loop dynamics without NFC congruence; boundary state without finite-interface sufficiency; category-relative colimit without physical continuum; shared realization incompleteness without a pairwise map.
- `scope_ceiling`: `PASS_NON_GENERIC = 0`; Congruence `NO_SOURCE_BOUND_COUNTERPART`; Viability `WEAK_GENERIC`; Interface Sufficiency `NO_SOURCE_BOUND_COUNTERPART`; Globalization `FUNCTIONAL_ANALOGY`; Realization/Dynamics `DEFEATED_AS_CONVERGENCE`.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

---

# FCP-18 program meta-audit claims

## FCP18-META-001 — No independently non-generic multi-framework recurrence survives the closed-corpus subtraction audit

- `framework_ids`: `FW-NFC-RED`, `FW-AQFT`, `FW-GPTOPT`, `FW-CQM`, `FW-CST`, `FW-LOOP`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP2-KEYS-001`, `SRC-FCP2-EQUIV-001`, `SRC-FCP3-COMP-001`, `SRC-FCP3-NFC-BIND-001`, `SRC-FCP10-CST-BINDING-001`
- `claim_text`: Across the nine completed pairwise comparison phases through FCP-17, broad recurrences in carriers, quotients, process structure, observables, locality, scale and globalization do not yield an independently motivated non-generic common structure at E1–E4 strength after generic-mathematics, lineage/reformulation, target-conditioned-recovery and empirical-inheritance controls; independent multi-framework strong and moderate convergence recurrence counts are both zero.
- `assumptions`: the exact closed FCP corpus through FCP-17, nine-phase pairwise denominator, frozen FCP-2 independence/equivalence rules and anti-double-counting method of FCP-18.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` program-level meta-result.
- `weaker_framework_test`: PASSES for the recurring generic shells; framework-specific residues remain scientifically substantive but do not coincide independently at the required strength across multiple distinct families.
- `physical_bridge`: no multi-family common physical bridge survives at E1–E4 scope.
- `empirical_binding`: independent framework-level pairwise E4 remains zero.
- `falsification_condition`: a later source-qualified independently motivated non-generic E1/E2/E3/E4 relation recurring across at least two distinct framework families would supersede the bounded zero-recurrence conclusion.
- `countermodels`: AQFT/QFT and CQM/QM lineage relations, CST/GR target-conditioned recovery, LOOP/GR target/lineage relations, and generic Reduced-NFC correspondences demonstrate why raw recurrence is insufficient.
- `scope_ceiling`: closed-corpus result through FCP-17; `INDEPENDENTLY_NONGENERIC_MULTI_FRAMEWORK_RECURRENCE_COUNT = 0`; strong recurrence `0`; moderate recurrence `0`.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP18-META-002 — Reduced NFC has not accumulated repeated independent positive support at the frozen comparative scope

- `framework_ids`: `FW-NFC-RED`, `FW-NULL-GRQFTSM`, `FW-AQFT`, `FW-CST`, `FW-LOOP`
- `source_ids`: `SRC-FCP3-NFC-BIND-001`, `SRC-FCP3-COMP-001`, `SRC-FCP2-KEYS-001`, `SRC-FCP2-EQUIV-001`
- `claim_text`: The four completed Reduced-NFC pairwise comparisons—against the null baseline, AQFT residue, CST residue and LOOP residue—each establish E1=E2=E3=E4=0 and independent strong/moderate convergence=0; surviving positive relations are E5 generic/functional, Interface Sufficiency repeatedly remains a discovery/no-counterpart question, and Dynamics/Realization repeatedly appear as asymmetries. Reduced NFC therefore does not satisfy the FCP-18 burden for repeated independent positive support.
- `assumptions`: Reduced NFC exactly as frozen in FCP-3 and the explicit repeated-support burden requiring the same non-generic structure to recur independently in at least two comparator families at E1/E2/E3 or sufficiently specific E4 strength.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` program-level evidentiary result.
- `weaker_framework_test`: E5 quotient, relational, interface and globalization similarities occur in weaker or unrelated frameworks and cannot discharge the non-generic support burden.
- `physical_bridge`: no repeated two-sided Reduced-NFC physical bridge is source-qualified.
- `empirical_binding`: `REDUCED_NFC_INDEPENDENT_E4 = 0` across the four completed comparisons.
- `falsification_condition`: two or more independent comparator families source-qualifying the same non-generic Reduced-NFC structure at E1/E2/E3 or sufficiently specific E4 would reopen the result.
- `countermodels`: repeated E5-only recurrence and repeated absence of a comparator FIS theorem show why repeated questions or vocabulary are not repeated support.
- `scope_ceiling`: `HAS_REDUCED_NFC_ACCUMULATED_REPEATED_INDEPENDENT_SUPPORT = NO`; not a claim that Reduced NFC is false or incapable of future stronger evidence.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP18-META-003 — Framework-level empirical selection is the most universal current bottleneck

- `framework_ids`: `FW-NULL-GRQFTSM`, `FW-NFC-RED`, `FW-AQFT`, `FW-GPTOPT`, `FW-CQM`, `FW-CST`, `FW-LOOP`
- `source_ids`: `SRC-FCP2-KEYS-001`, `SRC-FCP2-EQUIV-001`, `SRC-FCP7-GPT-MAZUREK-2021`, `SRC-FCP8-GPT-RINGBAUER-2014`
- `claim_text`: Independent framework-level E4 is zero across all nine completed pairwise phases; K10 has no independent pairwise framework discriminator in 9/9 phases, while empirical-inheritance control materially affects 8/9 and GPTOPT, CST and LOOP contain bounded/model-specific empirical structures that do not select the base framework. The null baseline's established empirical success remains genuine comparator evidence but is not transferable as independent competitor credit.
- `assumptions`: frozen K10/E4 requirements and separation of direct framework-level prediction from inheritance, parameter fitting and optional/model-specific phenomenology.
- `classification`: `OPEN`
- `canonicity_level`: framework-level empirical selection remains unresolved across the competitor corpus.
- `weaker_framework_test`: compatibility with tested GR/QM/QFT or exclusion of an optional phenomenological model does not uniquely select a base foundational framework.
- `physical_bridge`: varies by framework; absence of a compulsory base-framework-to-detector chain is part of the bottleneck.
- `empirical_binding`: null direct evidence is preserved; bounded GPTOPT/CST evidence is preserved at its actual scope; no independent framework-level pairwise E4 relation is promoted.
- `falsification_condition`: an unavoidable framework-level prediction with comparator, observable, parameter treatment, uncertainty, data and decision rule satisfying K10 would supersede the corresponding open status.
- `countermodels`: empirical inheritance through reformulation/recovery and optional phenomenology demonstrate why observed compatibility is insufficient for framework selection.
- `scope_ceiling`: `INDEPENDENT_FRAMEWORK_LEVEL_E4_COUNT = 0`; `FRAMEWORK_LEVEL_EMPIRICAL_SELECTION = MOST_UNIVERSAL_CURRENT_BOTTLENECK`; dynamics and realization remain separate major burdens.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP18-META-004 — Frozen provenance and subtraction controls materially affect conclusions without establishing a governance defect

- `framework_ids`: `FW-NULL-GRQFTSM`, `FW-NFC-RED`, `FW-AQFT`, `FW-GPTOPT`, `FW-CQM`, `FW-CST`, `FW-LOOP`
- `source_ids`: `SRC-FCP2-KEYS-001`, `SRC-FCP2-EQUIV-001`, `SRC-FCP3-COMP-001`
- `claim_text`: The closed-corpus self-audit finds that preregistered genericity, lineage/reformulation, target-conditioned-recovery, empirical-inheritance, countermodel and provenance controls repeatedly change or limit scientific interpretations while still permitting bounded stronger relations when their records are explicit. FCP-14's E2 downgrade is a direct self-correction case; FCP-5/FCP-11/FCP-13 show that E2/E3 are not categorically prohibited; FCP-16/FCP-17 preserve valid underlying structures while withholding stronger pairwise labels. No framework-neutral governance defect or unremediated prior scientific error is established.
- `assumptions`: historical candidates/remediations are preserved as evidence, phase roles are separated before aggregation, and no numerical rescoring or retroactive rule change is performed.
- `classification`: `SOURCE_DERIVED`
- `canonicity_level`: methodological record of the frozen FCP corpus; no claim of universal optimality.
- `weaker_framework_test`: not a convergence claim; the relevant test is whether the controls discriminate among reformulation, genericity, target recovery, additional structure and open burdens rather than deleting all positive relations.
- `physical_bridge`: `N/A` program-method result.
- `empirical_binding`: `NONE`; no claim that methodological performance empirically validates a framework.
- `falsification_condition`: discovery of a framework-neutral missing dimension, systematic contradiction, or rule that blocks source-qualified relations despite complete E1–E5 records would motivate a separately authorized governance review or remediation.
- `countermodels`: qualified FCP-5/FCP-11/FCP-13 relations are negative witnesses against the claim that the rules automatically force all relations to E5/NONE.
- `scope_ceiling`: `GOVERNANCE_REVIEW_CANDIDATE = 0`; `PRIOR_RESULT_REMEDIATION_CANDIDATE = 0`; no key weighting, ranking or governance v0.2 authorized.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`


---

# FCP-19 Asymptotic Safety source-intake claims

## FCP19-AS-001 — `FW-AS` is source-bound as one coherent framework

- `framework_ids`: `FW-AS`
- `source_ids`: `SRC-FCP19-AS-WEINBERG-1979`, `SRC-FCP19-AS-REUTER-1998`, `SRC-FCP19-AS-NR-2006`, `SRC-FCP19-AS-CRIT-2020`, `SRC-FCP19-AS-EICHHORN-2026`
- `claim_text`: FCP-19 source-binds `FW-AS` as one coherent asymptotic-safety framework centered on the hypothesis that a physically appropriate interacting gravitational UV RG fixed point with a finite-dimensional UV critical surface provides a continuum quantum-gravity completion; functional-RG machinery, finite truncations, robustness studies, gravity-matter systems, Lorentzian constructions and phenomenology are retained as implementation/evidence layers rather than separate top-level frameworks.
- `assumptions`: bounded 18-source FCP-19 corpus and frozen FCP-4 framework-separation rule.
- `classification`: `SOURCE_DERIVED`
- `canonicity_level`: framework identity only; no cross-framework convergence class.
- `weaker_framework_test`: generic RG/QFT fixed-point mathematics is insufficient; the AS-specific commitment is the gravitational interacting fixed-point/critical-surface hypothesis plus its source-bound evidence.
- `physical_bridge`: partial; Lorentzian and UV–IR realization programs are nonempty but incomplete.
- `empirical_binding`: no unavoidable framework-level discriminator is source-bound.
- `falsification_condition`: source evidence demonstrating materially distinct AS programs with different primitive commitments/model classes/physical scopes/empirical burdens would reopen taxonomy.
- `countermodels`: different calculational implementations alone do not force framework splitting.
- `scope_ceiling`: `FCP19_AS_TAXONOMY = OUTCOME_A_ONE_FRAMEWORK`; `FRAMEWORK_SPLIT_CANDIDATE = 0`; no E1–E5 comparison.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP19-AS-002 — Gravitational fixed-point evidence reaches multi-truncation robustness scope but not an exact complete-theory theorem

- `framework_ids`: `FW-AS`
- `source_ids`: `SRC-FCP19-AS-REUTER-1998`, `SRC-FCP19-AS-LR-2002`, `SRC-FCP19-AS-CPR-2009`, `SRC-FCP19-AS-FLNR-2016`, `SRC-FCP19-AS-FKLR-2018`, `SRC-FCP19-AS-DBOPT-2018`, `SRC-FCP19-AS-EICHHORN-2026`
- `claim_text`: The bounded corpus contains broad recurring non-Gaussian gravitational UV fixed-point evidence across increasingly large Euclidean truncations/operator bases and nontrivial regulator/truncation robustness checks, sufficient for `FCP19_STRONGEST_FIXED_POINT_EVIDENCE = AS-L3_MULTI_TRUNCATION_ROBUSTNESS`; it does not source-qualify an exact complete-theory fixed-point theorem or exact physical UV-critical-surface dimension, and explicit parametrization dependence prevents promotion of small truncation-level relevant-direction counts to one exact physical integer.
- `assumptions`: evidence ladder is source-scope bookkeeping only; exact/formal flow equations are distinguished from projected truncation solutions.
- `classification`: `NONFORCED`
- `canonicity_level`: bounded evidence statement, not proof of universal AS validity.
- `weaker_framework_test`: persistence across multiple truncations is stronger than a single-model fixed point but remains weaker than complete theory-space control.
- `physical_bridge`: continuum interpretation is conditional on persistence and a suitable global physical trajectory.
- `empirical_binding`: none directly.
- `falsification_condition`: exact complete-theory construction could strengthen the ceiling; systematic disappearance under controlled enlargement could weaken it.
- `countermodels`: field-parametrization dependence, omitted operator sectors and background/dynamical distinctions block exactification.
- `scope_ceiling`: `COMPLETE_THEORY_FIXED_POINT_THEOREM = NO`; `EXACT_PHYSICAL_CRITICAL_SURFACE_DIMENSION = OPEN`.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP19-AS-003 — Physical realization is partial and no unavoidable base-framework empirical discriminator is source-bound

- `framework_ids`: `FW-AS`
- `source_ids`: `SRC-FCP19-AS-MRS-2011`, `SRC-FCP19-AS-SW-2025`, `SRC-FCP19-AS-DEP-2014`, `SRC-FCP19-AS-MPR-2016`, `SRC-FCP19-AS-PR-2024`, `SRC-FCP19-AS-GRS-2019`, `SRC-FCP19-AS-PLATANIA-2024`, `SRC-FCP19-AS-EICHHORN-2026`
- `claim_text`: FCP-19 source-binds substantive Lorentzian fixed-point/signature-robustness work, gravity-matter fixed-point studies, selected UV–IR/GR-like trajectories and nonempty particle/cosmology/black-hole phenomenology, while retaining implementation/trajectory/calibration dependence; completed Lorentzian unitary realization, unique realistic gravity-matter trajectory, complete physical-observable calibration and an unavoidable detector-level base-`FW-AS` empirical discriminator remain open.
- `assumptions`: compatibility, trajectory selection, parameter fitting and optional phenomenology are not promoted to compulsory framework predictions.
- `classification`: `OPEN`
- `canonicity_level`: physical-realization/empirical-boundary status.
- `weaker_framework_test`: recovery of successful GR/QFT behavior or existence of optional phenomenology does not independently select AS.
- `physical_bridge`: nonempty but partial (`AS-L4` maximum at FCP-19 scope).
- `empirical_binding`: `DIRECT_EMPIRICAL_SOURCE_COUNT = 0`; `AS-L5 = NONE`; `FCP19_AS_K10 = NO_CURRENT_BASE_FRAMEWORK_DISCRIMINATOR`.
- `falsification_condition`: a source-bound compulsory AS prediction with detector observable, parameter treatment, uncertainty and decision rule would reopen K10; a complete Lorentzian realistic trajectory could strengthen K9.
- `countermodels`: RG-improved black holes, trajectory-calibrated scales and approximation-dependent matter bounds show why optional/model results cannot bind the base framework.
- `scope_ceiling`: `COMPLETE_LORENTZIAN_UNITARY_REALIZATION = OPEN`; framework empirical selection open.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`


---

# FCP-20 Asymptotic Safety/null-GR control claims

## FCP20-ASNULL-001 — Asymptotic Safety retains a non-generic null-subtracted residue without independent E1–E4 convergence

- `framework_ids`: `FW-AS`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP19-AS-WEINBERG-1979`, `SRC-FCP19-AS-REUTER-1998`, `SRC-FCP19-AS-CPR-2009`, `SRC-FCP19-AS-FLNR-2016`, `SRC-FCP19-AS-FKLR-2018`, `SRC-FCP19-AS-DBOPT-2018`, `SRC-FCP2-NULL-DECOMP-001`, `SRC-FCP2-EQUIV-001`
- `claim_text`: FCP-20 finds that `FW-AS` is not merely a reformulation of the null GR/QFT baseline: after subtracting generic RG mathematics, QFT/RG lineage, classical-GR lineage/target content, model/truncation dependence, optional phenomenology and empirical inheritance, a six-item AS-specific residue survives around the interacting gravitational UV fixed-point hypothesis, finite-dimensional UV-critical-surface architecture, AS-L3 multi-truncation robustness evidence, fixed-point-defined continuum/trajectory program, partial Lorentzian/gravity-matter realization and the remaining physical-trajectory/calibration/empirical-selection burden. The closed packet nevertheless source-qualifies no pairwise E1, E2, E3 or E4 relation; K1–K9 top out at E5 and K10 is NONE.
- `assumptions`: exact FCP-19 18-source AS packet, exact FCP-1/FCP-2 null baseline, frozen FCP-2 K1–K10/E1–E5 rules, and ordered generic/lineage/target/model/optionality/empirical subtraction.
- `classification`: `NONFORCED`
- `canonicity_level`: `N/A` cross-framework; residue items retain the FCP-19 hypothesis/evidence/realization ceilings.
- `weaker_framework_test`: generic effective-action/RG/fixed-point mathematics, QFT RG machinery, GR variables and GR-like infrared targets are removed before the gravitational fixed-point/critical-surface residue is retained.
- `physical_bridge`: partial; selected UV–IR, Lorentzian and gravity–matter bridges exist, but no complete framework-wide calibrated physical map is source-bound.
- `empirical_binding`: `FCP20_INDEPENDENT_AS_E4 = 0`; recovered GR/QFT success and fitted low-energy inputs remain inherited/calibrational rather than independent AS evidence.
- `falsification_condition`: a future source-qualified AS↔null E1/E2/E3/E4 relation satisfying the frozen map/limit/physical/empirical burdens could supersede the corresponding pairwise ceiling; evidence showing the retained residue is wholly generic or inherited would require revision.
- `countermodels`: exact flow equation without exact solution; repeated truncation fixed points without complete-theory theorem; shared RG machinery without AS; GR-like IR recovery without independent empirical credit.
- `scope_ceiling`: `FCP20_NULL_SUBTRACTED_AS_RESIDUE_NONEMPTY = YES`; residue items = 6; E1 `0`, E2 `0`, E3 `0`, E4 `0`, E5-only `9`, NONE `1`; independent strong convergence `0`, moderate convergence `0`.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP20-ASNULL-002 — Complete AS fixed-point closure, physical trajectory selection, realization and framework-level empirical selection remain open

- `framework_ids`: `FW-AS`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FCP19-AS-MRS-2011`, `SRC-FCP19-AS-SW-2025`, `SRC-FCP19-AS-DEP-2014`, `SRC-FCP19-AS-MPR-2016`, `SRC-FCP19-AS-GRS-2019`, `SRC-FCP19-AS-PR-2024`, `SRC-FCP19-AS-EICHHORN-2026`, `SRC-NULL-PDG-GR-2026`, `SRC-FCP2-EQUIV-001`
- `claim_text`: After FCP-20 null/GR subtraction, the strongest gravitational fixed-point evidence remains `AS-L3_MULTI_TRUNCATION_ROBUSTNESS`; an exact complete-theory fixed-point theorem, exact physical UV-critical-surface dimension, complete scheme/gauge/parametrization independence, unique realistic UV–IR trajectory, full Lorentzian nonperturbative unitarity/causal-observable realization, complete realistic gravity–matter calibration and an unavoidable base-framework empirical discriminator remain open. Selected GR-like recovery is target-conditioned and does not supply independent AS E3/E4 credit at the closed-packet provenance ceiling.
- `assumptions`: FCP-19 evidence ladder and optionality firewalls remain unchanged; FCP-20 does not reopen the source window or reconstruct missing E2/E3 records from general knowledge.
- `classification`: `OPEN`
- `canonicity_level`: complete-theory, realization and empirical-selection status unresolved.
- `weaker_framework_test`: multi-truncation robustness is stronger than a single-model result but weaker than complete theory-space control; compatibility/recovery can be achieved with fitted/selected inputs and therefore does not force framework selection.
- `physical_bridge`: nonempty and substantive but partial/conditional; no complete detector-calibrated chain from AS-H to unavoidable observables.
- `empirical_binding`: `DIRECT_EMPIRICAL_SOURCE_COUNT = 0`; `AS-L5 = NONE`; `FCP20_INDEPENDENT_AS_E4 = 0`.
- `falsification_condition`: a complete source-qualified physical AS construction with controlled GR+matter realization, calibrated observables and an unavoidable discriminating prediction could strengthen these open statuses.
- `countermodels`: parametrization-dependent relevant-direction counts; multiple critical-surface trajectories; Lorentzian truncation without full unitarity; approximation-dependent matter bounds; optional RG-improved phenomenology.
- `scope_ceiling`: `COMPLETE_THEORY_FIXED_POINT_THEOREM = NO`; `EXACT_PHYSICAL_CRITICAL_SURFACE_DIMENSION = OPEN`; `COMPLETE_LORENTZIAN_UNITARY_REALIZATION = OPEN`; `NO_CURRENT_BASE_FRAMEWORK_DISCRIMINATOR`.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`


---

# FCP-21 Reduced NFC / null-subtracted Asymptotic-Safety comparison claims

## FCP21-NFCAS-001 — Dual-firewall comparison yields no independently non-generic NFC/AS E1–E4 relation

- `framework_ids`: `FW-NFC-RED`, `FW-AS`
- `source_ids`: `SRC-NFC-RED-001`, `SRC-FCP19-AS-WEINBERG-1979`, `SRC-FCP19-AS-REUTER-1998`, `SRC-FCP19-AS-CPR-2009`, `SRC-FCP19-AS-FLNR-2016`, `SRC-FCP19-AS-FKLR-2018`, `SRC-FCP19-AS-DBOPT-2018`
- `claim_text`: FCP-21 compares the exact FCP-3 Reduced-NFC object only against AS-R1 through AS-R6 from the FCP-20 null-subtracted Asymptotic-Safety residue and finds no independently non-generic E1, E2, E3 or E4 relation. Four K-keys retain only E5 functional relations and six are NONE; independent strong and moderate convergence are zero; `FCP21_INDEPENDENT_E4 = 0`; and all six Reduced-NFC survivor questions have `PASS_NON_GENERIC = NO`, so `FCP21_SURVIVOR_PASS_NON_GENERIC = 0`.
- `assumptions`: exact FCP-3 Reduced-NFC source binding and genericity firewall; exact FCP-20 six-item AS residue and null/GR-subtraction firewall; frozen FCP-2 K1–K10/E1–E5 rules; closed packet with no new source intake.
- `classification`: `NONFORCED`
- `canonicity_level`: pairwise comparison only; no program-level rescoring or claim that either framework is false.
- `weaker_framework_test`: generic quotient/process/finite/stability/colimit mathematics on the NFC side and generic RG/QFT/GR-lineage structures on the AS side are removed before convergence credit; surviving relations do not meet E1–E4 independence requirements.
- `physical_bridge`: Reduced NFC lacks a general calibrated physical-realization map; AS has partial physical realization but incomplete trajectory/calibration closure.
- `empirical_binding`: neither side supplies a pairwise foundational discriminator at the frozen scope; shared absence does not constitute E4.
- `falsification_condition`: a future source-qualified NFC↔AS E1/E2/E3/E4 relation satisfying the frozen object-type, provenance, independence, physical-bridge and empirical burdens could supersede the corresponding pairwise ceiling.
- `countermodels`: fixed point without partition stabilization; partition stabilization without fixed point; colimit without physical continuum limit; shared empirical absence without E4.
- `scope_ceiling`: E1 `0`, E2 `0`, E3 `0`, E4 `0`, E5-only `4`, NONE `6`; independent strong convergence `0`; moderate convergence `0`; `FCP21_SURVIVOR_PASS_NON_GENERIC = 0`.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

## FCP21-NFCAS-002 — K7 fixed/finite/scale similarities are type-mismatched and AS partial realization remains materially asymmetric

- `framework_ids`: `FW-NFC-RED`, `FW-AS`
- `source_ids`: `SRC-NFC-RED-001`, `SRC-FCP19-AS-REUTER-1998`, `SRC-FCP19-AS-CPR-2009`, `SRC-FCP19-AS-FLNR-2016`, `SRC-FCP19-AS-FKLR-2018`, `SRC-FCP19-AS-DBOPT-2018`, `SRC-FCP19-AS-MRS-2011`, `SRC-FCP19-AS-SW-2025`, `SRC-FCP19-AS-EICHHORN-2026`
- `claim_text`: FCP-21's focused K7 and realization audits find that the AS gravitational RG fixed point is not NFC fixed-carrier partition stabilization, the finite-dimensional UV critical surface is not interface capacity or Interface Sufficiency, relevant RG directions are not interface-visible novelty distinctions, AS multi-truncation robustness is evidence rather than NFC process congruence or weak-coupling stability, and the AS UV→IR trajectory program is not categorical colimit completion. FCP-20's nonempty partial Lorentzian/gravity-matter AS realization therefore creates a material asymmetry with the Reduced-NFC core, whose general physical realization and selected physical-history law remain unestablished.
- `assumptions`: object types are preserved; AS-R3 is evidence, AS-R6 is an open burden, and no FCP-20-subtracted generic RG/QFT/GR shell or rejected NFC physical interpretation is restored.
- `classification`: `NONFORCED`
- `canonicity_level`: bounded type/realization comparison; no claim that future mappings are impossible.
- `weaker_framework_test`: identical words such as fixed, stable, finite, trajectory, global or completion receive no credit without shared typed structure; each apparent K7/K8 upgrade is defeated by explicit countermodels.
- `physical_bridge`: AS partial physical bridge = nonempty but incomplete; Reduced-NFC general physical bridge = not established.
- `empirical_binding`: `FCP21_INDEPENDENT_E4 = 0`; no detector-level pairwise discriminator is source-bound.
- `falsification_condition`: an explicit provenance-qualified map/limit showing material structure preservation between the relevant NFC and AS objects, or a source-bound Reduced-NFC physical realization matching AS at the required scope, could strengthen the relation.
- `countermodels`: RG fixed point without finite partition stabilization; finite critical surface without interface factorization; relevant eigendirections without novelty bits; colimit without RG trajectory; partial AS Lorentzian realization without Reduced-NFC realization.
- `scope_ceiling`: K7 `TYPE_MISMATCH_AFTER_GENERICITY_SUBTRACTION`, NONE; K8 E5-only functional analogy with type mismatch; K9 `MATERIAL_ASYMMETRY`, NONE.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`

---

## Rules

- One primary classification per claim.
- A claim may not exceed the authority of its sources and bridges.
- Negative and nonforcing results remain preserved when later work supersedes a stronger claim.
- No framework-level numerical score is inferred automatically from individual claim rows.
- Cross-framework convergence credit requires the frozen FCP-2 correspondence and weaker-framework rules.
- Reformulation relations must not be counted as independent convergence unless the independence burden is explicitly discharged.
