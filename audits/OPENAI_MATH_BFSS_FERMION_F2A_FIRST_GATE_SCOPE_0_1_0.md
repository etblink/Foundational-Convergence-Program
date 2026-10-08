# BFSS Stage F2-A — first cross-mode CAR / theta-index gate scope 0.1.0

**Research date:** 2026-10-07 US Pacific
**Status:** `F2A_COMPILATION_CANDIDATE_SUBMITTED__NO_NEW_ACCEPTANCE`
**Research branch:** `research/openai-math-su2-concrete-potential`
**First F2-A source commit:** `ef8009d6663f42b200a5685090051b6c16eb7989`
**F2-A workflow commit:** `e3ab17a9112c78ab72fc1176f367c59e64ade35c`
**Accepted F1 source commit:** `effb498f30a00be11573f72c1efbf991df84a366`
**Accepted F1 CI run:** #36, 37723878325, job 113137499215
**Upstream pin:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1

## Project authority and source provenance

Proceed from accepted F1 scope `audits/OPENAI_MATH_BFSS_FERMION_F1_GATE_36_FORMAL_ACCEPTANCE_0_1_0.md`. Source-first crosswalk `audits/OPENAI_MATH_BFSS_FCP_SOURCE_FIRST_CROSSWALK_0_1_0.md` remains controlling as a research aid. In particular, FCP's source register, FCP-24 String/M evidence and F270-B mathematical adjudications constrain the source and physical interpretation, while *actual* reusable proofs in pinned Lean come from `OAI.Laughlin.Fock.mixed_car`, `create_anticommute`, `annihilate_anticommute`, `OAI.ContinuumCoulomb.HubbardGlobal.fockOperator_{add,mul,smul}`, plus F1's proven unitary conjugation.

Do not modify the frozen FCP-24 source set, source-delta adjudication, FCP program K1-K10, FCP `main` or upstream `openai/math`.

## Why F2 is divided

The full F2 objective remains 48 indexed self-adjoint Majorana generators and every pairwise CAR equation. The first compiler gate **F2-A** separates the load-bearing algebraic transport and theta-field signature from the final 2×2 Majorana cross-anticommutator expansion. This limits CI debugging and avoids mistaking a partially compiled generated family for a complete Clifford representation.

## Candidate source and claims

**File:** `experiments/openai-math-su2-concrete-potential/SU2FermionF2Probe.lean`.

- Imports the previously kernel-verified `SU2FermionFockProbe` via an explicit `.olean` build in the pinned workflow, avoiding copy/paste.
- `creator_creator_car i j` and `annihilator_annihilator_car i j`: all-mode zero anticommutators on `BFSSQuantum.Fermion 2`, *not* only same-mode squares.
- `annihilator_creator_car i j`: full indexed mixed CAR, with `(if i=j then (1:ℂ) else 0) • 1`.
- `majorana1 i`: complementary imaginary self-adjoint component for every mode, built using `IsSelfAdjoint.add_star_self ((Complex.I) • creator i)` and real scalar normalization `sqrt(2)/2`. The scalar definition is designed to be equivalent to `i (c_i-a_i)/sqrt(2)`; that equivalence and **majorana1 CAR remain to be proved**.
- `thetaLabelEquiv`: bijection from exact BFSS `SpinIndex × ColorIndex 2` to `Fin 24 × Fin 2`.
- `majoranaCandidate`, `thetaCandidate`, `thetaCandidate_selfAdjoint`: all 48 generators on the exact BFSS `ContinuousLinearMap` target, with self-adjointness conditional on successful compiler verification.

A definition of a full 48-member family does not itself demonstrate the **complete** CAR or `theta_irreducible`. Do not assert completion of F2 or a full `AlgebraData 2` witness based on passing F2-A alone.

## Gate acceptance rules

- The expected qualifying GitHub workflow run is the one whose **head SHA exactly equals** `e3ab17a9112c78ab72fc1176f367c59e64ade35c`; an earlier successful workflow run on only the added F2 source file may have compiled merely the old F1 workflow and is NOT an F2-A pass.
- Require the color, gamma and accepted F1 proof to keep compiling under the pinned OpenAI math toolchain, then `lake env lean SU2FermionF2Probe.lean` to compile without errors.
- All new exported F2-A claims must print standard axioms only `[propext, Classical.choice, Quot.sound]` or a subset, with **no `sorryAx`** or custom axioms. Stop if unexpectedly expensive massive-index computation is required.
- *Do not query the newly submitted workflow until the owner explicitly reports its green/red outcome.* On RED, inspect the exact qualifying run/job compiler log, repair the smallest pinned-source proof error, ask the owner to report the next candidate's status.

## F2-B mathematical target (not yet submitted)

Establish `majorana1 i * majorana1 i + ... = 1`, the same-mode mixed `majorana0 i` / `majorana1 i` anticommutator zero, and all different-mode pair CAR for each of the four component choices. Final theorem:

```lean
forall (α β : OAI.BFSSQuantum.SpinIndex)
       (A B : OAI.BFSSQuantum.ColorIndex 2),
  thetaCandidate α A * thetaCandidate β B +
    thetaCandidate β B * thetaCandidate α A =
    (if α = β ∧ A = B then (1 : ℂ) else 0) •
      (1 : OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2)
```

The exact pinned `AlgebraData.theta_CAR` uses `(if α = β ∧ A = B then 1 else 0) • 1` with scalar inferred from `ℂ`; confirm definal equality. Separate F3: arbitrary invariant complex submodule irreducibility, not presumed from 48 CAR alone.

No publication, no upstream PR, no automatic F2-B implementation based on an unverified F2-A candidate.

**Operating maxim:** Protect the quality threshold, not the opportunity.
