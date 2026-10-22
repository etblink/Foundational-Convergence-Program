# FCP BFSS SU(2) — M4E4A Gate #1 strict acceptance: independent smooth position multiplication

**Date:** October 22, 2026 PDT.  
**Disposition:** `M4E4A_GATE1_STRICT_PASS__INDEPENDENT_E_VALUED_POSITION_MULTIPLIER_SOURCE_INTERTWINING__ONE_ROOT__285_CUMULATIVE`.

**Cumulative accepted theorem roots: 285 = previous 284 + exactly one M4E4A root.**

## Independently verified original CI evidence

- GitHub Actions [strict run #39809185421](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39809185421), job `119930467132`, first attempt, **overall completed/success** and job completed/success.
- Triggering commit `c618bdab72e70634b6e48610dbd5637dd87d9e91` on isolated research branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`. Source candidate committed separately at `66ebcee0b62142a808a398c9abf693079b390cd7`.
- Accepted source path `experiments/openai-math-su2-physical-domain/FCPIndependentPosition.lean`, immutable Git blob `4e75da8f49c9d752445cd1fc09b33861674ab088`.
- Strict workflow `.github/workflows/bfss-m4e4a-independent-position-multiplication-strict-gate1.yml`, unique workflow-path-only push trigger.
- Immutable original mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, verified in provenance preflight.
- Previous qualified M4E3 cache restored `bfss-fcp-m4e3-kinetic-charge-v1-adc7f124-lean4341-d13f23b-Linux-X64`; original and prior accepted proof `.olean` closures checked.
- Fresh candidate passed `lake env lean -DwarningAsError=true`; strict exact list of 4 declaration names, all 4 `#print axioms` reports, whitelist check, absence of `sorryAx`, absence of compiler errors/unapproved warnings.
- Original Lean reports:
  ```text
  'FCP.IndependentSmoothSupercharge.independentSmoothMultiplier' depends on axioms: [propext, Classical.choice, Quot.sound]
  'FCP.IndependentSmoothSupercharge.independentPosition' depends on axioms: [propext, Classical.choice, Quot.sound]
  'FCP.IndependentSmoothSupercharge.independentPosition_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
  'FCP.IndependentSmoothSupercharge.independentPosition_intertwining' depends on axioms: [propext, Classical.choice, Quot.sound]
  M4E4A_INDEPENDENT_POSITION_INTERTWINING_ONE_ROOT_STRICT_PASS
  ```
- Qualified compilation cache saved **`bfss-fcp-m4e4a-position-v1-adc7f124-lean4341-d13f23b-Linux-X64`**.
- Original exact diagnostics uploaded as artifact `bfss-m4e4a-gate1-39809185421`, artifact ID `12439451905`.

## Scope of genuine mathematical result

`independentSmoothMultiplier` constructs scalar multiplication directly on the independent compactly supported, smooth `E`-valued test functions; compact support preservation and ℂ-linearity are proved directly, not inherited from an original Fock representation.

`independentPosition i A` uses actual bosonic coordinate `coordinate i A` cast to ℂ and this independent multiplier; the definition does not mention `J`, `pairedAlgebraData.position`, or any transported source charge. It satisfies pointwise `independentPosition i A f x = (coordinate i A x : ℂ) • f x`.

The counted new root `FCP.IndependentSmoothSupercharge.independentPosition_intertwining` proves
```lean
independentSmoothTransport J (independentPosition i A f) =
  position i A (independentSmoothTransport J f)
```
for any complex linear isometric fiber equivalence `J : E ≃ₗᵢ[ℂ] Fermion 2`. This is literally the pinned original `AlgebraData.position` in the target, proved by scalar linearity of `J`, not by transporting the operator in its definition.

Three supporting declarations axiom-checked; **one** counted theorem root. Prior count 284 → 285. No cubic charge or whole 16-charge, closed operator graph, Hamiltonian or spectrum is inferred.

## Pending M4E4B independently constructed cubic component

Candidate `experiments/openai-math-su2-physical-domain/FCPIndependentCubicCharge.lean`, staged at commit `050cb2a625233d9e0f5e05f516a0dbbb70c4ff64`, blob `fd1526cddf92845adf004c6b4fbb4a052d6e1746`, is **not accepted** here. Its separate strict gate must use the now qualified M4E4A v1 position cache and exact original coefficients `1/2 * f_ABC * gammaTwo(i,j)[α,β]`, preserving `fermion β A ∘ (position i B ∘ position j C)`.

M4E4B additionally defines independent structure constants from the actual input color basis using the `(-Complex.I)` Lie bracket and trace, and independent antisymmetrized gamma matrices by half-commutator. It must verify coefficient matching to the original `AlgebraData` independently of any closed-operator or spectral conclusion.

## Governance

Acceptance-audit-only change on isolated research branch. Original sources, qualified previous proof blobs/caches, canonical main `cf06212a57db0ceffad74bd78280a8a240856a17`, draft PR #25, and Issue #28 remain unchanged.
