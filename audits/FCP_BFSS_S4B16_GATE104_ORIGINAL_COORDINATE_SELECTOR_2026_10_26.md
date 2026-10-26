# BFSS S4B16 / Gate104 — original bosonic coordinate selector, strict

**2026-10-26 Project Lead. UNACCEPTED CANDIDATE.**

Gate103 [run 40382501534](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40382501534) accepted **two** original gamma/color signed-pair roots; scoped S4 ledger now **35**. Candidate Gate104 source Git blob `a9ecd18bae330802a4a7dcf2cb644099a9df74f7`, strict GitHub Actions workflow blob `37a82f87470895260f0be35d36cc30bedaa0df42`, accepted S4B15 parent blob `7b4bbb1e7f261ddec99778396211f4badbbb34c1`. Original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1/Mathlib d13f23b and original source pins immutable; canonical main/PR #25 unaffected.

**Scientific purpose:** To apply the accepted original S4B15 gamma/color signed-pair cancellation to the actual Gate99 original massless field variation, the spatial/color coordinate selector `EuclideanSpace.single (k,A) (1:ℝ) : Boson N` must genuinely collapse the original `SpaceIndex × ColorIndex N` sum at `(k,A)`. No magical symbolic delta, no replacement by a different Fock/boson carrier.

Candidate theorem roots:
1. `originalBoson_single_coordinate_weighted`: for any actual source coordinate weight function `F`, prove `∑ p : SpaceIndex × ColorIndex N, (EuclideanSpace.single (k,A) 1 : Boson N) p * F p = F (k,A)` using original `PiLp.single_apply`, exact coincidence case split and finite sum.
2. `originalBoson_single_coordinate_nested`: same exact scalar identity in the `∑ i ∑ B` order of source `sourceMasslessComplexVariationCoefficient`, using original `Fintype.sum_prod_type`. This is a combinatorial source coordinate identity; neither theorem itself asserts the derivative's gamma/color coefficient has been contracted.

Gate104 strict YAML requires source SHAs, qualified G4K9C cache, fresh original BFSS Core/MassiveCoercivity/ColorMatrices/MixedEnergy/DeformedCharge/GammaWords/ColorLie and accepted S4B3–S4B15 parent modules, new candidate .olean and warnings-as-errors, exactly two `#print axioms` with only `propext, Classical.choice, Quot.sound`, no `sorryAx`. **0 Gate104 roots accepted until verified successful CI**, scoped total stays **35**. A red will be diagnosed as exact original Lean error and preserved. Manuscript explicit B(x), physical Spin9 and spectrum remain open.

## Gate104 attempt #1 RED — strict unused simp arguments (not missing proof)

Independently verified [run #40389025365](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40389025365), job `121804829138`, commit `834bef77856a3f2b258956c4ef5315f4d943c148`, `completed/failure`. All original source hashes/immutable math/toolchain/qualified G4K9C cache passed, and fresh original Core, MassiveCoercivity, ColorMatrices, MixedEnergy, DeformedCharge, GammaWords, ColorLie and all accepted S4B3–S4B15 theorem ancestors compiled. Accepted Gate103 S4B15 parent new `.olean` size 75624. Candidate compiler exit **1**, printed exact both roots with only `propext, Classical.choice, Quot.sound` and no `sorryAx`, candidate source warnings `[]`. Despite otherwise complete proofs, strict warning-as-error rejected three **unused simp arguments**:
- `SU2BFSSPhysicalDomainS4B16OriginalBosonCoordinateSelectorProbe.lean:32:18`: unused `PiLp.single_apply` in coincident branch.
- Line `34:18`: unused `PiLp.single_apply` in noncoincident branch.
- Line `34:40`: unused explicit `h'`; Lean compiler suggested `simp [PiLp.single_apply,h]` or fewer args.
This is a strict tactic-linter failure, *not* a wrong coordinate-selector theorem or invalid source basis behavior. Both candidate roots remain **unaccepted (0/2)**; scoped S4 accepted **35**. Original logs and compiled objects in [artifact #12681924839](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40389025365/artifacts/12681924839).

**Gate104 attempt #2 prospective**: exactly replace coincidence `simp [PiLp.single_apply]` with `simp`; noncoincidence `have h' ...; simp [PiLp.single_apply,h,h']` with `simp [h]`, following original Lean compiler suggestions. Same actual source `Boson N` carrier, true `EuclideanSpace.single`, theorem statements, proofs' structure, two axiom names and all source mathematics. New source Git blob `b3b91708f45bca87cfd6f4bc538adf86c51445a2`. Update the **two** strict candidate source pins and the static source preflight check (guard `Finset.sum_congr` rather than a redundant tactic `PiLp.single_apply`); no weakening of warnings-as-errors, original-source pins, or permitted axioms. Paired strict workflow blob `5f9ec864bfc228636c081937f0d051ef37624045`. This has **not yet passed CI**. No unqualified B(x), physical Spin(9), spectral theorem or whole-program counts. Canonical `main`, immutable original math and PR #25 unchanged.

## Gate104 #2 FINAL STRICT ACCEPTANCE — actual original boson coordinate selectors

**2026-10-26 Project Lead independently verified** [Actions run #40391161131](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40391161131), job `121812192055`, research commit `f226a14bcb37e922970e36c8427a861606419ae1`, `completed/success`, against original Lean output. Original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, frozen Lean 4.34.1 and Mathlib `d13f23b`, original source Git SHA and manifest pins, G4K9C qualified source cache preflight, immutable source all passed. Original BFSS Core, MassiveCoercivity, ColorMatrices, MixedEnergy, DeformedCharge, GammaWords, ColorLie and accepted S4B3–S4B15 proofs were freshly compiled with allowed axioms (S4B15 `.olean` 75624 bytes). Candidate source Git blob `b3b91708f45bca87cfd6f4bc538adf86c51445a2`, strict workflow Git blob `5f9ec864bfc228636c081937f0d051ef37624045`.

Decisive original compiler verification:
```text
GATE104_CANDIDATE_SOURCE_WARNINGS []
GATE104_COMPILER_EXIT 0 AXIOM_REPORTS [
 ('FCP.BFSSSU2PhysicalDomainS4B16.originalBoson_single_coordinate_weighted', {'Quot.sound', 'propext', 'Classical.choice'}),
 ('FCP.BFSSSU2PhysicalDomainS4B16.originalBoson_single_coordinate_nested', {'Quot.sound', 'propext', 'Classical.choice'})]
GATE104_ORIGINAL_SOURCE_COORDINATE_SELECTOR_TWO_ROOTS_STRICT_PASS
```

**Gate104 #2 strictly accepts 2/2 candidate roots; scoped S4 total 35 → 37.** Both the original EuclideanSpace.single (k,A) genuine bosonic single-coordinate selector and the original nested spatial/color sum thereof are now strictly verified; not synthetic `if`-based surrogates. Gate104 #1 [run 40389025365](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40389025365) remains red and preserved: 3 unused simplifier arguments with existing complete proof goals and permitted axioms. Attempt #2 only removed the unused tactics and adjusted the exact source guard; original mathematical statements, pin discipline, warning-as-error, strict axiom policy and source unchanged.

**Next boundary:** substitute actual original coordinate direction `EuclideanSpace.single (k,A) 1` into the already-accepted S4B11 public `sourceMasslessComplexVariationCoefficient M x v α q` and derive a non-opaque, explicitly signed gamma/color coefficient using the Gate103 signed pair and now accepted Gate104 selector. The last identity is not yet strictly qualified; do not infer manuscript `B(x)`, Spin(9) closed-domain claims or spectral existence. Scoped tally only, global historical tally not reconciled. Canonical `main`, original source and draft PR #25 unaffected.
