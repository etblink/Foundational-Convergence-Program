# H5E8E — Original Source Spin Identity #318 first-causal negative knowledge

**Date:** 2026-10-15 PDT. **Branch:** \`research/openai-math-su2-s3l-combined-rotation\`.
**Failed CI:** [Original Source Spin Identity #318](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38859972325), job \`116839796346\`.
**Commit tested:** \`a16210fbde871c04d5f7e41ac41e66550e219e90\`.

## First causal Lean failure

The sole Lean error was in \`SU2BFSSPhysicalDomainL6H5E8EOriginalColorMaximalGeneratorComplexLinearityProbe.lean:98:8\`:

\`\`\`
Tactic \`rewrite\` failed: Did not find an occurrence of the pattern
  fun t => (exactColorU c t) ↑x + (exactColorU c t) ↑y
in the target expression
  HasDerivAt
    ((fun t => actualOriginalFullL2GaugePairCLM (...) ... ) +
     (fun t => actualOriginalFullL2GaugePairCLM (...) ... ))
    (...) 0
\`\`\`

The \`hx.add hy\` derivative lemma packages its function argument as
\`(fun t => U t x) + (fun t => U t y)\`, while \`h\` had been stated
as a **pointwise function** \`fun t => U t x + U t y\`. They are
extensionally and definitionally equal after exposing pointwise
\`Pi.add_apply\`, but syntactic \`rw [← h] at hs\` does not
find the pattern without normalizing the function-level addition.

The submodule/domain and membership bridge declarations independently
printed only the pinned standard axiom allowlist. The \`actualOriginalColorGeneratorLinear\`
root printed \`sorryAx\` because the map-add proof was rejected, and its dependent
\`actualOriginalColorGeneratorLinear_core\` likewise inherited it. Therefore
H5E8E did **not** qualify, despite the compiled first two declarations.

## Targeted correction

Immediately after \`have hs := hx.add hy\`, use a
\`change HasDerivAt (fun t => exactColorU c t x + exactColorU c t y) (...) 0 at hs\`
with explicit pinned generator derivative values. Then the existing
\`rw [← h] at hs\` should match the pointwise function, and
\`hs.deriv\` proves the map-add law.

Retain unchanged: original source \`actualOriginalFullL2GaugePairCLM\`,
original \`sourcePlusIGaugeCurve\`, maximal differentiability domain,
complex-module structure, Fock signs/pullback, no new axioms or assumptions,
and strict qualification of all four H5E8E roots.

**Falsifier:** the next strict CI must build an \`.olean\`,
print only \`[propext, Classical.choice, Quot.sound]\` for
all four H5E8E roots with no \`sorryAx\` or Lean errors,
and emit \`L6H5E8E_ORIGINAL_MAXIMAL_GAUSS_COMPLEX_LINEAR_QUALIFIED\`.
Do not claim success before that gate passes.
