# BFSS S4B30 — original complex Fock remainder full source-signed gamma contraction (Gate118)

**Historical preregistration retained. Gate118 is now strictly ACCEPTED — see final audit.** Unique strictly accepted S4 principal roots **54**, through independently verified [Gate117 run #40439797607](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40439797607), job `121977138770`, root `FCP.BFSSSU2PhysicalDomainS4B29.originalComplexFermionContraction_contractible_source_order`. Its immutable acceptance record is retained separately.

## Mathematical target

[Source S4B30](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B30OriginalFockRemainderFullySignedContractionProbe.lean), exact candidate Git blob `6a43c9a36b556acaa3d7f3b3bd1dd26704c686b0`, proposes one new principal theorem `FCP.BFSSSU2PhysicalDomainS4B30.originalComplexFermionContraction_full_signed_source`. For every original `M : AlgebraData N` and real bosonic `x : Boson N`, it replaces the *entire source-defined original* complex remainder `sourceMasslessComplexFermionContraction M x : Fermion N →L[ℂ] Fermion N` by the true original `(1/16 : ℂ) • ∑ A,β,q (-Complex.I) • ((-8 * ∑ j,C M.structureConstant C A q.2 * x(j,C) * M.gamma j β q.1 : ℝ) : ℂ) • (M.theta β A * M.theta q.1 q.2)`. All factors and source index orders are explicit; no original Majorana operator is commuted through another, no Pauli orientation is assumed and no physical or manuscript B(x) operator is substituted.

This directly **composes the accepted Gate117 full genuine source Fock operator index reorder with accepted Gate113 real signed source gamma contraction**. A private uncounted generic `phasedDouble_sum_real_products` takes coerced real factors `f*g` through complex module double sums without unfolding source PiLp or CLM types; it uses actual pinned Mathlib `Complex.ofReal_mul`, `Complex.ofReal_sum`, `Finset.smul_sum` and exact local sum congruences. The source theorem supplies `M.gamma` and `sourceMasslessComplexVariationCoefficient` as the real functions, matches `q=(δ,D)`, and lifts the accepted exact real theorem via explicitly typed `congrArg` on the true source `M.theta β A * M.theta δ D`. Both `-i` and `-8`, and external `1/16`, are deliberately **not yet folded to `+i/2`**. The full signed contraction is a source math theorem candidate until Lean validates it.

## Strict gate and acceptance

[Gate118 workflow](../.github/workflows/bfss-form-original-complex-remainder-full-signed-contraction-strict-gate118.yml) is a distinct source-pinned descendant of accepted Gate117. Pinned original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, exact Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, strict immutable original/candidate SHA checks `6a43c9a36b556acaa3d7f3b3bd1dd26704c686b0` (git tree and working tree), source preflight, original G4K9C cache provenance, fresh original sources and strictly accepted S4B3–S4B29 parents, fresh S4B30 `.olean` and **one** exact named theorem with only `propext`, `Classical.choice`, `Quot.sound` permitted; no `sorryAx`, candidate source warnings, or Lean errors. New helper is private and not counted as a separate principal root. A completed verified green earns **one** new unique S4 root **54 → 55**. Any red earns zero and must be retained, classified by first compiler cause, with theorem statement and physics source unchanged.

## Scientific stop boundary

Even success would identify only the *complex Fock remainder* with its fully source-signed finite sum, not yet the direct manuscript `B(x)` field in the original *real* Hilbert carrier. Further theorem(s): fold `(-i)/16 × (-8) = +i/2` with exact complex scalar distributivity; reindex manuscript color/gamma notation and relate original `M.deformedFermionField 1 0 x` by accepted S4B10/S4B21 real restriction; inspect exact manuscript `B(x)` normalization and color basis, then physical self-adjoint/domain and positive normalizable eigenpair existence. Canonical main, original upstream math and draft PR #25 unchanged.


## Gate118 exact strict acceptance — 1/1 original complex source operator root

Independently verified completed [run #40441374836](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40441374836), job `121982272913`, `completed/success`, exact run HEAD `91b1df40bf91898d13ac1092a3c8ed009b70a32b`. Original runner/compiler output confirms SHA-immutable original source, frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, pinned Lean 4.34.1/Mathlib, exact qualified G4K9C cache provenance, freshly rebuilt original and accepted S4B3–S4B29 source roots, accepted parent `GATE118_ACCEPTED_S4B29_PARENT_FRESH_PASS 150976`, and exact one-root S4B30 `.olean` with no Lean source warnings. Terminal compiler evidence:

```text
GATE118_CANDIDATE_SOURCE_WARNINGS []
GATE118_COMPILER_EXIT 0 AXIOM_REPORTS [('FCP.BFSSSU2PhysicalDomainS4B30.originalComplexFermionContraction_full_signed_source', {'Quot.sound', 'Classical.choice', 'propext'})]
GATE118_ORIGINAL_COMPLEX_REMAINDER_FULL_SIGNED_ONE_ROOT_STRICT_PASS
```

**ACCEPT exactly +1 unique principal S4 theorem root: 54 → 55.** Accepted S4B30 exact source git blob `6a43c9a36b556acaa3d7f3b3bd1dd26704c686b0`. No `sorryAx`, extra source hypotheses, proxy mathematical carrier or weakened identity. Freshly compiled parent modules and the generic private helper are *not* additional principal roots.

**Mathematical consequence:** The actual `sourceMasslessComplexFermionContraction M x : Fermion N →L[ℂ] Fermion N` is now identified with its complete signed source structure-constant, gamma and ordered Fock-theta bilinear, at the original `1/16`, `-Complex.I`, and derived `-8` factors. The independently proven original color sign, real gamma contraction and full complex operator reindexing are integrated, not merely separately available. Do not claim numerical simplification to `+Complex.I/2` without its own Lean statement; the real-linear original `M.deformedFermionField 1 0 x` and October 5 manuscript `B(x)` remain separate targets, as does positive normalizable eigenstate existence.
