# BFSS SU(2) S3L5A — accepted original source kinetic-monomial product law

**Status:** Source-parametric kinetic monomial transport ACCEPTED in pinned Lean #41. Actual paired 48-Majorana specialization is only a S3L5B CANDIDATE until its own gate passes. Full kinetic SUM, cubic source term, total source charge, closed Hamiltonian and positive spectral claims remain OPEN.

**Accepted mathematical source commit:** `97a4d4e64002ac4ea5cce45957a688e81bf5fa21` (S3L5A), independently green workflow source/axiom commit `14889608068a1552b1c7395a4ffc0a234231f484`.
**Pinned accepted gate:** [BFSS S3L Source Rotation Coefficients #41](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38130473370).
**Pins:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact new source mathematics

`FCP.BFSSSU2PhysicalDomainS3L5A.sourceFermionSpin_comm_kineticMonomial_of_fiber` establishes the operator Leibniz rule
```text
[postcomp(K), fermionAction_M(γ,A) ∘ coordinateDerivative(k,B)]
  = (∑_β c_β • fermionAction_M(β,A)) ∘ coordinateDerivative(k,B)
```
on the exact original `SmoothCore 2` whenever a **stated fiber covariance premise**
```text
[K, M.theta(γ,A)] = ∑_β c_β • M.theta(β,A)
```
is proved. Its proof uses independently green S3L4B generic bounded-fiber derivative commutation and S3L4C exact source `fermionAction` covariance. The hypothesis is not a new physical axiom; the actual 48-Majorana source instance is to be discharged by accepted S3L4D, in S3L5B.

The file also defines syntactically exact `sourceKineticCharge` and `sourceCubicCharge` as the two finite sums appearing in pinned upstream `Core.lean`. **Their expensive full-charge definitional equality was not formally qualified at #41 and must not be claimed.**

The #41 source emitted an importable `.olean`, a strict `#print axioms` audit limited to `propext`, `Classical.choice`, `Quot.sound`, and `S3L5A_PARAMETRIC_SOURCE_KINETIC_MONOMIAL_PASS`. No `sorryAx`.

## Negative knowledge: gates #39–40

- [#39](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38130043713) RED: the first attempt tried to prove `M.charge = kinetic + cubic` by `rfl`; Lean exhausted its heartbeat budget reducing the giant nested sums, and the concrete S3L5A monomial specialization also exceeded recursion depth. **Neither failure is a physical counterexample.** Do not raise heartbeat/recursion limits as the first response; avoid bundling the giant charge expression with the smaller algebra.
- [#40](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38130456102) RED: GitHub launched an intermediate head after the source revision but before the workflow's expected-axiom list was updated. Lean successfully compiled the source-parametric theorem, but the old CI script incorrectly expected three previous theorem names and rejected the single valid report. #41 at the final matched head passed.
- Avoid multiple runs after separate source/workflow edits: while the PR is on its normal S3K base, prepare both changes; then retarget it once to the cache-owner base and trigger with a comment-only workflow change only if needed. Restore original PR base and full physical-domain job guard afterward.

## Next gate

S3L5B should *only* specialize accepted S3L5A to the original `pairedAlgebraData` and actual `pairedFermionPlaneSpinGenerator`, with the fiber premise discharged by accepted S3L4D `pairedActualFockSpin_comm_source_theta`. Prove that source endomorphism equality, with no new assumptions. Then separately evaluate whether the full `-Complex.I` kinetic sum is manageable using the checked S3L0 coefficient identity; preserve source operator ordering and index contractions. Cubic potential remains a separate gate.

**Research contributor:** Evan T. Kotler; https://doi.org/10.5281/zenodo.23291242. Owner fork `etblink/math` remains parked; no upstream PR/merge authorized. FCP canonical main unchanged.
