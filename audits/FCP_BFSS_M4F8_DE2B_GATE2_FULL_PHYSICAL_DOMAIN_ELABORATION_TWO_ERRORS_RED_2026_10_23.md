# FCP BFSS M4F8 DE2B — strict Gate #2 verified red: two Lean elaboration defects

**Disposition:** `M4F8_DE2B_GATE2_RED__1_OF_3_PROOFS_CLEAN__DOMAIN_IFF_APPLY_META_AND_PI_MEM_CHANGE__NO_NEW_ACCEPTANCE__PRINCIPAL_308_HELD`. Date: October 23, 2026 PDT (runner logs October 24 UTC).

## Original evidence

- [Completed workflow run #40050959307](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40050959307), first attempt, job `120743938943`, `completed/failure`, workflow/source checkout SHA `023e017aa35729440f900e7eba2662a715cde803`.
- [Original diagnostic artifact #12543491708](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40050959307/artifacts/12543491708), digest `sha256:93db409afa2cdfc3919f78283d6557ef14d6c539acb759896d66aae20f743e29`.
- Original mathematical leaf (UNMODIFIED since Gate #1): `experiments/openai-math-su2-physical-domain/FCPM4F8IndependentActualE2FullPhysicalDomainDE2B.lean`, blob `a33bab198bd67bb57038dcc1b176fd9abf5f628b`.
- Source preflight, frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact 44-path DE2 parent cache restoration **HIT**, all required ancestor `.olean` checks and candidate source-identity checks **PASSED**. 11 known upstream dependency dirty-worktree warnings did not cause this red. Fresh Lean used `-DwarningAsError=true`, `DE2B_RESOURCE_TIME 13.33 CPU 113% MAX_RSS_KB 7027292`.
- Fresh compiler returned exit 1 with **exactly two localized errors**, line 101 column 6 and line 120 column 6.

## Compiler diagnosis

1. **Line 101 — metavariable from `apply`:** Lean: `Tactic 'apply' failed: could not unify the conclusion of ... independentActualE2FullPhysicalGraph_mem_iff ... ?m.196 ... with goal (↑u, ↑y) ∈ ... independentPhysicalInputCutClosedChargeColumn ... .graph`. The intended actual point is `(u,y)`; `apply` does not synthesize it from the coerced, dependent-subtype pair in the ambient target. A known correct mathematical equivalence is applied at an underconstrained elaboration boundary.
2. **Line 120 — `change` assumes false definitional equality:** Lean: `change tactic failed`; `∀ α : SpinIndex, y α ∈ independentPhysicalSpace ...` is **not definitionally equal** to `y ∈ independentActualPhysicalOutputs ...`, where the definition is `Submodule.pi Set.univ ...`. Use `Submodule.mem_pi` with full index-domain membership instead of `change`.

## Qualified/not qualified

- `independentActualE2FullPhysicalChargeColumn_isClosed` **compiled** and its exact axiom report is `[propext, Classical.choice, Quot.sound]`; report preservation is meaningful partial compiler evidence, **not a complete three-theorem gate acceptance**.
- `independentActualE2FullPhysicalChargeColumn_domain_iff`: `sorryAx` from the two proof errors; **not accepted**.
- `independentActualE2FullPhysicalChargeColumn_domain_dense`: `sorryAx` by reliance on incomplete `domain_iff`; **not accepted**.
- No accepted new principal roots. BFSS cumulative count **308** unchanged. No new proof of Hamiltonian, adjoint, spectral, or source operator equality.

## Next controlled remedy (unproved until strict gate)

Introduce an explicitly typed `(u,y)` membership fact in the **exact DE2 physical graph**, then use `independentActualE2FullPhysicalGraph_mem_iff ... (u,y)` to translate to actual ambient E2 graph membership. For `hyphysical`, unfold only `independentActualPhysicalOutputs` to the original `Submodule.pi Set.univ` and apply `Submodule.mem_pi.mpr (fun α _ => hphysical α)`; avoid unfolding any expensive charge formula. Spell out `(u,v)` explicitly in the reverse graph-membership application if required. Preserve original hCAR/hHermitian/J/color/gamma assumptions and literal independent operator definition. Run Gate #3 on a new pinned candidate blob, exact DE2 cache and three strict axiom reports. Preserve any further failing goal verbatim. Never backdate a Gate #3 acceptance.
