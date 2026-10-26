# FCP BFSS S4B6 — Gate94 original complex Fock massless potential multiplier

**Date:** October 26, 2026.  
**State:** strict Gate94 initially pending, **0 new S4B6 roots admitted until terminal strict success**. Source and accepted-parent provenance must be checked at exact Git blobs.

## Why this is a new scientific boundary

Accepted [Gate93 #1](FCP_BFSS_S4B5_GATE93_ACTUAL_MASSLESS_COEFFICIENT_POLYNOMIAL_2026_10_26.md) proves the precise source polynomial of `M.deformedPotentialCoefficients 1 0`; it does **not** lift coefficient identities into the actual Fermion continuous-linear operator space. This step checks that real-scalar linearity and finite Majorana Clifford summation preserve the complete source polynomial.

Frozen original source:
- `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` (original `CliffordSymbols.lean`, `PotentialBasis.lean`, `DeformedCharge.lean` and all imported BFSS code);
- Lean4 `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`;
- The **original** `M.cliffordLinear a : Fermion N →L[ℂ] Fermion N` is `Σ_{p:FermionIndex N} (a(p):ℂ) • M.theta p.1 p.2`, with source CAR Majorana `M.theta`.
- The **original** massless multiplier `M.deformedPotentialMultiplier 1 0 x α` is `M.cliffordLinear (M.deformedPotentialCoefficients 1 0 x α)` in `PotentialBasis.lean`.
- The genuine real-linear `M.deformedRealField 1 0 α x` is the *restriction of scalars* of that source complex-linear operator, in `DeformedCharge.lean`. This fact is contextual, **not yet formalized as a Gate94 equality of real-continuous-linear functions.**

## Exact four theorem targets

[Source candidate](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B6OriginalMasslessPotentialMultiplierPolynomialProbe.lean) at exact source Git blob `089fd924cab82eadb17660a801a4512b0c1b4702`.

- `sourceCliffordLinear_add`: `M.cliffordLinear (a+b) = M.cliffordLinear a + M.cliffordLinear b` for original real-valued Fermion coefficient functions.
- `sourceCliffordLinear_real_smul`: `M.cliffordLinear (t • a) = (t:ℂ) • M.cliffordLinear a` for original real t, preserving the actual complex scalar action on complex-linear Fock operator.
- `originalMasslessPotentialMultiplier_affine_polynomial`: for all original `M, x, v, t, α`,
```text
M.deformedPotentialMultiplier 1 0 (x+t•v) α
  = M.deformedPotentialMultiplier 1 0 x α
  + (t:ℂ) • M.cliffordLinear (sourceMasslessPotentialVariation M x v α)
  + ((t²:ℝ):ℂ) • M.deformedPotentialMultiplier 1 0 v α.
```
Here `sourceMasslessPotentialVariation` is an **explicit original color/gamma coefficient** based on exactly the Gate93 linear coefficient, with no assumed derivative. It is initially declared private to avoid claiming a certified independently named physical field; if the formal theorem succeeds, assess public interface accessibility separately.
- `originalMasslessPotentialMultiplier_single_coordinate_polynomial`: same actual complex-linear operator identity at source `EuclideanSpace.single (k,D) 1`.

All source spin/color and bosonic directions genuine; no mathematical substitution or unproved bridge assumed.

## Strict workflow contract

[Gate94 workflow](../.github/workflows/bfss-form-original-potential-multiplier-strict-gate94.yml) source+workflow research commit `b9d6e522e73514357856db2276ba7fc27fa62029`, workflow blob `af45b6a3b35db7b6e1b0c4dc5cd8e0f72a5b9fbe`. [GitHub Actions run #40292651664](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40292651664) launched; terminal verdict not available at initial audit.

- Strict source/immutable SHA pair checks: candidate `089fd924cab82eadb17660a801a4512b0c1b4702`, accepted S4B5 parent `f2701b1e07f3d3bcae69a3e81a5bfa015c28a68d`, accepted S4B4 parent `2ed79184d19ba0ddc024952f91871ee8c4fc3ea9`, S4B3 parent `c80d85164247e6631fb1b0d7e4da2aca48c6af32`, historical G4K9A/B/C exact source blobs. Original `Core`, `MassiveCoercivity`, `ColorMatrices` source blobs unchanged.
- Frozen toolchain and Mathlib verified, plus self-tested YAML preflight.
- Fail-closed historical G4K9A/B/C cache provenance using the original DE3B save-path and exact cache key. Fresh original `Core/MassiveCoercivity/ColorMatrices` compilation.
- Fresh S4B3, S4B4, S4B5 accepted parent recompilation with all exact expected original axiom reports, including imported historic G4K9C original theorem.
- Candidate strict `lean -DwarningAsError=true`, new nonempty `.olean`, exactly four expected source declarations, no `sorryAx`, Lean errors or warnings except narrowly identified third-party Lake repository-state notices; only `{propext,Classical.choice,Quot.sound}` axioms.
- Accept **only** fully completed green workflow/job plus original compiler log. A red without compiler source diagnostics is infrastructure, not mathematical disproof.

## Successor priority and negative knowledge

The original S4 series strictly accepted **eight** roots before Gate94: S4B1 Gate89 +2; S4B3 Gate91 +2; S4B4 Gate92 +2; S4B5 Gate93 +2. Separate scoped S3L series 77 through Gate82; no all-FCP total silently inferred. The preserved Gate90 red calculus attempts and Gate92 two finite-sum reds prove that broad `simp`/ring and mismatched PiLp typeclass reconstruction are not good methods. Structure → specialize → source-identify → typed compose remains preferred per the [Evergreen guide](../handoffs/FCP_PROJECT_LEAD_EVERGREEN_RESEARCH_GUIDANCE_0_1_0.md).

If Gate94 qualifies, next source task is transporting this exact **complex-linear** source Fock operator polynomial through original `ContinuousLinearMap.restrictScalars ℝ` into `M.deformedRealField 1 0` and then showing the exact `fderiv` term in original `MixedEnergy.remainderField`. Do not promote `M.deformedFermionField 1 0 = B(x)`, source global Spin9 physical closed form, or positive normalizable eigenstate claims from this polynomial alone.


## Gate94 #1 strictly red at source preflight — stale assertion, not Lean

[Run #40292651664](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40292651664), job `121471126110`, **completed/failure before Lean installation**, so **0/4 new roots accepted and no mathematical diagnostic**. Original commit/source/worktree SHA and frozen source file checks passed; the preflight Python assertion failed because it had been cloned from Gate93 and still demanded literal text `originalMasslessPotentialCoefficient_single_coordinate_polynomial` inside the new Gate94 source file. The Gate94 theorem uses the *accepted affine coefficient theorem* to derive its own single-coordinate **multiplier** result and does not need to mention Gate93's single-coordinate source theorem. This mismatch was solely an over-specific validator requirement.

**Gate94 #2** workflow-only correction `04e19596fdeb7fd92e93ccb76896b3ad4a41717a`, workflow SHA `40549a1dceb8008ea520016a00d5e7926f7f532a`. Candidate original Lean blob **unchanged** `089fd924cab82eadb17660a801a4512b0c1b4702`; original maths source / accepted G4K9C and Gate91–93 source files and theorem statements unchanged. Preflight now checks the four **actual new theorem names** in the candidate. [Actions run #40292893617](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40292893617) launched, terminal strict verdict pending. If this run reaches compiler and fails, read the earliest original Lean goal, preserve Gate94 #1 separate as infrastructure/preflight red. Historical accepted roots remain unchanged until strict completed/success.


## Gate94 #2 strict red — Clifford finite-sum additivity bottleneck

[Run #40292893617](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40292893617), job `121471904851`, completed **failure** after passing immutable source and workflow preflight, frozen toolchain and historically qualified G4K9A/B/C cache; freshly compiled original Core/MassiveCoercivity/ColorMatrices and accepted S4B3, S4B4, S4B5 parents with exact permitted-axiom reports. The candidate compiler exited 1, and **0/4 new roots accepted**.

Earliest actual Lean error was line 28:74 in `sourceCliffordLinear_add`:

```text
⊢ ∑ p, (↑(a p)+↑(b p)) • M.theta p.1 p.2 =
    (∑ p, ↑(a p) • M.theta p.1 p.2) +
    (∑ p, ↑(b p) • M.theta p.1 p.2)
```

Broad `simp only [AlgebraData.cliffordLinear,Pi.add_apply,Complex.ofReal_add,add_smul,Finset.sum_add_distrib]` did not discharge this sum; strict linter additionally rejected unused `add_smul` and `Finset.sum_add_distrib`. Consequently `sourceCliffordLinear_add`, the general potential multiplier theorem and single-coordinate theorem reported `sorryAx`. Crucially, `sourceCliffordLinear_real_smul` DID compile with only `[propext,Classical.choice,Quot.sound]`, but is not a new formally accepted root because the whole gate was red. This is a finite-sum normalization issue, **not** a counterexample to Fock operator scalar-linearity or an unqualified mathematical source. No new axioms or changes to original source.

**Gate94 #3** [run #40293891442](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40293891442) tests a structural correction: at each *actual original FermionIndex* first prove `((a p:ℂ)+(b p:ℂ)) • M.theta p = (a p:ℂ) • M.theta p + (b p:ℂ) • M.theta p` with explicit `add_smul` and typed `Finset.sum_congr`, then assemble the two operator sums through `Finset.sum_add_distrib`. This is the same small typed proof architecture that succeeded at S4B4 Gate92. Candidate source/strict workflow changed atomically at `4361b76d582b597567073254a740c83a07fc918d` to source Git blob `5273bd3053c38b1948ed064b801b8ac4ed03087f` and gate workflow blob `aa3fb562a923cc28ade2437dcdfd7457b8cf64f2`. **No theorem statements changed; no roots accepted pending completed strict #3.** Original Gate94 #1 and #2 remain separately red.


## FINAL QUALIFIED ACCEPTANCE — Gate94 #3 original complex Fock source polynomial (+4 roots)

**Supersedes all earlier pending-status entries.** [GitHub Actions run #40293891442](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40293891442), job `121475152288`, independently verified **completed/success** with all strict steps passed. Exact source+workflow acceptance HEAD `4361b76d582b597567073254a740c83a07fc918d`, candidate Git blob `5273bd3053c38b1948ed064b801b8ac4ed03087f`, workflow blob `aa3fb562a923cc28ade2437dcdfd7457b8cf64f2`; original `etblink/math@adc7f124...` source and canonical FCP `main` unchanged.

Provenance: original `Core` (1,281,224 bytes), `MassiveCoercivity` (1,201,000 bytes), `ColorMatrices` (425,920 bytes) compiled FRESH under Lean4.34.1 and pinned Mathlib. Qualified original G4K9A/B/C cache exact historical save-path contract restored fail-closed. Previously accepted S4B3 (112,336 bytes), S4B4 (145,528 bytes) and S4B5 (46,784 bytes) **compiled FRESH again** with allowed-axiom checks and proper literal original source. Exact proof-source blob SHA checked against commit and checked-out worktree.

```text
GATE94_ACCEPTED_S4B3_PARENT_FRESH_PASS 112336
GATE94_ACCEPTED_S4B4_PARENT_FRESH_PASS 145528
GATE94_ACCEPTED_S4B5_PARENT_FRESH_PASS 46784
GATE94_CANDIDATE_SOURCE_WARNINGS []
GATE94_COMPILER_EXIT 0 AXIOM_REPORTS [
 ('FCP.BFSSSU2PhysicalDomainS4B6.sourceCliffordLinear_add',
  {'propext','Classical.choice','Quot.sound'}),
 ('FCP.BFSSSU2PhysicalDomainS4B6.sourceCliffordLinear_real_smul',
  {'propext','Classical.choice','Quot.sound'}),
 ('FCP.BFSSSU2PhysicalDomainS4B6.originalMasslessPotentialMultiplier_affine_polynomial',
  {'propext','Classical.choice','Quot.sound'}),
 ('FCP.BFSSSU2PhysicalDomainS4B6.originalMasslessPotentialMultiplier_single_coordinate_polynomial',
  {'propext','Classical.choice','Quot.sound'})
]
GATE94_ORIGINAL_SOURCE_POTENTIAL_MULTIPLIER_FOUR_ROOTS_STRICT_PASS
```

Exactly **four new S4B6 strict theorem roots**; no `sorryAx`, no candidate Lean warnings, no errors, compiler exit 0 and nonempty candidate `.olean`. Original compiler/ancestor logs and new `.olean`: [artifact #12637922213](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40293891442/artifacts/12637922213).

**Mathematical scope:** the source Clifford coefficient sum is proved additive and real-homogeneous in the actual original complex-linear Fermion continuous-operator type. The genuine source `M.deformedPotentialMultiplier 1 0` has the exact real-bosonic affine quadratic operator identity with complex scalar transport, using the accepted explicit original `deformedPotentialCoefficients` expansion and its source gamma/color signs. A single actual bosonic coordinate direction is also certified. The source-original `sourceMasslessPotentialVariation` function is currently `private` in the accepted source file; external successor code should introduce a PUBLIC *definitionally identical* source coefficient function and prove its bridge instead of relying on private names.

**Not proved:** real `M.deformedRealField 1 0` operator equality, its Fréchet derivative in real CLM topology, `MixedEnergy.remainderField`, source manuscript `B(x)`, physical Spin9 closed-form invariance, normalizable positive eigenstates or BFSS mass gap.

**Preserve negative knowledge:** Gate94 #1 was preflight red from stale imported-source-name assertion. Gate94 #2 was actual Lean red: broad simp failed to distribute original complex operator `Finset.sum` and linter warned unused arguments; only real scalar-homogeneity root was axiom clean, not admitted from red job. Gate94 #3 fixed **only the proof architecture**, using typed `Finset.sum_congr` over original `FermionIndex N`, `add_smul` at each original Majorana term, then finite-sum distribution; theorem statements unchanged.

**Scoped root accounting:** S4B1 Gate89 +2; S4B3 Gate91 +2; S4B4 Gate92 +2; S4B5 Gate93 +2; S4B6 Gate94 **+4**. Total new S4 series **12**. Original S3L through Gate82 remains separately 77; do not invent global accepted principal total.

**Next research bridge:** use actual original `ContinuousLinearMap.restrictScalars ℝ` (source `DeformedCharge.lean`) on this exact complex-operator identity, first proving source complex-to-real operator-additivity and *real scalar compatibility*, then a publicly usable original real field polynomial. Only then consider a rigorously typed derivative or source B field equivalence.
