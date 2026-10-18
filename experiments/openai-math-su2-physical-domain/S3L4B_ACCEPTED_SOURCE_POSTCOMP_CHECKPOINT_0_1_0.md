# BFSS SU(2) S3L4B — qualified original SmoothCore postcomposition calculus

**Status: S3L4B ACCEPTED. Concrete 48-Majorana spin-to-source-fermionAction bridge (S3L4A) remains UNQUALIFIED.**

- Exact qualified proof head: `da6cebc439dc48ce71d58449632c09dc6a6c12a0`.
- Green pinned CI: [BFSS S3L Source Rotation Coefficients #32](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38127827229).
- Environment: `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Source file: `SU2BFSSPhysicalDomainS3L4BOriginalSmoothCorePostcompCalculusProbe.lean`; imported actual pinned `SmoothCore 2`, `TestFunction.postcompCLM`, `position`, and `coordinateDerivative`.
- PR #25 remains DRAFT stacked on S3K PR #24; no FCP main changes; no upstream fork PR.

## Verified exact results

All six S3L4B declarations compile as source-operator equalities on the original `SmoothCore 2`:

1. `sourcePostcomp_apply`: evaluates a bounded fermionic fiber endomorphism pointwise.
2. `sourcePostcomp_comm`: carries `[K,T]` into the original test-function endomorphism commutator.
3. `sourcePostcomp_sum`: preserves spinor-indexed finite sums and complex coefficients.
4. `sourcePostcomp_comm_position`: commutes with the original source coordinate multiplier.
5. `sourcePostcomp_comm_derivative`: commutes with the original source coordinate derivative through pinned real Fréchet chain rule.
6. `sourcePostcomp_covariance`: translates an *explicitly supplied and proved* fiber covariance into its genuine test-core covariance.

All six `#print axioms` reports in #32 contain only `propext`, `Classical.choice`, `Quot.sound`. The gate compiled an importable `.olean`, searched for `sorryAx`, and printed `S3L4B_ORIGINAL_SMOOTHCORE_POSTCOMP_CALCULUS_PASS`.

**Scientific boundary:** These six are operator calculus, not a proof that the concrete quadratic fermionic spin generator transforms the original `AlgebraData.charge`. They prove the generic source-interface transport without assuming a surrogate fermion representation.

## Gate #31 negative knowledge

[Gate #31](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38127238619) accidentally reran the still-unqualified S3L4A on commit `c156fe94bdee1d8342a81bcfee8260853a9a9ba6`. It failed at the same concrete `fermionAction` type-conversion recursion depth as #30, with `sorryAx` on that unproved theorem. Gate #31 was **not** evidence against S3L4B (which had not yet been compiled) or the earlier accepted orbital lemmas.

Do not re-enable failed S3L4A in qualification. The S3L4B workflow deliberately excludes S3L4A from the pinned gate.

## Next mathematics (bounded)

1. Prove **parametrically** for any exact source `M : AlgebraData 2` that the literal `M.fermionAction α A` equals the S3L4B `sourcePostcomp (M.theta α A)`. This should be source-definition-level `rfl` and must be kernel-checked in a small module.
2. Prove source-parametric covariance from an explicitly supplied *fiber* covariance premise, via the accepted S3L4B theorem. No hidden assumption: after instantiation the premise must be discharged by qualified S3E for the actual 48 Majoranas.
3. Only after step 1–2 compiles, specialize using `pairedAlgebraData_theta` and S3E `pairedFermionPlaneSpinGenerator_comm_theta`, carefully controlling definitional unfolding. The S3L4A monolithic proof is unqualified and should remain frozen as negative evidence until this approach works.
4. Next independently prove literal kinetic and cubic charge transformations on the original source smooth core, then combine and assess physical Hilbert-space/domain invariance. No positive-eigenvalue theorem follows from the calculus alone.

**Owner research record:** [10.5281/zenodo.23291242](https://doi.org/10.5281/zenodo.23291242). No new upstream PR/merge authorization.
