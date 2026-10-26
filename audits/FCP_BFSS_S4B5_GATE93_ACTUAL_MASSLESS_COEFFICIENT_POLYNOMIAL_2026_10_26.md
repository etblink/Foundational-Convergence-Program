# FCP BFSS S4B5 — Gate93 actual original massless potential coefficient polynomial

**Research date:** 2026-10-26 UTC.  
**Initial disposition:** Gate93 two new original-source coefficient theorem roots PROSPECTIVE. No acceptance before the terminal strict run, original compiler output, imported ancestor and axiom verification.

## Scientific question and exact source definitions

The accepted S4B4 [Gate92 #3](FCP_BFSS_S4B4_GATE92_ORIGINAL_GAMMA_WEIGHTED_BRACKET_POLYNOMIAL_2026_10_26.md) established the gamma-weighted color-bracket quadratic polynomial on the literal original `AlgebraData N` at exact factor `1/2`. The independently accepted G4K9C source theorem `FCP.BFSSSU2GaugeG4K9C.sourceMasslessCoefficient_eq_halfOriginalOrdered` at original `SU2BFSSG4K9COrderedPairCoefficientProbe.lean` Git blob `de0c447a73990b1beb271fb2afc14dc5b4e20318` identifies **the actual original** `M.deformedPotentialCoefficients 1 0 x α (β,A)` with the same expression, no extra hypothesis. Source original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; no changes to original source.

The new theorem is therefore not a generic/surrogate algebra lemma. For ALL source `M:AlgebraData N`, `x,v:Boson N`, `t:ℝ`, original spin indices `α β`, original color A, the first root proposes

```text
M.deformedPotentialCoefficients 1 0 (x+t•v) α (β,A)
 = M.deformedPotentialCoefficients 1 0 x α (β,A)
 + t * (1/2) * Σ_i Σ_j (
       (Σ_B Σ_C M.structureConstant A B C
            * (v(i,B)*x(j,C)+x(i,B)*v(j,C)))
       * M.gammaTwo i j α β)
 + t² * M.deformedPotentialCoefficients 1 0 v α (β,A).
```

Second root specializes direction `v` to the genuine `EuclideanSpace.single (k,D) (1:ℝ)`, retaining original coincident selectors rather than making unproved Kronecker cancellations. Both are exact polynomial identities in source coefficients, **not** source real-linear `deformedRealField` derivative and not `B(x)` Fermion operator equality.

## Source/proof/CI implementation and provenance

- [S4B5 original Lean candidate](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B5OriginalMasslessCoefficientPolynomialProbe.lean) exact Git blob `f2701b1e07f3d3bcae69a3e81a5bfa015c28a68d`, no `sorry`, `admit`, or unapproved `axiom`.
- [Strict Gate93 workflow](../.github/workflows/bfss-form-original-massless-coefficient-strict-gate93.yml) initial candidate+gate commit `19abcecc48c2b9c61da1cdb7d08193931da835d8`, workflow blob `8727973bd3921b58b271f5d2f3816b432f660590`. [Actions run #40290445277](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40290445277) launched; no terminal verdict when this audit was first written.
- Source parents copied unchanged, commit/worktree SHA double-checked: S4B3 accepted blob `c80d85164247e6631fb1b0d7e4da2aca48c6af32`; S4B4 accepted blob `2ed79184d19ba0ddc024952f91871ee8c4fc3ea9`; historical original G4K9A `5e5f10f4c79f45f4b2bb4d6cdf1dbe71573616dd`, G4K9B `3bc2712a1c56e86e9e996dcee3052409e23a2e73`, G4K9C `de0c447a73990b1beb271fb2afc14dc5b4e20318`.
- Historical G4K9A/B/C full original import closure was strictly qualified in [M4F8 DE3B gate #1](FCP_BFSS_M4F8_DE3B_GATE1_G4K9BC_ELEVEN_SOURCE_ROOTS_STRICT_ACCEPTANCE_2026_10_23.md) on [run #40053689877](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40053689877). Gate93 attempts to restore exactly the accepted DE3B cache key and **identical original save-path contract**, since GitHub Actions cache version depends on that path contract as well as textual key. Restore is fail-closed on an exact cache-hit and required `ClosedProfiles/G4K9A/G4K9B/G4K9C` .oleans. If unavailable: **infrastructure red**; do not treat as G4K9C disproof or count new results. The new candidate additionally prints and re-audits the imported G4K9C theorem's exact permitted axiom set.
- Frozen `Core.lean`, `MassiveCoercivity.lean`, `ColorMatrices.lean` compiled FRESH again. Accepted S4B3 and S4B4 theorem modules compiled FRESH and their source axiom reports independently checked; the candidate itself requires exactly THREE named reports in order: accepted G4K9C imported coefficient crosswalk, new original massless coefficient polynomial, new single-coordinate specialization. All reports must satisfy allowed axioms `{propext,Classical.choice,Quot.sound}`, no `sorryAx`, compiler exit 0, no unexpected source Lean warning, nonempty new .olean and completed green workflow.
- An accepted cache is not considered sufficient proof of the new theorem. The original source and full imported closure must both remain qualified.

## Succession and next proof decision

Upon strict acceptance, next task is the genuine operator bridge using the already accepted G4K9D `M.deformedPotentialMultiplier 1 0 x α = M.bracketMultiplier α x`, and `M.deformedRealField 1 0 α x=(M.deformedPotentialMultiplier 1 0 x α).restrictScalars ℝ`. Complex `cliffordLinear` scalar/Fermion operator topology and derivative domain/codomain identifications require independent proofs. Do not infer them from this coefficient result.

Previous original S3L scoped 77 accepted through Gate82; S4B1 Gate89 +2, S4B3 Gate91 +2, S4B4 Gate92 +2 accepted. **S4B5 currently +0 until terminal Gate93 qualification.** Do not invent total principal roots, global Spin9 physical action or positive BFSS eigenstates.

Methodology: [Evergreen Project Lead guide](../handoffs/FCP_PROJECT_LEAD_EVERGREEN_RESEARCH_GUIDANCE_0_1_0.md) specifies source integrity, negative feedback, architecture changes instead of repeated brute force, and separate mathematical/physical acceptance. Keep it free of gate-specific dated details.
