# H5E7B — strict Gate #309 negative knowledge and bounded repair

**2026-10-15 (America/Los_Angeles), research only.** Active research branch
\`research/openai-math-su2-s3l-combined-rotation\`; no merge/upstream changes.

## Exact verified failure

[Original Source Spin Identity #309](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38845567068), job \`116795194588\`, failed at H5E7B, while the full previously qualified prerequisite chain, including H5E6C and H5E7A, passed. Source commit was
\`e4f1080ee482a122342b756ebab864e4081f8d7d\`.

First errors in \`SU2BFSSPhysicalDomainL6H5E7BOriginalGaussFullL2ResidualIntegralBridgeProbe.lean\`:

- Lines 49–50: generic \`Lp.coeFn_sub\` / \`Lp.coeFn_smul\` yielded **function-valued** right-hand sides applied at \`x\`, while proof branches expected **pointwise** subtraction and scalar multiplication. The unfinished goals are evaluation transport (\`Pi.sub_apply\`, \`Pi.smul_apply\`), not an algebraic counterexample.
- Lines 57, 59, 77, 80: missing \`open FCP.BFSSSU2PhysicalDomainL6G7U\` for \`actualOriginalFullL2GaugePairCLM\`. These unresolved terms poisoned local \`let u\` and \`let v\` definitions, contaminating later diagnostics.
- Line 109: subsequent \`rw [hx,hz,hg]\` did not match the **opaque local** \`u/v/w\` forms, although H0's exact source a.e. representative lemmas were available. Direct rewriting against a hidden \`let\` is fragile; instead specialize source AE equalities to the named Lp variables *before* \`filter_upwards\`.
- Printed \`sorryAx\` stems from failed Lean declarations. None of the four H5E7B roots was accepted by the strict audit. No mathematical contradiction, resource cap, or stale cache diagnosis was observed.

## Repair experiment (not itself an acceptance)

Preserve **all theorem statements** and exact original source signs, inverse bosonic pullback, Fock representation, fermionic action, scalar time convention, and volume. Open the qualified G7U namespace; pointwise-normalize the abstract \`Lp\` coeFn rules with \`Pi.sub_apply\` and \`Pi.smul_apply\`; type \`hu/hv/hw\` directly at the generic \`u/v/w\` names before rewriting.

**Falsifier / next test:** the existing strict H5E7B gate must compile, produce an \`.olean\`, and print only \`propext\`, \`Classical.choice\`, \`Quot.sound\` for each of the four roots. If another error occurs, inspect its *first* causal line, and do not claim qualification from trailing \`#print axioms\` after an error.

Even a qualified H5E7B gives only **norm square = exact pointwise integral**; strong \(L^2\) convergence and the generator-domain theorem remain separate obligations.


## Acceptance update — strict #310 (2026-10-15 PDT)

[Original Source Spin Identity #310](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38846859129), job \`116799244008\`, completed **success**. The dedicated
\`L6H5E7B_SOURCE_FULLL2_GAUSS_RESIDUAL_INTEGRAL_QUALIFIED\` marker was printed,
all four new theorem roots were checked for only the pinned standard
axiom allowlist, and no sorryAx/error survived. Qualified repair commit
\`d17657e7d578cc8ce98b7826e5207f3cbe0b92e7\`.

The precise reusable lesson: normalize coeFn function-level equalities
before pointwise rewriting, introduce AE equalities in the *same named
variables* used in the eventual abstract L2 bridge, and open the exact
namespace in which the qualified CLM was defined. This is a compiler
repair, not new SU2 physics.


## Acceptance — strict #311 and #312 (2026-10-15 PDT)

[Original Source Spin Identity #311](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38848232838), job \`116803482484\`, **success**:
\`L6H5E7C_SOURCE_GAUSS_STRONG_FULLL2_RESIDUAL_QUALIFIED\`.
Two theorem roots allowlist-qualified, without sorryAx; true source
strong FullL2 Gauss difference quotient residual converges to zero.
Commit \`d7995a029a04696323bf9339d67b21a2297b2bb0\`.

[Original Source Spin Identity #312](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38849235336), job \`116806531708\`, **success**:
\`L6H5E8A_SOURCE_COLOR_CURVE_STRONG_FULLL2_GAUSS_DERIVATIVE_QUALIFIED\`.
Two theorem roots allowlist-qualified, without sorryAx; source original
gauge orbit in TRUE FullL2 has HasDerivAt at zero, with derivative
\`coreToL2 (actualOriginalCoreColorGaussCandidate c f)\`.
Commit \`2a128d0be792764d9ea74b7abe1a3f09897142f4\`.

NEXT: H5E8B must test exact maximal differentiability-domain membership,
source Gauss generator action and genuine source core density. Do not
pretend these alone yield generator closedness, core essential
self-adjointness, all-color physical kernel characterization, or spectra.
