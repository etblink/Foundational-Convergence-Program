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

## Gate #157: imports repaired; derivative qualified in isolation, complex-scalar interface still red

[Original Source Spin Identity #157](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38516208381), job `115695470743`, source commit `56978cc4655a2c5869e9e492fc8081642eb96865`, completed **FAILURE** in Z only after successful W/X/Y. Missing namespace and source-identifier errors from #156 were resolved. Crucial qualified diagnostic: `sourceFermionColorFlow_derivative` printed *only* `propext, Classical.choice, Quot.sound`, no `sorryAx`; it is not promoted as an independently full-stage accepted Z result while the workflow remains red.

Three first local causes:
1. Z line 74: failed to synthesize `StarModule ℝ (Fermion 2 →L[ℂ] Fermion 2)` after attempting `star_smul` with *real* scalar; this is not a proof of failed skew-adjointness. The source skew-adjointness theorem itself had an axiom-clean print.
2. Z line 78: `NormedSpace.exp (0 • J_F) = 1` was not simplified by `simp [sourceFermionColorFlow]`; use the accepted S3H explicit zero-operator equality followed by `NormedSpace.exp_zero`.
3. Z line 87: `Commute.smul_left s` asked for `SMulCommClass ℝ SourceFiberEnd SourceFiberEnd`; the pinned accepted S3H proof uses **complex** scalars.

Pinned `Mathlib.LinearAlgebra.Complex.Module` proves `Complex.coe_smul` by `rfl`. Therefore the real-time flow's `t • J_F` is definitionally the same as `((t : ℝ) : ℂ) • J_F`, and the *proof interface* may be changed without modifying the mathematical definition, source sign, derivative type, or original generator.

[Targeted repair `b7d820c6`](https://github.com/etblink/Foundational-Convergence-Program/commit/b7d820c622915c8d847dde9479838d6ec4156d1f) changes only these three tactic blocks: complex-scalar star transport, explicit zero operator, and complex-scalar exponential commutation. `sourceFermionColorFlow_derivative` and all original theorem statements are unchanged. [Gate #158](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38516751604) was launched to test this; **status pending when this note was created**. No L6G6Z theorem is promoted until full #158 source compilation and ten-root strict axiom audit succeed.

**General lesson:** a real-parameter one-parameter group may be easiest to prove in the ambient complex endomorphism algebra. Before demanding abstract real-star or real-module commutation instances on huge Fock operator types, use the checked real-to-complex scalar equality and the accepted source's bounded exponential pattern. This is a proof-interface repair, not a change of generator.

## Gate #158: nine roots axiom-clean; one concrete group-law rewrite boundary

[Original Source Spin Identity #158](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38516751604), job `115697170562`, source commit `b7d820c622915c8d847dde9479838d6ec4156d1f`, completed **RED** solely at `L6G6Z...lean:101:26`: `rw [Complex.ofReal_add, add_smul]` could not find the generic `(?r + ?s) • ?x` occurrence in the actual concrete Fock operator target. The goal printed `exp ((↑s + ↑t) • J_F)=exp(↑s • J_F)*exp(↑t • J_F)`, so this is a Lean rewrite/elaboration **interface failure**, not a sign or mathematical obstruction.

The #158 axiom audit printed only `propext`, `Classical.choice`, `Quot.sound`, with **no `sorryAx`** for `sourceFermionColorGenerator_skew`, `sourceFermionColorFlow_unitary`, `sourceFermionColorFlow_zero`, `sourceFermionColorFlow_norm`, `sourceFermionColorFlow_derivative`, `sourceFermionColorFlow_derivative_zero`, `sourceFermionColorFlow_time_bound`, `sourceFermionColorFlow_initial_bound`, and `sourceFermionColorFlow_vacuum`. The group-law root alone inherited `sorryAx`; Z as a complete gate is still **NOT QUALIFIED**.

The chosen response is the already successful S3H *pointwise* `ContinuousLinearMap.ext` proof of the complex-scalar `add_smul` equation on each actual Fock vector, followed by `rw [Complex.ofReal_add, hadd]`. This is the exact accepted S3H pattern and does not change the current, mathematical theorem statement, source pins, time bound, or verified other roots. [Repair commit `1daa35b9`](https://github.com/etblink/Foundational-Convergence-Program/commit/1daa35b9faab0baf7f4e6041fd7d066185cd89e9) launches [gate #159](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38517255631), pending at creation of this historical record. Its compilation/axiom audit must be read before any result is promoted.

**New negative knowledge:** even a source-exact algebraic rewrite may fail to match a concrete endomorphism expression due to hidden scalar-module inference. Reduce to **pointwise CLM action** and prove ordinary vector `add_smul`, then rewrite the named operator equality instead of asking the generic lemma to infer the giant operator type.

## Scientific boundary after Z

Even a fully green Z will *only* establish an original source norm-convergent fermionic color flow fixing the same vacuum. The missing theorem remains exact **finite-time covariance** of `V_c(t)` with the original 48 `pairedTheta` fields, with coefficients `pairedAlgebraData.adjointCoefficient (sourcePlusIGaugeCurve c t)`; S1B applies only once this premise is established. L6G6L supplies infinitesimal commutators; X/Y supply the actual SU(2) tangent. Keep T's previously red concrete Fock uniqueness specialization retired. No combined physical Gauss, operator square/closure, or BFSS spectral theorem is inferred.

**Generalizable lesson:** when starting a new Lean stage from an accepted *late* module, enumerate every source namespace used by the candidate; cached `.olean` files are not substitute imports. Check the first causal error before interpreting dependent `sorryAx` output.
