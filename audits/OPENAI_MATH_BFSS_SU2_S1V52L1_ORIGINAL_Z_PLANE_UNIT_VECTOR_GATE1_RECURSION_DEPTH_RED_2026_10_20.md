# S1V52L1 Gate #1 — RED; first-vector unit-norm local-unification recursion

**Disposition:** `S1V52L1_GATE1_RED__SOURCE_VECTOR_NORM_LET_UNIFICATION_MAX_RECURSION__SECOND_FACTOR_ROOT_AX_CLEAN__DO_NOT_PROMOTE__SOURCE_REPAIR_NEXT`

## Immutable primary evidence

- [Actions run #39397508193](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39397508193), job `118543787235`, **COMPLETED FAILURE** on checkout `95d5925c7dea9eb62791653903bdb389bb5904b5`.
- Original source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L1OriginalZPlaneTwoVectorFactorizationProbe.lean`, exact checked Git blob `2eac8424336459f96120ce1a6752e5a44899c835`.
- Exact original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original BFSS Core pinned, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Source SHA preflight **PASS**; qualified S2 compilation cache `bfss-s1v52s2-original48-source-clifford-evenness-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored successfully. Required original source `.olean` files present.
- First true Lean error: `SU2BFSSPhysicalDomainS1V52L1OriginalZPlaneTwoVectorFactorizationProbe.lean:43:23: error: maximum recursion depth has been reached`, at `have ha : Q a = 1 := sourceBlockColorAxis_unit α 0`, where the local `let a : Source48Vector := sourceBlockColorAxis α 0` is being compared to an exact previously qualified source theorem. The Lean error suggests `set_option maxRecDepth <num>` and diagnostics; neither is automatically an appropriate fix.
- The failed first root `FCP.BFSSS1V52L1.sourceZPlane_firstVector_unit` printed `[propext, sorryAx, Classical.choice, Quot.sound]`, **REJECTED**.
- The second root `FCP.BFSSS1V52L1.sourceZPlane_twoVector_factor` printed `[propext, Classical.choice, Quot.sound]`, **axiom-clean**, but the two-root module/gate is **RED**, no qualified L1 cache saved and no L1 root promoted to accepted S1V52 total.
- Job preserved logs artifact `bfss-s1v52l1-original48-z-plane-factor-39397508193`.

## Diagnosis and repair intent

The failure is in **Lean elaboration/unification of a local source axis let-definition with the exact imported norm certificate**. It is not a disproof of the mathematical formula `Q(c • a - s • b)=1` for unit orthogonal original axes and `c²+s²=1`.

To avoid expensive unfolding of `sourceBlockColorAxis` through the 48-label indexing equivalence, first bind the qualified `sourceBlockColorAxis_unit` and `sourceBlockColorAxis_ortho` to syntactically identical *explicit source vector expressions*, and then transport those facts through local names in a controlled step, or factor the quadratic computation into a general lemma over abstract vectors. **Do not mask the error by increasing recursion depth alone or by introducing assumptions.** Continue to use the actual original `source48Quadratic`, real 48-Majorana source axes and +i Z Clifford factorization. Preserve original statement and source pins.

Do not launch an unchanged workflow rerun: new strict gate must pin the fixed source blob and fail on any `sorryAx`. Staged L2 Z-plane Lipschitz membership and all genuine Spin/global lift statements remain **unqualified**.

Accepted S1V52 roots unchanged at **49**. Never alter canonical main, upstream source, draft PR #25 or accepted cache keys.
