# BFSS SU(2) G4-I-B1 — Gate #116 exterior vacuum and one-particle continuity acceptance 0.1.0

**Date:** October 8, 2026 (America/Los_Angeles; GitHub Actions displays UTC October 9)
**Disposition:** `PASS__TRUE_FOCK_VACUUM_AND_ONE_PARTICLE_PARAMETER_CONTINUITY`

## Qualification

- Research branch: `research/openai-math-su2-concrete-potential`
- Exact qualified repair commit: `71cd4b7ce7475cc98bf4c6d40e9291dfca7ff282`.
- Parent: `959591815c05304bc8f534d402035166c7771f9c` (Gate #115 red).
- Exact repaired source: `experiments/openai-math-su2-concrete-potential/SU2BFSSG4IB1ExteriorFockSeedContinuityProbe.lean` blob `0658557712a78f40a4a8eeb3192d8c643033d929`.
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml` blob `0a16fa2e785377b9a08ecdd698f70969c82f7c90` (unchanged by repair).
- [BFSS SU2 Concrete Color Gate #116](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37870726296): run `37870726296`, job `113627955653`, `completed/success`, source commit matches, full pinned compilation step success.
- Terminal: `lake env lean SU2BFSSG4IB1ExteriorFockSeedContinuityProbe.lean`.
- Pinned Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` unchanged.

The job log reports **seven** source declarations. Every `#print axioms` output contains **exactly** `[propext, Classical.choice, Quot.sound]`, with no `sorryAx` or custom axioms:

```text
FCP.BFSSSU2GaugeG4IB1.orbitalGauge_parameter_continuous
FCP.BFSSSU2GaugeG4IB1.fockSeedCoordinateLinear
FCP.BFSSSU2GaugeG4IB1.fockSeedCoordinateLinear_apply
FCP.BFSSSU2GaugeG4IB1.fockSeedCoordinateLinear_continuous
FCP.BFSSSU2GaugeG4IB1.exteriorGauge_seedCoordinate_continuous
FCP.BFSSSU2GaugeG4IB1.exteriorGauge_vacuum_coordinates_continuous
FCP.BFSSSU2GaugeG4IB1.exteriorGauge_singleton_coordinates_continuous
```

## Genuine mathematical content

The genuine G4-A `orbitalGauge` has continuous SU(2) parameter dependence on all orbital vectors. The pinned `ExteriorAlgebra.ι ℂ` composed with the actual `fockCoordinates 23` yields a continuous map **to the genuine normed occupation-coordinate Fock space**. The proof identifies the G4-A `exteriorGauge` action on `ExteriorAlgebra.ι ℂ v` exactly with that coordinate map on `orbitalGauge g v`. The exterior vacuum is exactly invariant and the 24 pinned singleton occupation states satisfy continuity.

This eliminates the question whether the source-bound one-particle SU(2) action transports continuously onto the **real** exterior-Fock vacuum and one-particle vectors. This is a verified bridge, not merely an abstract unitary-group identity. It does **not** infer continuity from unitarity alone or posit topology on the bare exterior algebra.

## Unproved next steps

The multiparticle occupation sectors (degree 2–24), arbitrary exterior-Fock vectors, transport to the exact BFSS `Fermion 2` Hilbert norm and **joint** continuity of `fermionGaugeUnitaryHom` remain open. Complete `pairedAlgebraData.GaugeData`, Gauss-invariant physical space, Hamiltonian/spectrum, and empirical validation remain separate.

The next bounded check G4-I-B2 should prove parameter continuity on **genuine two-particle wedge vectors** by an explicit finite polynomial expansion of the pinned `ExteriorAlgebra.ι ℂ` images into the pinned `fockCoordinates`, using already certified `orbitalGauge_parameter_continuous`. This establishes an actual multiparticle case but must **not** be misrepresented as the full Fock representation.

Historical failed Gate #115 remains red; Gate #116 is its source-only compilation repair. No `main` merge, dependency upgrade, resource budget change, upstream PR/issue or physical claim is authorized.
