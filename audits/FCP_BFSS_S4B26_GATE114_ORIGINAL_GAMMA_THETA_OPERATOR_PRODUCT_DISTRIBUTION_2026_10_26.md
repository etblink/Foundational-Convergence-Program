# BFSS S4B26 — exact source gamma/theta CLM product distribution (Gate114)

**Status at launch: UNACCEPTED research candidate; strict Gate114 pending.** Strictly accepted scoped S4 roots: **50** through independent verified Gate113; do not count S4B26 before an exact axiom-certified compiler pass.

## Why this gate

Earlier accepted S4B11 source equation expresses the genuine original `sourceMasslessComplexFermionContraction` as a double finite sum of original source `kineticComplexSymbol` and `sourceMasslessComplexFieldVariation`, retaining `(-Complex.I)`, overall `1/16`, original kinetic-before-potential Majorana `M.theta` operators, and full complex continuous linear endomorphism types. Gate113 strictly accepted the genuine scalar gamma–coefficient contraction with original `f[C,A,D]` color ordering and factor `-8`.

**Next task must occur inside the Fock-operator multiplication, not merely with proxy scalar fields.**

## Exact S4B26 target

[Candidate Lean](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B26OriginalGammaThetaOperatorProductDistributionProbe.lean), exact Git blob `d842a9be457eb2bbe7fdeb85b22b087933708885`; created commit `3c017833e030d54230d16944069d2d23e5d8b859`. Exactly one public theorem:
`FCP.BFSSSU2PhysicalDomainS4B26.originalGammaTheta_operator_product_distribution`.

For all genuine `M : AlgebraData N`, `x : Boson N`, source space/color/spinor indices `k,A,α`, it states

```text
(Σ_β (γ[k,α,β] : ℂ) • theta[β,A]) *
 (Σ_q (sourceCoefficient(M,x,e_(k,A),α,q) : ℂ) • theta[q])
  =
Σ_β Σ_q ((γ[k,α,β] : ℂ) * (sourceCoefficient(...):ℂ)) •
        (theta[β,A] * theta[q]).
```

Both sides are original `Fermion N →L[ℂ] Fermion N` operations. It preserves ordered theta factors, unaltered original source coefficient, and makes no CAR or Pauli specialization. The sole proof uses typed algebra distributivity `Finset.sum_mul`, `Finset.mul_sum`, `smul_mul_assoc`, `mul_smul_comm`, `smul_smul`, requiring an actual Lean successful elaboration before acceptance.

## Strict verification

[Gate114 workflow](../.github/workflows/bfss-form-original-gamma-theta-operator-product-distribution-strict-gate114.yml), launched [run #40428966837](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40428966837) at commit `e57b641b22e877aa91cc75d2abc2ecc58d783eed`. Workflow sourced from Gate113, uniquely named and pinned: immutable original BFSS source `adc7f1241b42e322a6451854ab7e4b4c146bf78a` and blob identities, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact candidate git/worktree SHA, strict preflight and qualified G4K9C source ancestry, fresh original modules, fresh accepted S4B3–S4B25 inclusive, and fresh candidate compilation. Single named axiom report must list only `propext`, `Classical.choice`, `Quot.sound`, no unexpected warnings, `sorryAx` or compiler errors. Accept **only one new root** if all strict checks pass, scoped S4 **50→51**.

If Gate114 is red, inspect first causal log and isolate whether original source, exact parent, verifier wrapper, Lean operator multiplication typeclass, or true mathematical mismatch. No blanket timeout increases, no green counting, no silent weakening. Preserve each failed attempt.

## Scientific boundary

This is **only bilinear expansion** of the true source continuous-linear endomorphisms. It does **not** incorporate `(-i)/16`, contract `k,α` within full `theta` sum, compose the Gate113 sign under operator indices, define/prove manuscript `B(x)`, restrict to real fermionic field, or establish any spectral eigenstates. Those are later, separate accepted obligations. Keep `main`, prior sealed Lean blobs, upstream `math`, and PR #25 unchanged.
