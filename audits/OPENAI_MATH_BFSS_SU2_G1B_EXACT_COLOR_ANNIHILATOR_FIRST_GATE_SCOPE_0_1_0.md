# BFSS SU(2) G1-B — exact paired-color annihilator formula, first gate 0.1.0

**Date:** 2026-10-08
**Status:** `G1B_FIRST_GATE_SUBMITTED_UNCOMPILED`.

## Immutable accepted inputs and source authority

- Branch `research/openai-math-su2-concrete-potential`, pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1.
- Stage G1-A qualified [Gate #87](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37776063148), run `37776063148`, job `113307099770`, accepted compiler HEAD `41cb213ccd6c12877cd76b2bbb1d6d82bc214db7`, proof blob `4f8fbf05a35c1d625746931b7ff0361b7ffc2ec4`.
- Qualified new second actual pinned `AlgebraData 2`: `FCP.BFSSSU2GaugeG1A.pairedAlgebraData`, with verified exact 24-mode/48-Majorana spin/color pairing.
- Genuine upstream Fock operators: `FCP.BFSSFermionF1.creator`, `annihilator`, and real self-adjoint `majorana0`; `FCP.BFSSFermionF2.majorana1`, all on the original exact `OAI.BFSSQuantum.Fermion 2` complex continuous linear operator space.
- Primary manuscript `positive-eigenvalues-relative-su2-bfss.tex`, lines 701–727: color-specific annihilator at each one of eight spin pairs, `c_j^a = (theta_{2j-1}^a + i theta_{2j}^a)/sqrt(2)` (1-based notation). Our G1-A spin pairs use 0-based labels `spinPairEquiv.symm (j,0)` and `spinPairEquiv.symm (j,1)`.
- FCP qualified `SU2FermionF3RecoveryProbe.lean` `majorana1_phase` is private, but its compiler-qualified proof pattern can be used **as a newly proved local lemma**. Its key source algebra is `majorana1 = (sqrt 2 / 2 : ℂ) • (I • (creator - annihilator))`. F1 already proves `star (creator) = annihilator`.

## Precise target of the G1-B kernel compiler gate

Prove an equality of genuine complex continuous linear operators, for **every** `j : Fin 8` and color `A : ColorIndex 2`:
```lean
FCP.BFSSFermionF1.annihilator (colorModeEquiv (j,A))
 = (((Real.sqrt 2 / 2 : ℝ) : ℂ)) •
    (pairedTheta (spinPairEquiv.symm (j,(0 : Fin 2))) A +
      Complex.I • pairedTheta (spinPairEquiv.symm (j,(1 : Fin 2))) A)
```
It must also be linked to the **actual `pairedAlgebraData.theta`** field, rather than simply to a similarly spelled external function. This removes the manuscript's color-pairing assumption at the operator level and pins its **sign/phase normalization** to accepted Fock operators.

Proof must use the actual definitions, the accepted creator-adjoint identity, the exact `i² = -1` and `(√2/2)² = 1/2`; no new axioms, `sorry`, `admit`, finite brute-force 2^24×2^24 matrices, or unproved group covariance.

## Forward bridge, not yet constructed

The theorem validates the color-specific annihilator *formula*. It does not construct:
- SU(2) -> SO(3) adjoint coefficient equality;
- second-quantized SU(2) action on each spin-pair's three complex modes;
- group representation, unitarity, continuity, or theta covariance;
- gauge-invariant vacuum line;
- `GaugeData` or physical/gauge-invariant Hamiltonian spectral claims.

Later G2 must source-audit the **exact** coefficient convention of `M.adjointCoefficient`, before coding any implementer.

Submit a single compiler gate on FCP research branch and **stop without inspecting its new run** until the owner reports GREEN/RED. No upstream `openai/math`, FCP main, PR or issue mutations. FCP scientific T6 and K1–K10 unchanged.
