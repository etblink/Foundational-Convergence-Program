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


## Qualification after minimal repair: #314

[Original Source Spin Identity #314](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38854499592), job \`116822825670\`,
completed **success**. It printed
\`L6H5E8B_ORIGINAL_INF_GENERATOR_DOMAIN_DENSE_QUALIFIED\`,
with all five roots depending only on
\`[propext, Classical.choice, Quot.sound]\`, no \`sorryAx\`.
The corrected density proof applies the exact pinned
\`Dense.mono hsubset (coreToL2_dense (N := 2))\`.
Commit \`7b929dfc35e365a60496497db805a109c1d218b0\`.

H5E8B is now accepted for: maximal real-time differentiability domain
as a subset of genuine source FullL2, the derivative-valued partial
operator, all original SmoothCore vectors in its domain, source-exact
Gauss action on these, and density of the maximal domain. This does
**not** establish (essential) skew-adjointness or spectrum.

Next H5E8C attempts original SmoothCore Gauss skew-symmetry
from the independently accepted unitary source flow and real
Hilbert inner-product differentiation.


## Acceptance — strict #315 and next source question

[Original Source Spin Identity #315](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38855825304),
job \`116826939540\`, **success** at
\`L6H5E8C_ORIGINAL_SOURCE_CORE_GAUSS_SKEW_QUALIFIED\`.
Both H5E8C roots printed only
\`[propext, Classical.choice, Quot.sound]\`, no \`sorryAx\`.
The genuine source FullL2-embedded SmoothCore Gauss generator satisfies
\`inner ℂ (coreToL2 f) (coreToL2 (Gauss c g)) +
 inner ℂ (coreToL2 (Gauss c f)) (coreToL2 g) = 0\`.
Derivation used unchanged source SU2 unitary action,
H5E8A exact orbit derivatives, and pinned
\`HasDerivAt.inner\`, \`LinearIsometryEquiv.inner_map_map\`.

Next H5E8D isolates (1) skew-symmetry on the entire true
maximal differentiability domain, not merely SmoothCore;
(2) physical fixed vectors in that domain with zero generator.
This is physically important, but it does not assert the converse,
closedness, or essential skew-adjointness.
