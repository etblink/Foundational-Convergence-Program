# S3L4A diagnostic checkpoint — source spin action on the real BFSS smooth core

**Status:** NOT ACCEPTED. Last accepted source theorem S3L3E #26 GREEN. Source preflight and prospective S3L4A work are research-only. No upstream submission authorized.

**Pins:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

**Accepted S3L3E gate:** https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38125136380 (#26 green).

**Unqualified S3L4A attempts:**
- https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38125908874 (#27 RED) — concrete Fock generator unfolded during direct `change` elaboration, causing recursion-depth failures in multiple commutators.
- https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38126274750 (#28 RED) — abstract `sourcePostcomp` helpers mostly succeeded. The derivative lemma used malformed `K.restrictScalars.differentiableAt` without the required `ℝ`; concrete fermionic covariance still exceeded elaboration depth in a `calc`.
- https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38126608710 (#29 RED) — explicit `(K.restrictScalars ℝ).differentiableAt` fixed derivative proof. Remaining concrete fermion-action covariance `simpa only [pairedFermionAction_eq_postcomp]` exceeded recursion depth. Other source spin-lift proofs reported only standard axioms, but the overall module did not produce a verified importable output.
- https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38126897836 (#30 RED) — replacing broad `simpa` by a direct `change` to the generic target still hit maximum recursion depth at the *concrete fermion-action conversion* (line 157). Again, pointwise, position and derivative commutator theorem axiom reports had no `sorryAx`, but **do not promote individual theorem reports from a failing Lean file to accepted source modules**.

## Original source charge definition

In pinned `OAI/MathematicalPhysics/BFSS/Core.lean`, `AlgebraData.charge α` is the literal sum:

```text
Q_alpha^kin = sum_(k,A,beta)
    (-Complex.I * (gamma_k)_(alpha,beta)) •
    (fermionAction beta A ∘ coordinateDerivative k A)
Q_alpha^pot = sum_(k,l,A,B,C,beta)
    ((1/2) * structureConstant(A,B,C) *
      gammaTwo_(k,l)_(alpha,beta)) •
    (fermionAction beta A ∘ position k B ∘ position l C)
Q_alpha = Q_alpha^kin + Q_alpha^pot.
```

The source defines `gammaTwo k l = (1/2) (gamma_k gamma_l - gamma_l gamma_k)`, `fermionAction beta A = (TestFunction.postcompCLM (M.theta beta A)).toLinearMap`, and bosonic operators on the original `SmoothCore 2`.

Accepted S3L0/S3L2 matrix identities plus S3L3C/E orbital commutators have the coefficient patterns and signs expected for the combined `[L_ij + K_ij, Q_alpha]` identity. That *full operator equality is NOT YET PROVED*. Preserve the distinction between gamma coefficients and fully assembled source charge.

## Results of this bounded experiment

S3L4A added a genuine source map `sourcePostcomp K := (TestFunction.postcompCLM K).toLinearMap`, and the concrete candidate `pairedSourceSpinSmoothCore i j := sourcePostcomp (pairedFermionPlaneSpinGenerator i j)`. The actual `pairedAlgebraData` uses the accepted paired theta: `pairedAlgebraData.theta = pairedTheta` definitionally (as witnessed in FCP G1A).

Generic postcomposition commutator, finite-sum transport, scalar position multiplier, and derivative commutation arguments elaborate on abstract bounded `K`. Concrete position/derivative pointwise lift proof bodies were accepted by Lean within gates #29/#30, but only as part of a **failing** file. Concrete theta covariance remains blocked by unfolding/elaborating a very large source `AlgebraData` / Fock expression.

No failed run established that the mathematical commutator is false; likewise, no current gate licenses claiming it as a checked source theorem.

## Better next proof boundary — STOP shotgun CI retries

1. Preserve S3L4A candidate at `bb6b7e6a8d13dcb3cfe17a7085c8a0a19d9e731b` as an explicit unqualified probe. Do not revise accepted S3L0–S3L3E modules.
2. Split a **small source-interface normalization** from the 48-Majorana instantiation: prove on the pinned original test core that `postcomp` of *any bounded Fock operator* respects composition, scalar sums, position, and derivatives. This abstract calculus has already been diagnostically supported by #29/#30; independently compile as a standalone module without the full Fock concrete commutator theorem.
3. Separately establish an explicit exact relationship between `pairedAlgebraData.fermionAction` and `sourcePostcomp pairedTheta` as a *named source theorem*, with a bounded unfolding strategy. Do not let `simp`, `change`, or kernel elaboration unfold all of `pairedAlgebraData` and the actual quadratic K into a huge expression while rewriting under sums.
4. Only then apply the already-qualified S3E Fock identity to the independent abstract covariance. Check the actual original `fermionAction` theorem under the exact pinned kernel. A two-stage implementation with source-parametric `AlgebraData.fermionAction` can be appropriate only if all concrete premises and source bridges are explicitly discharged.
5. Before another CI run, record the exact anticipated elaboration boundary and a single unit test for the heavy rewrite. No increase in recursion depth or replacing the concrete source with a surrogate to mask missing assumptions.
6. Once concrete source spin core covariance and its derivative/position commutation are qualified, split the original `charge` into independently testable kinetic and cubic covariance obligations, verify exact factors and summation indices, and only then combine.

The previous user's scientific priority is discovering whether the *original* BFSS spectral claims are true, not generating green gates for their own sake. A sound stopping point for excessive compiler churn is an accepted scientific output if full covariance remains technically inaccessible.

## Repository and publication boundaries

FCP `main` remains `cf06212a57db0ceffad74bd78280a8a240856a17`, unmerged. PR #24 (S3K) and PR #25 (S3L) are draft and stacked. The owner-owned public `etblink/math` bulk port contains 130 staged modules, unmerged; its initial CI red is upstream patch sparse-checkout setup, not a failed mathematics result. No new upstream PR or fork changes requested or performed in this research stage.

Contributor: Evan T. Kotler; research DOI https://doi.org/10.5281/zenodo.23291242.
