# BFSS SU(2) Project Lead — original-namespace Spin48 quarter-turn bridge, exact cache preflight and cold-closure strategy

**Date:** October 19, 2026 PDT.  
**Governing discipline:** kernel-proved source statements only; do not infer global continuous SU2→Spin48, Fock equivalence, operator-domain identification, point spectrum or mass gap from finite-source Spin facts. Do not merge into PR #25 or `main` without owner authorization.

## Last independently accepted mathematical boundary

S1V16, S1V17 and S1V18 were strictly qualified at [#39261447018](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39261447018), [#39268703293](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39268703293) and [#39269678300](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39269678300). The ACTUAL ordered 16-factor source-sized element `S : spinGroup Q` acts by Clifford conjugation on ALL real 48-source Majorana vectors. The resulting `source48QuarterFlip` is exactly `-1` on colors 0/1 and `+1` on color 2 under the S1V5 16×3 source indexing, is involutive, equals multiplication by the explicit 48×48 diagonal real matrix `D` and preserves source `QuadraticMap.weightedSumSquares`. Its individual 16-factor Spin signs, total central square +1, and finite ordered-list product were also strictly proved.

**Still unproved:** The typed original group-source assertion

```lean
FCP.BFSSSU2PhysicalDomainS1J.sourceRealMajoranaMatrix
  (FCP.BFSSSU2PhysicalDomainS1G.sourceZ
    FCP.BFSSSU2PhysicalDomainS1G.sourceQuarterTurnTime)
    = FCP.BFSSS1V18.source48QuarterDiagonalMatrix
```

must import the original names in their actual namespaces and honor original output-row/input-column orientation. The notation here is schematic: `sourceZ` is opened from the actual source namespace `FCP.BFSSSU2PhysicalDomainL6H5E8Y`; do not turn this schematic fully qualified expression into Lean without verifying where sourceZ was defined.

## Original primary mathematical sources at active PR25 HEAD e840d811...

- Original normalized Pauli `FCP.BFSSSU2.normalizedPauli` in `SU2ColorCrossProbe.lean`, blob `399e9380ba1c679dc173a9dec0ac21e09d7757fd`, with `pauliScale=√2/2`.
- Original paired 48-Majorana labeling and SU2 AlgebraData in `SU2BFSSG1APairedThetaProbe.lean`, blob `4f8fbf05a35c1d625746931b7ff0361b7ffc2ec4`; its `pairedAlgebraData.color A` definitionally equals original normalized Pauli via original F4 `concreteAlgebraData_color`, blob `fe3e0b21bb60d74b54c9faf7c066db9b02939405`.
- Original `adjointCoefficient g A B` in `etblink/math@adc7f124...`, `lean/OAI/MathematicalPhysics/BFSS/GaugeCore.lean`: REAL trace of `color B * ((g:ColorMatrix2)*color A*(g:ColorMatrix2).conjTranspose)`.
- Original G3A `adjointColorMatrix g B A=pairedAlgebraData.adjointCoefficient g A B`, blob `c8bbd59782c3116fb514d6aa20d91c607a11c3e7`, with row B output and column A input.
- Original G3B `oneParticleMatrix_block`, blob `c90b25156ec4d81ee16e5939cd888cc12cdc33a3`, on `colorModeEquiv : (Fin8×Fin3)≃Fin24`.
- Original S1G `source_quarter_z_matrix`, blob `e1fe07f84e4a1427b5b4d2b534bb32644e87b203`: the actual `sourceZ ((π/2)*√2)` is the positive-i SU2 complex matrix `diag(i,-i)`.
- Original S1J `sourceRealMajoranaMatrix` and `sourceRealMajoranaMatrix_entry`, blob `3f845ae219586be47fa76aabc3259027b1bb4bae`: `oneParticleMatrix(g)⊗I2` on the SAME `Fin24×Fin2` real labels.
- Original S1L `sourceColorSpinMatrix_eq_adjoint_kronecker`, blob `f225a7417413008e281a143fe6db4c0da4b86026`, already proves S1J's entry equality to original G3A `R(g)⊗I16` after the ORIGINAL pairedLabelEquiv.

## Staged unqualified original typed source bridge

`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V19OriginalSourceZQuarterAdjointCoefficientBridgeProbe.lean`, Git blob `5d77be869b4df35462af4c66bd5452e5ab908198`.

Imports the ACTUAL S1G and S1L original modules plus strictly accepted S1V18, and proposes five original-named proof roots:
1. `original_zquarter_eq_source_literal`
2. `original_paired_color_eq_literal`
3. `original_zquarter_conjugates_paired_color`
4. `original_zquarter_adjoint_coefficient`
5. `original_zquarter_adjoint_matrix`

The key intended coefficient theorem is the original G3A matrix formula `adjointColorMatrix(sourceZ t_q) B A = if B=A then (if A=2 then 1 else -1) else 0`, extracted from the original paired SU2 color trace, not inserted as an axiom or copied surrogate source action.

**Zero of these five has been compiled under the original source-import closure.** Its mathematical content is a falsifiable candidate, not a green qualification. The subsequent original S1J 48×48 matrix equality and original-vs-standalone label bridge are still outstanding.

## Cache negative knowledge, measured directly

[Isolated lookup-only Actions gate #39272563248](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39272563248), SUCCESS as a **preflight only**, explicitly reported:

```
PINNED_MATHLIB_CACHE_ACCESSIBLE=
ORIGINAL_FOCK_SOURCE_CLOSURE_ACCESSIBLE=
ORIGINAL_SOURCE_BRIDGE_CACHE_PREFLIGHT_BLOCKED__SELECT_BOUNDED_COLD_CLOSURE_STRATEGY
PREFLIGHT_ONLY__NO_LEAN_THEOREM_COMPILED__NO_AXIOM_AUDIT
```

The 2 exact historical keys were absent in THIS ISOLATED BRANCH cache scope. This does not assert they never existed in the historical PR scope. Therefore existing original PR25-era workflow scripts with fail-closed historical cache assertions must NOT be launched here without a build/cache-scope correction.

## Bounded cold original OAI baseline

The independent `etblink/math` pinned `lean/lakefile.lean` contains `@[default_target] lean_lib OAI`, so Lake can build targeted original OAI module imports rather than a fabricated minimal BFSS library.

An isolated workflow `.github/workflows/bfss-s1v19-original-oai-gaugecore-cold.yml` has been staged and deliberately initiated. It checks original source hashes; installs the EXACT original Lean 4.34.1 with bounded TLS retries; downloads the pin-matched Mathlib cache; then attempts JUST the original Lake target `OAI.MathematicalPhysics.BFSS.GaugeCore` with a 650-second cap. The job timeout is 38 minutes inclusive, uploads first causal logs on any result, and on success saves exact compiled `OAI` `.olean` subdirectories under a NEW ISOLATED cache key for reuse by later original proof gates. It does not compile S1V19 or claim any new mathematical theorem.

The first workflow commit accidentally pinned `SU2BFSSFullAlgebraDataProbe.lean` with a wrong Git blob and the fail-closed [Gate #39273608132](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39273608132) stopped at provenance checking, before download/build. This has been corrected to the independently fetched actual blob `fe3e0b21bb60d74b54c9faf7c066db9b02939405`. Only [the corrected bounded Gate #39273750998](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39273750998) can provide evidence for the cold source-OAI prerequisite.

**Next branching decision:** if GaugeCore cold-build succeeds and its cache saves, build and cache the minimal original F4/G1A/G3A/G3B/S1G/S1J transitive source closure in bounded increments, then compile S1V19's exact five original-named roots, then prove the final exact original `sourceRealMajoranaMatrix (sourceZ sourceQuarterTurnTime)=source48QuarterDiagonalMatrix`. If the cold prerequisite errors or times out, preserve its first causal error, identify the minimum importing OAI module and adjust the staged cold build rather than repeatedly launching the full original source PR workflows. No global Spin lift is proved until all-parameter group law, continuity and original generator transport are accepted.

## Safety and original physical math limitations

Work is on isolated branch only. Active PR #25 and canonical main are unchanged at last verification. Even a future green original quarter equality verifies ONE SU2 element's 48-real orthogonal color action; it does NOT prove a continuous SU2→Spin48 homomorphism, its central value on original -I, original complex Clifford/Fock unitary intertwiner, closed-domain supercharges, manuscript positive-point spectrum, or BFSS mass gap.
