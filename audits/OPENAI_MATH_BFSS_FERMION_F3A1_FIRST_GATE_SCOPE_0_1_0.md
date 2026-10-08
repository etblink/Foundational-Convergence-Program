# BFSS fermions F3-A1 — theta-to-Majorana invariant-submodule transport first gate 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Status:** `F3A1_COMPILER_CANDIDATE__NO_KERNEL_ACCEPTANCE`
**Branch:** `research/openai-math-su2-concrete-potential`
**Pinned:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `v4.34.1`.

## Accepted predecessor and boundaries

F2-B2d2 is formally accepted: Gate #57, run `37737545794`, job `113180428725`, source/workflow HEAD `e5b67dd87382089018ba3e8b5885b6e199af32f7`, standard-only `#print axioms thetaCandidate_CAR`, formally recorded in `audits/OPENAI_MATH_BFSS_FERMION_F2B2D2_GATE_57_FORMAL_ACCEPTANCE_0_1_0.md`. Also accepted: F2-A `thetaCandidate_selfAdjoint`, and earlier CAR stages.

The remaining exact pinned `AlgebraData 2` fermion field is:

```lean
theta_irreducible : ∀ W : Submodule ℂ (Fermion 2),
    (∀ α A, ∀ w ∈ W, theta α A w ∈ W) →
    W = ⊥ ∨ W = ⊤
```

No proof of this irreducibility claim is asserted by this gate.

## New statements

Source `experiments/openai-math-su2-concrete-potential/SU2FermionF3InvariantProbe.lean` proves equivalence, via the **existing**, unchanged `thetaLabelEquiv`, between invariant-submodule conditions for `thetaCandidate α A` and `majoranaCandidate p`, plus the real/imaginary component invariance consequences:

- `thetaInvariant_majoranaCandidate`: any stable `W` is stable under a selected `majoranaCandidate p`;
- `thetaInvariant_iff_majoranaCandidate`: equivalence for **all** spin/color labels vs **all** 48 Majorana product labels;
- `thetaInvariant_majoranaComponents`: a theta-stable `W` is stable under both `majorana0 i` and `majorana1 i` for every `i : Fin 24`.

These are necessary **index-transport infrastructure**, not irreducibility. No assumption `W = ⊥ ∨ W = ⊤` enters their proofs.

## F3 research plan / mathematical bottleneck

A substantive next obligation is to recover invariance under transported `creator i` and `annihilator i` from the two Majorana components using their exact complex linear combinations (with verified scalar normalization). Then prove that the full finite Fock occupation basis is generated from any nonzero invariant vector by products of creation/annihilation operators, or establish a genuinely applicable finite Clifford-module theorem. Source-first candidates in the pinned `OAI.Analysis.Laughlin.Fock` and `OAI.MathematicalPhysics.ContinuumCoulomb.ManyBody.FockNorm` modules include the creation and annihilation action on occupation basis vectors, `create_basis`, and `annihilate_occupied_basis`. Their phase coefficients and span properties must be checked rather than assumed.

In particular CAR and `theta_selfAdjoint` alone do not automatically imply irreducibility for arbitrary Hilbert-space dimension: this proof must use the exact `2^24)-dimensional Fock realization, or an equivalent justified minimality argument.

**Gate acceptance:** exact-head completed GREEN workflow compiling the new F3-A1 file, with `#print axioms` for all three statements restricted to `[propext, Classical.choice, Quot.sound]` or subset; no `sorryAx` or custom axiom.

**Governance:** Research branch only; no edits to FCP main, pinned OpenAI source, independent reviewer scripts, or public upstream PR/issues. Stop after submitting this candidate; await human GREEN/RED before checking any new CI gate.
