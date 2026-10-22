# FCP BFSS SU(2): M4C1 Gate #4 RED — residual function-composition normalization

**Local date:** October 21, 2026 PDT (runner finished October 22 UTC).  
**Status at preparation:** `M4C1_GATE4_RED__AE_INTERFACE_RESOLVED__FUNCTION_COMP_APPLY_RESIDUAL__GATE5_DIAGNOSTIC_PENDING`.

**Strictly accepted cumulative theorem roots: 274.** Gate #4 accepted 0/1 M4C1 roots, and its failure does not alter M4B's qualified acceptance.

## Primary evidence — original strict Gate #4

- [Completed Actions run #39730091510](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39730091510), original job `119662896995`, head `c18707190798b032db10b1d37bbff64fd41eb646`, conclusion **failure**.
- Immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original source blob and toolchain provenance passed.
- Qualified current-branch M4B cache `bfss-fcp-m4b-independent-original-gauge-unitary-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored, including genuine original G4J `.olean`; no need for historical cross-branch cache or source rebuild.
- Source specialized `FCPIndependentFullL2GaugeTransport.lean` compiled until **one** residual goal at line 76:
  ```lean
  _ = A (v (b x)) := by rw [hp]
  ```
  The original compiler printed:
  ```text
  FCPIndependentFullL2GaugeTransport.lean:76:23: error: unsolved goals
  hp : ((Lp.compMeasurePreserving b hb v) : _) x = (v ∘ b) x
  ⊢ A ((v ∘ b) x) = A (v (b x))
  ```
- `A` is the constant-fiber continuous linear map, `hp` the measure-preserving pullback almost-everywhere equality. This remaining goal is precisely `Function.comp_apply`; `rw [hp]` rewrites but does not normalize the resulting composition. This is a small proof-tactic normalization issue, **not** a counterexample to full-L² intertwining.
- Actual `#print axioms` for `independentFullL2GaugePairCLM`, `fiberTransport`, and `fiberTransport_fermionGauge` contained only `propext`, `Classical.choice`, `Quot.sound`. The target `fiberTransport_bosonPullback` and final `independentFullL2Gauge_intertwining` consequently printed `sorryAx`, and neither is accepted. No M4C1 cache saved.

## Gate #5 scoped correction

Replace **only** the line-76 proof fragment, preserving the exact statement and preceding AE equality proof:
```lean
_ = A (v (b x)) := by
  simpa only [Function.comp_apply] using congrArg A hp
```

Applying `congrArg A` explicitly transports `hp` through the complex-linear map; `Function.comp_apply` reduces `(v ∘ b) x` definitionally. Do not change original bosonic inverse pullback `g⁻¹`, the independent J-free SU(2) representation, CAR conventions, source Fock data, theorem names, mathematical definitions, or previous original `.olean` files.

- New source `experiments/openai-math-su2-physical-domain/FCPIndependentFullL2GaugeTransport.lean`, Git blob `a2c22a2424d2951b1e719f154b452f021b6ebab4`.
- Isolated branch-only workflow `.github/workflows/bfss-m4c1-independent-full-l2-gauge-strict-gate5.yml`, blob `e63e29c47d036fd22a62d249626974fd1403c841`.
- Restore exact M4B v1 cache, check original G4J and M3J/M4A/M4B `.olean` ancestry, compile with `-DwarningAsError=true`, demand all five exact `#print axioms` reports with at most `propext`, `Classical.choice`, `Quot.sound` and no compiler errors or `sorryAx`. Save distinct `bfss-fcp-m4c1-independent-full-l2-gauge-v5-adc7f124-lean4341-d13f23b-Linux-X64` cache and preserve diagnostics only on the gate's own outcome.
- **Count only one new root:** `FCP.IndependentFullL2GaugeTransport.independentFullL2Gauge_intertwining`, and only if the entire qualified strict run passes. This is a prospective compiler test, **not** a local proof acceptance.

## Research boundaries

Strict M4C1 success would prove full-L² gauge intertwining of the fixed fiberwise map, but **not yet** a full-L² unitary isometry equivalence, onto mapping of the independent fixed-space physical Hilbert submodule to source physicalSpace, equality of invariant smooth cores, sixteen supercharges and their closed physical graph domains, normalized Hamiltonian, global Spin(9), or any spectrum claim.

Prior failures remain preserved in their own audits: Gate #1 foreign-branch cache; Gate #2 implicit fiber-type elaboration; Gate #3 wrong `coeFn_compLp` function versus pointwise AE interface; Gate #4 composition normalization only.

**Governance:** current isolated research branch; no mutation of canonical `main`, PR #25, Issue #28, or pinned upstream mathematics. Accepted ledger stays **274** until qualified acceptance.
