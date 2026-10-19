# Project Lead handoff — S1V19 original SU2 Fock bridge: accepted original OAI caches and exact Fock chain

**Date:** October 19, 2026 PDT.  
**Branch:** `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018`. Do NOT merge into PR25 or main.

## Accepted evidence, not inflated as new physics

Strict [OAI GaugeCore #39273750998](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39273750998) and [OAI CovariantFields #39275253071](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39275253071) both completed green and saved **original OAI source compiled module cache** on THIS isolated branch. Exact successfully saved keys:

```
bfss-s1v19-isolated-oai-gaugecore-v1-adc7f124-lean4341-d13f23b-Linux-X64
bfss-s1v19-isolated-oai-covfields-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

Original immutable OAI `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The `CovariantFields` cache is ready for restoring on this research branch; original G3A depends on `OAI.MathematicalPhysics.BFSS.CovariantFields`, not a synthetic replacement.

## Exact dependency blocker, measured by reading accepted original imports

```
SU2FermionFockProbe
 → SU2FermionF2Probe
 → SU2FermionF2BProbe
 → SU2FermionF2B2Probe
 → SU2FermionF2B2ImagProbe
 → SU2FermionF2B2MixedProbe
 → SU2FermionF2B2MixedDiagProbe
 → SU2FermionF2B2MixedAllProbe
 → SU2FermionF2B2IndexedProbe
 → SU2FermionF2B2ThetaProbe
 → SU2FermionF3InvariantProbe
 → SU2FermionF3RecoveryProbe
 → SU2FermionF3B1OccupationProbe
 → SU2FermionF3B2BasisActionProbe
 → SU2FermionF3B3ProjectorProbe
 → SU2FermionF3B4SelectorProbe
 → SU2FermionF3B5CoordinateProbe
 → SU2FermionF3B6NonzeroKetProbe
 → SU2FermionF3B7SignedModeProbe
 → SU2FermionF3B8LocalReachabilityProbe
 → SU2FermionF3B9FiniteReachabilityProbe
 → SU2FermionF3C1SubmoduleDichotomyProbe
 → SU2FermionF3C2ThetaFieldsProbe
 → SU2BFSSFullAlgebraDataProbe
 → SU2BFSSG1APairedThetaProbe
 → SU2BFSSG1BColorAnnihilatorProbe
 → SU2BFSSG2ABosonGaugeProbe
 → SU2BFSSG2BBosonGaugeContinuityProbe
 → SU2BFSSG3AAdjointColorRepresentationProbe
 → SU2BFSSG3B24ModeOrthogonalLiftProbe
 → SU2BFSSPhysicalDomainS1JActual48RealMajoranaColorActionProbe
```

This is a real transitive original Fock/irreducibility dependency, not evidence that the finite SU2 quarter action is unprovable. The F1 initial source `SU2FermionFockProbe` additionally imports the actual original `OAI.MathematicalPhysics.ContinuumCoulomb.ManyBody.FockNorm`. The latter must be constructed and cached before the first four original Fock modules.

## One deliberately scoped exact Fock proof gate

[Original Fock CAR Base #39277892786](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39277892786) on this isolated branch, original workflow source SHA `47705df9b6efe6c787902cc5636f21c1975d89a5`, at initial reporting still running. It:
- Enforces four genuine original Fock source Git blob hashes and immutable OAI/Lean/Mathlib versions.
- Restores the **ACCEPTED** original OAI CovariantFields cache from exact key, fails closed if missing.
- Compiles only original `OAI.MathematicalPhysics.ContinuumCoulomb.ManyBody.FockNorm` transitive imports with a bounded 710-second limit.
- Compiles original `SU2FermionFockProbe`, `SU2FermionF2Probe`, `SU2FermionF2BProbe`, and `SU2FermionF2B2Probe`, prints and checks a total of 13 precise axiom report roots, and requires zero errors, zero `sorryAx`, fresh nonempty `.olean` artifacts. Saves a reusable original Fock-base cache only on complete strict PASS.

**Do not call this gate green unless its completion, root logs and cache-save evidence are inspected.** In particular, absence of an historical PR25 cache is not a proof failure. Cache restoration failures must be distinguished from source theorem/Lean errors.

Suggested stages after Fock base acceptance: (i) the six original F2B2Imag→F2B2Theta modules, (ii) original F3Invariant/Recovery and the exact finite occupation F3B1→F3B9 and C1/C2 irreducibility modules, (iii) original F4/G1A/G1B/G2A/G2B/G3A/G3B and S1G/S1J closure. Each should have exact source blob checks, an axiom-clean acceptance gate, preserve accepted `.olean` layers, and not relaunch broad PR25 workflows.

## Independent smaller original typed algebra route — UNCOMPILED candidate

`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V21OriginalUpstreamAdjointQuarterConditionalProbe.lean`, blob `5b6059104dda78fbcd1cc073f8f51a986489a50a`, staged without CI. Imports EXACT original `SU2ColorCrossProbe`, the previously accepted standalone S1V12 source literal +i Pauli quarter theorem and ORIGINAL `OAI.MathematicalPhysics.BFSS.GaugeCore`. Its explicit genuine upstream-interface theorem

```
original_upstream_adjointCoefficient_of_pinned_quarter
  (M : AlgebraData 2)
  (hcolor : ∀ A, M.color A = FCP.BFSSSU2.normalizedPauli A)
  (g : GaugeGroup 2)
  (hg : (g : ColorMatrix 2) = sourceQuarterZLiteral)
  (A B : ColorIndex 2)
```

targets `M.adjointCoefficient g A B = if B=A then (if A=2 then 1 else -1) else 0` via original upstream GaugeCore trace formula. Both original evidence premises remain EXPLICIT and unqualified until original G1A pairedColor and original S1G source quarter import respectively discharge them. It is NOT a theorem already proved; only a focused candidate that can separate finite color coefficient errors from heavy Fock module compilation.

Original S1V19 (source blob `5d77be869b4df35462af4c66bd5452e5ab908198`) and S1V20 (blob `1fc67e04118d15dedc23543415488e1919958d65`) remain UNCOMPILED source integration candidates. They seek the typed original `sourceZ(sourceQuarterTurnTime)` and exact original `sourceRealMajoranaMatrix` quarter-turn equality with verified S1V18 `source48QuarterDiagonalMatrix`. No globally continuous SU2→Spin48 hom, original Fock intertwiner, physical Hamiltonian-domain theorem or point spectrum is proved.

## Research and governance

Keep source-scoped `#print axioms`, original +i Pauli normalization, output-row/input-color column direction, accepted provenance, and first causal failed compiler message before any retry. Main and the active PR25 branch remain untouched at the most recent read. No PR25 workflow or original etblink/math write was initiated. The only current launched gate is the isolated original Fock CAR Base #39277892786.
