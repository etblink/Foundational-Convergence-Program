# BFSS SU(2) G3-A — source-first adjoint color representation gate 0.1.0

**2026-10-08. Status:** UNCOMPILED. **Pinned:** Lean 4.34.1; `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`.

## Accepted parent

Gate #93 [run 37809607019](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37809607019), job `113422721746`, commit `5204519589c7922861910e849a6c77d92526c250`, proof blob `001d0d3c8d01a8b4090c4e5a58fe017263e2f168`, workflow blob `d8853a60e086d6106ec3318aaca5f0d88b9f6cd3`, qualified `bosonGauge_continuous` with only standard axioms. All three bosonic `GaugeData` fields are separately kernel-proven for `pairedAlgebraData : AlgebraData 2`.

## Source-grounded index orientation

Pinned `BFSS/GaugeCore.lean` defines `M.adjointCoefficient g A B` as the B-th coefficient of conjugating color A by gauge g. Pinned `BFSS/CovariantFields.lean` proves `M.colorConjugate_coefficient g a B = ∑ A, M.adjointCoefficient g A B * a A`. Pinned `BFSS/GaugeOrbits.lean` proves `M.colorConjugate_mul` and `M.colorConjugate_inner`. Here `M := FCP.BFSSSU2GaugeG1A.pairedAlgebraData` — the same exact AlgebraData 2, not a replacement.

**Define `R(g) B A := M.adjointCoefficient g A B`.** The reverse orientation risks a false representation law. Target true relations:
- `R(g*h) = R(g) * R(h)`;
- `R(g)ᵀ * R(g) = 1`, as a real 3×3 matrix;
- unit-vector coefficient identity and `R(1)=1` where convenient.

These must be actual Lean-verified identities at the pinned upstream types, using only permitted axioms and no weakened assumptions. Build pinned CovariantFields dependency closure before importing it in the new G3-A proof.

## Boundaries and stop rule

G3-A is a **color-coefficient/orthogonality** gate only. It does not implement any complex Fock group action, theta covariance, vacuum invariance, full `GaugeData`, physical-space or Hamiltonian spectrum. The determinant +1 of the color action is also not certified by orthogonality alone. Keep G1/G2 proofs and FCP main untouched; no upstream PR or issue. Submit one candidate, **do not inspect its workflow until the human owner reports GREEN/RED**. K1–K10 scientific change flags remain NO.
