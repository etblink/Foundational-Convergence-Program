# FCP — M4F1 historical source D3A/D3B qualification recovery; current cache closure is missing

**Date:** 2026-10-22 PDT. **Classification:** documentation of *already accepted* historical source mathematics versus *not presently cached* compiled modules in the M4E5/M4F2 environment. Strict current independent ledger **291** after M4F2 Gate #3; do not add historical roots again.

## Correct the important ambiguity

M4F1 Gate #1, [run #39847407712](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39847407712), job `120064214068`, failed **before Lean**, because its M4E5 parent cache did not contain `SU2BFSSPhysicalDomainD3BFullChargeGaugePreservationProbe.olean`.

That **does not** mean D3B was never proved/accepted. The exact original source blob `1aedd8b251c8b04f02f9d71e35594a8cc482d79b` was strictly accepted at:
- [Physical Domain Bridge #6, run #38016254322](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38016254322), job `114107063587`, commit `9a10ca764e1ac69c4b4d681cd467ff9d898b71dc`, qualified five source theorems, including `sourceOriginalCoreCharge_mem_invariantCore`. The acceptance audit is `audits/OPENAI_MATH_BFSS_SU2_PHYSICAL_DOMAIN_D3B_GATE_6_ACCEPTANCE_AND_D2A_LAUNCH_0_1_0.md`.
- [Physical Domain Bridge #5, run #38015858191](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38015858191), job `114105811828`, commit `fbb6306a2a3c49b26e94c5e91d01920fd1145708`, accepted D3A kinetic contraction and original gauge covariance source blob `32b525602dd6c0266f8b78b2349fc62639e577c2`. Historical audit `audits/OPENAI_MATH_BFSS_SU2_PHYSICAL_DOMAIN_D3A_GATE_5_ACCEPTANCE_AND_D3B_LAUNCH_0_1_0.md`.
- D3B imports the genuinely pinned `SU2BFSSG4K10ASourceClosedJointChargeGraphProbe` chain through D3A and `SU2BFSSG4K9DSourcePotentialMultiplierProbe`. The exact historical accepted G4K10A blob is `65d86984f7c216950fbc96812bd011d9d09e968e` ([Gate #171, run #38012405367](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38012405367)). G4K9D accepted blob `0695420e4e1d6fbe8accdc4aee9df6dd2d52d1ca` ([Gate #170, run #38011995220](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38011995220)).
- Historic D3B workflow `.github/workflows/openai-math-su2-physical-domain.yml@9a10ca764...`, blob `dc655618ccb924123a86a1d3ccba6bfd16e284e7`, restored G4K10A-qualified cache key `bfss-su2-accepted-g4k10a-v1-6eeb4293abcc1cf3a111ff5c511f708cb5ed320a-${{ runner.os }}-${{ runner.arch }}-${{ hashFiles('experiments/openai-math-su2-concrete-potential/*.lean', 'upstream-math/lean/lean-toolchain', 'upstream-math/lean/lake-manifest.json') }}`. In that workflow D3A was compiled with `-o ...D3A.olean`, then D3B was compiled and axiom validated; the historical D3B step **did not** use `-o ...D3B.olean` for the new M4F1 cache.

## Exact task to unblock current M4F1

Do not treat source headers saying `PROSPECTIVE / UNCOMPILED` as current proof status: both source files are byte-identical to their historical accepted gates, with immutable original `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Recover the accepted G4K9D/G4K10A source chain and D1 graph source `.olean` dependencies *inside the current research branch's pinned environment*, using immutable historical source blobs and explicit strict root/axiom checks. The old cache was owned by `research/openai-math-su2-concrete-potential`, not necessarily accessible or version-compatible from this branch. Do not assume cross-branch cache restoration.

Then recompile both D3A and D3B to **importable** pinned `.olean` artifacts in the *same* environment, with all seven exact source theorem axiom reports, no `sorryAx`, no compiler errors, and a distinct qualified cache. Only then re-run the original unchanged M4F1 candidate `FCPIndependentInvariantCharge.lean` against the new cache with its complete closure. Avoid accidental duplicated broad workflows.

Historical negative knowledge: `audits/OPENAI_MATH_BFSS_SU2_H5E8BA_GATE_2_G4K10A_IMPORT_CLOSURE_NEGATIVE_2026_10_17.md` documents a previous cross-cache G4K10A failure, and reports a proven rebuild recipe via [Original Source Spin Identity #361](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39001882637) that reconstructed the accepted source chain. Inspect that precise workflow before launching, rather than reconstructing 19 modules ad hoc.

## Distinct unblocked graph route

M4F2 [Gate #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39850896603) strictly accepted the independent 16-component L² charge column/source original component transport. A **full unrestriced smooth-core graph image** theorem can be proved immediately from this and the accepted `independentSmoothTransport_coreToL2`, independently of D3B. This would not claim gauge-restricted graph, closure or spectral equivalence.

**Accounting:** M4F2 increases present cumulative newly accepted roots from 290 to **291**; historical D3A/D3B roots were accepted under prior audit/ledger and must not be re-counted merely because their compiled imports are reconstructed today.
