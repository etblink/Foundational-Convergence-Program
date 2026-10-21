# F18C Strict Gate #3 — original pinned OAI Git-tree prefix defect, red

**Status:** `F18C_GATE3_RED__0_OF_1_NEW_ROOTS__PINNED_UPSTREAM_GIT_TREE_LOOKUP_MISSING_LEAN_PREFIX__NO_F18C_COMPILATION__241_ROOTS_REMAIN`.

## Independently inspected evidence

- [GitHub Actions run #39648768202](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39648768202), job `119391279826`: **FAILURE**.
- Evaluated branch/workflow head `da06bb6c98f67dffad0d85c3ca69a8ebf4155c92`, workflow `.github/workflows/bfss-s1v52l9e5f18c-original-native-fock-source-gauge-identification-strict-gate3.yml`.
- Original-source hash and toolchain pins passed; accepted F18B and B0 caches restored, original Pauli/Spin48 qualified dependencies and source graph checks passed.
- Failed step: `Compile pinned upstream OAI transitive dependency closure for historical S1H`; reported
```text
Traceback (most recent call last):
AssertionError: ('untracked pinned OAI source', 'OAI.MathematicalPhysics.BFSS.Core')
```
- The original source is **present** as `lean/OAI/MathematicalPhysics/BFSS/Core.lean` in pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` (blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`). The repo was sparse-checked-out at `upstream-math` containing directory `lean`, then Python used `root=upstream-math/lean`. `git -C root rev-parse HEAD:OAI/...` nevertheless addresses the **Git repository root**, where the source is `HEAD:lean/OAI/...`. Git tree paths do not change when `-C` points to a subdirectory.
- The exact already-tracked source was incorrectly rejected because the source-prefixed `lean/` was omitted. This is not an untracked or unpinned file, nor a Lean theorem failure. The correct hash validator compares `git -C root rev-parse HEAD:lean/OAI/... ` against `git -C root hash-object OAI/...` and requires the pinned upstream HEAD.
- The historical Euler and S1H compile stages, F18C theorem compiler and axioms validator were **never reached**. No new OAI/Euler/S1H/F18C caches saved. **241 S1V52 roots** remain accepted. F18C is unqualified.

## Controlled correction

In a new strict Gate #4, change only the pinned upstream Git-tree object lookup, from `HEAD:'+rel` to `HEAD:lean/'+rel`. Preserve actual upstream `HEAD=adc7f1241b42e322a6451854ab7e4b4c146bf78a`, F18B/B0 qualified caches, historical Euler/S1H frozen source hashes, source-exact F18C blob `159dcb0a2d1ef45e3894f33eae851166faba0fb3`, fail-closed `error:`/`sorryAx` checks, and three-axiom whitelist. Do not skip the failed pinned hash check, infer that the theorem compiled, or relaunch Gate #3 unchanged. Main, upstream and PR #25 untouched.

**Scientific limitation:** This red says nothing new about the original native Spin48 Fock gauge implementer equality or BFSS physical Hamiltonian/spectral claims.
