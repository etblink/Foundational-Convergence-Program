# L9E5F18C Gate #2 — missing transitive pinned OAI Laughlin import after 58 historical dependencies

**Disposition:** `F18C_GATE2_RED__0_OF_1_NEW_ROOTS_ACCEPTED__S1H_FROZEN_EULER_IMPORT_CLOSURE_NOT_COMPLETE__NO_F18C_COMPILER_EVIDENCE__241_ROOTS_REMAIN`.

## Primary immutable evidence

[GitHub Actions run #39645305452](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39645305452), job `119379173592`, workflow commit `f52644f72d92bfd1597c60be2a13db73ce10af5a`, **FAILED** only in `Restore original historical Euler source closure with frozen dependency hashes`.

- Original pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; actual SHA preflight passed, F18B and B0 accepted caches restored, exact original BFSS/Pauli/Spin48 prerequisites passed.
- Corrected Gate #1 output path works: the first 58 of 151 missing historical SU2 Euler import closure modules compiled under the real Lean directory. The 59th, `SU2BFSSG4AExteriorGaugeActionProbe`, failed with:
```text
S1H_FROZEN_EULER_IMPORT_PASS=SU2BFSSPhysicalDomainL6G6RSourceSpinSumColorGeneratorVacuumProbe STEP=58/151
S1H_FROZEN_EULER_IMPORT_FAIL=SU2BFSSG4AExteriorGaugeActionProbe STEP=59/151 EXIT=1
SU2BFSSG4AExteriorGaugeActionProbe.lean:1:0: error: object file '.../upstream-math/lean/.lake/build/lib/lean/OAI/Analysis/Laughlin/Exterior/SpinAction.olean' of module OAI.Analysis.Laughlin.Exterior.SpinAction does not exist
```
- The actual pinned upstream `lean/OAI/Analysis/Laughlin/Exterior/SpinAction.lean` **exists** and imports `OAI.Analysis.Laughlin.Exterior.Scaling` and `OAI.Analysis.Laughlin.Spin.Disjoint`. Both in turn transitively import additional upstream original modules. This is missing qualification of the upstream `OAI` object dependency closure, not a missing original source file or refutation of the F18C theorem.
- The old source Euler visitor deliberately returned immediately for every module not starting with `SU2`, thereby failing to add missing `OAI` imports to its topological compilation plan. Its source pin check is correct for SU2 modules and must be preserved.
- Both intermediate Euler/S1H cache stages were **skipped** after the red; no unqualified cache has been promoted. F18C Lean theorem `originalNativeSixteenFock_sourceGaugeHom_identification` was **never compiled**. Original F18C mathematical source blob `159dcb0a2d1ef45e3894f33eae851166faba0fb3` untouched. New S1V52 count remains **241**.

## Controlled next gate

Modify only the workflow to include immutable **transitive** `OAI.` imports from the pinned upstream `etblink/math` tree when building the historical source Euler and S1H closure. Require (1) upstream source file exists at the original pinned checkout; (2) source blob equals the pinned git tree and is not locally modified; (3) all imports have a real compiled `.olean`, or an earlier pin-qualified cached `.olean`; (4) newly compiled OAI/SU2 dependencies contain no `error:` or `sorryAx`; (5) fresh full historic Euler and S1H axiom validations remain strict, and no cache is saved until the respective stage succeeds. Guard circular imports and duplicate module names.

Do not rerun Gates #1 or #2 unchanged. Do not weaken F18C's theorem, change `fermionGaugeLinearHom` or `originalNativeSixteenFockLinearEquivHom`, invent a surrogate representation, or use unqualified caches. Full original-source gauge representation equality is still unproved by the F18C gate. Canonical main, upstream and PR #25 unchanged.
