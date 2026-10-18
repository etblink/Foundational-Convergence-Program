# H5E8G — Original Source Spin Identity #323 first-causal diagnostic

- Failed run: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38912470689
- Job: 117011467406
- Tested commit: c12e2de0467b5808aaf1bb0038d64693097c78ae
- Branch: research/openai-math-su2-s3l-combined-rotation
- Date: 2026-10-16

## Evidence, not outcome inflation

The first failure is **deterministic Lean heartbeat exhaustion**, not a
mathematical contradiction:
`SU2BFSSPhysicalDomainL6H5E8GOriginalColorGeneratorAllTimeOrbitDerivativeProbe.lean:78:8`
at `congr 1`, with `(deterministic) timeout at whnf` and 450000 heartbeats.
A second timeout at theorem start line 36 and two
`(kernel) unknown constant` errors at lines 85, 97 follow the missing root.
The subsequent `#print axioms` messages are not acceptance: first root
reporting 'does not depend on any axioms' is misleading when the kernel
failed to register that declaration, and later declarations reference
extra unknown constants. H5E8G is **not qualified**.

The goal was exactly
`U ((t + (-s)) + s) v = U t v` after using the previously qualified
source additive group law. The scalar arithmetic
`((t + (-s)) + s) = t` is elementary, but tactic `congr 1` can enter
heavy weak-head-normal-form reduction through the source BFSS CLM/Fock
implementation before confronting that arithmetic.

## Repair and constraint

Replace `congr 1; ring` by a named scalar equality
`have ht : (t + (-s)) + s = t := by ring`
and transport via
`exact congrArg (fun q : ℝ => U q (v : FullL2 2)) ht`.
This factors the small arithmetic from the 48-Majorana source object.
**Do not** simply increase global heartbeats or lower CI standards.

The existing source action, original +i convention, all-time strong
derivative statement, previous H5E8F acceptance, and strict four-root
axiom audits remain unchanged. Success requires a future strict green run
and `L6H5E8G_ORIGINAL_COLOR_ALLTIME_STRONG_DERIVATIVE_QUALIFIED`.
No closedness, essential skew-adjointness, or BFSS spectral conclusion
is established by this repair.


## Subsequent strict acceptance — #324

[Original Source Spin Identity #324](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38914504434)
(job `117018391116`) succeeded at
`L6H5E8G_ORIGINAL_COLOR_ALLTIME_STRONG_DERIVATIVE_QUALIFIED`;
accepted commit `ceae87a48d2e67c064866629fc3ebc3c360e3989`.
All four H5E8G roots printed exactly the permitted
`[propext, Classical.choice, Quot.sound]`, no `sorryAx`.
The genuine original color one-parameter orbit is differentiable
at every real time with derivative U_c(t) A_c v, and this derivative
is norm-continuous.

H5E8H now tests the Banach-valued fundamental theorem of calculus
for this accepted source C1 orbit. The FTC is an intermediate
evolution identity, not a statement that the maximal generator
is closed or essentially skew-adjoint.
