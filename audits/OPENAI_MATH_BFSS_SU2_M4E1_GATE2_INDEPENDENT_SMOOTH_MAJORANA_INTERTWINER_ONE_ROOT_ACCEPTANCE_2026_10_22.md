# FCP BFSS SU(2) — M4E1 Gate #2: strict acceptance of independent smooth fermion-action intertwiner

**Research date:** October 22, 2026 PDT.  
**Disposition:** `M4E1_GATE2_COMPILER_AXIOMS_AND_SAVED_CACHE_PASS__ONE_NEW_ROOT__282_CUMULATIVE__WORKFLOW_AGGREGATE_STATUS_LAG_OBSERVED`.

**Theorem-root accounting:** one final source-exact intertwining root qualifies in M4E1; prior cumulative count 281, new cumulative count **282**. The two supporting declarations are separately axiom-checked but are not two further theorem roots.

## Original evidence inspected directly

- GitHub Actions [M4E1 strict Gate #2, run #39800642749](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39800642749); job `119900029707`, attempt 1, reports **completed/success**.
- Triggering source/workflow commit `7dff77465d4d4c67db1c98dce0338a8ff16cece2` on `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Exact accepted candidate source `experiments/openai-math-su2-physical-domain/FCPIndependentSmoothSuperchargeFermion.lean`, blob `425f5187324d3b7a7d67f54af0f0ff51b7b661e4`.
- Strict workflow `.github/workflows/bfss-m4e1-independent-smooth-fermion-action-strict-gate2.yml`; workflow-path-only trigger on isolated research branch. No accepted earlier sources were changed.
- Frozen original mathematics pin `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Immutable source hashes, expected new candidate hash, pinned toolchain and parent dependencies passed.
- Qualified M4D3 v1 parent cache restored: `bfss-fcp-m4d3-gauge-pointwise-v1-adc7f124-lean4341-d13f23b-Linux-X64`; accepted source dependencies and original BFSS `.olean` present.
- Fresh candidate `lake env lean -DwarningAsError=true` produced `.olean` and all three strict declaration-name reports without `sorryAx`, unknown identifiers, or compiler errors. The Python declaration-name and permitted-axiom validator passed, logging
  ```text
  'FCP.IndependentSmoothSupercharge.independentFermionCoreAction' depends on axioms:
      [propext, Classical.choice, Quot.sound]
  'FCP.IndependentSmoothSupercharge.independentFermionCoreAction_apply' depends on axioms:
      [propext, Classical.choice, Quot.sound]
  'FCP.IndependentSmoothSupercharge.independentFermionCoreAction_intertwining' depends on axioms:
      [propext, Classical.choice, Quot.sound]
  M4E1_INDEPENDENT_SMOOTH_MAJORANA_ACTION_INTERTWINING_ONE_ROOT_STRICT_PASS
  ```
- New qualified compilation cache saved: `bfss-fcp-m4e1-fermion-core-action-v2-adc7f124-lean4341-d13f23b-Linux-X64`.
- Original diagnostic artifact `bfss-m4e1-gate2-39800642749`, GitHub artifact ID `12436440235`, uploaded successfully.
- **Workflow-status qualification and final reconciliation:** The GitHub aggregate run endpoint initially reported `in_progress` despite its job definitively `completed/success`, all expected job steps concluded, strict acceptance marker, artifact upload, and cache save. At a subsequent independent check, the exact overall run **#39800642749** was verified **`completed/success`**, with GitHub `updated_at=2026-10-22T15:12:15Z`. This reconciles the whole-workflow qualification; the earlier lag was result aggregation, not failed mathematical compilation.

## Exact mathematics established

The independent smooth fermionic Majorana action is defined **without J** on the independent `IndependentTestCore E` by `TestFunction.postcompCLM` of the supplied `theta β A : Module.End ℂ E`, realized as the actual continuous-linear operator. The two supporting declarations prove its existence and pointwise formula.

The accepted new root, `FCP.IndependentSmoothSupercharge.independentFermionCoreAction_intertwining`, establishes for each spin/color label and every compactly supported smooth E-valued `f` that
```lean
independentSmoothTransport J (independentFermionCoreAction theta β A f) =
  pairedAlgebraData.fermionAction β A (independentSmoothTransport J f)
```
under a generator-preserving `J : E ≃ₗᵢ[ℂ] Fermion 2`. This identifies the independent Majorana multiplication with the **literal original** `AlgebraData.fermionAction` on the actual smooth test-function type, using accepted `pairedAlgebraData_theta`, not a new Fock realization or postulated conjugation.

This does **not** yet establish the kinetic derivative/fermionic coefficient sum, cubic color/position term, all sixteen source `Q_α` identities, gauge-core invariance of charges, closure of the joint 16-charge graph, normalized Hamiltonian operator equality or positive point eigenvalues. One factor of the manuscript-to-source charge formula has been grounded.

## Negative knowledge: first strict gate red and minimal repair

- M4E1 [Gate #1 run #39798585787](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39798585787) compiled all three Lean declarations and printed only the whitelist axioms, but the *Python textual* scanner `re.findall(r'^(?:def|theorem|abbrev) (\\S+)',src,re.M)` matched a documentation line beginning `theorem proving source-exact...`. It falsely interpreted `proving` as a fourth declaration. The validator raised `AssertionError` and no qualified cache was saved; exactly zero root credit.
- Permanent negative audit `audits/OPENAI_MATH_BFSS_SU2_M4E1_GATE1_DECLARATION_DOC_COMMENT_SCANNER_FALSE_POSITIVE_RED_2026_10_22.md`.
- Gate #2 changed only the documentation prose prefix `theorem proving...` to `proof establishing...`; it did **not** change any mathematical declaration, hypothesis, Lean proof or axiom whitelist. The scanner now matches exactly the three real declarations. The retry was an isolated Gate #2 workflow with distinct qualified-cache key.
- **Reusable lesson:** textual scanner matches within Lean doc comments, so new gates should explicitly validate declaration extraction against comments and may require a lexical-aware parser, but an audit convenience check must not be confused with mathematical refutation.

## Next Project Lead target

M4E2 should define the **independent coordinate derivative** on smooth compactly supported E-valued functions using pinned `TestFunction.lineDerivCLM ℂ (EuclideanSpace.single (i,A) 1)`, then prove its exact intertwining with the literal `AlgebraData.coordinateDerivative` using `fderiv`/real-linear composition and the qualified smooth fiber map. Avoid reintroducing original Majorana products as transported definitions. Establish individual kinetic and cubic components separately before the finite 16-supercharge sum.

**Governance:** audit-only commit. Preserve immutable original mathematics, previous accepted source files and caches, canonical `main`, draft PR #25 and Issue #28. No CI should trigger merely from this acceptance audit.
