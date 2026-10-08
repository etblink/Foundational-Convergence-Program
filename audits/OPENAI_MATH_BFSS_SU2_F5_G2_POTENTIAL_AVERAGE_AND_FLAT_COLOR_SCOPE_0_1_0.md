# BFSS SU(2) F5-G2 — exact Clifford average and commuting-color flat locus gate 0.1.0

**Date:** 2026-10-08. **Status:** `F5_G2_SUBMITTED_UNCOMPILED`. Branch `research/openai-math-su2-concrete-potential`.

## Accepted mathematical inputs

1. Gate #82, run `37767936582`, exact source `SU2BFSSFullAlgebraDataProbe.lean`: actual `OAI.BFSSQuantum.AlgebraData 2` witness `FCP.BFSSSU2Full.concreteAlgebraData`, only standard Lean axioms.
2. Gate #83, run `37769189603`, job `113284211059`, qualified HEAD `d55ffb529f710c60109deb67c1eff26fd68738fe`, source blob `6eaf5edc3e700bec24767944efba18fba76164d0`: exact upstream massless SU(2) bosonic potential equals sum of color-wedge minor squares and is nonnegative for every bosonic vector.
3. Pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `lean/OAI/MathematicalPhysics/BFSS/PotentialBasis.lean` blob `bc9b526284166efcba5a8e296adc79ba88e6764d`: theorem `OAI.BFSSQuantum.AlgebraData.deformed_potential_average` (lines 279–285) uses exact `1/16` normalization:
```lean
(1/16 : ℝ) * ∑ α : SpinIndex, ‖M.deformedPotentialMultiplier h m x α z‖^2 =
  M.deformedBosonicPotential h m x * ‖z‖^2
```
4. FCP source-first `RESEARCH_GATE_0_1_0.md` and `POSITIVE_EIGENVALUE_STRESS_TEST_FREEZE_0_1_0.md` demand careful distinction among quartic scalar potential nonnegativity, quantum transverse oscillator estimates, confinement/compactness, and existence of positive eigenstates. Prior favorable manuscript reviews do not turn these into Lean proofs.

## Two core tests and a direct corollary

- **Exact Clifford-average bridge:** instantiate the actual upstream 1/16 average theorem on constructed `concreteAlgebraData` at `(h,m)=(1,0)` and replace its scalar potential by Gate #83's verified color-minors sum. Quantifies over every bosonic `x` and fermionic `z`, with no new premises.
- **Single-color flat locus:** prove that if all bosonic color components outside color index 0 vanish, the scalar quartic potential is exactly **zero**, not strictly positive; prove for every such `x` using the exact wedge identity. Do not confuse this with a global coercivity conclusion or a rigorous unbounded-family witness.
- **Average vanishing under that flat condition:** deduce that the exact upstream averaged squared Clifford potential multipliers vanish on those configurations (for arbitrary fermionic vector) via the generic average identity and the proven scalar zero.

This scope is deliberately **not** a Hamiltonian gap, gauge covariance, bosonic confinement or compact resolvent theorem. It does not assert the existence of nonzero/unbounded flat configurations as a kernel-certified claim unless separately proved; a later explicit witness can establish that stronger fact.

## Gate and effect discipline

Compile new file importing accepted F5-G1 and `PotentialBasis` through pinned upstream. No new axioms, `sorry`, `admit`, weakened conclusions, excessive resource limits, FCP main or upstream writes. Require standard-only axiom reports. Once the compiler candidate is submitted, stop without inspecting its workflow until the owner reports GREEN/RED. FCP scientific T6/K1–K10 disposition stays unchanged.
