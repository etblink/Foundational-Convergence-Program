# OpenAI Math Family 270-B — Lean Proof-of-Concept Result 0.1.0

## Status

**Disposition:** `LEAN_POC_VALIDATED__EXISTING_STRONGER_UPSTREAM_FORMALIZATION_FOUND__NO_UPSTREAM_PR_RECOMMENDED_AT_THIS_STAGE`

This is a **branch-local, noncanonical experiment result**. It does not alter FCP scientific state, does not reopen FCP-24, and does not authorize any external effect against `openai/math`.

## Authority and pins

FCP base used for the experiment:

`ed4c9b4827fe099f6d6be5dcd52aab7f06b45576`

Experimental branch:

`research/openai-math-family270b-lean-poc`

Pinned OpenAI Math state:

`adc7f1241b42e322a6451854ab7e4b4c146bf78a`

Pinned OpenAI `GammaWords.lean` blob:

`d12051e70de679f5458dbd456667a32c7b407ce4`

Pinned Lean toolchain:

`leanprover/lean4:v4.34.1`

Pinned mathlib revision:

`d13f23b723b8a846827a245b89c10fc7d3f11612`

Pinned CI actions:

- `actions/checkout@11d5960a326750d5838078e36cf38b85af677262`
- `leanprover/lean-action@f061402b660e0c34644504b324e830f2991d4865`

No OpenAI fork, branch, issue, pull request, or other upstream mutation was created.

## Question tested

Could the finite Clifford-algebra step used in Family 270-B Lemma 2.1 be expressed as a small, repository-native Lean result using OpenAI's existing BFSS abstractions?

The targeted identities were:

1. for distinct `j,k`, `γʲ γʲᵏ = γᵏ`;
2. for distinct `j,k`, `γᵏ γʲᵏ = -γʲ`;
3. for fixed `l : Fin 9`,
   `∑ j, γʲ γʲˡ = 8 γˡ`.

The third statement packages the manuscript's finite counting step that a fixed spatial index has eight distinct partners.

## Validation history

### Minimal mirrored-interface validation

The experiment first mirrored the exact relevant interface from OpenAI's
`lean/OAI/MathematicalPhysics/BFSS/GammaWords.lean` against the pinned Lean/mathlib environment.

- Run 1: harness stopped before compilation because `lean-action` expected a pre-existing `lake-manifest.json`.
- Run 2: reached the proof. Both distinct-index gamma identities and the factor-eight counting argument elaborated. The only remaining goal was the representation-level equality `8 * G l = 8 • G l`.
- That coercion-only goal was repaired by matrix extensionality.
- Run 3: **SUCCESS**.

Successful minimal run:

`https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37676201033`

### Exact-upstream source validation

A stronger check then downloaded the exact pinned upstream
`GammaWords.lean`, verified its Git blob SHA as
`d12051e70de679f5458dbd456667a32c7b407ce4`, compiled that source, and compiled
`Family270BUpstreamProbe.lean` importing it directly.

- Exact run 1: same manifest-bootstrap harness issue; no proof verdict.
- Exact run 2: **SUCCESS**.

Successful exact-source run:

`https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37676727334`

The exact-source proof therefore compiles against OpenAI's actual pinned
`OAI.MathematicalPhysics.BFSS.GammaWords` declarations, not merely an independently recreated matrix model.

## More important upstream discovery

The proof-of-concept established that the three small lemmas are valid, but inspection of the existing BFSS Lean library showed that OpenAI already formalizes substantially stronger nearby statements.

### Existing factor-eight contraction

`lean/OAI/MathematicalPhysics/BFSS/FermionQuantization.lean` already contains:

- `kinetic_pairGamma_first`;
- `kinetic_pairGamma_second`;
- `kinetic_bracket_average`.

The first two perform the relevant endpoint gamma contractions. The third proves the full fermionic contraction and obtains an explicit factor `8`:

`(8 : ℂ) • ∑ j, ∑ A, cubicFermionComponent ...`

Thus the core finite-algebra phenomenon that motivated the proof-of-concept is already present upstream in a stronger operator-level calculation.

### Existing normalized `-i/2` coefficient

The same file contains `deformedFermionField_bracket`.

It combines the factor-eight contraction with the `1/16` averaged quadratic-form normalization and derives:

`((-Complex.I)/2) • ...`

This is the coefficient-level calculation the experiment was intended eventually to reach.

### Existing energy identity

`lean/OAI/MathematicalPhysics/BFSS/DeformedCharge.lean` contains
`averaged_core_energy`, which identifies the averaged squared deformed charges with:

- a kinetic term;
- the deformed bosonic potential;
- the deformed fermionic field.

Structurally this is already the more general BFSS form identity surrounding the finite algebra used in Family 270-B Lemma 2.1.

### Existing vector/bivector trace infrastructure

`lean/OAI/MathematicalPhysics/BFSS/PotentialBasis.lean` contains, among other results:

- `pairGamma_trace`;
- `gamma_product_trace`.

Together with the word-trace machinery in `GammaWords.lean`, these already supply the relevant vector/bivector trace orthogonality infrastructure. Therefore the corrected Python checker remains a useful independent finite verification artifact, but those trace identities are not an obvious missing Lean contribution either.

## Repository-linking observation

At the pinned upstream state:

- the Family 270-B preprint README contains only the manuscript/citation material;
- `lean/formalization.yaml` contains no textual BFSS or Family-270 registration;
- the BFSS Lean library is present under `lean/OAI/MathematicalPhysics/BFSS/`;
- Git history at the public release is a single initial commit, so public commit history does not establish which BFSS manuscript the library was intended to support.

Therefore there may be a **documentation/provenance bridge gap** between Family 270-B and an already-existing stronger BFSS formalization. That is not yet sufficient reason to manufacture an upstream pull request.

## Project-Lead assessment

The experiment changes the upstream-worthiness judgment.

Before the experiment, a small Lean proof of the finite contraction looked like it might raise the candidate above the Python-only threshold.

After the experiment:

- mathematical validity of the small Lean contraction: **high**;
- repository compatibility: **demonstrated**;
- novelty as a missing mathematical formalization: **low**, because stronger upstream lemmas already exist;
- present upstream PR recommendation: **NO**.

A pull request adding only the three new gamma lemmas would risk duplicating existing formalized content under a simpler presentation. That does not meet the project's quality threshold.

The potentially worthwhile next question is narrower:

> Is there a nontrivial, exact bridge from the existing general BFSS Lean development to the specific hypotheses and quadratic-form identity stated in Family 270-B Lemma 2.1, such that adding that bridge would materially improve verification of the manuscript rather than merely add a pointer or duplicate an existing theorem?

Only if that bridge exposes a genuine missing specialization, qualification, proof dependency, or useful verification artifact should upstream contribution be reconsidered.

## FCP scientific effect

None.

This experiment does not alter the accepted Family 270-B T6 adjudication, does not trigger T2, does not change K1-K10, and does not reopen broad scientific work.

## External-effects boundary

Preserved.

No mutation of `openai/math` has been performed.

The operating rule remains:

> **Protect the quality threshold, not the opportunity.**
