# FCP BFSS S3L — Gate 59 dual R4D proof strategies: verified red

**2026-10-25 PDT. Independently verified RED, zero new roots accepted.** [GitHub Actions run #40238450715](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40238450715), job `121304923505`, workflow commit `6e714a51cf0ed31471f4d15cef27064091f629ff`; run/job `completed/failure` (start 22:04:23 UTC; updated 22:26:49 UTC; **22m26s**).

## Qualifying provenance and actual source ancestry

- Frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Original R4D named assembly source Git blob `1a56b2055ff4ed3c1a227bce3910e974876c5774`, original **126-module** import closure and exact source manifest qualified.
- Direct qualified Gate57 cache missed again; the pinned, proven Gate23 S3E2 cache restored. All **49 predecessor modules** fresh-compiled in original order with `-DwarningAsError=true`, exact theorem axiom name/order/whitelist `[propext, Classical.choice, Quot.sound]`, no new scientific roots (previously accepted). R4A, R4C1, R4C2 among accepted predecessors.
- Proof candidate A source Git blob `c670e8f49b520a886c551a23ce97b479af6418cc`, file `recovery/S3L5K2R4DOriginalProofOnlyDirectSumConvGate59A.lean`; candidate B `533dea4036b2a87e75a8b84012312679d85ac920`, file `recovery/S3L5K2R4DOriginalProofOnlyTypedLocalSplitGate59B.lean`. Both entire files checked byte-for-byte against original except exactly one local proof span. The original R4D theorem statement, physical weighted operators, noncommutative product order and all original source imports unchanged.
- The dual proof verifier rebuilt ancestors **once**, then ran two separate 135-second-bounded candidate compilations. It preserved independent source and timing logs. This experimental design worked as planned to generate distinct evidence; **neither candidate accepted**.
- Candidate A, `direct_sum`: **123.804s**, exit 1. Exact Lean error line 85: `typeclass instance problem is stuck — Fintype ?m.562`; anonymous argument to `sourceThreeSum_moveLastIndexFirst _` lacked fully specified type, and kernel also reported `deterministic timeout` at the R4D theorem declaration line 39. The typeclass error is a concrete local proof elaboration defect; removing it alone does not establish that the kernel timeout will disappear.
- Candidate B, `typed_local`: **135.470s**, exit 124 from external source-compiler bound. No final Lean success/failure diagnostic; this records only that the candidate is still unresolved beyond the allowed wall-clock budget.
- Exact terminal marker:
```
BFSS_S3L_R4D_GATE59_TWO_STRATEGIES_ONE_ANCESTRY_STRICT_ALL_ORIGINAL_R4D_PROOF_VARIANTS_FAILED [('direct_sum', 1), ('typed_local', 124)]
```
- No strictly qualified original R4D `.olean` and no child acceptance cache. R4D **unproved** in this chain; earlier **64** newly accepted theorem roots across Gates51–57 remain accepted.

## Scientific/procedural learnings and decision

Original R4D proposition remains plausible because separately qualified R4A finite-sum response split and original fixed-color R4C1/R4C2 component identifications exist. However, the full original weighted triple-sum assembly is a substantial kernel/elaboration boundary: original Gate58 explicit generic specialization (115.622s; recursion and kernel deterministic timeout), Gate58 Run2 tactic-level `apply` (100.222s; kernel deterministic timeout), and Gate59 direct/typed variants failed differently.

**Do not** guess a missing physical premise, add `sorry`/`axiom`, change original statements or gamma coefficients, relax whitelist or Lean warning policy, or promote `#print axioms` on a failed declaration. In particular, a first-order fix to `Fintype ?m.562` must explicitly pin `K=L=SpaceIndex` and `Γ=SpinIndex`, but should not be merged with uncontrolled resource-limit inflation.

**Cost control:** The full run took ~22m26s, of which both R4D alternatives accounted for ~259s total. Recompiling 49 qualified ancestors is expensive because recent child caches miss. Next infrastructure change should stage a **strictly qualified original R4D-ancestry source checkpoint**, save it regardless of any subsequent target failure, and supply a durable GitHub Actions artifact fallback with all source `.olean` objects and an exact hash/source-proof manifest. Only after that checkpoint is independently green should separately versioned, bounded proof-architecture experiments run against the actual unchanged theorem. This separates costly source validation from target proof exploration.

For mathematics, prefer proving the generic finite-sum distribution/interchange with explicitly typed finite-domain indices and small fixed-index interfaces *before* specializing to the original huge source lambdas, and experiment with proof-term sharing and bounded syntax reduction; avoid more whole-theorem kernel blows until the kernel boundary has been isolated. A toolchain/kernel deterministic timeout is not a physical counterexample.

FCP `main`, PR #25, frozen original BFSS mathematics unchanged. This permanent red audit must remain visible.
