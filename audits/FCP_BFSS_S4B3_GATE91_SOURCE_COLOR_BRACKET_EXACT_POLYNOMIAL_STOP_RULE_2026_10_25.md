# FCP BFSS — S4B3 Gate91 exact original coordinate-bracket polynomial

**Date:** October 25 Pacific / October 26 UTC 2026.  
**State:** prospective strict two-root candidate. A successful ordinary symbolic argument does not justify counting roots until completed strict CI and allowed `#print axioms`.

## Why Gate90 was stopped, not renamed green

[Original Gate90 audit](FCP_BFSS_S4B2_GATE90_ORIGINAL_COORDINATE_BRACKET_DIRECTIONAL_DERIVATIVE_2026_10_25.md) records a valid source-mathematical derivative claim but repeated **Lean elaboration** failures in `HasDerivAt`:
- [Gate90 #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40281792044), job `121436493681`, strict red: original `Core`, `MassiveCoercivity`, `ColorMatrices` freshly compiled, but original `Boson` vector derivative selected conflicting `PiLp.normedSpace` vs `WithLp.instModule` instances. Product normal forms also incomplete.
- [Gate90 #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40282671921), job `121439208070`, strict red: vector type mismatch resolved by switching to original real scalar coordinate; residual `Pi.add_apply` function equality and `No goals to be solved` after product normalization.
- [Gate90 #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40283521229), job `121441841177`, strict red: original three source ancestors again compiled; the scalar `HasDerivAt.add` term used `Real.normedAddCommGroup.toAddCommGroup` while expected `HasDerivAt` elaborated under `Real.instAddCommGroup`. Also `linter.unnecessarySeqFocus` rejected a semantically harmless tactic-chain `<;>`. All three candidate declarations reported `sorryAx`. **0/3 roots admitted.** No counterexample to the source formula was produced.

**Project Lead stop rule:** Do not continue changing `HasDerivAt` instances, switching between `simpa`, `convert`, `funext`, or disabling the linter merely to obtain a green. The repeatedly failing interface is the calculus elaboration, not the original bilinear math. Preserve every immutable red and its original compiler diagnostics.

## Stronger exact identity chosen instead

The pinned original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` defines in `ColorMatrices.lean`:

```text
  coordinateBracketAll(M,x,i,j,A)
   = sum_B sum_C f_(A B C) x(i,B) x(j,C).
```

The new S4B3 theorem asserts *for every original* `M:AlgebraData N`, `x,v:Boson N`, `t:ℝ`, indices i,j,A:

```text
  bracket(x+t*v)_(i,j,A) =
      bracket(x)_(i,j,A)
    + t * sum_B sum_C f_(A B C)
        * (v(i,B)*x(j,C) + x(i,B)*v(j,C))
    + t² * bracket(v)_(i,j,A).
```

The second theorem instantiates the **actual** source `EuclideanSpace.single (k,D) 1` direction. This identity is strictly more informative than the first-derivative formula; it gives the linear coefficient and exact quadratic remainder without invoking any calculus instance or differentiating a noncanonical PiLp reconstruction. The proof is a finite-sum ring identity over the actual original source `coordinateBracketAll` and real coordinates, not a replacement SO3 or source-altering assumption.

Proof approach: unfold only the original coordinate-bracket names using `change`, use `PiLp.add_apply` and `PiLp.smul_apply` for coordinate evaluation, ring-normalize each original (B,C) summand, then reassemble via `Finset.sum_add_distrib` and `Finset.mul_sum`. No change to original fermions, gamma matrices, mathematical statements, gauge action, or canonical main.

## Gate91 source and strict evidence requirements

- Original exact source Lean [S4B3 candidate](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B3OriginalBracketPolynomialExpansionProbe.lean), Git blob `86e28972f8e0008372380ea5210adb13217ca2bc`.
- [Gate91 workflow](../.github/workflows/bfss-form-original-bracket-polynomial-strict-gate91.yml) committed at initial branch commit `bd31f78a6868c3a57c0ce63ba5fd6648ad1b4dc6`, workflow blob `a950e88179f257ba6a8b08493de5734821746d04`.
- [Gate91 #1 Actions run #40284530938](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40284530938) launched; await its **terminal** original log.
- Exact prior frozen original Lean sources `Core.lean` Git blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, `MassiveCoercivity.lean` blob `1a9a8fe629e69f3946602a786c2e63c2ca354462`, `ColorMatrices.lean` blob `1c1c2a838c48c0aea2a1c1640da5d412f22e3f0c`; Lean4.34.1; original Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Gate requires immutable source proof hashes in both commit and worktree, fresh original source ancestors, candidate `.olean` built with `-DwarningAsError=true`, exact `#print axioms` reports for both declarations, no `sorryAx`, no arbitrary Lean warnings, axiom whitelist `{propext,Classical.choice,Quot.sound}`. The narrowly vetted separate Lake package-state notice classifier from accepted Gate89 #6 is reused.
- **No roots count without completed/success evidence.** Historical accepted S4B1 Gate89 #6 retains +2; original scoped S3L through Gate82 retains 77; all-time count requires separate reconciliation.

## Next source-specific bridge

Once the genuine original polynomial identity qualifies, one can extract the coefficient of t without touching arbitrary vector-space calculus instances, then map it through the accepted G4K9D original potential multiplier identification to obtain the single-coordinate `deformedRealField 1 0` derivative in **source-exact real-linear Fock operator type**. Next use accepted Gate89 original gamma contraction plus original antisymmetric color structure and kinetic `-i` to derive `M.deformedFermionField 1 0 = B_manuscript`. The actual Spin9 global group/core/closed-form bridge is independently open. No positive BFSS eigenpair or mass gap claim is promoted from S4B3 alone.


## Gate91 #1 strict RED with axiom-clean mathematics — exact recovery

[Run #40284530938](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40284530938), job `121444990588`, completed/failure, **0/2 formally admitted roots**. Original `Core`, `MassiveCoercivity`, and `ColorMatrices` modules compiled freshly, all original source hashes and pinned toolchain passed, and the candidate axiom reports for both `originalCoordinateBracketAll_affine_polynomial` and `originalCoordinateBracketAll_single_coordinate_polynomial` were exactly `[propext,Classical.choice,Quot.sound]` with NO `sorryAx`. The candidate Lean compiler exited **1** solely because at candidate line 67:6 the statement `simp only [Finset.sum_add_distrib, Finset.mul_sum]` had already closed the goal but a subsequent unconditional `ring` tactic produced `error: No goals to be solved`.

Precise negative knowledge: a `#print axioms` report without `sorryAx` in a failed job demonstrates the elaborated declarations are clean, but **does not constitute strict admission** when the same module still emits an error. No change to mathematical content is justified.

**Gate91 #2** uses the EXACT same two source theorem statements and correct proof terms, deleting only the superfluous `ring` line and updating the two immutable Git blob pins together. Research commit `7f7c186b87f0e39b58b47fc33e90671a4cc7a95b`, candidate blob `c80d85164247e6631fb1b0d7e4da2aca48c6af32`, workflow blob `5df30ee5eec9947a895ff226e12d4496845f4c57`; [GitHub Actions run #40285539487](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40285539487) launched. Root status PENDING until its **terminal** strict compilation, verifier, axiom reports and workflow success are independently checked.

This repair follows the [Evergreen Project Lead guidance](../handoffs/FCP_PROJECT_LEAD_EVERGREEN_RESEARCH_GUIDANCE_0_1_0.md): discriminate the earliest causal failure, separate strict gate from kernel-clean intermediate source, make minimal local repairs, do not duplicate gate histories in evergreen, and preserve this red even if a subsequent green accepts the exact unchanged mathematical assertion.
