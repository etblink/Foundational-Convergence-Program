# S1V52L9E5 — source-exact original Fock Clifford-square proof plan

**Disposition:** RESEARCH SCOPING / UNQUALIFIED CANDIDATE ONLY. No new Lean root, cache, or successful gate asserted. Accepted S1V52 total remains **203** after independently audited L9E4 Gate #4.

## Frozen inputs and actual target

- Exact source of record: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- L9E2 strictly establishes `originalNormalizedFockMajorana α A * originalNormalizedFockMajorana α A = 1`, with the original **positive sqrt(2)** normalization of original `pairedTheta`.
- L9E3 strictly establishes the **full equal/distinct normalized pairwise CAR** `Γ_αA Γ_βB + Γ_βB Γ_αA = (if (α,A)=(β,B) then 2 else 0) • 1`.
- L9E4 strictly constructs the `ℝ`-linear map `originalFockGammaRealLinear : Source48Vector →ₗ[ℝ] (Fermion 2 →L[ℂ] Fermion 2)` by summing `v p • Γ_(sourceBlockColorEquiv.symm p)` over **the original `Fin 24 × Fin 2` source labels**, with exact normalized axis values.
- Source S1V6 accepts `source48Quadratic_eq_dot v`, discharging `Q(v)=∑ p, v p * v p` for the original `source48Quadratic`. Do **not** re-expand `QuadraticMap.weightedSumSquares` inside a noncommutative Fock goal.

**Final original-source statement to qualify, with exact scalar coercion/type checked at elaboration:**

```lean
∀ v : Source48Vector,
  originalFockGammaRealLinear v * originalFockGammaRealLinear v =
    (source48Quadratic v) • (1 : Fermion 2 →L[ℂ] Fermion 2)
```

Here real scalar multiplication in the actual complex-linear-operator algebra must agree with the base-ring `algebraMap ℝ` used by `CliffordAlgebra.lift`. Establish that compatibility explicitly before claiming the universal Clifford module map.

## Mathematical reduction (valid algebraic argument, not a Lean certificate)

For any finite set of indices `i`, real weights `c_i` and operators `Γ_i` with `Γ_i²=I` and `Γ_iΓ_j+Γ_jΓ_i=0` for `i≠j`, define `T(S)=∑_{i∈S} c_i Γ_i`. Under central real-scalar multiplication:

1. Base `S=∅`: `T(S)^2 = 0`.
2. Insert `i∉S`: `T(S∪{i})=c_i Γ_i+T(S)`.
3. Cross terms cancel: `(c_iΓ_i)T(S)+T(S)(c_iΓ_i)=∑_{j∈S}c_ic_j(Γ_iΓ_j+Γ_jΓ_i)=0`.
4. Diagonal term: `(c_iΓ_i)^2=c_i² I`.
5. Consequently `T(S∪{i})² = (c_i²+∑_{j∈S}c_j²)I`.

This induction isolates noncommutative multiplication, finite sums, and scalar normalization **before** any 48-real source indexing. It requires neither a new physical hypothesis nor changing gamma signs.

## Staged implementation and falsifiable gate boundaries

**L9E5A — abstract weighted CAR contraction.** Candidate source staged at `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9E5AFiniteRealWeightedFockCliffordSquareProbe.lean`. It states a finite `Finset` theorem over the original actual Fock continuous-linear-operator type, exposing diagonal and off-diagonal CAR premises. Proof uses `Finset.induction_on`, `Finset.sum_mul`, `Finset.mul_sum`, a typed scalar `smul_mul_smul` interface, and `noncomm_ring` for the explicitly noncommutative expansion.

This is **STAGED, NOT COMPILED**. No `#print axioms` output has yet been certified. The exact ℝ-scalar/operator product lemma, finite bounded-sum binder expansion, and addition/induction rewrites are concrete preflight risks. Unlike the original K2C repeated elaboration attempts, a first failing Lean diagnostic here would test a **new proof architecture**. No large original-source term appears in L9E5A.

**L9E5B — original finite-source specialization.** Only after A is qualified, instantiate `i : SourceLabel`, weights `c p=v p`, operators `Γ p=originalNormalizedFockMajorana (sourceBlockColorEquiv.symm p).1 (sourceBlockColorEquiv.symm p).2`. Discharge:
- diagonal square via qualified L9E2;
- pairwise `p≠q` anticommutation via L9E3 and `sourceBlockColorEquiv.symm.injective`, **with source pair/color order explicit**;
- finite sum identity via the *actual* L9E4 definition (not a redefined replacement);
- scalar norm identity via `FCP.BFSSS1V6.source48Quadratic_eq_dot` and finite `dotProduct`.

Do not present L9E5A as the original BFSS result: B is independently necessary.

**L9E5C — universal algebra/actual original Fock realization.** First inspect the pinned Mathlib `CliffordAlgebra.lift` API, especially its target `Algebra ℝ` requirements and `algebraMap`. Accepted S1P1 is a source-exact model of `CliffordAlgebra.lift` into **CliffordAlgebra itself**, not evidence that the required algebra instance or normalization on `Fermion 2 →L[ℂ] Fermion 2` is already resolved. Construct the latter honestly, then prove its source-generator action. No ad hoc conditional module representation may be passed off as constructed.

**Next after C:** compare Spin(48) inner action against the actual exterior-Fock gauge representation and, separately, continuity on a justified source Clifford/Spin topology. The all-vector square and even a successful `lift` do not establish those.

## Negative knowledge and stop condition

- L9E4 Gate #1–#3 failures were caused by concrete real-scalar/type inference and `Pi.single` normalization, not CAR contradiction. Prefer typed original operators and the original `sourceBlockColorEquiv`.
- S1P0/P1 show named `source48Quadratic_eq_dot` and source-preserving universal lift outperform aggressive direct quadratic unfolding.
- L9C1 shows finite matrix identities before nested trace contractions.
- K2C proves that a dozen cosmetically changed tactics are inferior to a genuine architectural change.
- If L9E5A first gate reveals a structural incompatibility between real operator scalar multiplication and its required product laws, diagnose the **real/complex algebra interface** before rerunning the same proof. Do not change the original positive-sqrt2 normalization or claim a counterexample from a mere elaboration error.

## Trigger discipline

Only stage source and scoped research/audit documents at this point. **No workflow changed, no CI intentionally launched, no source-dependent theorem qualified.** Before a future L9E5A strict gate, check source pins, parent L9E4 qualified cache scope, typeclass/API names, and workflow path filtering; run one isolated research-branch gate with fail-closed `.olean` and exact `#print axioms` audit. Retain every red with its first causal error.

Canonical `main`, immutable upstream source, and draft PR #25 remain untouched by this research-scoping operation.
