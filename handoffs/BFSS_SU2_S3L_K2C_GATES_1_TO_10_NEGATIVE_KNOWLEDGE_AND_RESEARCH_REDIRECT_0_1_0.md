# S3L K2C: Gates #1–#10 — negative knowledge, exact proof boundary, and research redirect

**Status:** Research handoff / diagnostic record, 2026-10-11 PDT. This memo reports failed proof-qualification experiments; **it does not qualify K2C2, K2B, whole original cubic covariance, or a Hamiltonian/spectral assertion**.

**Repository:** `etblink/Foundational-Convergence-Program`, research branch `research/openai-math-su2-s3l-combined-rotation`; this checkpoint starts from `6f8a57c1afd892fbae3f0dfb89e21ec977b73bd8`. The original draft PR #25 targets `research/openai-math-su2-s3k-physical-spin-flow`. Do not merge without explicit owner authorization.

## The actual mathematical target

`SU2BFSSPhysicalDomainS3L5K2C2ActualSourceRawLeibnizProbe.lean` has the **literal** original-source `SourceEnd` Leibniz identity with
- `G := sourceParametricCombinedPlane (pairedFermionPlaneSpinGenerator i j) i j`
- `F := pairedAlgebraData.fermionAction γ A`, using the genuine original 48-Majorana Fock sector
- `P := (position (N := 2) k B).comp (position (N := 2) l C)`

The desired source-cubic monomial covariance (with `hij : i ≠ j`) is **not** the same as a raw Leibniz law: it substitutes the genuinely qualified `[G,F] = ΔF` and `[G,P] = ΔP` and must preserve `pairedOriginalCubicMonomial`'s original ordered composition. It is present but **unqualified** as K2B in `SU2BFSSPhysicalDomainS3L5K2BFactoredCubicSourceMonomialProbe.lean`.

Already separately qualified, cache-verified and axiom-audited:
- K1 `pairedActualCombined_comm_positionPair`, concrete original ordered position-pair response;
- K2A `pairedActualCombined_comm_fermionAction`, actual 48-Majorana action response;
- J9 exact original kinetic charge coefficient/finite-sum covariance;
- K6C original cubic source coefficient response;
- K2C1 `sourceComm_comp_raw (G F P : SourceEnd)`, abstract `Module.End` noncommutative Leibniz proved with pinned Mathlib `noncomm_ring`.

**No downstream source cubic-charge theorem is qualified merely because these ingredients are qualified.**

## K2 / K2B negative knowledge

Original K2 and K2B gates #1–#5 failed, first from an omitted namespace subsequently repaired, and then from recursion-depth errors during `simpa only` alias reduction, explicit typed `have hF` / `hP`, and application of `sourceComm_comp` with concrete source arguments. K2B #5 revisited this basic proof shape. Do **not** treat “apply K1 and K2A directly” as novel; K2B already attempted it.

## K2C run-by-run classification

| Gate | Experiment | Evidence and interpretation |
|---|---|---|
| #1 | Separate abstract law from concrete, initial missing source namespace | Corrected the missing `FCP.BFSSSU2GaugeG1A`; K2C1 later qualified |
| #2 | `rw [sourceComm_comp_raw]` on original literal concrete theorem | **65 s / exit 124** — no causal Lean diagnostic |
| #3 | Qualified Mathlib `noncomm_ring` on K2C1 then `exact sourceComm_comp_raw` with literal G/F/P | K2C1 GREEN; K2C2 **maximum recursion depth** |
| #4 | Direct `LinearMap.ext` + `simp only [LinearMap.add_apply, LinearMap.sub_apply, LinearMap.comp_apply, map_sub]` + `abel` | **65 s / exit 124** |
| #5 | `generalize` three literal source terms inside concrete goal, then apply K2C1 | **65 s / exit 124**, no meaningful abstraction benefit |
| #6 | `irreducible_def sourceG/sourceF/sourceP`; opaque K2C1; simultaneous `simpa only` to literal source goal | **Stage A checkpoint printed**; final `simpa` reached **maximum recursion depth** |
| #7 | Sequential `unfold sourceP/sourceF/sourceG at h` | All B checkpoints printed; final `exact h` was a **type mismatch** with Lean internal `wrapped✝` projections; plain `unfold` is wrong tool for `irreducible_def` |
| #8 | Generated source `*_def` equation lemmas with a widened PR-base workflow target | **INFRASTRUCTURE ONLY**: inaccessible pinned Lean/Mathlib Actions cache; failed before compiling K2C2. No mathematical conclusion |
| #9 | Restore cache-visible PR route, `rw [sourceP_def/sourceF_def/sourceG_def] at h; exact h` | K2C1 GREEN; all THREE generated equation rewrites and checkpoints succeeded; final **`exact h` maximum recursion depth** |
| #10 | Reverse equation rewrites on original goal `rw [← sourceP_def]; rw [← sourceF_def]; rw [← sourceG_def]; exact h` | K2C1 GREEN; **65 s / exit 124** on K2C2. **NO stage checkpoint printed**, including the first opaque-instantiation checkpoint. Cannot identify which operation stalled. Stop this direct K2C2 matching sequence |

Key runs:
- [#6](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38189218367)
- [#7](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38189787903)
- [#8](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38190327727)
- [#9](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38190595983)
- [#10](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38191445923)

**Never interpret** a compiler-failed `#print axioms` showing `sorryAx` as a qualified theorem. No `sorry`/`admit`, new axioms, alternate Fock representations, source-object changes, or loosened verification are allowed. Accept only exact pinned Lean/MATH source checks plus `.olean` compilation and approved axioms (the existing policy subset of `propext`, `Classical.choice`, `Quot.sound`).

## Lesson: classification before adaptation

- **Green upstream** does not imply concrete downstream transport has kernel-checked.
- **Exit 124** without diagnostics is an environment-time limit, **not** a mathematical counterexample and **not** the same as `maximum recursion depth`.
- **Gate #7** revealed that `irreducible_def` ordinary unfolding exposed `wrapped`, while automatically generated `*_def` equation lemmas work.
- **Gate #9** showed source-equation forward rewriting itself is feasible; the last expanded hypothesis-to-goal conversion is costly.
- **Gate #10** showed reversing the equation-lemma direction did not yield a qualified proof; its missing stage marker prevents more precise localization.
- A narrower CI PR trigger is **worthless** if the branch scope cannot see the verified pinned dependency cache. Gate #8 correctly failed closed. The known-working `research/openai-math-su2-concrete-potential` PR-base qualification route is cache-accessible, though it may launch seven unrelated rechecks.

## Project Lead STOP / RESEARCH REDIRECT

1. **Do not launch K2C #11 as another tactic, `simpa`, `rw`, `generalize`, `unfold`, timeout bump, or new `exact` variant on this same concrete theorem.** Preserve #10 failure as negative evidence.
2. Research a genuinely different theorem architecture for **K2B original cubic monomial covariance** on the source-defined ordered product, combining independently qualified K1/K2A and K2C1. One candidate is a parameterized operator-derivation interface proved *before* original BFSS specialization, with explicit, separately verified source-identification/equality obligations; this is a **design direction only**, not an accepted workaround. A parameterized bridge may encounter the same expensive concrete conversion: **do not hide this obligation**, and do not repeat K2B's old failed `sourceComm_comp` application under new names.
3. Before any expensive CI, inspect exact old K2B proof and the actual source law; specify what is mathematically and elaborationally new and identify one falsifiable, bounded experiment. If no genuinely different architecture appears, **hold the current proof boundary** instead of burning CI, and prioritize the genuinely uncertain physics/mathematics of whole BFSS rotation/Hamiltonian domain/spectral questions.
4. Preserve source/operator order, original `-i` and gammaTwo coefficients, finite sums, 48-Majorana sector, explicit `i ≠ j` premises, full physical definitions, and pinned provenance.
5. **No claim** of complete cubic source covariance, full Hamiltonian symmetry, physical positive eigenvalues or spectral resolution from accepted source fragments alone.

**Pinned stack:** Lean 4.34.1; `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. `main` and upstream are unchanged by this handoff.

This handoff is a record of **what did not work and why**; subsequent successors should treat it as an explicit stop barrier rather than a request to manufacture a green gate.
