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
