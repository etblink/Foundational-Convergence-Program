# BFSS S4B12 / Gate100 — original gamma-two local matrix contraction

2026-10-26 Project Lead. **Candidate, not accepted.** Earlier Gate99 strict [run 40371858840](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40371858840) +3 to **27 scoped S4 accepted roots**. Gate99 original candidate Git blob `e16355efa140ec9cb69d164b146696ec272b6e85`, source original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original GammaWords.lean blob `d12051e70de679f5458dbd456667a32c7b407ce4`, Lean 4.34.1 and Mathlib `d13f23b` exact.

## Scientific theorem slice

Original source `BFSSGamma.gammaTwo_alt M.gamma M.gamma_clifford k j` proves `γ^{kj} = γ^k γ^j - δ_{kj} I`; original `BFSSGamma.gamma_sq` gives `γ^k γ^k = I`. Candidate:
1. `originalSourceGammaTwo_alternate` brings this original source theorem into the actual `AlgebraData N` `gammaTwo` matrix type, no synthetic gamma.
2. `originalSourceGammaTwo_left_contraction` proves `γ^k γ^{kj} = 0` when k=j and `γ^j` otherwise, with actual source Clifford matrices. This is the **local fixed-index contraction** needed for the forthcoming sum over k whose coefficient must be eight, and the noncommutative identity must be verified, not inferred from algebraic appearance.

Candidate `7a8942a93e825d473f7596599b0c784fdf22617e`, strict workflow `9276aa877dfd41868146c21c246526737ecfd2eb`. Strict gate recompiles pinned original Core, MassiveCoercivity, ColorMatrices, MixedEnergy, DeformedCharge and GammaWords and all previous accepted S4B3–S4B11 parents including Gate99. Exact candidate module +2 printed-axiom names, allowed only `propext, Classical.choice, Quot.sound`, fresh nonzero .olean, warning-as-error, source pins, G4K9C cache checks.

Until completed successful strict CI, **0 Gate100 theorem roots accepted; scoped S4 remains 27**. Next stage is nine-direction contraction to exactly eight and gamma-spinor trace/transpose, plus source color antisymmetry and theta bilinear reindexing to literal manuscript `B(x)`. Preserve a mismatch as negative knowledge. This stage does not assert the full gamma sum, source manuscript B equality, physical Spin(9) invariant domains, or actual spectral eigenpairs. Canonical `main`, original source and draft PR #25 untouched.
