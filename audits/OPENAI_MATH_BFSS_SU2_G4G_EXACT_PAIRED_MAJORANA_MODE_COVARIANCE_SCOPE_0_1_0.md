# BFSS SU(2) G4-G — exact real and imaginary Majorana mode covariance 0.1.0

**Date:** 2026-10-08. **Stage:** `G4G_UNCOMPILED_SCOPE_FROZEN`.

## Authority and source pins

- Accepted Gate #110 [run 37856681943](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37856681943), job `113582432742`, HEAD `206e716886064f3e21f78a7e9647c7ca16e3a6b1`, source `SU2BFSSG4FRealColorAnnihilatorForwardProbe.lean` blob `c633692f73341514efbf1365bd3a7ebcbc4e22f3`, workflow blob `90f0b93c3ac77a280e2e33c40d1786e036d84035`. Four declarations with exactly `[propext, Classical.choice, Quot.sound]`.
- Gate #104 verified `G4C.creator_fermionGauge_covariant`, Gate #110 verified `G4F.annihilator_fermionGauge_forward`, both for all actual BFSS `Fermion 2` vectors with exact **forward** coefficient `G3C.complexOneParticleMatrix g j i`.
- Gate #108 verified `G4E.fermionGaugeUnitaryHom`; the G4-B linear action is its identical underlying map.
- Accepted `FCP.BFSSFermionF1.majorana0` and `FCP.BFSSFermionF2.majorana1` are **real self-adjoint** `Fermion 2 →L[ℂ] Fermion 2` with real normalization `Real.sqrt 2 / 2` and complex `I` on the odd component. The odd phase equation is already verified by source-level tactic in `SU2BFSSG1BColorAnnihilatorProbe.lean`; its declaration is private, so reproduce the same proof, not an unproved rewrite.
- Pinned Lean v4.34.1, `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Frozen G4-G goals

On the **exact** `Fermion 2` prove for every `g : GaugeGroup 2`, mode `i : Fin 24`, vector `v`, and all scalars `a,b : ℂ`:
1. `G(g) (a • creator i v + b • annihilator i v) = ∑ j, U(g) j i • (a • creator j (G(g) v) + b • annihilator j (G(g) v))`.
2. The actual self-adjoint `majorana0 i` evaluated at `v` is `s • creator i v + s • annihilator i v`, where `s = ((Real.sqrt 2 / 2 : ℝ) : ℂ)`.
3. The actual self-adjoint `majorana1 i` is `(s*Complex.I) • creator i v + (-(s*Complex.I)) • annihilator i v`; verify real normalization and adjoint phase exactly.
4. Genuine forward covariance of **both**:
```lean
fermionGaugeLinearEquiv g (majorana0 i v) =
  ∑ j : Fin 24, complexOneParticleMatrix g j i •
    majorana0 j (fermionGaugeLinearEquiv g v)
fermionGaugeLinearEquiv g (majorana1 i v) =
  ∑ j : Fin 24, complexOneParticleMatrix g j i •
    majorana1 j (fermionGaugeLinearEquiv g v)
```
Do not reverse the color coefficient indices and do not swap real/imaginary components.

## Exact scientific boundary

This certifies transformation of the two Majorana *components per 24-mode index*. It is **not yet** the upstream `pairedAlgebraData.theta` covariance at each `SpinIndex × ColorIndex 2`. The next bounded step must perform the eight fixed spin-pair × three-color reindex, invoke G3-C/G3-B's exact block matrix identity and G3-A's `adjointCoefficient` to prove the actual pinned `GaugeData.fermion_adjoint` for the explicit `pairedAlgebraData`. Joint fermionic continuity and full `GaugeData` remain separate.

No new axioms, `sorry`, `admit`, model substitutions, FCP main/upstream/published PR/issue changes, compiler-resource increases or physical/spectral claims. Print all new theorem axioms, require exactly `[propext, Classical.choice, Quot.sound]`. Atomically submit new source and workflow, then **STOP without inspecting the new workflow until the owner reports GREEN/RED**.
