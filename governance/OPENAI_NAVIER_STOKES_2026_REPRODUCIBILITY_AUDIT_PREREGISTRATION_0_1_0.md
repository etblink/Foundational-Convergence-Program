# OpenAI Navier–Stokes 2026 Reproducibility Audit — Preregistration 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_REPRODUCIBILITY_AUDIT
STATUS = PREREGISTERED
DATE = 2026-09-10
FCP_BASE_COMMIT = d2c3014357ed1de66849f66c5a8cc08e0d453b4b
FCP_BASE_TREE = a541db18d5a674cb44b89b55185dc0a7435ae8e4
UPSTREAM_REPOSITORY = openai/NavierStokesAndEuler
UPSTREAM_COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
UPSTREAM_TREE = a503f07635f200c0f2f9c5361df1fa07f95c4741
K9_CLOSED_CORPUS_EFFECT = NONE
```

## Purpose

Independently test the public machine-checkable surface of OpenAI's 2026 *Finite Time Blowup for Navier–Stokes* result without changing any FCP framework, comparison, recurrence, empirical, or K9 conclusion.

This operation is a reproducibility audit of a pinned public artifact. It is not Clay Mathematics Institute recognition, peer-review consensus, an independent handwritten proof, or a physical interpretation of a PDE singularity.

## Frozen source identity

Primary paper:

- OpenAI, *Finite Time Blowup for Navier–Stokes*;
- public PDF: `https://cdn.openai.com/pdf/32d9f210-8b73-45e0-91bc-82a30aef8a9a/navier-stokes.pdf`.

Machine-readable proof:

- repository `openai/NavierStokesAndEuler`;
- commit `f9e8bc5b38b6e212696e8a30e3e91517af887bbd`;
- tree `a503f07635f200c0f2f9c5361df1fa07f95c4741`;
- Lean toolchain `leanprover/lean4:v4.34.0-rc2`;
- manifest-pinned Mathlib commit `85e3a25e006c35636f0e53b0e9296caca2685bc0`;
- manifest-pinned Comparator commit `19e111e2141cf333c7daff0f64c5f24acc91dd2e`.

The audited result is Navier–Stokes only. The companion Euler result is out of scope.

## Gates fixed before CI replay

### G1 — exact identity

The CI checkout must reproduce the exact upstream commit and tree above. Any drift is a hard failure.

### G2 — paper/Lean statement correspondence

The audit must compare the paper's Theorem 1.1 and Corollary 10.6 with:

- `NavierStokesR3.theorem_1_1`;
- `NavierStokes.Comparator.navier_stokes_breakdown_R3`;
- `NavierStokes.Comparator.navier_stokes_breakdown_periodic`.

At minimum the comparison must preserve: every `ν > 0`, three spatial dimensions, incompressibility, smooth positive-time forcing, zero initial velocity, finite pre-singular kinetic energy, finite-time unbounded velocity, and the nonexistence statements corresponding to Clay alternatives (C) and (D).

### G3 — challenge isolation

The proof-bearing solution module must not obtain its theorem by importing the intentionally `sorry`-containing challenge module. The Comparator challenge is allowed to contain its deliberate holes; those holes may not lie on the solution import path.

### G4 — source-hole scan

Inside `NavierStokes/`, the pinned checkout must contain no executable `sorry` or `admit` proof hole and no project-defined `axiom` declaration. Hits in `ComparatorChallenges/` do not fail this gate because those files intentionally encode the challenge statements.

### G5 — fresh Lean replay

From the exact checkout, CI must obtain dependencies through the pinned Lake manifest and successfully execute:

```text
lake exe cache get
lake build NavierStokes
lake env lean NavierStokes/ComparatorSolution.lean
```

### G6 — Comparator replay

CI must run Comparator on the two Navier–Stokes theorem names with exactly these permitted axioms:

```text
propext
Quot.sound
Classical.choice
```

The reproducibility harness may disable the optional nanoda secondary kernel while retaining Comparator's builtin Lean-kernel replay. Disabling nanoda changes only the redundant external-kernel check, not the statement-equivalence or permitted-axiom requirements.

The Landrun binary used by the harness is pinned to `Zouuup/landrun@811cfff51ceaf3d9843708aa6d22e9b84ccac8b4`.

### G7 — epistemic ceiling

Even if G1–G6 pass, this operation may establish only:

```text
PINNED_ARTIFACT_REPRODUCIBLE = YES
LEAN_KERNEL_ACCEPTANCE_REPRODUCED = YES
COMPARATOR_STATEMENT_EQUIVALENCE_REPRODUCED = YES
PERMITTED_AXIOM_CEILING_REPRODUCED = YES
```

It may not infer:

```text
CLAY_PRIZE_RECOGNITION = YES
GLOBAL_MATHEMATICS_CONSENSUS = YES
INDEPENDENT_HUMAN_PROOF = YES
PHYSICAL_SINGULARITY_OBSERVED = YES
FCP_FRAMEWORK_CREDIT = YES
FCP_CONVERGENCE_CREDIT = YES
```

## Outcome vocabulary

- `PASS` — all G1–G7 satisfied.
- `PARTIAL_PASS` — static/correspondence gates pass but an explicitly identified infrastructure condition prevents fresh replay.
- `FAIL` — identity mismatch, proof hole on the solution surface, build failure attributable to the pinned artifact, theorem mismatch, Comparator rejection, or prohibited promotion.

No failure or pass in this audit changes the already closed K9 corpus. Any later use of this source in a K9-like comparison requires a separately opened prospective source window.
