# OpenAI Navier–Stokes 2026 Reproducibility Audit Result 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_REPRODUCIBILITY_AUDIT
DATE = 2026-09-10
AUDIT_STATUS = COMPLETE
RESULT = PASS
VERIFICATION_CLASS = INDEPENDENT_FORMAL_REPRODUCIBILITY
INDEPENDENT_HUMAN_MATHEMATICAL_REVIEW = NOT_ESTABLISHED
CLAY_RECOGNITION = NOT_ESTABLISHED
K9_CORPUS_EFFECT = NONE
FRAMEWORK_EFFECT = NONE
K1_K10_EFFECT = NONE
E1_E5_EFFECT = NONE
RECURRENCE_EFFECT = NONE
EMPIRICAL_EFFECT = NONE
```

## Frozen inputs

```text
FCP_BASE = d2c3014357ed1de66849f66c5a8cc08e0d453b4b
FCP_AUDIT_PR = 2
FCP_AUDIT_HEAD = f62cf68ee64172c878a756bc0d0216fc39f684d1
CI_RUN = 34532064891
CI_JOB = 103054909013
OPENAI_REPOSITORY = openai/NavierStokesAndEuler
OPENAI_COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
OPENAI_TREE = a503f07635f200c0f2f9c5361df1fa07f95c4741
LEAN_TOOLCHAIN = leanprover/lean4:v4.34.0-rc2
MATHLIB_COMMIT = 85e3a25e006c35636f0e53b0e9296caca2685bc0
COMPARATOR_COMMIT = 19e111e2141cf333c7daff0f64c5f24acc91dd2e
LEAN4EXPORT_COMMIT = cacf989bd75f608700820f6afc595f32e7a99a4d
LANDRUN_COMMIT = 811cfff51ceaf3d9843708aa6d22e9b84ccac8b4
```

## Executed gates

The independent GitHub-hosted replay executed from an exact detached checkout of the OpenAI commit and tree. The following gates all passed:

1. exact upstream commit and tree identity;
2. exact Lean toolchain and pinned dependency identities;
3. static scan of `NavierStokes/` for executable `sorry`/`admit` and project-defined axioms;
4. Mathlib cache acquisition;
5. complete `lake build NavierStokes` from the pinned source/dependency state;
6. direct recompilation of `NavierStokes/ComparatorSolution.lean`;
7. source build of the pinned Landrun commit;
8. build of Comparator and lean4export;
9. Comparator replay of the two Navier–Stokes challenge theorem names using the Lean default kernel.

The Navier–Stokes library build completed successfully with 9,580 build jobs.

## Proof-hole and axiom result

The executable `NavierStokes/` solution tree contained no line-level executable `sorry` or `admit` matching the preregistered gate and no project-defined `axiom` declaration matching that gate.

Direct recompilation reported the following dependency sets:

```text
NavierStokes.Comparator.navier_stokes_breakdown_R3
  [propext, Classical.choice, Quot.sound]

NavierStokes.Comparator.navier_stokes_breakdown_periodic
  [propext, Classical.choice, Quot.sound]
```

No `sorryAx` dependency was reported for either exported solution theorem.

The `sorry` declarations observed in `ComparatorChallenges/NavierStokes.lean` are the intentionally incomplete trusted challenge statements used by Comparator. They are not imported as proof premises by `NavierStokes.ComparatorSolution`.

## Comparator result

The replay used:

```text
CHALLENGE_MODULE = ComparatorChallenges.NavierStokes
SOLUTION_MODULE = NavierStokes.ComparatorSolution
THEOREMS =
  NavierStokes.Comparator.navier_stokes_breakdown_R3
  NavierStokes.Comparator.navier_stokes_breakdown_periodic
PERMITTED_AXIOMS =
  propext
  Quot.sound
  Classical.choice
```

The final Comparator run rebuilt and exported the challenge, replayed the solution, exported the solution environment, and ran the Lean default kernel. The terminal evidence records:

```text
Lean default kernel accepts the solution
Your solution is okay!
```

Therefore FCP independently reproduced, at the pinned source/dependency state, Lean-kernel acceptance of solution theorems matching the Comparator challenge statements for alternatives (C) and (D), within the declared axiom ceiling.

## Theorem-correspondence boundary

The pinned OpenAI formalization identifies:

- paper Theorem 1.1 on R3 with `NavierStokes.Comparator.navier_stokes_breakdown_R3`;
- the periodic consequence with `NavierStokes.Comparator.navier_stokes_breakdown_periodic`.

The R3 adapter descends through `NavierStokesR3.theorem_1_1`, whose target explicitly quantifies over every positive viscosity and constructs velocity, pressure, smooth compact-positive-time forcing, compact spatial support, bounded kinetic energy before time one, and the absence of a global smooth finite-energy competitor with the same force and zero datum.

This audit therefore verifies the formal theorem chain and the exact Comparator statement match. It does not independently re-derive every informal sentence of the 166-page paper or substitute for expert human mathematical review of the construction's conceptual correctness.

## Scientific interpretation

```text
FORMAL_ARTIFACT_REPRODUCED_INDEPENDENTLY = YES
LEAN_KERNEL_ACCEPTANCE_REPRODUCED = YES
COMPARATOR_STATEMENT_EQUIVALENCE_REPRODUCED = YES
DECLARED_AXIOM_CEILING_REPRODUCED = YES
INDEPENDENT_HUMAN_PROOF_REVIEW_COMPLETE = NO
GLOBAL_MATHEMATICAL_CONSENSUS_ESTABLISHED = NO
CLAY_PRIZE_RECOGNITION_ESTABLISHED = NO
UNFORCED_3D_NAVIER_STOKES_BLOWUP_ESTABLISHED = NO
```

The forcing qualifier remains essential. This result concerns the forced Clay alternatives (C)/(D) encoded by the comparator and does not establish blowup for the unforced three-dimensional Navier–Stokes Cauchy problem.

## FCP consequence

This result strengthens the source status from a source-derived theorem claim with a published formal certificate to a source-derived theorem claim whose published Lean certificate has been independently reproduced by FCP at an exact pinned state.

It does not create a foundational framework, change K1–K10, alter any E-class, recompute recurrence, establish an empirical discriminator, or enter the already closed K9 corpus.

The appropriate program label is:

```text
OPENAI_NAVIER_STOKES_2026_FORMAL_STATUS = INDEPENDENT_FORMAL_REPRODUCIBILITY_PASS
```

A separate expert mathematical review may still be valuable, especially for conceptual correspondence between the formalized construction and the analytic argument in the paper, but no further formal-build uncertainty remains for this pinned commit under the executed audit gates.
