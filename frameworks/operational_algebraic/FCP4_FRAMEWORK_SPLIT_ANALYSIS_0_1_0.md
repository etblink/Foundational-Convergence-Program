# FCP-4 — Operational/Algebraic Framework Split Analysis

**Version:** 0.1.0  
**Status:** SOURCE-BOUND TAXONOMY CANDIDATE  
**Parent scope:** `main@71d8918dcbcfd855acf69126d72142cb836f275d`  
**Comparison status:** NO CROSS-FRAMEWORK COMPARISON PERFORMED

## 0. Purpose

FCP-4 resolves the provisional umbrella entry `FW-OAQ` before any new cross-framework scoring. The task is taxonomic: identify coherent competitors, bind bounded source corpora, and prevent later convergence analysis from combining results that belong to distinct research traditions.

Governing rule:

> **Define the competitors before examining whether they converge.**

> **Preserve results, not theories.**

No E1–E5 equivalence class and no convergence class is assigned in FCP-4.

---

# 1. Framework-separation criterion — frozen before split verdict

FCP-4 applies the following criterion before assigning final framework IDs:

> **Separate frameworks when their primitive commitments, allowed model class, physical scope, or empirical burden differ materially under the FCP keys.**

The criterion is evaluated through six dimensions.

## S1 — Primitive carrier

Ask what mathematical/operational object is primitive: region-indexed operator algebras, convex state/effect spaces, process categories, Hilbert-space models, ordered vector spaces, or another carrier.

## S2 — Primitive composition

Ask what composes first: inclusion of spacetime regions, sequential/parallel physical transformations, tensor products, probabilistic tests, or categorical morphisms.

## S3 — Dynamics burden

Ask whether the framework itself supplies a history/evolution rule, merely admits transformations, encodes dynamics by automorphisms/channels, or imports model-specific dynamics.

## S4 — Physical domain

Ask whether the framework is intrinsically relativistic-QFT, theory-general operational foundations, quantum-information/process semantics, or a broader mathematical meta-framework.

## S5 — Empirical commitment

Ask whether the framework narrows the empirical model class, generalizes beyond quantum theory, reconstructs ordinary quantum theory only after extra axioms, or mainly reformulates an already successful theory.

## S6 — Mathematical equivalence / duplicate-ID test

Do not create separate FCP IDs for differences that are merely presentational at K1–K10 scope. Conversely, do not combine traditions merely because a translation or common categorical language exists.

### Split threshold

A separate ID is warranted when at least one of S1–S5 differs materially and the difference changes the framework's answers or burdens under K1–K10. A common umbrella may be retained only where the core allowed model class and empirical burden remain substantially the same.

---

# 2. Taxonomy matrix

| Candidate | Primitive carrier | Primitive composition | Dynamics status | Observable structure | Physical domain | Quantum-specific? | Empirical burden | FCP disposition |
|---|---|---|---|---|---|---|---|---|
| AQFT / local quantum physics | spacetime-indexed net/functor of local *-algebras plus states/representations | region inclusion / embeddings and algebra morphisms | model-dependent; time evolution/automorphisms and relative Cauchy evolution exist when additional structure/axioms are supplied | local observable algebras; states as positive normalized functionals in standard algebraic presentations | relativistic QFT, including locally covariant curved-spacetime extensions | yes, as a QFT framework | primarily a rigorous/reformulation framework; empirical success is inherited through concrete QFT models unless a model-specific discriminator is identified | separate `FW-AQFT` |
| GPT / OPT | convex/ordered operational state-effect spaces and/or systems/events/transformations with probabilities | sequential/parallel tests, channels and probabilistic composition | general framework permits transformations/channels but does not select one universal physical dynamics | effects/measurements/tests with outcome probabilities | general operational theories and quantum reconstruction | no; includes classical, quantum and post-quantum models | generalizes the theory space; extra principles are needed to recover quantum theory | one source-bound family `FW-GPTOPT` |
| Categorical quantum mechanics / quantum process theory | symmetric monoidal/process category; quantum models add dagger/compact and related structure | categorical sequential and monoidal composition | processes are primitive, but generic process structure is not a unique physical history selector | states/effects/processes as morphisms; quantum observables/classical structures require additional categorical structure | compositional quantum foundations, protocols, semantics | quantum-motivated but admits non-Hilbert/toy models | primarily structural/reformulational unless a particular model changes empirical predictions | separate `FW-CQM`; broader `FW-CAT` remains distinct and unbound |

The matrix is taxonomy only. It contains no Reduced-NFC column, no null-baseline column, no E-class, and no convergence score.

---

# 3. Split verdict

## 3.1 `FW-OAQ` is not coherent as one FCP competitor

**Verdict:** `SUPERSEDED_BY_FRAMEWORK_SPLIT`.

Reason: the umbrella merges materially different primitive carriers, domains, composition rules and empirical burdens. AQFT is a relativistic quantum-field framework whose locality is indexed by spacetime regions. GPT/OPT deliberately ranges over quantum and non-quantum operational models. CQM makes process composition/category structure primary and can be instantiated by quantum and non-quantum models. Combining them would violate the anti-smuggling rule by allowing the umbrella to inherit the strongest result from each subtradition.

## 3.2 AQFT receives `FW-AQFT`

AQFT crosses the split threshold at S1, S2, S4 and S5. Its spacetime-local algebraic net/functor structure is not merely another presentation of a convex GPT carrier or a generic monoidal process category at FCP intake scope.

**Reformulation status:** `REFORMULATION_OF_ESTABLISHED_THEORY` with model-building/locally covariant extensions. This status does not deny its mathematical or conceptual content; it prevents inherited QFT empirical success from being misreported as independent confirmation of the abstract AQFT framework.

## 3.3 GPT and OPT remain one source-bound family: `FW-GPTOPT`

FCP-4 does **not** split GPT from OPT into separate competitors. The source traditions differ in emphasis and mathematical packaging—convex state/effect geometry versus compositional operational events/processes—but overlap substantially in allowed probabilistic operational theory space and empirical burden. At the present shallow K1–K10 intake level, separate IDs would duplicate more than they clarify.

The source packet therefore uses:

`FW-GPTOPT` — **Generalized probabilistic / operational-probabilistic theories**.

The packet must preserve two internal subtraditions:

- convex/GPT presentations;
- compositional/OPT presentations.

A later full audit may reopen the split only through explicit evidence that their K1–K10 burdens materially diverge.

**Reformulation status:** `GENERALIZATION_OF_ESTABLISHED_THEORY + RECONSTRUCTION_PROGRAM` (`MIXED`). Quantum theory is one model/target inside a larger operational theory space; additional principles are required to single it out.

## 3.4 Categorical quantum mechanics receives `FW-CQM`

FCP-4 chooses Outcome C2.

`FW-CQM` is separately admitted because its primitive process/category language and structural axioms change K1/K3/K5 answers relative to GPT/OPT, even though bridging frameworks exist. It is not folded into `FW-OAQ`, which is superseded.

The existing `FW-CAT` entry is retained for broader categorical/process/topos/effectus foundational approaches that are not source-bound in FCP-4. `FW-CQM` is therefore a narrower quantum/process tradition, not a replacement for all categorical foundations.

**Reformulation status:** primarily `FOUNDATIONAL_META_FRAMEWORK + REFORMULATION_OF_ESTABLISHED_THEORY` (`MIXED`). Specific categorical models can differ from Hilbert-space quantum theory, but generic CQM structure by itself is not an empirical extension.

---

# 4. Framework-family smuggling firewall

FCP-4 freezes these prohibitions:

> AQFT locality + GPT reconstruction + CQM compositionality **does not define one OAQ theory**.

> Base GPT/OPT + purification + local tomography + continuous reversibility + other reconstruction principles **does not define the base GPT/OPT framework** unless the selected source definition explicitly includes those assumptions.

For every source-bound packet, distinguish:

1. **Core** — defining framework commitments.
2. **Optional extensions** — additional axioms/structures.
3. **Model-specific results** — results requiring a particular theory/model.
4. **Empirical inheritance** — empirical success inherited by reproducing established QM/QFT rather than independently predicted by the abstract framework.

---

# 5. Shallow K1–K10 taxonomy screen

This screen exists only to validate the split. It is not a full audit and does not compare the candidates to other FCP frameworks.

| Key | `FW-AQFT` | `FW-GPTOPT` | `FW-CQM` |
|---|---|---|---|
| K1 carrier | local algebras/net or locally covariant functor plus states/representations | operational states/effects/transformations; often convex ordered spaces | objects/systems and process morphisms in monoidal categories; quantum instances add dagger/compact structure |
| K2 equivalence | representation/algebraic equivalence and gauge/superselection issues are model/formulation dependent | operational equivalence often defined by equal probabilities against available effects/tests | equality/equivalence of morphisms/diagrams according to categorical theory; physical redundancy requires model semantics |
| K3 transformations | algebra homomorphisms, automorphisms, embeddings; model dynamics separate | transformations/channels/events are central primitives | processes/morphisms and sequential/parallel composition are primitive |
| K4 dynamics | can contain model/time-evolution automorphisms; relative Cauchy evolution under locally covariant assumptions; no one universal AQFT history law | processes allowed, but base framework does not choose one universal physical dynamics | process structure does not by itself choose which physical process occurs |
| K5 observables | central: local observable algebras and states | central: effects/measurements/outcome probabilities | states/effects/processes as morphisms; observables/classical data encoded by additional structures |
| K6 locality | intrinsic to Haag–Kastler/local-covariant forms through spacetime localization and causality axioms | generally optional/model-dependent; non-signalling/causality principles may be added | not intrinsic to generic CQM; causal/process structure requires added theory |
| K7 scale | not part of minimal Haag–Kastler core; pAQFT/renormalization is an extension/model program | not intrinsic to base framework | not intrinsic to generic process theory |
| K8 globalization | central: consistent net/functor assignment over regions/spacetimes; global state/representation issues remain nontrivial | composition/extension of local systems is important but not one universal spacetime globalization doctrine | compositional consistency is central, but spacetime globalization is not generic |
| K9 realization | strong physical semantics for relativistic QFT models; measurement theory can be formulated algebraically, while experimental calibration remains model-dependent | operational probabilities have direct laboratory interpretation at an abstract level; identification of concrete physical systems/quantities is model-dependent | diagram/process semantics are physically interpretable when instantiated; calibration generally inherited from the chosen quantum model |
| K10 discriminator | abstract AQFT framework has no source-bound independent discriminator in FCP-4; concrete QFT models may | base framework deliberately permits many theories; no one framework-level quantum-specific prediction | generic CQM formalism has no source-bound independent discriminator in FCP-4 |

---

# 6. Dynamics-specific intake result

FCP-4 preserves K3/K4 separation.

- **AQFT:** a local algebraic framework can support genuine model dynamics, automorphic time evolution, time-slice structure and relative Cauchy evolution. These do not constitute one framework-wide selector of all physical histories.
- **GPT/OPT:** physical transformations/channels are native, but the framework defines possible operational processes rather than selecting a universal actual dynamics. Reconstruction axioms may constrain transformations but are additional hypotheses.
- **CQM:** morphisms/processes are native. Their existence and composition do not select which process occurs in nature.

Therefore no candidate receives `NATIVE_UNIVERSAL_HISTORY_SELECTOR` status.

---

# 7. Physical-realization intake result

- **AQFT:** has the strongest intrinsic physical domain of the three. Local algebras are assigned to spacetime regions and measurement schemes can be defined by localized system-probe couplings. Numerical detector calibration and empirical confirmation remain properties of concrete QFT models/experiments, not automatic consequences of the abstract axioms.
- **GPT/OPT:** preparations, transformations, effects and probabilities are operationally interpretable, but mapping the abstract systems to specific particles, fields, clocks, energies or detectors is model-dependent.
- **CQM:** process diagrams can directly represent experimentally meaningful quantum protocols once instantiated in a quantum model; the generic category does not itself calibrate physical quantities.

---

# 8. Empirical-status intake result

FCP-4 registers **zero independent framework-level empirical source records** for the three abstract frameworks.

This does not mean they are empirically irrelevant.

- AQFT can formulate concrete QFT models whose empirical content belongs to those models and established QFT.
- GPT/OPT can formulate quantum theory and non-quantum alternatives; empirical experiments constrain particular operational possibilities, not the entire meta-framework as one theory.
- CQM can reproduce standard quantum protocols and also admits other process models; reproduced quantum success is inherited unless a distinct prediction is identified.

For all three at FCP-4 scope:

`NO_FRAMEWORK_LEVEL_EMPIRICAL_DISCRIMINATOR_IDENTIFIED`.

---

# 9. Adjacent families considered but not added

FCP-4 checked whether the umbrella split forced an additional framework ID.

- **Effectus theory:** materially categorical/operational, but does not need a new FCP slot before the broader `FW-CAT` intake.
- **Topos quantum theory:** materially distinct reformulation, but belongs to a future `FW-CAT` subdivision rather than this OAQ split.
- **Process-matrix / indefinite-causal-order frameworks:** materially distinct and potentially worthy of a later causal-quantum intake, but not necessary to define AQFT/GPTOPT/CQM and therefore not admitted in FCP-4.

No `FRAMEWORK_EXTENSION_CANDIDATE` is promoted by this task.

No `KEY_EXTENSION_CANDIDATE` is identified; K1–K10 remain adequate for the taxonomy.

---

# 10. Required split verdicts

1. **Is `FW-OAQ` coherent as one competitor?** No. `SUPERSEDED_BY_FRAMEWORK_SPLIT`.
2. **AQFT separate ID?** Yes: `FW-AQFT`.
3. **GPT/OPT separate ID?** Yes as one combined source-bound family: `FW-GPTOPT`; GPT versus OPT is not split further at current scope.
4. **Categorical/process quantum theory?** Separate narrower ID `FW-CQM`; broader `FW-CAT` remains.
5. **Additional families necessary now?** No.
6. **Primary reformulations of established QM/QFT?** `FW-AQFT` and much of `FW-CQM`; both can contain extensions/models beyond pure reformulation.
7. **Broadens allowed theory space beyond QM?** `FW-GPTOPT` explicitly; `FW-CQM` also permits non-Hilbert/toy process models but is quantum-motivated.
8. **Native dynamics?** Model-dependent in AQFT; transformations native but no universal selector in GPTOPT/CQM.
9. **Intrinsic locality/causality?** Strongest and core in AQFT; optional/model-dependent in GPTOPT; not generic in CQM.
10. **Genuine local-to-global structure?** Central in AQFT; compositional but not spacetime-global in GPTOPT/CQM.
11. **Calibrated realization independent of importing standard QM/QFT?** None established as an abstract-framework-level empirical calibration in FCP-4.
12. **Framework-level empirical discriminators?** None source-bound in FCP-4.
13. **Most informative next full comparison target?** `FW-AQFT`, after source intake, because it sharply exercises K5/K6/K8/K9 while retaining a clear relation to successful relativistic QFT.
14. **KEY_EXTENSION_CANDIDATE?** 0.

---

# 11. Next-comparison rationale

The next full comparison should first use `FW-AQFT` against the already source-bound null baseline, not Reduced NFC.

Reason: AQFT largely reorganizes and sharpens QFT structure. Before using AQFT as a comparator for any speculative framework, FCP should determine which features are genuinely AQFT-specific, which are equivalent reformulations of ordinary QFT, which are optional locally covariant/pAQFT extensions, and which empirical credit is merely inherited from concrete QFT models.

Recommended next task:

> **FCP-5 — AQFT vs. Null Baseline: K1–K10 Reformulation/Extension Control**

This creates a necessary control for any later NFC–AQFT or multi-framework convergence claim.
