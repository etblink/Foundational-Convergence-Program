# BFSS SU(2) G4-K4 — exact closed supercharge graph for a nonzero physical state 0.1.0

**Date:** October 9, 2026.
**Status:** `UNCOMPILED_CANDIDATE`.
**Inputs:** Gate #127 literal SU(2) `pairedGaugeData`; Gate #130 `radialBumpL2 : FullL2 2` nonzero and physical; Gate #132 `radialBumpSmoothCore : SmoothCore 2`, source-identical `coreToL2` image, and nonzero invariant-core membership.

## Qualified endpoint to attempt

Use exactly `pairedAlgebraData.fullCoreGraph := LinearMap.range (coreToL2.prod pairedAlgebraData.chargeVector)` and `pairedAlgebraData.fullClosedGraph := pairedAlgebraData.fullCoreGraph.topologicalClosure` from pinned `OAI/MathematicalPhysics/BFSS/Core.lean`.

Define the actual finite `SpinIndex → FullL2 2` vector `radialBumpChargeVector := pairedAlgebraData.chargeVector radialBumpSmoothCore`. Show the **nonzero physical** pair belongs to `fullCoreGraph`, hence `fullClosedGraph`, and that every alternative output y in that closed graph over the same state equals this exact charge vector by upstream `fullClosedGraph_unique`. Recover the genuine inner-product symmetry pairing with all test sections via upstream `fullClosedGraph_pairing`. Check the definitional equality `coreForm radialBumpSmoothCore = (1/16) * ∑ α, ‖radialBumpChargeVector α‖²`.

## Honest scientific interpretation

The new result would certify this concrete nonzero Gauss-invariant L² state lies in the **domain of the closed supercharge-vector relation**, with unique charge output, on pinned BFSS types. It does NOT establish that supercharges map Gauss-invariant vectors to Gauss-invariant vectors; that the charge vector is nonzero or zero; that this state is a Hamiltonian eigenvector; that its charge energy is positive or zero; or any spectral gap, bound state or physical validation. This is a source-bound specialization plus precise domain identity, not an independent theorem of spectral dynamics. Larger spectral questions require separate work.

No `sorry`/`admit`, custom axiom, surrogate linear map, change to main, merge, public upstream effect or dependency repinning. Require pinned Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Update workflow to compile K3 as importable `.olean` then compile new K4 source. Verify source and exact Gate results before acceptance; submit atomically and STOP before inspecting the newly triggered gate.
