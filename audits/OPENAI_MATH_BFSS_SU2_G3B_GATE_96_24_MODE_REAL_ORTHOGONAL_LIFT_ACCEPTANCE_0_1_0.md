# BFSS SU(2) G3-B — Gate #96 24-mode real orthogonal lift acceptance 0.1.0

**Date:** 2026-10-08
**Disposition:** `PASS__EXACT_24_MODE_BLOCK_GROUP_REPRESENTATION_ORTHOGONAL`

## Exact kernel / workflow evidence

- Research branch `research/openai-math-su2-concrete-potential`, qualified commit `61b69699079d62fa17527a1cb82183281686250f`.
- Source `experiments/openai-math-su2-concrete-potential/SU2BFSSG3B24ModeOrthogonalLiftProbe.lean` blob `c90b25156ec4d81ee16e5939cd888cc12cdc33a3`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml` blob `0527bc0a58e9d6437c1ba4711c488148198d5b65`.
- [Gate #96](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37817317491), run `37817317491`, job `113449139024`. Run, job and compilation step all success; run SHA exactly matched the qualified commit; `lake env lean SU2BFSSG3B24ModeOrthogonalLiftProbe.lean` completed with no Lean errors or `sorryAx`.
- Pinned OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1 and mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, unchanged.

The following four declarations **each** printed exactly `[propext, Classical.choice, Quot.sound]`:
```text
FCP.BFSSSU2GaugeG3B.oneParticleMatrix_block
FCP.BFSSSU2GaugeG3B.oneParticleMatrix_one
FCP.BFSSSU2GaugeG3B.oneParticleMatrix_mul
FCP.BFSSSU2GaugeG3B.oneParticleMatrix_orthogonal
```

## Qualified mathematical content

The **exact** SU(2) adjoint color matrix `R(g) B A = M.adjointCoefficient g A B` from G3-A Gate #95 is lifted to the **actual** paired Fock-index `Fin 24`, using `colorModeEquiv : Fin 8 × ColorIndex 2 ≃ Fin 24` already qualified in G1-A. The action is `R24(g)=reindex(I8 ⊗ R(g))`; the block theorem gives each coefficient:
```lean
R24(g) (colorModeEquiv(j,B)) (colorModeEquiv(k,A)) =
  if j = k then R(g) B A else 0
```
and real matrix identity, multiplicativity and orthogonality are all kernel verified:
```lean
R24(1)=1
R24(g*h)=R24(g)*R24(h)
(R24(g))ᵀ * R24(g)=1
```

**Important limit:** this is still a **real matrix** on the 24-mode one-particle *labels*; it is not yet the complex unitary mode representation, nor the induced fermionic Hilbert `Fermion 2` action, theta covariance, vacuum invariance, joint continuity, or full pinned `GaugeData`.

## Forward scope

G3-C should embed R24 into genuine complex 24×24 matrices using exact `algebraMap ℝ ℂ`; prove the unitary identities (conjugate transpose as inverse, both product orders) and a genuine `GaugeGroup 2 →* Matrix.unitaryGroup (Fin 24) ℂ`. The underlying matrix homomorphism must use the exact G3-B `oneParticleMatrix`. Pinned mathlib includes `Matrix.map_mul`, `Matrix.map_one` and `Matrix.conjTranspose_map`. This is still an intermediate one-particle action; G4 must separately construct second quantization on `Fermion 2`.

Existing G1 and G2 results remain valid. No upstream or FCP `main` changes, public PR/issues, or scientific K1–K10 effects. No uncompiled work should be called accepted.

**Truth-seeking before check-counting.**
