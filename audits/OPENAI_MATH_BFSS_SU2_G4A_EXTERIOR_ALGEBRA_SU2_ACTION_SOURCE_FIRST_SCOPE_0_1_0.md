# BFSS SU(2) G4-A — exact 24-orbital exterior Fock algebra SU(2) action 0.1.0

**Date:** 2026-10-08. **State:** `G4A_UNCOMPILED_CANDIDATE`.

## Authority and baseline

Gate #98 is independently qualified by [workflow run 37822069014](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37822069014), job `113465358247`, source HEAD `a68465755ce7e9604371ab53f49e30814ec09278`, G3-C blob `e555823155d5ce348843acb9eaa9ea6762f636ac`, workflow blob `31d05ffdb6608cb22f6b94f058cac6869d3f1db5`, nine standard-only axiom reports. The pinned physical source is `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` and Lean 4.34.1/mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The exact G3-C `FCP.BFSSSU2GaugeG3C.complexOneParticleMatrix` gives the verified 24×24 **unitary** color-mode matrix `U24(g)`, with correct SU(2) composition, `U24(g)ᴴ=U24(g⁻¹)`, and blocks `(j,B),(k,A)`. G1-A `colorModeEquiv` is unchanged.

Pinned `OAI/Analysis/Laughlin/Exterior/SpinAction.lean`, blob `ab42b15ded2461c26edf24468f397c4c36fcfb57`, lines 10–77, proves `orbitalRotation` → `ExteriorAlgebra.map` group laws plus exact creation/annihilation covariance for an unrelated upstream `SourceSU2` spin action; it must not be silently substituted for BFSS color action. Pinned `Exterior/Scaling.lean`, blob `48dc7613a9bbd918fdb03dc5de6bb048447baadc`, lines 8–19 gives generic `contraction_map` for actual exterior operators.

## G4-A exact bounded objective

On the **exact** pinned `OAI.Laughlin.Fock.Orbital 23 = Fin 24 → ℂ` and `Space 23 = ExteriorAlgebra ℂ (Orbital 23)` define
```lean
orbitalGauge (g : GaugeGroup 2) : Orbital 23 →ₗ[ℂ] Orbital 23
exteriorGauge (g : GaugeGroup 2) : Space 23 →ₐ[ℂ] Space 23 :=
  ExteriorAlgebra.map (orbitalGauge g)
```
with `orbitalGauge g v=U24(g)*ᵥ v`. Prove:
1. `orbitalGauge(1)=id`, `orbitalGauge(g)∘orbitalGauge(h)=orbitalGauge(gh)`;
2. `exteriorGauge(1) x=x`, `exteriorGauge(g)(exteriorGauge(h)x)=exteriorGauge(gh)x`, hence inverse action;
3. vacuum algebra-unit preservation `exteriorGauge(g) 1=1`;
4. **actual** `create` and `annihilate` covariance with exact coefficients `U24(g) j i` and `U24(g) i j` respectively; covariance orientation is distinct and must be preserved.

This is an exterior **algebra** SU(2) action on `Space 23`, not yet a **unitary** `Fermion 2 ≃ₗᵢ[ℂ]` action. No adjoint/continuity claim at this stage. Fock isometry, transport via the accepted `fockCoordinates 23` and `fockBFSSUnitary`, 48 Majorana covariance and `GaugeData` are separate subsequent obligations. Do not assert full gauged physical space, eigenvalue spectrum or a proof of the preprint's principal result.

## Operations

Import and compile the pinned `OAI.Analysis.Laughlin.Exterior.SpinAction` dependency closure. No source pin changes, weaker axioms, `sorry`/`admit`, `sorryAx`, FCP main or upstream writes, public PR/issues or CI resource changes. Print axioms for substantive results; accept only standard-only reports. Submit one bounded compiler gate; STOP without inspecting the new workflow until human owner reports GREEN/RED.
