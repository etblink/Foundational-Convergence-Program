# H5E8B: gate #313 first-causal-error evidence and minimal repair

2026-10-15 PDT, original research branch \`research/openai-math-su2-s3l-combined-rotation\`.

## Strict negative CI

[Original Source Spin Identity #313](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38853159983), job \`116818645172\`, compiled the entire accepted dependency chain including #312 / H5E8A. H5E8B failed at its **only Lean error**, source
\`SU2BFSSPhysicalDomainL6H5E8BOriginalColorInfinitesimalGeneratorDomainProbe.lean:95:8\`:

\`\`\`
error(lean.unknownIdentifier): Unknown identifier \`dense.mono\`
\`\`\`

H5E8B's four declarations \`actualOriginalFullL2ColorInfinitesimalDomain\`,
\`actualOriginalFullL2ColorInfinitesimalGenerator\`,
\`actualOriginalFullL2ColorInfinitesimalDomain_core_mem\`,
\`actualOriginalFullL2ColorInfinitesimalGenerator_core\` each printed *only*
\`[propext, Classical.choice, Quot.sound]\`. The fifth, density theorem,
printed \`sorryAx\` because its declaration was unfinished, so the
**five-root H5E8B gate did not qualify**, notwithstanding the first four roots.

## Mathematically exact repair

Read pinned Mathlib source at \`leanprover-community/mathlib4\`
\`d13f23b723b8a846827a245b89c10fc7d3f11612\`,
\`Mathlib/Topology/Closure.lean\`, declaration
\`@[mono, gcongr] theorem Dense.mono (h : s₁ ⊆ s₂) (hd : Dense s₁) : Dense s₂\`.
The correct capitalized declaration is **\`Dense.mono\`**, not
\`dense.mono\`. The original proof supplies exactly
\`hsubset : Set.range (coreToL2 (N := 2)) ⊆ actualOriginalFullL2ColorInfinitesimalDomain c\`
and
\`coreToL2_dense (N := 2) : Dense (Set.range (coreToL2 (N := 2)))\`.

Replace ONLY the identifier. No change to physics, dense-core map,
operator/domain definitions, source gauge conventions, sign,
theorem statements, previous caches or Mathlib pins.

## Pass condition

Next strict gate must create an \`.olean\`, pass all five declared roots
under the standard allowlist, contain no \`sorryAx\` and no \`error:\`.
This is a hypothesis grounded in source, not a claim that the new run
already passed. Even successful qualification will **not** prove
generator closedness or essential self-adjointness.
