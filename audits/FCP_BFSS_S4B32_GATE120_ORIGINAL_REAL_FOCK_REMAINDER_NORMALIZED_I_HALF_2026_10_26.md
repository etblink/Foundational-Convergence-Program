# FCP/BFSS S4B32 — original massless REAL Fock fermionic remainder at normalized +i/2, Gate120

**Status: candidate, not accepted. Accepted S4 unique principal roots: 56** through strictly verified [Gate119 #3 run #40445819272](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40445819272), job `121996734725`, successful compile/axiom report on exact source commit `921a209c8127ad79a197adac2ca1fe29901ecdbc`. Its original source `originalComplexFermionContraction_normalized_i_half` is mathematically accepted; failed Gate119 #1/#2 compiler diagnostics retained in its acceptance audit.

## Proposed original mathematical statement

One exact theorem, `FCP.BFSSSU2PhysicalDomainS4B32.originalMasslessRealFermionField_normalized_i_half`, source [S4B32](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B32OriginalRealFockRemainderNormalizedIHalfProbe.lean) Git blob `046ee641d53a419553c8972804865e2b68977ad4`. For genuine original algebra data `M : AlgebraData N`, original real `Boson N` point `x`:

```text
M.deformedFermionField 1 0 x =
 (((Complex.I / 2 : ℂ) •
   (∑ A : ColorIndex N, ∑ β : SpinIndex, ∑ q : FermionIndex N,
     ((∑ j : SpaceIndex, ∑ C : ColorIndex N,
       M.structureConstant C A q.2 * x (j,C) * M.gamma j β q.1 : ℝ) : ℂ) •
       (M.theta β A * M.theta q.1 q.2)))
   : Fermion N →L[ℂ] Fermion N).restrictScalars ℝ
```

The LHS is the **actual original real-linear Fock massless deformed fermion field**, NOT a made-up Hilbert space proxy. The RHS is the **real-scalar restriction of the EXACT accepted original complex-linear normalized +i/2 source operator**. Original kinetic theta is multiplied before the original field theta; original structure-constant index order `C,A,D` is unchanged. The theorem does not claim an additional spectral property or the manuscript operator equals this source operator.

## Mechanism, strict acceptance

The source proof is a two-line composition, no duplicated sum algebra or new physics hypotheses:
- accepted S4B10 `originalMasslessFermionField_complexRestriction M x` proves `M.deformedFermionField 1 0 x = (sourceMasslessComplexFermionContraction M x).restrictScalars ℝ`;
- accepted S4B31 `originalComplexFermionContraction_normalized_i_half M x` is transported along the genuinely typed map `fun T : Fermion N →L[ℂ] Fermion N => T.restrictScalars ℝ` via `congrArg`.

[Gate120](../.github/workflows/bfss-form-original-real-fock-remainder-normalized-i-half-strict-gate120.yml) is source-hash-pinned, with immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original source and qualified original cache, all strict accepted S4B3–S4B31 parents freshly recompiled (the newest S4B31 independently with original exact named axiom report), SHA `046ee641d53a419553c8972804865e2b68977ad4` checked both git-tree/worktree, genuine S4B32 `.olean`, one named theorem axiom subset `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`, compiler errors or candidate warnings. Complete terminal strict-green run only accepts **one** new unique scoped S4 principal root **56→57**. Red = no root and audit first causal compiler diagnostic; no source or statement weakening.

## Limits / next work

This result is *real-linear* and source exact but does **NOT** already prove the October 5 manuscript (B(x)) notation or basis/normalization conventions; that comparison requires inspecting the actual manuscript, separately verifying operator identity including gauge color/Pauli basis and original domain, and retaining possibility of a strict negative outcome. It does **NOT** establish existence of positive normalizable eigenstates. Canonical `main` and original etblink/math upstream source remain unchanged.
