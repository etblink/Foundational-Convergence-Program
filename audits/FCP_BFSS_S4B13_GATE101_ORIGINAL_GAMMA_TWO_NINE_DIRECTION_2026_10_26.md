# BFSS S4B13 / Gate101 — nine original Spin(9) spatial directions

**26 October 2026, Project Lead. Unaccepted strict candidate.**

Starting strict evidence: Gate100 #2 [run 40375994116](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40375994116), two original Clifford roots accepted, scoped S4 ledger **29**. Source candidate accepted S4B12 blob `e9b31b8b98626d552e2f2b880fa607d06c861dd7`. Original immutable BFSS `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original GammaWords exact blob `d12051e70de679f5458dbd456667a32c7b407ce4`, frozen Lean 4.34.1 and Mathlib `d13f23b`. Candidate S4B13 blob `0a9e3092f962ad15acc914f4935b87ad59b874e4`; new Gate101 workflow `5bc255b91e1ac477dbf74309c4a18eeb61eee6c4`.

## Two intentionally separate obligations

1. **Pure finite cardinality:** On original `SpaceIndex = Fin 9`, exclude one `j` and sum a fixed `GammaMatrix` `T`: `∑ k, if k=j then 0 else T = (8 : ℕ) • T`. This must be proved via the actual `Finset.sum_filter` / `Finset.univ.erase` and card-erase, not by an unverified use of dimension nine.
2. **Original matrix theorem:** apply strictly accepted S4B12 `originalSourceGammaTwo_left_contraction` termwise to prove `∑ k : SpaceIndex, M.gamma k * M.gammaTwo k j = (8 : ℕ) • M.gamma j`, with exact source `M.gamma` and `M.gammaTwo`. No declaration of original gamma as new synthetic basis.

Strict workflow retains exact original source hashes, G4K9C ancestry, fresh original Core/MassiveCoercivity/ColorMatrices/MixedEnergy/DeformedCharge/GammaWords and S4B3–S4B12 verified theorem parents, including final accepted Gate100 root. Candidate requires fresh .olean, strict no warnings, exit 0, exactly two original named `#print axioms` without `sorryAx` and only `propext, Classical.choice, Quot.sound`. No axiom insertion, altered original source, or CI policy weakening.

**0 Gate101 roots accepted until completed strict success.** Scoped count remains **29** pending execution. A red finite-set tactic is diagnostic, not a disproof of the already verified local source Clifford identity. No coefficient equivalence to manuscript `B(x)`, gamma/color index antisymmetry global reduction, spin-9 physical closed-domain, spectral eigenvalue existence, or gap asserted. Main/PR #25/etblink math unaffected.
