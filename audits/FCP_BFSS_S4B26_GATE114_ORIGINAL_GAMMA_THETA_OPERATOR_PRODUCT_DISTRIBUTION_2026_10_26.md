# BFSS S4B26 — exact source gamma/theta CLM product distribution (Gate114)

**Status: Gate114 #1 RED, no new theorem accepted; subsequent repair attempts must be independently verified.** Strictly accepted scoped S4 roots: **50** through independent verified Gate113; do not count S4B26 before an exact axiom-certified compiler pass.

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


## Gate114 #1 — independently verified RED, first causal failure

[Run #40428966837](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40428966837), job `121941696439`, exact head `e57b641b22e877aa91cc75d2abc2ecc58d783eed`, completed **failure**. All immutable-source hashes, YAML preflight, qualified cache, pinned Lean/Mathlib, original upstream files, and fresh strictly accepted S4B3 through S4B25 parents passed. Candidate S4B26 fresh compiler exit **1**. Decisive diagnostics from actual compiler output:

```text
GATE114_ACCEPTED_S4B25_PARENT_FRESH_PASS 69944
GATE114_CANDIDATE_SOURCE_WARNINGS []
GATE114_COMPILER_EXIT 1 AXIOM_REPORTS [('FCP.BFSSSU2PhysicalDomainS4B26.originalGammaTheta_operator_product_distribution', {'propext', 'sorryAx', 'Quot.sound', 'Classical.choice'})]
GATE114_ORIGINAL_THETA_OPERATOR_PRODUCT_DISTRIBUTION_STRICT_RED
SU2BFSSPhysicalDomainS4B26OriginalGammaThetaOperatorProductDistributionProbe.lean:35:45: error: unsolved goals
SU2BFSSPhysicalDomainS4B26OriginalGammaThetaOperatorProductDistributionProbe.lean:37:35: error: This simp argument is unused: smul_smul
```

The residual goal, after source-defined complex operator multiplication and coefficient migration, has `∑ q, c(q) • (∑ β, gamma(β) • (theta[β,A] * theta[q]))` on the left versus `∑ β, ∑ q, (gamma(β) * c(q)) • (theta[β,A] * theta[q])` on the right. This is a **specific missing finite-sum scalar distribution / commutation proof step**, not a demonstrated failure of the underlying identity. A single automated simplification pass omits `Finset.smul_sum`, leaves `smul_smul` unused, and does not commute the independent q/β sums. No new root is accepted; scoped S4 stays **50**.

**Corrective architecture:** first source-typed `Finset.sum_mul`, `Finset.mul_sum`, `smul_mul_assoc`, `mul_smul_comm`; then `Finset.smul_sum` and `smul_smul` after the intermediate form actually appears; then `Finset.sum_comm` and a local scalar `mul_comm` in each summand. Preserve the exact statement, original matrix/fermion sources, theta factor order, all accepted parent blobs and strict compiler/axiom policy. Change only the candidate proof and its two matching workflow SHA guards. The result must still pass a fresh strict Gate114 run.


## Gate114 #2/#3 commits — scoped proof repair and SHA-consistent verification

- Candidate **proof-only** repair [commit b6d0d184](https://github.com/etblink/Foundational-Convergence-Program/commit/b6d0d184cebaa7995ef0ef3475661c70d41860b8): exact unchanged one-root statement, original theorem dependency and ordered theta factors. Splits source-typed multiplication distribution from `Finset.smul_sum`/`smul_smul`, followed by `Finset.sum_comm` and local coefficient `mul_comm`; new candidate Git blob `6ff50997549509c3fd220f290dd44a014a73ef51`.
- The candidate-file-only push started [intermediate run #40430418437](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40430418437) with **old Gate114 workflow SHA pins**. This is an expected **transient provenance mismatch** unless superseded by other failure; it must not be treated as a meaningful attempt to certify this candidate. No math acceptance from it.
- The exact workflow-source SHA guards were then both repinned in [commit 33c2fb07](https://github.com/etblink/Foundational-Convergence-Program/commit/33c2fb073db6f45af060a2560aa5e506361b3a1e), launching the intended [Gate114 run #40430447057](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40430447057). **Pending at this documentation point.** The new test still requires full source provenance, freshly recompiled accepted S4B3–S4B25, exact one-root compiler/axiom audit, and no unexpected warnings.

**S4 accepted roots remain 50 until the fully pinned run is independently checked.** Neither workflow green counts nor candidate commits alone qualify the theorem.
