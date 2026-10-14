# L6G6Z — source color-flow qualification and negative knowledge

**Scope:** experimental BFSS SU(2) source formalization, research branch `research/openai-math-su2-s3l-combined-rotation`, not canonical FCP main and not a proof certificate.
**Pins:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Why L6G6Z was selected

Accepted K establishes the exact source bounded current and its skew-adjoint generator; R/S prove its annihilation of the **same** nonzero exterior/Fock vacuum invariant under the original gauge action. Y #154 identifies the true source 24-mode one-particle derivative. The next prerequisite for the **still-open** finite-time same-48-Majorana covariance is the bounded source fermionic color flow, its differentiability and common-vacuum invariance.

Target: `V_c(t) = exp(t • J_F(c))` on the original `Fermion 2` Hilbert space; no alternate Fock representation, no new covariance premise, no identification with the G4B/G4J gauge action. Source pattern: accepted S3H plus `OAI.RepresentationTheory.VertexAlgebra.BoundedFlows` in pinned `etblink/math`.

## Gate #156 red — first causal failure

[Original Source Spin Identity #156](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38515027596), job `115693550515`, source/workflow commit `8a53fc31615b207d7afa1d8813a359abf81bfcc7`, completed **FAILURE** during the Z qualification step. The unchanged accepted W, X, Y prefix independently succeeded and the dependency cache restored. The first three Z errors were:

```text
L6G6Z...lean:30:5: unknown namespace FCP.BFSSSU2GaugeG4B
L6G6Z...lean:31:5: unknown namespace FCP.BFSSSU2PhysicalDomainL6G6K
L6G6Z...lean:32:5: unknown namespace FCP.BFSSSU2PhysicalDomainL6G6S
```

The immediate cause was importing Y alone; Y does **not** transitively expose K/S or the actual `fermionVacuum` used by the Z source. Downstream unknown `sourceFiberFermionColorGenerator` identifiers, `sorry`-filled placeholders, failure of `StarModule ℝ SourceFiberEnd` synthesis, and missing `time_bound` declarations cannot be interpreted independently until the import closure is repaired. Printed later declarations had `sorryAx`: **NONE OF Z IS ACCEPTED**.

This is a missing **source dependency** and local scalar-instance visibility problem; not a proof of the physical equation, a mathematical counterexample, runner timeout, or regression of qualified W/X/Y.

## Selected bounded correction and acceptance

[Repair commit `56978cc4`](https://github.com/etblink/Foundational-Convergence-Program/commit/56978cc4655a2c5869e9e492fc8081642eb96865) imports the **exact accepted** S source module and the pinned `Mathlib.LinearAlgebra.Complex.Module`, whose `StarModule.complexToReal` instance is present in the checked pin. It changes **no theorem statement**, source current, scalar convention, source/environment pin, workflow axiom audit, or active research target.

[Gate #157](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38516208381) was launched to test this specific correction. Its outcome is **NOT KNOWN at this record's creation**. Acceptance still requires a genuine Z `.olean`, correct public theorem types, every one of ten source roots checked with allowed axioms only (`propext`, `Classical.choice`, `Quot.sound`), no compiler error or `sorryAx`. A red must be debugged from its *new* first causal error; do not launch repeated cosmetic edits or increase Lean limits without evidence.

## Scientific boundary after Z

Even a fully green Z will *only* establish an original source norm-convergent fermionic color flow fixing the same vacuum. The missing theorem remains exact **finite-time covariance** of `V_c(t)` with the original 48 `pairedTheta` fields, with coefficients `pairedAlgebraData.adjointCoefficient (sourcePlusIGaugeCurve c t)`; S1B applies only once this premise is established. L6G6L supplies infinitesimal commutators; X/Y supply the actual SU(2) tangent. Keep T's previously red concrete Fock uniqueness specialization retired. No combined physical Gauss, operator square/closure, or BFSS spectral theorem is inferred.

**Generalizable lesson:** when starting a new Lean stage from an accepted *late* module, enumerate every source namespace used by the candidate; cached `.olean` files are not substitute imports. Check the first causal error before interpreting dependent `sorryAx` output.
