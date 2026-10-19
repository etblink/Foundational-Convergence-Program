# S1V19 Original OAI CovariantFields dependency — pinned reusable cache layer PASS

**Date:** October 19, 2026 PDT.  
**Strict build:** [#39275253071](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39275253071), job `118137756897`, conclusion SUCCESS.  
**Qualified checkout SHA:** `706c3c1e8bd64ce7dbf6f48bd8f1f3534fab5957`.
**Original inputs:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The gate restored the previously qualified and exact-keyed original OAI GaugeCore cache, checked original `GaugeCore.olean` and `Core.olean`, then compiled **the independent original OAI module**, not a substitute:

```
lake build OAI.MathematicalPhysics.BFSS.CovariantFields
```

It verified a nonempty original `CovariantFields.olean`, re-checked the exact Mathlib source SHA and emitted the independently observed terminal success marker

`ORIGINAL_OAI_COVARIANTFIELDS_TRANSITIVE_IMPORTS_COMPILED__NO_NEW_BFSS_THEOREM`.

The following reusable compiled-original OAI cache was **actually saved**, as confirmed by the Actions log:

```
bfss-s1v19-isolated-oai-covfields-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

This layer contains original `OAI` compiled imports including the accepted original GaugeCore and original CovariantFields required by source G3A. It does NOT include the separate SU2FermionFockProbe/G1A/F4 compiled root chain, and it does not mean the historical PR25 original Fock cache is visible here.

## Next exact Fock/Pauli dependency

Original `SU2BFSSG3AAdjointColorRepresentationProbe.lean` imports `SU2BFSSG2BBosonGaugeContinuityProbe` and OAI `CovariantFields`. The original G2B→G2A→G1B→G1A→F4 path depends upon 24-mode original SU2 Fock modules. In particular:

```
SU2FermionFockProbe
 → SU2FermionF2Probe
 → SU2FermionF2BProbe
 → SU2FermionF2B2Probe
 → (later F2B2 CAR stages and F3 irred. stages)
 → SU2FermionF3C2ThetaFieldsProbe
 → SU2BFSSFullAlgebraDataProbe
 → SU2BFSSG1APairedThetaProbe
 → SU2BFSSG1BColorAnnihilatorProbe
 → SU2BFSSG2ABosonGaugeProbe
 → SU2BFSSG2BBosonGaugeContinuityProbe
 → SU2BFSSG3AAdjointColorRepresentationProbe
```

The foundational F1→F2→F2B→F2B2 path is being qualified as an exact module chain, not replaced by an asserted 48-generator CAR. This requires original `OAI.MathematicalPhysics.ContinuumCoulomb.ManyBody.FockNorm`, which is a separate OAI import root. Scoped first gate: [#39277892786](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39277892786). It verifies 13 printed axiom reports from 4 exact source modules, and caches compiled original Fock base only on complete success.

**Still OPEN:** source S1V19 original positive-i SU2 quarter-turn original Pauli coefficient theorem, S1V20 original 48×48 matrix equality, original global continuous SU2→Spin48 lift, Fock/Hilbert intertwiner, physical operator domain and spectrum. A successful library compilation is a dependency qualification, NOT a new physical or spectral theorem.

**CI safety:** isolated branch only; no modifications or merges to PR25/main; no broad PR triggers.
