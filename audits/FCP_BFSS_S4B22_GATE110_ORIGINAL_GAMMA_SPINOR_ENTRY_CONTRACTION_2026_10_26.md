# BFSS S4B22 / Gate110 — exact original gamma spinor-entry contraction

2026-10-26 Project Lead — **UNACCEPTED strict candidate.** Gate109 [Actions run #40410547946](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40410547946) strictly accepted +1 original real-linear fermionic field theorem, scoped S4 **46** accepted. Original pinned mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1/Mathlib d13f23b, G4K9C qualified original source cache, all original BFSS source Git SHA and accepted parent pins immutable. Candidate Git source blob `4c510ec024eb8a058b7140245c934590cbbb6924`, strict workflow Git blob `633e1c8322941c8af7423960deaa4927b46fa9cc`, exact accepted S4B21 blob `35a86b378c1711d986ea5eda950677e2cc112f56`.

**Actual mathematical target** `originalSourceGammaTwo_spinor_entry_contraction`: for true `M : OAI.BFSSQuantum.AlgebraData N`, `j:SpaceIndex`, and original `β,δ:SpinIndex`, prove
```text
sum_(k:SpaceIndex) sum_(α:SpinIndex)
  M.gamma k α β * M.gammaTwo k j α δ
= 8 * M.gamma j β δ.
```
The original field in Gate109 has a kinetic-before-field theta product whose scalar coefficient contracts a source symmetric gamma matrix indexed `(α,β)` with source `gammaTwo(k,j)` indexed `(α,δ)`. The strictly accepted S4B13 `originalSourceGammaTwo_nine_direction_sum` proves matrix equation `∑k M.gamma k * M.gammaTwo k j = 8 • M.gamma j`. The **original** `M.gamma_symmetric k` source field (Core.lean lines 24–34) is needed to convert this matrix equality to precisely ordered spinor entries; no fictitious gamma, no surrogate epsilon, and no CAR exchange. This exact index contraction is the missing coefficient-bottleneck before comparison with the manuscript's `B(x)=(i/2) sqrt(2) ε_abc x_i^a γ^i_{βδ} θ^b_β θ^c_δ` recorded in the earlier [Gate88 source/form analysis](../../audits/FCP_BFSS_PROJECT_LEAD_GATE88_DIRECT_SOURCE_FORM_SPIN9_COVARIANCE_2026_10_25.md). It is not an assertion of whole operator equality.

One substantive new principal theorem, no extra invented source assumptions. Candidate uses `M.gamma_symmetric k`, `Matrix.transpose_apply`, exact `Matrix.mul_apply`, original 9-direction Clifford sum, and checks matrix entry transport. Strict Gate110 rebuilds original Core/MassiveCoercivity/ColorMatrices/MixedEnergy/DeformedCharge/GammaWords/ColorLie and approved S4B3–S4B21 parents, frozen toolchain and original hashes/ancestry, exact 1-root axiom report limited to `propext, Classical.choice, Quot.sound`, no sorryAx and warnings-as-errors, positive new .olean. Gate110 **0/1 roots accepted until completed strict green**, scoped total **46**.

**Boundary:** Even on success, need exact color `f_{abc}=√2 ε_{abc}` in `N=2`, finite nested sum reassociation across bounded complex CLM operator multiplication, and strict source CAR consistency before claiming actual manuscript `B(x)`; no Spin9 physical domain or spectral theorem implied. Canonical `main`, immutable source and draft PR #25 remain unchanged. Reds are negative knowledge.

## Gate110 #1 STRICT RED — matrix-valued finite sum never distributed to entries

Independently verified [GitHub Actions run #40412709683](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40412709683), job `121887194792`, commit `4efd16d0d4e0b2f89bc1bea36d9d65be58430f41`, `completed/failure` on 2026-10-26. The frozen original mathematics etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a, source blob pins, Lean 4.34.1 and Mathlib d13f23b, qualified G4K9C ancestry, all fresh original BFSS sources and accepted S4B3–S4B21 parents passed, including S4B21 .olean 81040 bytes. **Candidate compile exit 1, axiom report includes `sorryAx`: 0/1 new accepted roots; scoped total stays 46.** The original failed compiler log was preserved at [artifact #12693409072](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40412709683/artifacts/12693409072).

Decisive source error at candidate line 41:
```text
Type mismatch: After simplification, term h
has type
  ((∑ k, M.gamma k * M.gammaTwo k j) β δ) =
  (↑8 * M.gamma j β δ)
but is expected to have type
  (∑ k, ∑ α, M.gamma k β α * M.gammaTwo k j α δ) =
  (8 * M.gamma j β δ)
```
The candidate used `_root_.sum_apply` instead of **`Matrix.sum_apply`**, so the matrix-valued `∑k M.gamma k * M.gammaTwo k j` was not distributed to its `(β,δ)` entries. The pinned Mathlib **d13f23b** defines `Matrix.sum_apply` exactly in `Mathlib/Data/Matrix/Basic.lean` at line 71: `(∑ c ∈ s, g c) i j = ∑ c ∈ s, g c i j`; `Matrix.mul_apply` in `Mathlib/Data/Matrix/Mul.lean` line 298 expands each product to the inner spinor sum. The original source gamma symmetry and Gate101 matrix contraction are not contradicted; the original candidate's `hsymm` and last finite-sum congruence were accepted; ONLY this subproof has a type mismatch. No source mathematical modification warranted.

**Gate110 #2 exact remedy (candidate, unaccepted)**: replace the ONE lemma name `_root_.sum_apply` with `Matrix.sum_apply`, retain accepted source matrix theorem, `Matrix.mul_apply`, original `nsmul_eq_mul` and `gamma_symmetric`, identical entire single principal theorem statement. New source Git SHA `4e24bb5c45d022889d4727210b5fe23bd872aab6`, strict workflow SHA `2859f6895416f7965efbe24aa505078b5c1d5df4` with only both candidate source hash pins altered. All warnings-as-errors, original source/ancestor and Lean pins, axiom `{propext, Classical.choice, Quot.sound}` without `sorryAx` remain mandatory. If Lean reports another mismatch or linter complaint, preserve next red separately and do not promote root. Manuscript (B(x)), original Pauli (f_{abc}) normalization, real Fock CAR reordering, physical Spin9 and spectral existence remain unproved. Canonical `main`, immutable original BFSS and draft PR #25 unchanged.

## Gate110 #2 STRICT RED — ONLY finite numeral cast remains after genuine matrix entry expansion

Independently verified [GitHub Actions run #40414346563](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40414346563), job `121892758909`, head `a6e6304b6c9862f9fdf439f68bb31f9de922a415`, `completed/failure` on 2026-10-26 from the original fresh Lean compiler output. Original frozen etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a, source Git blob pins, Lean 4.34.1/Mathlib `d13f23b`, qualified G4K9C original source cache, and all fresh original BFSS source modules and accepted S4B3–S4B21 parents qualified, including S4B21 parent .olean 81040 bytes. Candidate warnings [], compiler exit **1**, `sorryAx` in principal theorem axiom report; **0/1 Gate110 roots accepted, scoped S4 remains 46**. The exact compiler logs and original .olean ancestry [Actions artifact #12695052571](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40414346563/artifacts/12695052571) were preserved.

Actual compiler diagnosis, line 41:
```text
Type mismatch: After simplification, term h has type
  (∑ c, ∑ j_1, M.gamma c β j_1 * M.gammaTwo c j j_1 δ)
    = (↑8 * M.gamma j β δ)
but is expected to have type
  (∑ k, ∑ α, M.gamma k β α * M.gammaTwo k j α δ)
    = (8 * M.gamma j β δ)
```
Gate110 #1 had failed to expand the matrix-valued spatial sum due to inappropriate `_root_.sum_apply`. Attempt #2 correctly used the genuine pinned `Matrix.sum_apply`, and the **entire desired pair of original spatial/spinor indices, gamma multiplication and order now agree** (bound variable names `c,j_1` vs `k,α` are alpha-equivalent). The remaining mismatch is the *unreduced natural-to-real cast* from `(8:ℕ) • M.gamma j` after `nsmul_eq_mul`, rendered `↑8` on the right versus the literal real numeral `8`. There is no counterexample to the source gamma contraction.

**Gate110 #3 minimum remedy, still unaccepted**: add only the pinned Lean `Nat.cast_ofNat` normalization to the existing `simpa only [Matrix.sum_apply, Matrix.mul_apply, Matrix.smul_apply, nsmul_eq_mul]` list, preserving the original theorem, original `AlgebraData` gamma symmetry, all strict toolchain/source/parent SHA pins and axioms/warning controls. New candidate source SHA `78a0272bb9e222aaeb574f8dcdbacf8860769e48`, workflow Git blob `688b0cbba8eb9472e631c116c9f9c3a36b120482` (only two exact candidate source SHA pins updated). Until completed independently verified green, **no new accepted roots**, scoped S4=46. Future failure is diagnostic evidence; do not suppress linter or `sorryAx`. Original SU(2) color-to-epsilon and ordered theta CAR reduction to manuscript `B(x)`, physical Spin9 and spectral existence remain open. Canonical `main`, original BFSS math, draft PR #25 unchanged.

## Gate110 #3 FINAL STRICT ACCEPTANCE — source gamma spinor-entry contraction

**Independently verified by Project Lead 2026-10-26:** [Actions run #40415974159](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40415974159), job `121898276770`, research candidate `5c5c57d0cbdb74d159b9cd3bd6c739f6f5f5595b`, `completed/success`, against original compiler log. Immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, exact source blob/manifest pins, frozen Lean 4.34.1 and Mathlib d13f23b, qualified G4K9C source ancestry and all SHA checks passed. Original BFSS Core, MassiveCoercivity, ColorMatrices, MixedEnergy, DeformedCharge, GammaWords and ColorLie and every accepted S4B3–S4B21 parent freshly compiled, S4B21 parent .olean 81040 bytes. Candidate source Git blob `78a0272bb9e222aaeb574f8dcdbacf8860769e48`, workflow Git blob `688b0cbba8eb9472e631c116c9f9c3a36b120482`, successful fresh candidate .olean, zero candidate warnings, exact axiom validation.

Actual compiler evidence:
```text
GATE110_CANDIDATE_SOURCE_WARNINGS []
GATE110_COMPILER_EXIT 0 AXIOM_REPORTS [
 ('FCP.BFSSSU2PhysicalDomainS4B22.originalSourceGammaTwo_spinor_entry_contraction', {'Quot.sound', 'propext', 'Classical.choice'})]
GATE110_ORIGINAL_GAMMA_SPINOR_ENTRY_CONTRACTION_ONE_ROOT_STRICT_PASS
```
**Gate110 #3 one/one principal root strictly accepted, scoped S4 46 → 47.** The real source `M.gamma_symmetric k`, actual `M.gammaTwo k j`, accepted S4B13 nine-direction matrix contraction and pinned Mathlib `Matrix.sum_apply`, `Matrix.mul_apply`, `Nat.cast_ofNat` establish `∑ k α, M.gamma k α β * M.gammaTwo k j α δ = (8 : ℝ) * M.gamma j β δ` at true original 16-spinor component order. No synthetic gamma matrices, no false color normalization, no fermion CAR reordering. This closes the gamma-index contraction only, **NOT the original ordered CLM product's full coefficient rearrangement** or the manuscript `B(x)` typed operator equality.

Negative knowledge remains auditable:
- #1 [run #40412709683](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40412709683): root red; `_root_.sum_apply` didn't expand matrix-valued sum.
- #2 [run #40414346563](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40414346563): root red; correct `Matrix.sum_apply` left only `↑8` versus `8 : ℝ` natural cast in the scalar RHS.
- #3: `Nat.cast_ofNat` normalized the genuine original source RHS, no axiom or linter weakening.

**Next substantive workstream**: inspect exact source `M.structureConstant` and pinned SU(2) Pauli source representation `N=2` for strict original `f_{abc}=√2 ε_{abc}` normalization, including index orientation; separately test source ordered Majorana-bilinear coefficient indexing against manuscript's `B(x)`. Never postulate an equality of ordered fermion products from a scalar gamma theorem. Do not claim physical Spin9 closed-form covariance, spectral ground-state existence or mass gap. Scoped count 47 distinct from unreconciled global roots; canonical main, immutable source and draft PR #25 unchanged.
