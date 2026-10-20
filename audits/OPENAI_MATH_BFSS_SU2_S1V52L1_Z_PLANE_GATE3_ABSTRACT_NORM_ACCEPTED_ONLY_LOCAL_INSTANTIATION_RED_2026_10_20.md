# S1V52L1 Gate #3 — RED: abstract norm is axiom-clean; source instantiation still recurses

**Disposition:** `S1V52L1_GATE3_RED__GENERIC_ORTHOGONAL_NORM_COMPILES__SOURCE_EXPLICIT_INSTANTIATION_RECURSION__UNATTACHED_DOC_COMMENT_PARSER_ERROR__TWO_CLEAN_LOCAL_ROOTS__NOT_ACCEPTED`.

## Exact primary evidence

- [GitHub Actions run #39399613686](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39399613686), job `118550759329`, completed **FAILURE** at the strict compile step, checkout `e9ba363be8f25f87bc34af3610f7513abefc8b09`.
- Exact Gate #3 source Git blob `7db362c6f92ba7db01970083c9b54cce3e9c0644`, original `SU2BFSSPhysicalDomainS1V52L1OriginalZPlaneTwoVectorFactorizationProbe.lean`, pinned to original upstream BFSS Core and Mathlib; S2 qualified cache restored. No qualified L1 cache saved.
- First parser error line 35: `unexpected token '/--'; expected 'lemma'`. Cause: original documentation comment for `sourceZPlane_firstVector_unit` remained immediately before newly inserted documentation comment for generic lemma; move/remove the unattached preceding doc comment. This is syntactic, not mathematical.
- Separate recursion error `...lean:70:8: error: maximum recursion depth has been reached`: `exact orthogonalUnitLinearCombination_norm Q (sourceBlockColorAxis α 0) (sourceBlockColorAxis α 1) ...` with 48-Majorana weighted quadratic form. Type/class unification is attempted through the **concrete** `Q` abbreviation. This is different from Gate #1 failed local let-bound norm hypothesis (line 43) and Gate #2 failed `QuadraticMap.map_add` on concrete `Q` (line 65).
- `FCP.BFSSS1V52L1.orthogonalUnitLinearCombination_norm` **compiled with only** `[propext, Classical.choice, Quot.sound]` independent of original 48-source instantiation. This proves the mathematical identity for every real quadratic form and its normalized orthogonal pair. It is not counted as a strict accepted root because the containing gate is RED.
- `sourceZPlane_firstVector_unit` prints `[propext, sorryAx, Classical.choice, Quot.sound]` and is **REJECTED**.
- `sourceZPlane_twoVector_factor` independently printed `[propext, Classical.choice, Quot.sound]` and remains the consistently clean literal original +i Clifford factorization in Gates #1–#3. Gate is still RED; no promotion of local roots.
- Exact accepted S1V52 root count **49**, unchanged.

## Project Lead corrective plan

Preserve the generic norm theorem verbatim (mathematically confirmed by the pinned kernel). Fix the double adjacent doc-comment syntax. Remove the recursive `Q`-abbreviation unification in the concrete invocation by *explicitly specializing the generic theorem at* `V := Source48Vector`, `q := source48Quadratic` and syntactically literal `a,b,c,s`. Explicitly carry accepted norm and orthogonality certificates to the theorem application; do not force `rfl` unfolding of `weightedSumSquares` or original `finProdFinEquiv` labels. All theorem statements and +i bivector source signs remain unchanged.

If explicit specialization fails again, **stop iterating direct applications** and instead qualify the generic theorem in a separate strict self-contained module; use a `show ... from` transport or a source-index bounded coordinate-sum result with named certificates in a later isolated gate. No increase to maxRecDepth by itself is a principled repair.

After L1 strict acceptance, attempt L2 genuine `lipschitzGroup source48Quadratic` proof from two actual invertible ι vectors. `spinGroup` membership, Y-plane, source exact ZYZ Euler/global native lift, sixteen-block assembly and continuity remain unproved by these local gates.

No mutations to `main`, upstream math or draft PR #25. Preserve all three red gate logs and their distinct diagnoses.
