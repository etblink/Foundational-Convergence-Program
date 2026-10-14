# L6G7A — exact theta tangent: gate #161 first errors and scope

**Status:** candidate, not qualified at this record's creation. Research-only; original etblink/math and Mathlib pins, prior source qualifications, and PR #25 draft state unchanged.

## Actual source and accepted inputs

The original 48-theta Fock color generator is `J_F(c)=iG_F(c)` (L6G6K). The exact source commutator `[J_F(c),theta_(s,d)] = -Σ_b f_(d b c) theta_(s,b)` was qualified in L6G6L. The native SU(2) curve `g_c(t)=exp(+it T_c)` and derivative `(d/dt)|_0 adjointCoefficient(g_c(t), d,b) = f_(b d c)` are qualified in L6G6X. Antisymmetry in first two color indices predicts `[J_F,theta_(s,d)] = Σ_b f_(b d c) theta_(s,b)`; this should be kernel-checked, not silently postulated.

L6G6Z's literal `V_c(t)=exp(tJ_F(c))` source Fock action, real derivative, unitarity, group law, norm bounds and shared-vacuum invariance were qualified at [Original Source Spin Identity #159](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38517255631), job `115698728348`.

## #161 red — complete causal diagnosis

[Original Source Spin Identity #161](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38518098471), job `115702807420`, source `c0edb9dbd6c8f7143678a358840f3d37cf731ad5`, failed exclusively in the new L6G7A module after accepted W/X/Y/Z stages all passed.

1. **First error L6G7A line 81:** the target was `-(↑f_(d b c) • theta_(s,b)) = -↑f_(d b c) • theta_(s,b)`; `rw [hskew b, neg_smul]` searched for the opposite `-a • x` orientation after `hskew`. The mathematically correct direction is `(neg_smul _ _).symm`.
2. **Line 119:** `ContinuousLinearMap.restrictScalars_apply` is **not present** in the pinned mathlib. The composition theorem's derivative is elaborated via `(T.restrictScalars ℝ)` and `PiLp.normedAddCommGroup`, whereas the displayed target uses `WithLp.instAddCommGroup`. Broad `simpa` left a concrete typeclass mismatch; use a tightly typed local `change`/direct equality on the original source Fock vector, then evaluate.
3. **Lines 127–132:** forcing Lean to completely expand the huge `SourceFiberEnd` composition equality via `change` caused `maximum recursion depth`, followed by a second `PiLp`/`WithLp` elaboration mismatch from a deferred `simpa`. Prefer named local pointwise operator application using `ContinuousLinearMap.sub_apply` and `ContinuousLinearMap.comp_apply`, and a typed `HasDerivAt` local difference; do **not** inflate recursion globally or expand all 2^24 Fock coordinates.

The source `sourceNativeAdjointCoefficient_matches_generator` alone printed the allowed `propext, Classical.choice, Quot.sound` axioms; first commutator and final intertwining derivative inherited `sorryAx`. **No L6G7A result was promoted.** Neither the native coefficient nor original bounded flow had a first-order mathematical counterexample.

## #162 red — two genuine source roots now axiom-clean; analytic instance boundary persists

[Original Source Spin Identity #162](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38519340240), job `115705210901`, source `12e3560a11b8fef697e7ff2d09101eeb955c7cb8`, completed **red** only at the L6G7A new stage. Previously qualified L6G6Z passed again. Both `sourceFermionGenerator_comm_matches_nativeAdjointTangent` and `sourceNativeAdjointCoefficient_matches_generator` printed **only** the allowed `propext`, `Classical.choice`, `Quot.sound`; source tangent sign/index match is therefore separately real evidence, although full L6G7A is not yet accepted.

First causal error, L6G7A line 128: `HasDerivAt.sub hleft hright` elaborated with `PiLp.normedAddCommGroup` / `PiLp.normedSpace 2 ℝ`, whereas the newly declared `hsub : HasDerivAt ...` independently selected `WithLp.instAddCommGroup` / `WithLp.instModule 2 ℝ`. These **instance dictionaries appear in the printed type**, not merely a tactic problem. Later line 135 `simpa only [ContinuousLinearMap.sub_apply, ContinuousLinearMap.comp_apply]` triggered maximum recursion depth in 2^24 Fock operator elaboration. Do not inflate recursion depth; do not infer a mathematical counterexample.

Project Lead response [`ce0bdd20`](https://github.com/etblink/Foundational-Convergence-Program/commit/ce0bdd204d4d7df506ae08e4c102d879e05117b9): introduce a named **polymorphic** `abstract_boundedLinear_sub_deriv` for a real bounded-linear operator `T : E →L[ℝ] E`, true differentiable `f,g : ℝ → E`, and `f-Tg`; force canonical source `PiLp` analytic instances at the **theorem declaration boundary**, not after the target is already elaborated; replace huge `simp` on operator products by a small `rfl` plus one application of the now-axiom-clean exact commutator equality. All three **mathematical statements, source pins and Z proof remain untouched**. [Gate #163](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38520327023) was queued at this note. This candidate has not been compiled locally and is not a proof unless exact Lean CI plus no-`sorryAx` axiom audit pass. If #163 fails in the instance definition itself, inspect concrete error and try simpler scoped `change` in a separately qualified abstract bridge, rather than another 2^24 expression expansion.

**Key negative knowledge:** same mathematical Fock-space object can elaborate through distinct typeclass records in different source imports. Source-level derivative propositions can be dependent on those records; isolating a **generic bounded-linear derivative lemma** and fixing the specialized instance at theorem construction is more robust than repeated `simpa` in the concrete target.

## Targeted repair candidate and next decision

[Commit `12e3560a`](https://github.com/etblink/Foundational-Convergence-Program/commit/12e3560a11b8fef697e7ff2d09101eeb955c7cb8) keeps all three theorem statements, source generators, coefficients, 48-theta convention, and axiom audit unchanged. It orients the sign rewrite, passes the actual `HasDerivAt` through a local explicit type, and avoids fully expanding the operator composition. [Gate #162](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38519340240) is **not yet adjudicated** at this record's creation.

**Acceptance:** #162 or a successor must compile the literal L6G7A `.olean`, pass the explicit 3-root axiom allowlist with no `sorryAx`, and display the intended complete source theorem statements. If red, inspect the first NEW causal error; if `PiLp`/`WithLp` remains the first failure, shift to a separately named abstract continuous-linear derivative transport, prove it in a type-independent setting, and instantiate only afterward. Do not keep rewriting the huge concrete Fock target and do not confuse compiler elaboration with a failed physics identity.

**Scientific boundary:** even green L6G7A certifies only an infinitesimal generator/tangent match, not finite-time covariance, equality with the G4B exterior gauge action, original combined Gauss, or BFSS spectrum.
