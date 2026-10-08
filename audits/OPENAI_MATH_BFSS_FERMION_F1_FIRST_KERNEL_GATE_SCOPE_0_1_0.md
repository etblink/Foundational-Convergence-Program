# BFSS fermion Stage F1 — first kernel gate scope and source crosswalk 0.1.0

**Status:** `STAGE_F1_CANDIDATE_SUBMITTED__CI_RESULT_PENDING`
**Date:** 2026-10-07 (US Pacific)
**Research branch:** `research/openai-math-su2-concrete-potential`
**Accepted predecessor:** BFSS SU2 Gate #31, commit `d86f953db7d3de84e28337f450bcb5b53fff2d02`, CI `37720700330`; explicit gamma9 proved, no `sorryAx`.
**New candidate source:** `experiments/openai-math-su2-concrete-potential/SU2FermionFockProbe.lean` initially committed at `095a36231037195fbdf7550993a9f0efb93da91d`.
**Workflow candidate commit:** `e6c437667d04e4bf5df9e10a229dcefb906bfdb3`.
**Upstream authority:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1** and pinned mathlib.

## Source-first obligation

Owner-directed FCP source and provenance audit completed in
`audits/OPENAI_MATH_BFSS_FCP_SOURCE_FIRST_CROSSWALK_0_1_0.md`.
Key historical sources include FCP `SOURCE_REGISTER.md`,
`frameworks/string/FCP24_STRING_SOURCE_INTAKE_0_1_0.md`,
and `audits/OPENAI_MATH_FAMILY270B_BFSS_T6_SOURCE_DELTA_ADJUDICATION_0_1_0.md`,
plus the previously preserved independent BFSS source reviews and finite Clifford scripts.
Those provide scientific scope and reproducibility, *not* an exact 48-theta Lean proof.

For the implementation, reuse actual pinned upstream Lean content:
- `OAI.MathematicalPhysics.BFSS.Core`: `Fermion 2` target.
- `OAI.Laughlin.Fock.create`, `annihilate`, `mixed_car`, `create_sq`, `annihilate_sq`.
- `OAI.ContinuumCoulomb.HubbardGlobal.fockOperator` and `fockOperator_create_adjoint`, including the existing `fockOperator_add` and `fockOperator_mul`.
- `LinearIsometryEquiv.piLpCongrLeft` and `LinearIsometryEquiv.conjStarAlgEquiv` for exact basis reindexing and operator star-algebra conjugation.

## Exact targeted field/interface

```lean
abbrev Fermion (N : ℕ) := EuclideanSpace ℂ (Fin (2 ^ (8 * colorDim N)))
```

For N=2, the dimension is 2^24. `FockCoordinateSpace 23`
uses the 24-mode occupation index `Finset (Fin 24)`, also of cardinality 2^24.
The candidate constructs this equivalence abstractly (no explicit 16-million-entry table),
transports bounded creator/annihilator operators, then proves their CAR and adjoint
on `Fermion 2`.

The proposed normalized first Majorana is
```text
theta0(i) = (sqrt(2)/2) * (create_i + annihilate_i)
```
with exact scalar convention `{theta0(i),theta0(i)} = 1`, *not* 2.
The candidate prints axioms for:
- `fockBFSSUnitary` (definition rather than theorem; if Lean does not support an axiom report for definitions, remove this diagnostic only, never relax theorem checks);
- `creator_annihilator_car`;
- `creator_adjoint`;
- `majorana0_selfAdjoint`;
- `majorana0_car`.

## Gate acceptance / failure rules

**PASS requires:** the exact GitHub Actions run on workflow candidate commit
`e6c437667d04e4bf5df9e10a229dcefb906bfdb3` succeeds; the workflow
compiles both previously accepted files and the new F1 candidate against the
pinned OpenAI Lean environment; all new substantive theorem axiom reports
contain **no** `sorryAx` or extra nonstandard axioms. Any proof that fails
elaboration remains unaccepted even if finite checks elsewhere pass.

**RED handling:** only after human owner reports red, inspect the exact
completed run/job/logs and repair the smallest scoped Lean proof issue.
If import builds or the large exponent/index reduction causes unreasonable
compilation time, stop and re-scope rather than expanding matrices or performing
unbounded CI gate trial-and-error.

## Bounded scientific interpretation

- This F1 gate is *one* of the 24 creation/annihilation mode pairs. The underlying
Fock lemmas apply to all modes, but this experiment is **not** a certificate
of a full `SpinIndex × ColorIndex 2` family of 48 self-adjoint generators.
- The complementary imaginary Majorana operator, cross-mode CAR,
the arbitrary-invariant-submodule irreducibility proof, gauge covariance,
full `AlgebraData 2` witness, and spectral theorem are **out of scope**.
- No changes to FCP `main`, original OpenAI `math`, or public upstream
issue/PR are authorized.

**Next stopping point:** await owner-reported CI green/red for the first
Stage F1 candidate. Do not proactively poll newly triggered CI.

**Operating maxim:** Protect the quality threshold, not the opportunity.
