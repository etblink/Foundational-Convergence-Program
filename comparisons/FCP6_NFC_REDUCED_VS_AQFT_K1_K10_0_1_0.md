# FCP-6 — Reduced NFC vs. AQFT K1–K10 Controlled Structural Comparison

**Version:** 0.1.0  
**Frameworks:** `FW-NFC-RED` vs `FW-AQFT`  
**Comparison-key version:** `FCP_COMPARISON_KEYS_0_1_0`  
**AQFT subtraction binding:** `FCP6_AQFT_RESIDUE_BINDING_0_1_0`  
**Status:** COMPARISON CANDIDATE

## 0. Scope and method

This comparison uses only the source-bound Reduced-NFC object from FCP-3 and the FCP-5-qualified AQFT object after the explicit `AQFT-R/G/A/I` subtraction. The null baseline is used only as the already-frozen provenance control that identifies AQFT reformulation/inheritance; it is not a third competitor in FCP-6.

No GPTOPT, CQM, or other framework is compared.

Primary rule:

> **Only `AQFT-X` may support AQFT-specific moderate/strong convergence credit.**

Every apparent match is subjected to: AQFT subtraction, genericization, vocabulary erasure, independence, selection, physical-bridge and quantitative tests.

## 1. Paired K1–K10 matrix

| Key | Reduced NFC | AQFT | NFC M1/M2/M3 | AQFT M1/M2/M3 | AQFT provenance | Strongest relation | Convergence class | Main divergence |
|---|---|---|---|---|---|---|---|---|
| K1 State carrier | finite relational/configuration carrier plus `T`-relative quotient descriptions; no physically realized state space | algebraic states on observable algebras, representations/GNS; LCQFT state assignments | carrier/test choices `MODEL_CHOICE`; quotient derived; `C2`; mathematical only | core state architecture `SOURCE_DERIVED`; `C2–C3`; physically QFT-interpreted | mainly `AQFT-R/G`; X3 only concerns state selection, not carrier equivalence | `E5` role analogy | `FUNCTIONAL_ANALOGY` | no map from NFC configurations/quotients to AQFT algebraic states or representations |
| K2 Redundancy/equivalence | `x ~_T y` iff selected tests cannot distinguish | representation/isomorphism/unitary/gauge/superselection distinctions at source scope | `T` `MODEL_CHOICE`; quotient `SOURCE_DERIVED`; `C2`; no physical exhaustion | representation structure `SOURCE_DERIVED`; `C2–C3`; QFT semantics | `AQFT-R/G` | `E5` generic equivalence logic | `WEAK_GENERIC` | observational indistinguishability is not AQFT physical/state equivalence |
| K3 Allowed transformations | admissible processes/morphisms; quotient-compatible factor maps where proved | embeddings/homomorphisms, LCQFT morphisms, measurement channels, rce | process grammar mostly `MODEL_CHOICE`; `C2`; mathematical | core maps `R/G/A`; X1/X2/X4 source-derived under named hypotheses; `C2–C4` | mixed, including `AQFT-X` | `E5` only | `FUNCTIONAL_ANALOGY` | no E1–E3 map preserving spacetime embeddings, background response, or localized measurement roles |
| K4 Dynamics | no global physical-history selector | concrete AQFT models may have physical dynamics; abstract AQFT no universal selector; rce is background response | `UNDERDETERMINED`; no physical canonicity | model dynamics `SOURCE_DERIVED`; framework-wide selector `UNDERDETERMINED`; `C2–C3` | X2 plus inherited concrete dynamics | `NONE` | `NO_CORRESPONDENCE` | shared absence of a universal selector is not the same structure; AQFT concrete models can possess actual dynamics |
| K5 Observables/measurement | declared test family `T`, quotient; no exhaustion/calibration theorem | local observable algebras; states; X4 localized system–probe measurement | `T` `MODEL_CHOICE`; `C2`; formal only | core observables `R/G`; X4 `SOURCE_DERIVED/PHYSICAL_BRIDGE`, up to `C4` | `AQFT-R/G` plus `AQFT-X` X4 | generic formal recurrence `E5`; no X4 map | `WEAK_GENERIC` | Reduced NFC lacks system/probe/coupling/scattering/instrument structure and calibrated physical semantics |
| K6 Locality/causality | combinatorial/relational interfaces, collars and local restrictions | spacetime-indexed algebras, supplied Lorentzian causality/locality; localized measurement causal composition | largely `MODEL_CHOICE/VALID_CONDITIONAL`; `C2`; no spacetime bridge | spacetime/locality supplied `PRIMITIVE/A`; X4 physical localization `SOURCE_DERIVED`; `C3–C4` | `AQFT-A` plus X4 | `E5` | `FUNCTIONAL_ANALOGY` | no source-bound bridge from NFC adjacency/interface to spacelike separation or causal influence |
| K7 Scale relation | refinement, fixed-carrier stabilization, transport among finite descriptions | pAQFT renormalized/interacting model construction at named extension scope | `MODEL_CHOICE` plus derived finite stabilization; `C2`; no physical RG | X5 source-derived within pAQFT; generic perturbation/renormalization excluded; `C2–C3` | `AQFT-X` X5 plus `AQFT-G` shell | `E5` | `FUNCTIONAL_ANALOGY` | no common scale parameter, RG flow, effective-observable map or fixed-point structure |
| K8 Globalization | interface/transport/globalization question; relative universal completion; no physical globalization theorem | local nets/global algebra architecture, LCQFT covariance, X3 natural-state obstruction | mostly `VALID_CONDITIONAL/MODEL_CHOICE`; `C2`; global physical status open | X1/X3 source-derived under hypotheses; `C2–C3`; physical QFT semantics | `AQFT-X` plus generic net/functor shell | `E5` common local-global burden only | `WEAK_GENERIC` | no shared non-generic obstruction, invariant, or extension theorem identified |
| K9 Physical realization | no general calibrated bridge to measured physical quantities | physically interpreted spacetime/local observables and X4 measurement architecture; quantitative QFT values inherited | `UNDERDETERMINED`; no `C4/C5` general bridge | semantics up to `C4`; numerical success often `AQFT-I/C5` only through concrete models | X4 plus `AQFT-I` | `NONE` | `NO_CORRESPONDENCE` | AQFT has source-bound physical semantics absent from Reduced NFC |
| K10 Empirical discriminator | no current foundational discriminator | no independent abstract-AQFT discriminator; QFT success inherited | `UNDERDETERMINED`; no C5 | `OPEN`; inherited concrete-model evidence only | `AQFT-I` / no X discriminator | `NONE` | `NO_CORRESPONDENCE` | shared lack of pairwise discriminator is an absence, not convergence |

## 2. K1 — state/configuration result

Reduced NFC and AQFT both distinguish mathematical carriers from descriptions/representations, but FCP-6 finds no structure-preserving map from finite relational configurations or `T`-quotient classes to algebraic states, GNS representations or LCQFT state spaces. The AQFT state architecture is mostly `AQFT-R/G`; therefore the broad resemblance is not eligible for AQFT-specific convergence credit.

The X3 natural-state obstruction concerns **selection of one covariant preferred state**, not equivalence between NFC quotient classes and AQFT states. It supplies no K1 upgrade.

## 3. K2 — observational equivalence negative control

The relation

`x ~_T y`

states that selected tests in `T` do not distinguish two NFC configurations. This is not the same proposition as unitary/representation equivalence, algebra isomorphism, gauge redundancy or superselection-sector identity in AQFT.

After vocabulary erasure, the only common content is generic equivalence/quotient/isomorphism machinery. Strongest relation: `E5`; classification: `WEAK_GENERIC`; AQFT-specific credit: zero.

## 4. K3 — transformations

LCQFT's physically specialized maps preserve globally hyperbolic spacetime embedding structure and algebra transport; relative Cauchy evolution compares a theory under admissible background perturbations; Fewster–Verch measurement maps arise from a localized system–probe scattering construction.

Reduced-NFC morphisms/processes have no source-bound map preserving any of those physical roles. The generic fact that both frameworks have composable maps is removed by `AQFT-G`. No E1–E3 transformation correspondence is established.

## 5. K4 — dynamics

Reduced NFC still lacks a source-selected global physical-history law. Abstract AQFT also does not pick one universal history across every model/spacetime, but concrete AQFT/pAQFT models may have genuine physical dynamics inherited or constructed from QFT.

This is a **scope asymmetry**, not convergence. Relative Cauchy evolution is a conditional background-response automorphism and must not be reclassified as a universal history selector.

## 6. K5 — observables and measurement

At formal level, `T`-indexed testing and AQFT observable algebras both organize distinguishable outcomes. That recurrence is generic and is subtracted.

The strongest AQFT-X candidate is X4: a localized system–probe construction with a bounded coupling region, a scattering map, induced system observables, state update/instrument structure, and causal composition under stated factorization hypotheses.

Reduced NFC provides no source-bound tuple with corresponding physical roles. In particular FCP-6 cannot identify:

- an NFC physical probe theory;
- a localized physical coupling region with AQFT causal semantics;
- a scattering map;
- an induced-observable CP map/instrument;
- a calibration bridge.

Therefore X4 produces a material K5 divergence rather than nontrivial convergence.

## 7. K6 — locality/causality

Reduced-NFC collars/interfaces are relational/combinatorial structures. AQFT localization is tied to supplied Lorentzian spacetime regions and Einstein-causal relations; the measurement extension inherits this physical causal semantics.

No theorem maps NFC interface adjacency to spacelike separation, causal convexity, finite propagation or causal instrument composition. Treating both as 'local' would smuggle spacetime semantics into NFC.

Strongest relation: `E5 FUNCTIONAL_ANALOGY`.

## 8. K7 — scale/renormalization

Fixed-carrier observational refinement is not pAQFT renormalization. No shared scale parameter, beta/RG flow, effective-observable map, fixed point or controlled continuum relation is source-bound.

The generic statement that both frameworks compare descriptions or construct effective structures is insufficient. K7 remains functional analogy only.

## 9. K8 — globalization

Both frameworks contain local-to-global questions, but the generic shell is removed. FCP-6 specifically tests whether Reduced NFC shares either:

- LCQFT's physically specialized functorial cross-spacetime consistency; or
- the source-bound obstruction to one natural preferred state across all spacetimes.

It does not. Reduced NFC's globalization burden does not specify the same source category, target algebra structure, naturality square, dynamical-locality hypotheses, or state-selection obstruction. No common obstruction invariant or extension condition is identified.

The only surviving commonality is generic local/global consistency logic: `E5`, `WEAK_GENERIC`, zero framework-specific credit.

## 10. K9 — realization

AQFT carries physical semantics before one reaches Standard Model numerical calibration: spacetime regions, localized observables, state expectation values and X4 system–probe measurement interactions are already physically interpreted. Reduced NFC does not currently have a source-qualified bridge of comparable status.

Concrete AQFT/QFT masses, couplings and cross sections remain empirically inherited and are not counted as independent AQFT evidence. Even after that subtraction, the K9 physical-semantics gap remains material.

## 11. K10 — empirical discriminator

Neither bounded framework supplies a pairwise Reduced-NFC–AQFT prediction satisfying all frozen K10 requirements.

Result:

`NO_CURRENT_PAIRWISE_EMPIRICAL_DISCRIMINATOR`.

This shared lack is not convergence and does not imply permanent empirical equivalence.

## 12. Interface Sufficiency test

Reduced NFC FIS is the conditional factorization

`q = Φ ∘ c`, equivalently `ker c ⊆ ker q`,

for a selected interface statistic and selected query/outcome.

Within the frozen FCP-4/FCP-5 AQFT corpus, FCP-6 finds **no theorem with the same logical role**. The Fewster–Verch measurement framework localizes a physical coupling and derives causal composition under a causal-factorization condition, but it does not state that all information relevant to an exterior query factors through a finite interface statistic.

Optional split/nuclearity results were not in the FCP-4 source corpus and are not imported here.

Verdict:

`NO_SOURCE_BOUND_AQFT_FIS_ANALOGUE_AT_CURRENT_SCOPE`.

This is a source-scope result, not a theorem that no AQFT analogue exists anywhere in the literature.

## 13. Globalization test

A neutral common question can be posed:

`locally compatible data -> ? -> globally admissible object`.

But a common question is not a common theorem. Reduced NFC presently lacks the specific LCQFT naturality/state-selection structure needed to instantiate AQFT's X3 obstruction. AQFT does not instantiate Reduced NFC's conditional finite-interface factorization/globalization problem.

Verdict: no shared non-generic globalization obstruction established.

## 14. Realization ladder

FCP-6 finds the following useful internal ladder without modifying K9:

1. formal observable/test structure;
2. operational interpretation;
3. localized intervention/interaction;
4. calibration to measured quantities;
5. empirical validation/discrimination.

Reduced NFC is source-qualified mainly at level 1. AQFT reaches levels 2–3 through its physical QFT semantics and X4 measurement architecture; concrete QFT models provide levels 4–5, but much of that evidence is `AQFT-I` for the abstract framework.

This is an analytical clarification inside K9, not a `KEY_EXTENSION_CANDIDATE`.

## 15. Dynamics cross-check

The phrase 'no universal framework-level history selector' hides a scientifically important difference:

- Reduced NFC lacks a source-selected physical dynamics at its foundational spine;
- AQFT is a structural framework within which concrete physical QFT models can and do carry real dynamics.

The two absences therefore should not be flattened into one structural recurrence.

## 16. AQFT subtraction results

Seven key-level apparent matches are eliminated or downgraded by the subtraction control before AQFT-specific convergence can be considered:

1. K1 — generic/reformulational state architecture;
2. K2 — generic equivalence/isomorphism logic;
3. K3 — generic composable-map/category structure;
4. K5 — generic formal observable organization;
5. K6 — supplied locality plus generic net language;
6. K7 — generic perturbative/effective-description language;
7. K8 — generic net/functor/gluing/local-global language.

After those removals, the AQFT-X residue has no E1–E4 Reduced-NFC counterpart at the present source scope.

## 17. Required verdicts

1. **Defensible correspondence:** K2, K5 and K8 retain weak/generic recurrence; K1, K3, K6 and K7 retain functional analogy only.
2. **Matches disappearing under subtraction:** seven key-level apparent similarities are eliminated/downgraded as listed above.
3. **Generic mathematics only:** K2, formal K5, generic K8; generic shells also removed from K1/K3/K6/K7.
4. **Functional analogies:** K1, K3, K6, K7.
5. **Strong convergence:** none.
6. **Moderate convergence:** none.
7. **Interface Sufficiency:** no source-bound AQFT theorem with the same FIS logical role in the bounded corpus.
8. **Globalization:** no shared non-generic obstruction/invariant identified.
9. **Observational equivalence:** no more than generic equivalence logic; not AQFT representation/physical equivalence.
10. **Locality:** no physical-causal map without spacetime smuggling.
11. **Measurement/realization:** no Reduced-NFC counterpart to X4 localized system–probe architecture.
12. **Pairwise empirical discriminator:** none currently.
13. **AQFT-X worth carrying forward:** X1 LCQFT cross-background organization, X2 rce, X3 natural-state obstruction, X4 localized measurement, X5 pAQFT construction.
14. **Reduced-NFC survivors worth carrying:** Interface Sufficiency and Globalization remain useful discovery questions; Realization and Dynamics remain decisive burden checks; Congruence/Viability remain generic controls.
15. **KEY_EXTENSION_CANDIDATE:** none.

## 18. Bounded scientific conclusion

> **NO NONTRIVIAL NFC–AQFT CONVERGENCE FOUND AFTER AQFT SUBTRACTION AT CURRENT SOURCE SCOPE.**

This is a bounded negative/nonforcing result. It does not prove that no future source-qualified correspondence can exist. It establishes that the present similarities do not survive the combined AQFT-subtraction, weaker-framework, physical-bridge and E1–E4 tests strongly enough to earn moderate or strong convergence credit.