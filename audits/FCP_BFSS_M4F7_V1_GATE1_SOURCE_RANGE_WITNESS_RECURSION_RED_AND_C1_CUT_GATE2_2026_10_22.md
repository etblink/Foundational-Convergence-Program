# FCP BFSS — M4F7 V1 Gate #1 genuine Lean red; source C1 input-cut proof interface proposed and Gate #2 launched

**Local research date:** October 22, 2026 PDT (CI October 23 UTC). **Dispositions:** `V1_GATE1_RECURSION_AT_CONCRETE_SOURCE_RANGE_WITNESS_STRICT_RED__NO_ROOT_ACCEPTED__C1_CUT_GATE2_LAUNCHED`. **Accepted principal theorem roots remain 300**, including accepted M4F6 C4. The V2 true independent closed `LinearPMap` is staged but uncompiled, and must not be launched before V1 qualifies.

## 1. Independent original-run verification and first causal compiler error

[GitHub Actions V1 run #39902645718](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39902645718), job `120247452387`, source/workflow revision `f181bc39233c4446686df2a4bebcf4fd1f8027f2`, `completed/failure`.

- Original source integrity and frozen accepted mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` passed.
- Lean 4.34.1/Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, complete M4F5, C1, A1, B1, C2, C3 and separately qualified C4 cache restored; original source Core `.olean` closure checked.
- The *literal independent vertical uniqueness* and two-root proof source preflights passed.
- Fresh `lake env lean -DwarningAsError=true` **did run**. The very first error was at line 45 of candidate `FCPM4F7IndependentRestrictedClosedGraphVertical.lean`, immutable blob `6b607a8276fa5f787e94473ca47f874c3b69d7b8`:

```text
FCPM4F7IndependentRestrictedClosedGraphVertical.lean:45:16:
  error: maximum recursion depth has been reached
```

- Exact failing line was `exact ⟨f.val, rfl⟩`, inside the *supporting* lemma `sourceRestrictedGraphClosure_le_fullClosedGraph`. The preceding `apply Submodule.topologicalClosure_mono; rintro p ⟨f, rfl⟩` reached the concrete source full graph range-witness type, and Lean's elaborator/converter recursively unfolded a large source representation when it checked the constructed witness.
- Both axiom reports contain `sorryAx` as fallout from that first failure; neither supporting inclusion nor independent vertical uniqueness was accepted. No qualified V1 cache saved. Resource `DIAG_RESOURCE_TIME 10.16 CPU 104% MAX_RSS_KB 7031620`.
- The initial Gate #1 had a second **known latent postcompile Python axiom-validator regexp escaping problem** (`r'^theorem (\\S+)'`, etc.), but the job never reached that Python block. **Do not misclassify this gate as a validator red.** The observed RED is a genuine Lean elaboration failure, *not* mathematical falsity.

## 2. Source-grounded proof interface, based on what previously overcame C2

The mathematical inclusion is unproblematic:
```text
closure(restricted source graph) ⊆ closure(source full graph) = source fullClosedGraph.
```
The obstacle is **checking the explicit witness `⟨f.val, rfl⟩` in the concrete source range**, not a missing hypothesis.

The accepted `FCP.M4F6PairedSourceGraphInputCut.pairedSourceCoreGraph_eq_physicalInputCut` (C1) is exactly the specialized, strictly qualified equality
```text
restricted source graph = {p | p∈pairedAlgebraData.fullCoreGraph ∧ p.1∈pairedGaugeData.physicalSpace}.
```
This is ideal for deriving the raw inclusion **by projection of its first conjunct**, with no source range witness, before applying `Submodule.topologicalClosure_mono`.

The new research candidate `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentRestrictedClosedGraphVerticalC1Cut.lean`, blob `71a0b11174a1c5beef4ad674a0ac1666ec35347c`, changes the *failed supporting proof* only:

```lean
  apply Submodule.topologicalClosure_mono
  intro p hp
  have hcut :
      p ∈ {q : FullL2 2 × (SpinIndex → FullL2 2) |
        q ∈ pairedAlgebraData.fullCoreGraph ∧
        q.1 ∈ pairedGaugeData.physicalSpace} := by
    rw [← FCP.M4F6PairedSourceGraphInputCut.pairedSourceCoreGraph_eq_physicalInputCut]
    exact hp
  exact hcut.1
```

The entire *principal* `independentRestrictedCoreGraph_closure_vertical` statement, CAR/Hermitian and actual `J,hColor,hGamma,hJ` premises, source fullClosedGraph theorem, and full principal proof body remain byte-for-byte unchanged. The accepted source C1 is an actual imported `.olean` dependency; no new axiom, `J` assumption on the supporting source root, source redefinition or recursion-limit increase is introduced. This is the same *named-cut certificate and opaque-proposition-projection* architectural lesson that solved M4F6 C2.

This proof remains a **candidate** until the actual new source compiles: an elaboration failure at the C1 rewrite/membership interface would be new useful negative information, not permission for tactic permutations.

## 3. One bounded Gate #2 and a validated exact report scanner

New path-only workflow `.github/workflows/bfss-m4f7-independent-vertical-v1-c1cut-strict-gate2.yml`, commit `462c2589b2700572fddbf5148cb013938993ddec`, launched [Actions #39903487699](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39903487699). As of initial query it was running; **not accepted**.

- Exact original source and candidate SHA pins, full M4F5/C1/A1/B1/C2/C3/C4 qualification chain, Lean 4.34.1/Mathlib pins, comment-aware hole checks and exact original V1 principal theorem-body equality preflight.
- Fresh Lean compilation 105s cutoff, both full qualified axiom reports must contain only `propext, Classical.choice, Quot.sound`, no `sorryAx`, errors or unexpected warnings; dedicated cache saved only on entire success, full resource/compiler logs archived on every result.
- The latent first-gate **postcompile regex** issue was corrected with Python raw patterns `r'^theorem (\S+)'` and `r'^#print axioms (\S+)'`, and the precise allowed `#print axioms` report regexp. Original static workflow YAML `run: |` / `path: |` indentation passed. Exact two-root names and original namespace retained; the new Lean module has a unique compiled `.olean` stem.
- No competing Gate #1 rerun or V2 CI has been triggered.

If Gate #2 proves both statements and the full strict workflow qualifies, accept **one new principal root** for the exact independent vertical theorem, 300 → 301. The source inclusion theorem is a separately kernel-checked supporting certificate, but it does not inflate the principal tally. If Lean fails, classify the first substantive error and preserve the full log before another attempt; if only the postcompiler scanner fails, repair validator alone without changing the frozen math.

## 4. Scientific ceiling

Even verified vertical uniqueness would imply *potential* extraction of a single-valued independent closed `LinearPMap` from the literal closed restricted relation. It would not itself establish a dense domain in actual independent physical L², physical-output membership, equality of actual closed physical source/independent operators, Hamiltonian forms/domains, spectrum or BFSS mass gap. Those require separate exact V2 and later strict roots.

**Governance:** Preserve the red gate verbatim, do not raise `maxRecDepth` and do not count any failed theorem; keep canonical main, draft PR #25 and immutable mathematics untouched.
