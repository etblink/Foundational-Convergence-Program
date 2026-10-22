# FCP M4C1 — independent full-L² gauge intertwining, strict Gate #1 preparation

**Preparation:** October 21, 2026 PDT. **Status:** research-only source and bounded strict compiler gate; no theorem acceptance until run closes and permits all three axioms, saves cache. Accepted ledger **274**.

## Scientific gap after M4B

Accepted M4B [run #39724894382](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39724894382) proves that any eligible independent Hermitian irreducible 48-Majorana module `E` has a unitary `J : E ≃ₗᵢ[ℂ] Fermion 2` exactly intertwining the original native SU(2) gauge action. However `J` on finite Fock fibers is not yet a verified equivalence of the manuscript's full physical `L²(ℝ²⁷;E)` realizations, let alone their invariant smooth cores and closed Hamiltonian operators.

The M4C1 target is the source-specific theorem:

`FCP.IndependentFullL2GaugeTransport.independentFullL2Gauge_intertwining`.

The candidate defines `independentFullL2GaugePairCLM` from the **independently constructed M4B gauge representation** on `E`, combined with exactly the original pinned `pairedGaugeData.boson g⁻¹` measure-preserving pullback. The definition does not involve `J`; this preserves noncircularity.

The map `fiberTransport J` is the pinned Mathlib `ContinuousLinearMap.compLpL` of the constant fiberwise unitary into the **actual** source `FullL2 2`. Two independent intermediate propositions are kept distinct:

1. `fiberTransport_bosonPullback`: fiberwise continuous linear map commutes with literal source measure-preserving pullback, proven via `Lp.ext_iff` and `MeasurePreserving.quasiMeasurePreserving.tendsto_ae`; no invalid pointwise representative equivalence.
2. `fiberTransport_fermionGauge`: full-L² action of M4B source-exact `independent_original_gauge_intertwining`, with exact `pairedGaugeData_fermion_exact` cast to source `GaugeData.fermion`.
3. `independentFullL2Gauge_intertwining`: compose the former equalities with bosonic `g⁻¹` convention; asserts exact equality on all original `Lp` elements.

This is a **conditional fixed-`J` intertwining theorem**, not yet a declaration of an `Lp` linear-isometry equivalence, surjectivity, or fixed-space onto correspondence. Those should be established in subsequent carefully scoped gates. No test-function or closed-operator transport is claimed.

## Frozen input references

- Main research branch preparation parent `dd5ce0e8b15ce8014cd4dc803a23d3ebc2973942`, accepted M4B source `FCPIndependentOriginalGaugeBridge.lean` Git blob `f0258c3b68d3a64dab300ce3c32b1d3a5ab23e35`, accepted M4A source `FCPIndependentOriginalCliffordBridge.lean` Git blob `193c41c4437c413a87db7442ba725230afdf39ec`.
- Source GaugeData `SU2BFSSG4JExactGaugeDataAssemblyProbe.lean` Git blob `dd82ff793918e448a2d91781edb84d273a664cd4`, pinned source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`.
- Pinned Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Relevant original `Core.lean` Git blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`; `GaugeCore.lean` Git blob `e4990dadf1d8bde849e351467282ab3f14989c3b`.
- New candidate `experiments/openai-math-su2-physical-domain/FCPIndependentFullL2GaugeTransport.lean`, Git blob `482d6c830a2a3dc3d98c38babf5807cbaf37a9c8`; first actual original BFSS source-closure typecheck occurs in this gate.
- Strict workflow `.github/workflows/bfss-m4c1-independent-full-l2-gauge-strict-gate1.yml`, Git blob `1625b37111562e196feca183d5526b9beec08d7a`. Unique workflow-path push trigger only, no broad/PR/manual trigger.
- Separate qualified M4B cache `bfss-fcp-m4b-independent-original-gauge-unitary-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Qualified original G4J cache `bfss-s1v19-isolated-g4j-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

The gate fails closed on cache misses and original source hash changes, checks the exact source import closure, compiles under `lake env lean -DwarningAsError=true`, prints and strictly validates five expected declarations, and saves a unique qualified v1 M4C1 cache only after a clean pass.

**Counting policy:** only `independentFullL2Gauge_intertwining` counts as a newly accepted theorem root; its two definitions and two supporting lemmas must also be axiom-clean but add no further newly counted roots. Red/timeout/cache-miss retains **274**.

## Prior negative knowledge and boundaries

This gate deliberately avoids conflating the `Lp` ae quotient with pointwise functions and follows the pinned source `GaugeCore.lean` proof's exact `comp_tendsto` measure-preservation idiom. No `sorry`, `admit`, new mathematical axiom, independent bosonic action substitution, or source Fock replacement is introduced.

An interface/elaboration red is feedback for a minimal repair; it does **not** imply a mathematical counterexample to M4B or to the formal Hilbert-space extension. A green does not yet identify the preprint's `C_c^∞` invariant core, sixteen supercharge graphs, normalized closed physical Hamiltonian, global Spin(9) action, or any spectral eigenvalues.

Do not change `main`, PR #25, issue #28 status, original source pins or accepted qualified root count without complete gate evidence.
