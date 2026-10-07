# OpenAI Math Family 270-B — Lean proof-of-concept

Status: **experimental / noncanonical**

This bounded experiment tests whether the finite Clifford-algebra calculation used
in Lemma 2.1 of OpenAI Math Family 270-B can be expressed cleanly in Lean using
the same abstract interface already present in OpenAI's BFSS formalization.

## Pinned upstream state

- `openai/math` commit:
  `adc7f1241b42e322a6451854ab7e4b4c146bf78a`
- Lean:
  `leanprover/lean4:v4.34.1`
- mathlib:
  `d13f23b723b8a846827a245b89c10fc7d3f11612`
- Upstream interface mirrored:
  `lean/OAI/MathematicalPhysics/BFSS/GammaWords.lean`

## Bounded target

The experiment formalizes:

1. for distinct `j,k`, `γʲ γʲᵏ = γᵏ`;
2. for distinct `j,k`, `γᵏ γʲᵏ = -γʲ`;
3. the nine-dimensional contraction
   `∑ j, γʲ γʲˡ = 8 γˡ`.

The third statement packages the manuscript's sentence that each fixed spatial
index occurs in exactly eight of the relevant gamma contractions.

## Nonclaims

This experiment is **not**:

- a formalization of Theorem 1.1;
- a formalization of the whole quadratic-form identity in Lemma 2.1;
- evidence for arbitrary-N or large-N BFSS;
- authorization for an upstream fork, issue, branch, or pull request.

A successful compile only establishes that this finite-algebra layer admits a
small Lean proof under the pinned toolchain. Upstream worthiness remains a
separate Project-Lead judgment.
