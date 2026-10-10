# BFSS SU(2) Physical Domain — Gates #71–#73 Source Reuse and Positive Product Acceptance 0.1.0

**Date:** 2026-10-10 (Pacific)  
**Mode:** Research-branch acceptance, qualified against pinned Lean; no alteration of FCP canonical science, no upstream PR or main merge.

## 1. Source-first reuse, deliberately bounded

A targeted search identified a close formal precedent, not a license to change dependencies:

- Keisuke Suzuki, `QuantumSystem/ForMathlib/LinearAlgebra/LinearPMap.lean`, pinned public Git object `a2bb99fcb82c820f040004a2f99c875575c72efd`: `LinearPMap.compNat` on `{x ∈ dom T | T x ∈ dom S}` with exact membership/apply.
- Same author's `QuantumSystem/Analysis/UnboundedOperator/VonNeumann.lean` at the same commit: `isPositive_adjoint_compNat_self`, `isSelfAdjoint_adjoint_compNat_self`, natural-domain `T†T` for general `T : E →ₗ.[𝕜] F`, its associated inner pairing, resolvent surjectivity and core result.
- Source license: **Apache-2.0**, retained by explicit source attribution in the relevant FCP Lean leaves.
- **Pin warning:** QuantumSystem uses Lean **4.35.0-rc2**; this experiment remains pinned to Lean **4.34.1**, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`. No QuantumSystem dependency or assumption was introduced. The small relevant arguments were adapted and independently compiled against the existing source types.

The search stops at this relevant precedent. Additional literature surveying is not required before tackling the remaining mathematical obligation.

## 2. Accepted gates and exact scoped claims

**Gate #71 GREEN**: Actions run `38050190164`, proof commit `af6896236c07fe10115fe0cdaa9164a7762d0b01`. D2B18:
`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B18NaturalChargeAdjointSquareProbe.lean`.

The source Hilbert operator `T = sourcePhysicalHilbertChargeColumn M G` and the true Hilbert adjoint `T† = sourceOriginalPhysicalChargeAdjoint M G` now have a genuine `LinearPMap` natural-domain composition `sourcePhysicalChargeAdjointSquare M G`. Domain membership iff `ψ ∈ dom T` and `Tψ ∈ dom T†`; the value is literally `T†(Tψ)`. **Seven** printed declarations all have axioms contained in `[propext, Classical.choice, Quot.sound]`. No `sorryAx`.

**Gate #73 GREEN**: Actions run `38050794355`, proof commit `3b5bb44132570f9b01c6535144435306afd13f0a`. D2B19:
`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B19NaturalChargeSquarePositiveProbe.lean`.

The *same exact source physical natural product* is formally symmetric and satisfies
`⟪T†Tψ,ψ⟫ = ⟪Tψ,Tψ⟫` and `Re ⟪T†Tψ,ψ⟫ = ‖Tψ‖² ≥ 0`
on its natural domain. Six printed declarations have only the standard three permitted axioms, no `sorryAx`. Gate #73 recompiled accepted D2B11–D2B18 and the cache smoke chain.

**Gate #72 RED** at commit `d7567687a6b137224441df0c2d1f0d9a6acc9c89`: Lean name-resolution defects for `conj` and `re` (missing `open RCLike` and `open scoped ComplexConjugate`), not a contradictory operator identity; corrected with the permitted compiler-scope change and qualified at #73. The failed candidate is not accepted.

## 3. Scientific ceiling

The **operator** `T†T` is constructed on its correct natural domain and has a kernel-checked formal symmetry/positive energy identity. This is not yet a proof of:
- `IsSelfAdjoint (T†T)` in the pinned environment;
- density of `dom(T†T)` or surjectivity of `1 + T†T` in this proof chain;
- identity of `(1/16)T†T` with the associated nonnegative self-adjoint operator of the **closed form** `q` in the October 5 BFSS manuscript;
- a separately proved unitary identification of the manuscript's abstract SU(2)/Spin(48) gauge representation with FCP's concrete `pairedGaugeData`;
- any new spectral eigenvalue, form-domain normalization, all-N statement, maximal differential domain/essential self-adjointness, mass gap, empirical selection, or framework-level finding.

The coefficient `1/16` belongs to the manuscript's `q(ψ) = (1/16)∑α‖Qα ψ‖²` and is **not** silently absorbed into the operator definition. The transported `PiLp 2` output remains the sixteen-component Hilbert sum; later source matching must prove the relevant finite-sum/norm agreement and closed-form operator identity.

## 4. Next bounded mathematical obligation

Use the already located **general von Neumann theorem** as the proof blueprint, not a substitute theorem. Either adapt its exact self-adjointness and closed-graph decomposition arguments to the existing pinned Mathlib environment or establish a compatible **kernel-verified imported source** without broad version upgrades. Then prove `IsSelfAdjoint` for the *actual D2B18 natural-domain product*, the positive `1/16` scaling, and the exact closed quadratic-form correspondence with the source manuscript. Only then claim manuscript Hamiltonian identity. Keep testing one substantive theorem family at a time and stop if an actual missing mathematical hypothesis appears.

`LATEST_GREEN = BFSS_SU2_PHYSICAL_DOMAIN_BRIDGE_73`  
`LAST_VERIFIED_PROOF = 3b5bb44132570f9b01c6535144435306afd13f0a`  
`SELF_ADJOINT_HAMILTONIAN = NOT_YET_QUALIFIED`  
`FCP_MAIN_CHANGE = NO`; `UPSTREAM_PR = NO`; `NEW_SPECTRAL_RESULT = NO`.
