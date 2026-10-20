# S1V52L1 Gate #2 — RED; source-level QuadraticMap.map_add unification recursion

**Disposition:** `S1V52L1_GATE2_RED__SOURCE_LITERAL_AXIS_NORM_FIXED__CONCRETE_MAP_ADD_MAX_RECURSION__SECOND_FACTOR_ROOT_CLEAN__ABSTRACT_GEOMETRY_ROTATION_REQUIRED`.

## Primary evidence

- [GitHub Actions run #39398512715](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39398512715), job `118547106800`, **completed FAILURE**, checkout `e626fdc1ca79eb373c5c7b63aa9772a19b86fb51`.
- Verified fixed source blob `c6f9850cb524372ee98a13f74ed5ada202f0bf55`, `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L1OriginalZPlaneTwoVectorFactorizationProbe.lean`.
- Exact pinned upstream original BFSS Core preflight passed, S2 qualified dependency cache restored, exact accepted source olean preflight passed. No cache is saved from this red gate.
- First Lean error: `SU2BFSSPhysicalDomainS1V52L1OriginalZPlaneTwoVectorFactorizationProbe.lean:65:6: error: maximum recursion depth has been reached`, at a proof step `QuadraticMap.map_add Q _ _` when used with concrete original `Q = source48Quadratic` and directly expanded `Source48Vector` axes.
- `sourceZPlane_firstVector_unit` then prints `[propext, sorryAx, Classical.choice, Quot.sound]` and is **REJECTED**.
- `sourceZPlane_twoVector_factor` remains a positive locally compiled theorem with only `propext, Classical.choice, Quot.sound` but the complete two-root gate failed. No acceptance count increment.
- This is a **new location** compared to Gate #1, where first failure was at local `let a` norm-certificate unification line 43. Replacing let-bound vectors with literal original axes eliminated that first identified failure but exposed heavy source-level application of abstract quadratic theorem.
- The two mathematically independent factorization root and its +i sign survived both reds; preserve this positive source-local fact without treating the **module** as strictly accepted.

## Project Lead proof-engineering decision

Do **not** merely increase `maxRecDepth` and repeat expensive forced reduction, nor reopen Clifford/Fock computation. Introduce a standalone **generic `QuadraticForm ℝ V` lemma** stating that, for `Q a=Q b=1`, `Q.IsOrtho a b` and `c*c+s*s=1`, one has `Q (c • a - s • b)=1`. Carry `QuadraticMap.map_add`, polar bilinearity, smul calculation and `nlinarith` solely in this abstract lemma; instantiate using exact previously accepted `sourceBlockColorAxis_unit` and `sourceBlockColorAxis_ortho` at literal original axes. This is mathematically equivalent, minimizes original-source reduction, and keeps strict axiom checks.

New gate must hash-pin changed source blob and check *both* printed roots with only `propext, Classical.choice, Quot.sound`, no `sorryAx`. Do not silently accept a green workflow without inspecting logs and pins.

## Boundaries

Accepted cumulative S1V52 theorem roots still **49**. L1 not accepted; L2 Z-plane `lipschitzGroup` remains unqualified. True `spinGroup source48Quadratic` membership, 16-block assembly, native adjoint action and continuity remain open. Negative knowledge must preserve Gate #1 local-let recursion and Gate #2 source-level `map_add` recursion as distinct mechanisms. No changes to canonical `main`, pinned upstream mathematics, or draft PR #25.
