# Original BFSS SU(2) L6H5E8AL — exact physical Hilbert-space and core parity (0.1.0)

**Date:** October 17, 2026 PDT.  
**Disposition:** `PASS__ACTUAL_SOURCE_SU2_PHYSICALSPACE_AND_INVARIANTCORE_PARITY__THREE_AXIOM_CLEAN_ROOTS`.

## Accepted immutable CI evidence

- [Original Physical Parity #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39047051355): run `39047051355`, exact source/workflow head `1a7ab71c9912f06e2e353a1341bec9a885ba881b`, strict job `117437787952`, `SUCCESS`, completed `2026-10-17T15:58:29Z`.
- Evidence artifact `bfss-su2-opposite-gamma-39047051355`, ID `12106321590`, full source and compiler logs.
- Actual original source candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8ALOriginalFullL2PhysicalParityProbe.lean`, Git blob `15cf6c8a2ea0f2da7f210e41efd5d0c249d3fbe1`. Accepted source AK `fc298c8d2236d4294992577d08d30072c1777bf9`, AI `4832b4bdf140adaefa3271bea2325a05fde7d1be`, AF `c9f71c6929121226788181ce3547979dcfe6afef` recompiled under exact original qualified cache.
- Source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; no new mathematical premise, source substitution, or implementation change.
- Exact strict marker `L6H5E8AL_ACTUAL_SOURCE_SU2_FULLL2_PHYSICAL_PARITY_AXIOM_CLEAN_PASS`. All **three** named `#print axioms` roots printed only `[propext, Classical.choice, Quot.sound]`, no `sorryAx` or Lean errors.

## New actual source mathematics

Namespace `FCP.BFSSSU2PhysicalDomainL6H5E8AL`:

1. `originalFullL2Parity_fiberAction`: for every original `AlgebraData N`, source `GaugeData` and gauge element, actual bosonic spatial inversion `originalFullL2Parity` **commutes with the literal original Fock `G.fiberAction g` on `FullL2 N`**. Proof uses exact `ContinuousLinearMap.compLp` source fiber action, certified AI a.e. parity representative, and `Lp.ext`, with explicit `Filter.EventuallyEq` to transport a.e. fiber equality under measure-preserving spatial inversion. No invented fermion implementation.
2. `originalFullL2Parity_mem_physicalSpace`: the exact source `G.physicalSpace = ⨅ g, ker(G.bosonPullback g - G.fiberAction g)` is preserved by `originalFullL2Parity`. This uses independently accepted AK commutation with **literal source bosonic pullback** and newly qualified AL commutation with **literal source fermionic fiber action**. Preserves the genuine original SU(N) physical subspace, not an abstract gauge proxy.
3. `originalSmoothParity_mem_invariantCore`: the exact source `G.invariantCore` is preserved by the *actual* smooth-core spatial parity, via accepted AI `coreToL2` intertwining and the newly qualified physicalSpace preservation. Thus parity maps original compactly supported gauge-invariant physical test functions to same, not merely generic TestFunction.

## First-cause red and repair

[Original Physical Parity #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39042013475), proof job `117423268521`, failed only at AL line 41: the syntactically inferred theorem `ContinuousLinearMap.coeFn_compLp L v` was an eventual pointwise equality, but `hfiber.comp_tendsto` resolved against `Eq.comp_tendsto` rather than the intended `Filter.EventuallyEq.comp_tendsto`. Three downstream roots thus had `sorryAx`. This was an exact a.e. elaboration-interface defect, not a failure of fermion gauge parity.
[`d493abac`](https://github.com/etblink/Foundational-Convergence-Program/commit/d493abac07418fecf378d39a211b25ab923a324a) explicitly annotates the source equality with `=ᵐ[volume]` (correct type) before applying `.comp_tendsto`; no mathematics, source sign or assumption was modified. Strict workflow candidate pin updated by [`1a7ab71c`](https://github.com/etblink/Foundational-Convergence-Program/commit/1a7ab71c9912f06e2e353a1341bec9a885ba881b) and qualified in #2.

## Next scientific boundary

AH proved the original *full* smooth-core charge parity `Qα(oppositeGamma M)=P Qα(M) P`. AI/J proved the original L² spatial parity is a **genuine complex-linear unitary** matching `coreToL2`. AK/AL now prove gauge compatibility and literal physicalSpace/invariantCore preservation. These do **not** alone prove equivalence of the opposite-gamma restricted 16-charge **closed graphs**, nor the `(1/16)` associated self-adjoint Hamiltonian **with full operator domain**. Those require explicit source-dependent `GaugeData` transport and graph closure under the genuine product-space unitary. The independent manuscript abstract `Cl(48)`/`Spin(48)` representation and global Spin(9) spectral positive-eigenvalue proof remain separate and unverified.

Two additional prospective strict gates started: [AM charge-vector parity](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39047258350) and [AN opposite-gamma GaugeData identity](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39047409248). Both are **unqualified until strict green**; do not record their statements as accepted early.

No modification to original upstream math, main, source pins or accepted proofs; draft PR #25 base/status unchanged.
