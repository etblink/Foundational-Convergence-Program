# FCP BFSS — M4F1/M4F6 post-cache recovery diagnosis

**Date:** 2026-10-22 (America/Los_Angeles). **Disposition:** two independently diagnosed failed runs; zero new roots; recorded cumulative principal roots **294** after M4F5.

## M4F1 recovery run #3: compiler reached, validator regression

[Run 39864910928](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39864910928), job 120124545468, at `f72b97ddb5e90849a9c2102375ac30aabec27987`, completed/failure. Exact original source preflight, corrected eleven-path M4F5 cache restoration, parent import closure and pinned original prerequisite builds passed.

The first historical module, `SU2BFSSG4K1PhysicalSpaceCoreProbe`, compiled with `-DwarningAsError=true` and printed four reports containing only `propext`, `Classical.choice` and `Quot.sound`. The next Python validator rejected Lake auxiliary-package dirty-tree status lines through its blanket `assert 'warning:' not in log`. Later G4, G4K10A, D3A/D3B and M4F1 stages did not execute. No qualified new cache or principal root was accepted.

Original diagnostic artifact 12464725209 was downloaded and matched to `sha256:211251b6b4f16d4e16465d11de6e85987d2af7c3abc98bfc26bfd3b488c6715e`. The original G4K1 log and validator were extracted and the old rejection reproduced locally.

This repeats the warning-classification defect already repaired in M3J Gate #3 and correctly handled in M4F5. The repair reuses their exact full-line pattern:

`warning: [A-Za-z0-9_-]+: repository '[^']+' has local changes`

Every other warning, compiler error, missing/duplicate/wrong report, unauthorized axiom and `sorryAx` remains rejected. Compiler warningAsError, source statements, all 24 frozen candidate/source pins, parent key and exact eleven-path restore contract remain unchanged.

**Local verification:** repaired validation accepts the original four-report G4K1 log and rejects eight negative controls: compiler warning, unexpected wrapper warning, compiler error, proof hole, unauthorized axiom, duplicate report, missing report and wrong declaration. All 24 expected hashes match the captured live Git tree. All 340 workflow event configurations were inspected; the planned edit on this branch matches exactly the intended recovery workflow. This audit path matches no push workflow.

**Verification action:** the accompanying warning-filter-only workflow edit deliberately triggers another run of the existing recovery gate. This is prospective verification, not acceptance. D3A/D3B remain historical results, not new roots. Only a fully qualified new `independentCharge_mem_invariantCore` could add one principal root.

## M4F6 run #2: actual Lean recursion errors

[Run 39864916502](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39864916502), job 120125275815, at `aa576f259cd0a58201f509d2b3679cd570792888`, completed/failure. Original/candidate pins, exact toolchain, corrected M4F5 cache restoration and parent import checks passed.

The candidate reached Lean. Maximum recursion depth was reported at lines 100, 148, 163 and 168 of `FCPIndependentRestrictedCoreGraph.lean`. The earliest location is the first theorem's concrete `change`. Both graph definitions have permitted-axiom reports; all three theorem reports contain `sorryAx` after proof failures. No graph theorem or qualifying M4F6 cache was accepted.

Do not continue to describe these newest runs as cache misses: the earlier five-path/eleven-path cache-version defect is now corrected. M4F6's errors are elaboration evidence, not a mathematical counterexample. They do not by themselves identify the precise internal cause of all four failures.

**Research redirect:** characterize each restricted raw graph by its unrestricted raw graph and physical membership of its input. Both actual invariant cores are comaps of their own physical spaces along their own core embeddings. This could reuse M4F4 graph equality and M4C3 physical membership without converting the concrete invariant-core equivalence inside a large product expression. Generic restriction and all source-specialization obligations remain unqualified. This recovery step changes no M4F6 source or workflow.

## Scientific and governance boundary

M4F1 targets independent invariant smooth-core charge preservation. M4F6 targets restricted raw graph and closure transport. Neither alone identifies the associated self-adjoint Hamiltonian with all natural domains or proves Spin(9) spectral reduction or positive eigenvalues. Preserve exact CAR, Hermiticity, coefficient and generator-intertwining premises.

Research branch only: `research/openai-math-su2-s1v52-global-lift-scoping-20261019`. Original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` stay pinned. Canonical main, accepted proof blobs, PR #25 and upstream mathematics are unchanged. Compare each new validator to the latest successful equivalent gate before spending CI resources.
