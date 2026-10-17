# BFSS SU(2) — post-Gauss provenance reconciliation and mathematical return

**2026-10-16 PDT | bounded Project Lead housekeeping, research branch only.**
**Status:** documentary / static CI preflight. **Not** a newly compiled Lean theorem, newly qualified workflow, spectral certification, canonical integration, or authorization to merge.

## Current branch and successor navigation

- Repository: `etblink/Foundational-Convergence-Program`. Research branch: `research/openai-math-su2-s3l-combined-rotation`; observed pre-housekeeping source HEAD `ba170a4e03a8f86d8e81464d1fd7902ab3cd594a`.
- [Draft PR #25](https://github.com/etblink/Foundational-Convergence-Program/pull/25) remains open and unmerged, with base `research/openai-math-su2-s3k-physical-spin-flow`. Its original description documented the G6J/gate-#109 historical checkpoint, not the latest scientific state; preserve that historical description but foreground current evidence.
- [Issue #27](https://github.com/etblink/Foundational-Convergence-Program/issues/27) was completed and closed after strict #356–#358. [Issue #28](https://github.com/etblink/Foundational-Convergence-Program/issues/28) is the active manuscript/source closed-domain research boundary. [Issue #26](https://github.com/etblink/Foundational-Convergence-Program/issues/26) is a separate older independent L6G7E assistance docket; do not close merely because subsequent routes have progressed.
- [Project Lead evergreen guide](FCP_PROJECT_LEAD_EVERGREEN_RESEARCH_GUIDANCE_0_1_0.md) governs methodology; [October 16 Gauss completion](FCP_BFSS_SU2_GAUSS_KERNEL_COMPLETION_AND_SPECTRAL_RETURN_2026_10_16.md) governs the exact theorem/spectral distinction; [source-realization audit](../experiments/openai-math-su2-physical-domain/BFSS_ORIGINAL_MANUSCRIPT_PHYSICAL_CHARGE_HAMILTONIAN_REALIZATION_INTERFACE_AUDIT_2026_10_16.md) identifies the next exact mathematical interfaces.

## Exact accepted evidence (not a blanket manuscript theorem)

1. **G4K9D / concrete-color gate #170:** [strict run](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38011995220), accepted audit `audits/OPENAI_MATH_BFSS_SU2_G4K9D_GATE_170_SOURCE_OPERATOR_AND_CORE_FORM_ACCEPTANCE_0_1_0.md`. Actual source `SU2BFSSG4K9DSourcePotentialMultiplierProbe.lean` blob `0695420e4e1d6fbe8accdc4aee9df6dd2d52d1ca`, unchanged on the active research branch. It proves literal all-SmoothCore `deformedCoreCharge 1 0 = charge` and normalized source core-form equality, among four accepted roots.
2. **D2B26/27/28 / physical-domain gate #93:** [strict run](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38069074087), job `114262606436`, source/workflow commit `e6dcc0f751252f9cdb609d3de61f67abe733a041`. All three stages compiled successfully, with printed roots restricted to `propext`, `Classical.choice`, `Quot.sound` and no forbidden-axiom audit failure. D2B26 proves the source weak-form associated-operator interface; D2B27 proves `(1/16) T†T` self-adjoint with the exact natural domain and weak-form characterization; D2B28 specializes the source-defined paired SU(2) Hamiltonian. Current-branch blobs are **identical** to Gate #93: D2B26 `7ed83b104d1da097dc6aa14a415bfb1be82b1f0f`; D2B27 `f9218103e4c1a8e2122eca348ac486944248dba3`; D2B28 `99dc1131eda043c6e8fd5f28991c0e745176944c`. Do not re-prove these abstract/source-associated operator theorems.
3. **Original SU(2) Gauss/physical iff / gate #358:** [strict run](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38994451291), job `117283780996`, workflow/source commit `68eb2b1d0d7405eb6728dbe98c92713f08885e3e`. The three H5E8AA roots compiled with the same three permitted axioms; source blob `edb1567774ad3616ad9f8b6098ebd7604596191f` is unchanged on the active branch. Exact content: every actual `v : FullL2 2` belongs to the original `pairedGaugeData.physicalSpace` iff it lies in the maximal strong-derivative domain of each original color generator and all three generators annihilate it. The prerequisite source group generation is **algebraic**, accepted in #357, via exact positive-i source Euler factorization #356. Joint-kernel equality does **not** imply equality of whole generator domains, let alone the manuscript Hamiltonian.

**Pinned environment:** original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. An accepted source blob alone does not verify a new joint import closure or CI cache.

## Static CI preflight for prospective H5E8AB

The present candidate `SU2BFSSPhysicalDomainL6H5E8ABOriginalMasslessPhysicalChargeGraphBridgeProbe.lean` directly imports:
- `SU2BFSSPhysicalDomainL6H5E8AAOriginalSU2JointGaussKernelPhysicalIffProbe`, accepted under `.github/workflows/bfss-l6g1-original-spin-identity.yml` (PR #25's S3K-base path, accepted H5E8AA at the end); and
- `SU2BFSSG4K9DSourcePotentialMultiplierProbe`, accepted under the earlier concrete/physical-domain proof cache (e.g. `.github/workflows/openai-math-su2-physical-domain.yml` checks its object in the accepted G4K10A cache).

**These existing workflows do not currently co-stage both qualified dependencies for H5E8AB.** The L6G1 job restores pinned L6 prefixes and compiles H5E8AA; the physical-domain job checks the warm G4K9D object plus Gate #93 D2B closure but does not stage H5E8AA. Their PR branch/path triggers and cache scopes differ. Do not interpret an unrelated path-filter-skipped job as a mathematics failure.

**Minimal prospective gate design, not implemented in housekeeping:**
1. Choose a PR #25-compatible single-job path; pin original-source, Mathlib and Lean identities exactly as existing workflows do. Snapshot source and synthetic-PR-merge SHAs distinctly.
2. Check content hashes and complete qualified import closure for G4K9D and H5E8AA **in the same pinned Lean environment**. Restore a compatible verified cache, or compile the missing qualified chain from identical source; do not concatenate incompatible `.lake` objects, transplant arbitrary `.olean` files, change the PR base, or relax source hashes.
3. Compile the H5E8AB candidate with a **fresh** `.olean`. Require `#print axioms` for all six named roots, each restricted to `[propext, Classical.choice, Quot.sound]`; reject `sorryAx`, parser/elaboration errors, absent roots, or stale dependency objects. Preserve first causal error and stage markers if red.
4. Before launching, verify direct source identity and the import/namespace names against the pinned code, and ensure the qualification job can actually access the accepted cache keys. A new gate is warranted only by this new exact graph obligation, not documentation completion.

**H5E8AB is still a PROSPECTIVE file, not accepted Lean evidence.** It proposes original `h=1,m=0` sixteen-charge and closed graph equalities, exact original invariant SmoothCore iff H5E8AA joint Gauss kernel, and original *restricted physical* charge graph closure. Its result would still be about source Lean objects, not the independently specified preprint's abstract Clifford module.

## Scientific return and stop rule

Immediately after document/PR reconciliation and static CI readiness, return to [Issue #28](https://github.com/etblink/Foundational-Convergence-Program/issues/28): first qualify or falsify H5E8AB with an isolated proof gate; then identify the exact Clifford/gauge-equivariant unitary intertwiner and **physical invariant smooth-core / closed charge-graph / normalized associated-Hamiltonian domain transport** to the 2026 preprint. Independently adversarially check global Spin(9) action, closed isotypic reduction, high-weight confinement, and the positive-eigenvalue argument.

Do **not** infer the preprint's point spectrum, compactness, a global mass gap, or any framework-level physics from accepted color Gauss invariance, source form algebra, or `T†T` self-adjointness.

**Housekeeping limits:** no changes to `main`, mathematical-source repos, pinned inputs, existing Lean modules, CI workflows, accepted caches, PR base, PR draft state, or gate/negative-knowledge history. No new CI run or acceptance is claimed by this documentation checkpoint. Stop housekeeping here unless a specific factual inconsistency blocks the next mathematics.
