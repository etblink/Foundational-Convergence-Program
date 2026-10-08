# BFSS fermions F3-B1 — occupation mode-operator invariance first gate 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC  
**Status:** `F3B1_COMPILER_CANDIDATE__NO_KERNEL_ACCEPTANCE`
**Branch:** `research/openai-math-su2-concrete-potential`.

## Accepted predecessor

F3-A2 is formally accepted at Gate #60: run `37740681647`, job `113190441063`, accepted source commit `0624522c2252093efd47d4d5dc14b05efaefecc3`. The theorem `FCP.BFSSFermionF3A2.thetaInvariant_creator_annihilator` uses standard Lean axioms only and shows every theta-invariant complex submodule is invariant under each actual transported creator and annihilator.

## Bounded next statements

On the exact `OAI.BFSSQuantum.Fermion 2` space, define:
- `occupiedMode i := creator i * annihilator i`;
- `vacantMode i := 1 - occupiedMode i`.

For a theta-invariant complex submodule, prove stability under these two operators for each of the 24 modes. The argument must follow only from previously accepted creator/annihilator invariance and submodule closure. Preserve existing F1/F2 normalization, exact operator types and definitions.

These two operators are *candidates* for occupation-projectors at this gate. **Do not claim** their diagonal action, idempotence, orthogonality, isolation of individual occupation-basis coordinates, or irreducibility merely from these closure statements.

## Source-first check and subsequent proof sequence

The FCP source-first crosswalk `audits/OPENAI_MATH_BFSS_FCP_SOURCE_FIRST_CROSSWALK_0_1_0.md` and `SOURCE_REGISTER.md` govern scientific source attribution and distinguish model-level BFSS source claims from formal proof progress.

In pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `lean/OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/HubbardOccupation.lean` supplies `OAI.ContinuumCoulomb.HubbardGlobal.number_basis`, and `lean/OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/FockNorm.lean` supplies actual signed `create_basis`, `annihilate_occupied_basis`, and the Fock-coordinate transport. The next critical gate must prove the **exact transported diagonal action** on the 24-mode occupation basis. After that, a finite family of commuting mode selectors may isolate any nonzero coordinate; generating all basis vectors remains to be proved separately.

Never substitute an arbitrary CAR representation for this exact finite Fock representation.

## Qualification and stop rules

New B1 source imports accepted F3-A2 and compiles as a distinct module. `#print axioms` must show only `[propext, Classical.choice, Quot.sound]` or a subset. No `sorry`, `admit`, custom axioms, changed theorem targets, or upstream edits.

After submitting one gate candidate, do not poll or inspect the new workflow until the human owner reports GREEN or RED. Work only on the research branch; preserve FCP `main` and frozen classifications. No public upstream issue/PR.
