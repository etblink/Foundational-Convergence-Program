# FCP BFSS S4B7 — Gate95 exact original real Fock potential field

**Date:** 2026-10-26. **Disposition:** four candidate Lean roots PROSPECTIVE until complete strict green. No new root admitted from the presence of Lean source alone.

## Scientific target and immutable accepted predecessors

Accepted [Gate94 #3](FCP_BFSS_S4B6_GATE94_SOURCE_COMPLEX_FOCK_MULTIPLIER_POLYNOMIAL_2026_10_26.md), [run #40293891442](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40293891442), proved the exact original massless complex-linear `M.deformedPotentialMultiplier 1 0` polynomial in `Fermion N →L[ℂ] Fermion N`, plus genuine source Clifford additivity and real-homogeneity. This source theorem has an internal private real-coefficient variation, not a public named `Fock` field.

Source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` in original `DeformedCharge.lean` defines precisely:
```text
M.deformedRealField h m α x :=
  (M.deformedPotentialMultiplier h m x α).restrictScalars ℝ
  : Fermion N →L[ℝ] Fermion N.
```
The real Fock module and scalar restriction are actual original types; no surrogate SO3, gamma or complex representation is substituted. Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` fixed.

## Exact new mathematical claims

[Gate95 S4B7 candidate](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B7OriginalRealFockFieldPolynomialProbe.lean), initial Git source blob `97f8fea1729e88cc784e4cfb52d19f70584dedab`:

1. `originalFockRestrictScalars_add`: restriction of source continuous complex-linear operators preserves addition in original real-linear operator space.
2. `originalFockRestrictScalars_real_smul`: `(((t:ℂ)•A).restrictScalars ℝ) = t • (A.restrictScalars ℝ)` for original `t:ℝ`. This is an essential typed **scalar compatibility**, not an assumed coercion.
3. `sourceMasslessRealFieldVariation` is a **PUBLIC** definition (not counted as a theorem root) of a real-linear `Fermion N →L[ℝ] Fermion N` operator via the original Clifford sum of the explicit Gate93 source color/gamma coefficient.
4. `originalMasslessRealField_affine_polynomial` states for source `M : AlgebraData N`, `x,v : Boson N`, `α:SpinIndex`, real t,
```text
M.deformedRealField 1 0 α (x + t • v)
   = M.deformedRealField 1 0 α x
   + t • sourceMasslessRealFieldVariation M x v α
   + t² • M.deformedRealField 1 0 α v
```
as an equality in the **actual original real continuous-linear Fermion operator type**.
5. `originalMasslessRealField_single_coordinate_polynomial` specializes to the genuine `EuclideanSpace.single (k,D) 1` basis direction without inventing diagonal selector identities.

Four new theorem declarations total; all original source indices, color/gamma conventions, `1/2` and input direction remain literal. The abstract real-linear bridge proofs are checked in their exact source Fermion operator types; potential `PiLp`/real-scalar instance mismatches must be treated as actual Lean compiler diagnostics, not hidden with axioms.

## Strict Gate95 procedure

[Workflow](../.github/workflows/bfss-form-original-real-fock-field-strict-gate95.yml), source+workflow commit `288461bfe9e2691c1fdb3aa3c111af17fabbe8a7`, workflow Git blob `69f1cbe1010b448d33cbf4755e7ce86d375615a8`; [GitHub Actions run #40295210058](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40295210058) launched; terminal verdict pending.

- Original BFSS source commit, file SHA, Lean/Mathlib pins and current research source/worktree SHA checks, including all accepted S4B3, B4, B5 and B6 parent modules (S4B6 accepted exact source blob `5273bd3053c38b1948ed064b801b8ac4ed03087f`).
- Exact historical qualified G4K9A/B/C import-cache key and save-path restored or fail-closed, with `ClosedProfiles` and original G4K9A/B/C objects required.
- Fresh original Core, MassiveCoercivity, ColorMatrices compilation, then fresh accepted S4B3, S4B4, S4B5 and **newly S4B6** recompilation and exact allowed-axiom checks.
- Candidate `-DwarningAsError=true`, four exact expected named theorem axiom reports, `{propext,Classical.choice,Quot.sound}` only, no sorryAx, genuine Lean errors or candidate warnings, nonempty generated candidate object. Third-party Lake repository state notices separated with a tested narrow pattern.
- No Gate95 roots accepted until **completed/success** and independently examined compiler/axiom evidence. Retain all failed attempts and original diagnostics.

## Scientific hard stop

This is an exact real-linear *polynomial identity*, NOT `fderiv ℝ (M.deformedRealField 1 0 α)`, `MixedEnergy.remainderField`, original `M.deformedFermionField 1 0` identification with manuscript `B(x)`, physical Spin9 closed form invariance, positive normalizable eigenpairs or mass gap. A separate typed real derivative and original fermion matrix contraction are required.

Strict S4 root ledger before Gate95: Gate89 +2, Gate91 +2, Gate92 +2, Gate93 +2, Gate94 +4 = **12**. S3L original historical series 77 through Gate82 separately tracked. Accepted roots only, no global count inferred.

Evergreen [Project Lead guidance](../handoffs/FCP_PROJECT_LEAD_EVERGREEN_RESEARCH_GUIDANCE_0_1_0.md) applies unchanged: source identity, explicit hypotheses, change proof architecture on repeated failure, original compiler and axiom audit, preserve negative knowledge.

## Gate95 #1 terminal RED — private coefficient versus public source presentation

[Strict run #40295210058](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40295210058), job `121479491206`, completed **failure**. The immutable original source, accepted S4B3–S4B6 parents, frozen Lean/Mathlib, and original source/module compilation were reached and the fresh candidate reported at line 76:2: **type mismatch**. After the two source `restrictScalars` add/real-smul identities rewrote the accepted complex polynomial, `simpa only [AlgebraData.deformedRealField, sourceMasslessRealFieldVariation]` expanded the new public coefficient but did **not** normalize the accepted S4B6 **private** `sourceMasslessPotentialVariation` in `hr`. Both are intended to specify the exact same original `FermionIndex N` color/gamma finite sum; their definitional equality has **not yet been independently proved by Gate95**.

The first two named Gate95 declarations individually printed only permitted axioms, but the affine theorem and its downstream single-coordinate theorem reported `sorryAx` because the affine proof failed. Thus **0/4 new roots accepted**. No mathematical counterexample, derivative, physical `B(x)` identification, or spectral conclusion was established. Retain the full raw compiler log and the failed source/workflow commit `288461bfe9e2691c1fdb3aa3c111af17fabbe8a7`.

**Gate95 #2 prospective targeted change:** preserve all four theorem statements, original source, parent blobs, normalizations and explicit coefficient. Replace the asymmetric `simpa only` at the end of the affine proof with a direct `change ... at hr; exact hr` test comparing the full original real-linear operator equality by definitional conversion. This discriminates whether the two coefficient definitions are definitionally the same without expanding the entire source sum through a broad simplifier. A conversion failure or excessive reduction cost is a new Lean proof-architecture diagnostic, **not** proof acceptance. Workflow must pin the exact new candidate blob and re-run the full source/axiom gate. No additional root count until terminal strict green.
