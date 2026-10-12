# BFSS S3L — exact weighted cubic source-response gap and next proof boundary

**Research architecture review, 2026-10-11 PDT.** This note is scoped to BFSS S3L and is **NOT** evergreen leadership guidance, a qualified theorem, or a claim of complete source charge covariance. No new Lean theorem is asserted or compiler result invented.

## Input and independent source adjudication

The owner supplied a Claude architectural review that could not access the original Lean source. We directly checked, on research branch `research/openai-math-su2-s3l-combined-rotation`, these exact accepted source declarations:

| Source | Exact verified role | Does not provide |
|---|---|---|
| `SU2BFSSPhysicalDomainS3L5K2D3OriginalSourceUnconditionalCubicFactorProbe.lean`, `pairedActualCombined_comm_cubicFactor` | Literal original fermionAction–position–position commutator for genuine paired generator, under the single external plane hypothesis `i ≠ j` | A summed weighted charge theorem |
| `SU2BFSSPhysicalDomainS3L5K2E1DOriginalSixfoldIndexSpecializationProbe.lean`, `sourceComm_originalSixfoldIndices_of` | Parametric `SourceEnd` commutator transport over EXACT six original BFSS index types, with explicit pointwise premise | Concrete specialization to physical operators/weights |
| `SU2BFSSPhysicalDomainS3L5K4OriginalCubicOperatorCoefficientTransportProbe.lean`, `pairedSourceCubicCharge_asOriginalSixfoldMonomials` | Exact `sourceCubicCharge` definition as sixfold weight times `originalCubicSourceMonomial`, with real weight `(1/2)*structureConstant*gammaTwo` cast to complex | Any generator commutator with that charge |
| `SU2BFSSPhysicalDomainS3L5K6COriginalCubicCoefficientResponseProbe.lean`, `pairedOriginalCubicCoefficientResponse_freeSpinor` | Sum over ORIGINAL cubic monomials with transformed coefficient `structureWeight • (gammaTwo * Jᵀ - sourceCubicTwoFormSpatialResponse)` equals `-∑β J_{αβ} • sourceCubicCharge β` | Identity of that transformed-coefficient sum with the weighted K2D3 operator response |

Additional relevant qualified sources: `S3L5K2A` defines `sourceCubicFermionVariation i j γ A = ∑β ((J β γ : ℝ):ℂ) • pairedAlgebraData.fermionAction β A`; `S3L5K1` defines `sourcePositionVariation i j k B = if k=j then position i B else if k=i then -(position j B) else 0`; `S3L2` defines the exact source `gammaTwo` spatial response. The successful kinetic-source chain `S3L5J4/J6/J7/J8/J9` separately reindexes fermionic and orbital variations, combines their coefficients, and only then applies Clifford contraction. This is the closest source-verified prior strategy to reuse.

## The genuinely missing equality

Fix original spatial-plane indices `i j : SpaceIndex` with `hij : i ≠ j`, and original free spinor index `α`. Write **only as explanatory notation**, not substitute definitions:

- `G := sourceParametricCombinedPlane (pairedFermionPlaneSpinGenerator i j) i j`.
- `FγA := pairedAlgebraData.fermionAction γ A`.
- `XkB := position (N := 2) k B`.
- `M(k,l,γ,A,B,C) := FγA.comp ((XkB).comp (XlC))`.
- `w(α;k,l,A,B,C,γ) := (((originalCubicStructureWeight A B C * pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ))`.
- `ΔFγA := sourceCubicFermionVariation i j γ A` and `ΔXkB := sourcePositionVariation i j k B`.

Original K2D3 gives pointwise, with exactly this original source order:
`[G,M] = ΔFγA.comp (XkB.comp XlC) + FγA.comp (ΔXkB.comp XlC + XkB.comp ΔXlC)`.

The next substantive equality is:

`∑ k,l,A,B,C,γ, w(α;k,l,A,B,C,γ) • (ΔFγA.comp (XkB.comp XlC) + FγA.comp (ΔXkB.comp XlC + XkB.comp ΔXlC))`

`= ∑ k,l,A,B,C,β, (((originalCubicStructureWeight A B C • (pairedAlgebraData.gammaTwo k l * (pairedPlaneSpinGenerator i j).transpose - sourceCubicTwoFormSpatialResponse i j k l)) α β : ℝ) : ℂ) • originalCubicSourceMonomial k l β A B C.`

**This equation is NOT a qualified theorem.** It is the missing *operator-response reindex and regroup* from K2D3 to K6C. Merely applying K6C to an arbitrary `hresp` from a generic assembly lemma would silently assume precisely this unproved equation. The target is *not generally zero*: K6C's conclusion is the negative free-spinor action `-(∑ β, J_{αβ} • sourceCubicCharge β)`.

## A mathematically distinct staged strategy

**R1 — Fermion-index transport, no concrete giant generator.** At fixed spatial/color indices, use `sourceCubicFermionVariation` to reindex the ORIGINAL spinor `γ` variation into `β`. The resulting coefficient is `wStruct * (gammaTwo k l * Jᵀ) α β`. Model the proof on accepted `S3L5J4` finite-sum fermion response transport. Keep the operator family parametric in the reindex lemma and specialize only after the scalar identity is qualified. The original `48`-Majorana generator is absent here because its pointwise commutator is already K2D3.

**R2 — Two spatial-index transports, preserve noncommutative order.** At fixed color and spinor, reindex original `ΔXkB.comp XlC` and `XkB.comp ΔXlC` terms separately, reusing accepted `S3L5J6` one-dimensional branch method, then `Finset.sum_comm`/congruence to lift through the second spatial sum. For arbitrary spatial coefficient `c(k,l)`, the reindexed coefficient at `(k,l)` is

`(if k=i then c(j,l) else if k=j then -c(i,l) else 0) + (if l=i then c(k,j) else if l=j then -c(k,i) else 0)`.

This expression follows algebraically from the exact `sourcePositionVariation` branch convention, provided `i ≠ j`. Verify the exact expression and sign under the source convention in the Lean proof. Crucially, no position operators may be commuted or reordered to make the proof easier: the original `FγA.comp (XkB.comp XlC)` ordering is retained. First prove a coefficient/reindex lemma parametrically in the `SourceEnd` monomial family; then separately match the genuine source positions.

**R3 — Identify the spatial coefficient, THEN assemble.** At `c(k,l) = w(α;k,l,A,B,C,γ)`, prove that the R2 transformed coefficient equals the **negative** spatial contribution `-originalCubicStructureWeight A B C • sourceCubicTwoFormSpatialResponse i j k l` at entry `α γ`. This relies on the ORIGINAL gammaTwo definition and source gamma variation (`S3L2`) and is a genuine equation to prove: it is not supplied simply by K6C's matrix commutator identity. Combine R1 and R2/R3 via `add_smul`, `Finset.sum_add_distrib`, with reusable operator-parametric identities (as accepted J7/J8), and only *then* use K6C to conclude the original free-spinor response.

**Final original-source assembly** may use accepted E1D generic commutator transport and K4 exact charge equation. Passing R1–R3 alone would not settle Lean's historical concrete theorem conversion costs. That latter bridge must have its own separately qualified kernel proof, without prohibited new axioms or surrogate physics.

## Claude's proposed generic lemma — adjudication

- **Useful conceptual principle:** apply qualified theorem terms without unnecessarily restating giant source expressions; keep operator linearity independent from Clifford physics.
- **Redundant immediate theorem:** E1D already supplies exactly the sixfold original-index `SourceEnd.comp` commutator linearity with an explicit pointwise premise. Proving a generic `[Ring E] [Algebra ℂ E]` multiplication theorem does not discharge the missing physical response equality and risks introducing another irrelevant green gate.
- **Incorrect inference:** K6C cannot fill `hresp : ∑ w • R = T` automatically; it relates a DIFFERENT coefficient-weighted monomial expression to `T`. R1–R3 are necessary to establish that LHS. Similarly `i ≠ j` is one fixed external plane restriction, NOT something to discharge afresh at each spatial/color/spinor summation index.
- **Indexing warning:** a sixfold index tuple is a Cartesian PRODUCT, not a disjoint union. Conversion between nested Finset sums and a product Finset requires exact index bijection/reindex proof if adopted.
- **Diagnostic caution:** uncompiled `trace.Meta.isDefEq` speculation is not a proof and does not itself advance this physics obligation; the failed named-alias approach is closed in the scoped E2 negative-knowledge record.

## Next bounded trial, acceptance and stop criteria

**Do not launch a large physical-source CI gate now.** First implement or independently review a small **operator-parametric two-spatial-index reindex** proof (R2) and a *separate* original gammaTwo spatial coefficient identity (R3). These test a mathematically new, indispensable part of the cubic charge covariance, unlike another alias spelling test. A useful trial must retain the original branch conditions, ordered source factor and signs and have its own .olean and exact permitted-axiom audit before counting as accepted. If a scalar coefficient identity fails after source definitions and signs are checked, treat it as potential mathematical/convention information, not a purely technical red. Check R1 spinor indexing with J4 before composing.

Even a green R1–R3 is still only the source-response side; the final commutator transport/charge equivalence remains to be qualified. No Hamiltonian/spectral/positive-eigenvalue assertion follows.

**Governance:** Work remains on `research/openai-math-su2-s3l-combined-rotation` under draft PR #25. Canonical main/upstream source and the evergreen Project Lead guide are not modified by this analysis.

## Spatial response R2A/R2B acceptance and original source specialization

[**Cubic Spatial Response Reindex #1**](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38206984593), HEAD `a113aee5a67bcfd4d39354be743fec8f043ef859`, completed GREEN, revalidated pinned qualified 26-source/ten-axiom set, and compiled both R2A and R2B to nonempty .olean with exact theorem-name and allowed-axiom checks. The accepted R2A names are `sourceDoubleSpatialLeft_reindex`, `sourceDoubleSpatialRight_reindex`, `sourceDoubleSpatialCombined_reindex`. The accepted R2B names are `sourceOrderedFirstPosition_cases`, `sourceOrderedSecondPosition_cases`, `sourceOrderedCubicDoubleSpatial_reindex`. R2B had nonfatal simp/deprecation warnings. Neither R2A nor R2B alone is original cubic-charge covariance.

**Next bounded stages:** R2C specifically substitutes original K1 `sourcePositionVariation` and original `position (N := 2)` for both ordered coordinate factors into accepted R2B, while keeping `F : SourceEnd` variable. This probes a small source-definitional bridge without touching Fock. R2D separately instantiates `F` to actual `pairedAlgebraData.fermionAction γ A`, the genuine source fermion factor (not the full Fock spin generator), retaining arbitrary complex coefficients and the real two-position order. The workflow reuses cached accepted 26-source objects and qualifies kinetic J5–J9/K1/K2A prerequisites, followed by R2A/R2B and R2C/R2D as separate .olean + exact-name/axiom stages, stopping at first failure. **All of R2C/R2D remain UNQUALIFIED until the new gate passes.** R3 original gammaTwo spatial coefficient and R1 fermionic spinor reindex remain independent.

The next substantive physics target remains the original weighted-response identity, NOT a generic algebra lemma, named-alias conversion or Hamiltonian/spectral claim. Keep CI outcomes in this module-specific record, not FCP evergreen guidance.

## Original Position Reindex #1 — R2C name resolution error, not tested source theorem

[**Cubic Original Position Reindex #1**](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38207658988), HEAD `77920056ef5bbb28c43d1997256f4b2a1ff1ab49`, RED at R2C. All 19 preceding verification steps passed, including original 26-source/ten-axiom cache audit, K1 original position rotation, K2A fermionAction, requalification of accepted R2A/R2B. R2D never ran.

**First errors:** five `Invalid argument name N for function` at `position (N := 2)` in R2C source lines 37, 38, 43, 49, 50. Unlike the accepted K1 source module, R2C omitted `open OAI.BFSSQuantum.AlgebraData`. Consequently `position` name resolution was not source-faithful; the subsequent `whnf` heartbeat exhaustion and missing `sourceOriginalPositionPairSpatial_reindex` theorem name arose after ill-typed source. These downstream errors do **not** distinguish the mathematical R2C identity. No `sorryAx` theorem acceptance is inferred.

**Single bounded fix:** open exactly `OAI.BFSSQuantum.AlgebraData`, the namespace already opened in accepted K1 and R2D, with unchanged K1 source definition, position composition order, body `simpa only [sourcePositionVariation] using sourceOrderedCubicDoubleSpatial_reindex`, hypotheses and indices. Qualify R2C first and allow unchanged R2D to proceed only if R2C compiles. Do not raise heartbeats or modify the source mathematical statement. Record the exact next result here. Evergreen Project Lead guidance unchanged.

## Original Position Reindex #2 — original source position and fermionAction qualified

[**Cubic Original Position Reindex #2**](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38208328759), HEAD `1727981beeff5a6d67bd86da6ed0ea6889ff1315`, GREEN. The pinned 26-source cache and accepted K1/K2A/J9 chain were checked, R2A/B requalified, then **R2C** `sourceOriginalPositionPairSpatial_reindex` compiled to nonempty .olean and passed exact allowed-axiom audit, and **R2D** `pairedOriginalCubicPositionResponse_reindex` likewise compiled to .olean and passed exact audit, without `sorryAx`. This qualifies the correct original K1 spatial variation and original 48-Majorana-source `pairedAlgebraData.fermionAction` factor in BOTH ordered spatial slots with arbitrary complex c(k,l). No full cubic-charge commutator or coefficient contraction is claimed.

**New distinct R3A sign test:** The pinned `openai/math` `lean/OAI/MathematicalPhysics/BFSS/Core.lean` defines `AlgebraData.gammaTwo i j = (1/2 : ℝ) • (M.gamma i * M.gamma j - M.gamma j * M.gamma i)`, so the two original spatial reindex branches have a calculable coefficient. New R3A source module separately proves the first slot, second slot, and the combined **negative sourceCubicTwoFormSpatialResponse** matrix identity. It reuses the accepted S3L2 original source gamma variation and K3 gammaTwo declarations, preserving original signs and index domains, and does not touch Fock or charge. Until pinned CI compiles a nonempty .olean with exact theorem/axiom names, **R3A is UNQUALIFIED**. A mathematical sign contradiction here would merit reassessment of convention rather than a tactic retry. R1 fermionic spinor transport and final K2D3/E1D/K4/K6C source charge assembly are still separate.

Changes remain on the research branch and draft PR #25 only. FCP evergreen guide and canonical main untouched.

## R3A GammaTwo Spatial Reindex #1 — noncommutative matrix normalization failure

[**Cubic GammaTwo Spatial Reindex #1**](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38209247371), head `4102fd4c02a738d2b3f00fadb1573cb1e908bb41`, RED at original `SU2BFSSPhysicalDomainS3L5K2R3AOriginalGammaTwoSpatialReindexProbe.lean`. Pinned accepted 26-source cache and K3 coefficient source probe passed. R3A's first/second slot theorems reported (1) unsolved `j=i → …` branches where the necessary `i ≠ j` orientation had not been supplied to the simplifier, and (2) a `ring` failure yielding `1/2=0` after an over-aggressive matrix `simp … <;> module` normalization in the `k=i` or `l=i` branch. The combined theorem depended on these unqualified results, and all three axiom outputs included `sorryAx` (NOT accepted). The source sign can be checked analytically: at `k=i`, original `sourceGammaVariation i j i = -gamma j`, and at `k=j`, it is `+gamma i`; the reindexed coefficient is therefore `+gammaTwo j l` and `-gammaTwo i l` respectively. The second slot has the analogous original signed variation, with matrix multiplication order fixed.

**Controlled repair #2 (UNCOMPILED until new CI):** replace each previous first/second lemma case proof with a `k=i / k=j / other` (or `l=i / l=j / other`) split, explicitly carrying `hij`. At the negative variation branches use TWO private generic `GammaMatrix` identities proving `(1/2) • (X*Y-Y*X) = -(1/2) • ((-X)*Y-Y*(-X))` and its second-slot analogue by `simp only [neg_mul,mul_neg,smul_sub,smul_neg]` and `abel`, NEVER treating matrices as commutative or changing signs. At positive/zero branches use original source `gammaTwo` definition and the actual `sourceGammaVariation` branches. Preserve all three existing public theorem statements and R3A's total two-index matrix result. No `maxRecDepth`/heartbeat change. If this attempt fails, inspect the earliest goal before another correction; a scalar normalization error can contain genuine source-convention information. Evergreen guide unchanged. The accepted R2A–R2D original operator index mathematics remains separately verified.

## R3A GammaTwo Spatial Reindex #2 — residual if-true normalization

[**Cubic GammaTwo Spatial Reindex #2**](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38210290470), qualification HEAD `c3454640d26609226823d46e5620441c6546d767`, **RED only at R3A**, after original pinned prerequisites and K3 coefficient proof passed. Unlike R3A #1, the first new errors were NOT an algebraic contradiction or a failed `ring` normalization. They were two **`Type mismatch: After simplification`** failures at lines 62:4 and 86:4, the source `simpa only` applications of newly introduced abstract noncommutative `halfCommutator_negFirst/negSecond`. The expected type still contained `if True then original gammaTwo … else 0` and `if True then -gamma … else 0`, while the previously proved matrix identity had no remaining conditional. The `simp only [sourceGammaVariation, if_neg hij, if_pos rfl, AlgebraData.gammaTwo]` rule set omitted the final `ite_true` reduction. No `sorryAx`-free proof object resulted; all three public R3A declarations are **UNQUALIFIED**, including the combined theorem which depends on the first two.

**Controlled diagnostic repair #3:** Add exactly `ite_true` to the two source `simpa only` lists, leaving their auxiliary half-commutator lemmas, public exact original GammaTwo/spatial index equality, two-form/half factor, matrix multiplication order, source signs, explicit `i ≠ j`, K3 prerequisite and all CI budgets unchanged. This is directly responsive to the compiler-displayed `if True` in both remaining goals, not another blind `ring`/recursion escalation. Independently accepted R2A–R2D remain qualified. If the new run fails, inspect its FIRST residual goal (especially positive/zero branches) and avoid retrying near-identical simplifiers without new information. This document, not the FCP evergreen guide, is the historical status record.

## R3A accepted — original coefficient-to-spatial-source bridge R3B/R3C

[**Cubic GammaTwo Spatial Reindex #3**](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38211248198), source HEAD `800d1a504f7b408fe2e8fd2679d02fc04910fe26`, GREEN. Both original first- and second-index reindex lemmas plus combined `originalGammaTwo_bothSpatialIndices_reindex` compiled to a nonempty `.olean`, with exact theorem names and strict permitted-axiom/no-`sorryAx` audit, after source K3 accepted gammaTwo coefficient and 26-source provenance checks. Original signs, one-half, and noncommutative Clifford matrix multiplication remain verified. R2A–R2D previously qualified independently at [Original Position Reindex #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38208328759).

**Next substantive two-boundary experiment:** R3B applies the **original source 1/2 structureConstant** weight to the accepted R3A matrix theorem, then evaluates actual `α γ` entries with real→complex casting and preserved two spatial conditional coefficients. R3C uses accepted R2D source-ordered fermionAction and original N=2 positions to equate the **actual two-spatial weighted source position response** at fixed `A,B,C,γ,α` to the negative original GammaTwo two-form coefficient on the identical ordered monomials. Its coefficient is literally `originalCubicStructureWeight A B C * pairedAlgebraData.gammaTwo k l α γ`. One fail-closed workflow first requalifies accepted original source K1/K2A/R2A–D, K3/R3A; R3B and R3C separately compile to `.olean` and get exact-axiom checks. **These new claims are UNQUALIFIED pending CI.** If R3B fails inspect scalar/conditional coercion, not change physical signs; if R3C fails inspect source application boundary before spending more resources. Still outstanding: R1 fermion-spinor transport, original sixfold response recombination, source K4/E1D/K6C assembly. No full BFSS spectrum/Hamiltonian claim.
