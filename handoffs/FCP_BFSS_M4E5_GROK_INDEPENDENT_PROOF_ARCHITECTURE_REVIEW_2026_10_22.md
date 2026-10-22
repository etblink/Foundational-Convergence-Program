# FCP — Grok Independent Research Mandate: M4E5 Exact Original Sixteen-Supercharge Equality

**Commissioned:** 2026-10-22  
**Role:** Independent Lean 4 formal verification collaborator (Grok).  
**Scientific authority:** Truth above green CI. A genuine mismatch/counterexample is a more valuable answer than a misleading compiler success.  
**Status:** Review mandate prepared for handoff; **no claim Grok has been contacted or has approved any theorem**.

## 1. Mission

Identify a **source-faithful, bounded-cost, axiom-clean** Lean 4 proof of the exact equality, for each `α : SpinIndex` (16 original supercharges) and independent smooth test function `f`:
```lean
independentSmoothTransport J (independentCharge color gamma theta α f) =
  pairedAlgebraData.charge α (independentSmoothTransport J f)
```
subject to `hColor : color = pairedAlgebraData.color`, `hGamma : gamma = pairedAlgebraData.gamma`, and `hJ : ∀ α A w, J (theta α A w) = pairedTheta α A (J w)`.

**Must compare to the actual original `AlgebraData.charge`, not a substitute with the same informal name.** The independent `independentCharge` definition must remain `independentKineticCharge + independentCubicCharge` and must not use `J` or source Fock charge in its construction.

## 2. Immutable provenance and entry points

- Repository: https://github.com/etblink/Foundational-Convergence-Program
- Current research branch: `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Latest fully compiled accepted source parent: `experiments/openai-math-su2-physical-domain/FCPIndependentCubicCharge.lean`, Git blob `fd1526cddf92845adf004c6b4fbb4a052d6e1746`.
- Accepted kinetic parent: `FCPIndependentKineticCharge.lean`, Git blob `175acf89e2f540927423d1776802f5bc673ccce2`.
- M4E5 failing candidate: `experiments/openai-math-su2-physical-domain/FCPIndependentFullSmoothCharge.lean`, blob `30f9260a474044dbc3a4e052f95d23e478a55e7c`.
- Frozen *mathematical original*: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, file `lean/OAI/MathematicalPhysics/BFSS/Core.lean`. Source namespace `OAI.BFSSQuantum.AlgebraData`.
- Compiler: Lean `4.34.1`; frozen Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Qualified successful predecessor compilation cache key: `bfss-fcp-m4e4b-cubic-charge-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Keep saved accepted caches and source Git blobs intact.
- Canonical `main` `cf06212a57db0ceffad74bd78280a8a240856a17` must not be mutated; PR #25 remains draft/unmerged; Issue #28 open.

**Inspect the original pinned source independently; never rely exclusively on this handoff's interpretation.**

## 3. Exactly what original source defines

In pinned `Core.lean`, `M : AlgebraData N` has:
```lean
def charge (α : SpinIndex) : SmoothCore N →ₗ[ℂ] SmoothCore N :=
  (∑ i : SpaceIndex, ∑ A : ColorIndex N, ∑ β : SpinIndex,
    (-Complex.I * (M.gamma i α β : ℂ)) •
      ((M.fermionAction β A).comp (coordinateDerivative i A))) +
  ∑ i : SpaceIndex, ∑ j : SpaceIndex, ∑ A : ColorIndex N,
    ∑ B : ColorIndex N, ∑ C : ColorIndex N, ∑ β : SpinIndex,
    (((1 / 2 : ℝ) * M.structureConstant A B C * M.gammaTwo i j α β : ℝ) : ℂ) •
      ((M.fermionAction β A).comp ((position i B).comp (position j C)))
```
The first summand is kinetic, the second cubic. Preserve all `-i`, `1/2`, index orders, linear-map compositions and exact source `position`, `coordinateDerivative`, `fermionAction` API. `coordinateDerivative` is a *namespace definition*, not an `AlgebraData` field.

The independently defined operator is:
```lean
def independentCharge
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (α : SpinIndex) :
    IndependentTestCore E →ₗ[ℂ] IndependentTestCore E :=
  independentKineticCharge gamma theta α +
    independentCubicCharge color gamma theta α
```

## 4. Accepted component theorems (reuse without expensive unfolding)

The following declarations have independently passed strict Lean kernel/axiom gates and qualified caches:
```lean
independentKineticCharge_intertwining
  gamma theta J hGamma hJ α f
```
identifies transport of direct kinetic charge with the *exact original first summand* evaluated at transported `f`.

```lean
independentCubicCharge_intertwining
  color gamma theta J hColor hGamma hJ α f
```
identifies transport of direct cubic charge with the *exact original second summand* evaluated at transported `f`.

Each accepted declaration depends solely on `propext`, `Classical.choice`, `Quot.sound`. Independent E-valued fermion multiplication, directional derivative, position multiplication, color structure constants, and gamma commutator have already been source-matched. **Do not re-prove their internals.**

## 5. Three negative gates: what is established and what is not

- **M4E5 Gate #1:** [run #39811556321](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39811556321), candidate blob `c3afe35286a6780ea40d489106f152817f411513`. The `independentCharge` definition compiled with only the three permitted axioms, but the theorem's final `rfl` failed `maximum recursion depth has been reached`. Failed root has `sorryAx`; no root acceptance.
- **Gate #2:** two simultaneous distinct push runs [#39812844570](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39812844570), job `119943434832`, and [#39812868385](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39812868385), job `119951175940`. Candidate blob `a2026158b4e44528c257ed0da66552e33e9cf428` replaced final `rfl` with `simp only [AlgebraData.charge, LinearMap.add_apply]`. Both jobs suffered GitHub runner SIGTERM, exit `143`, after ~7m50s Lean execution, without any Lean theorem/axiom output. **No Lean verdict**. Do not assume OOM cause.
- **Gate #3:** [run #39819815185](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39819815185), job `119967805386`, candidate blob `30f9260a474044dbc3a4e052f95d23e478a55e7c`. Directed `conv_rhs` rewrite (below) also suffered GitHub runner SIGTERM exit `143` after ~6m22s compiler execution, no Lean verdict. Repeated shutdown timing is suggestive of resource pressure, **not proof** of a runner fault or mathematical contradiction.

No passing M4E5 cache was saved. Accepted theorem-root ledger **286**, not 287.

The current end-of-proof code is:
```lean
  have hk := independentKineticCharge_intertwining
    gamma theta J hGamma hJ α f
  have hc := independentCubicCharge_intertwining
    color gamma theta J hColor hGamma hJ α f
  simp only [independentCharge, LinearMap.add_apply, map_add]
  rw [hk, hc]
  conv_rhs =>
    rw [AlgebraData.charge]
    rw [LinearMap.add_apply]
  rfl
```

**Critical uncertainty:** No tactic-level timing traces exist, so the expensive step could occur during rewriting `hk`/`hc`, during unfolding original `charge`, during the end `rfl`, or earlier elaboration. Do not conflate these possibilities.

## 6. Your independent research tasks

1. **Source proof audit:** Examine the exact original `charge` definition, accepted M4E3/M4E4B theorem types, and independent M4E5 target. Determine whether the two accepted component equalities compose *mathematically* into the claimed original full charge, or whether some sign/order/coercion/implicit source-data mismatch remains.
2. **Proof architecture:** Propose one **concrete Lean code proof**, with original theorem statement preserved, that avoids blind global `simp`, whole-expression `rfl`, and deep reduction under huge finite sums. Consider source-side named kinetic and cubic `LinearMap` abbreviations plus a standalone narrowly-scoped exact operator equality, or well-controlled `change`, `Eq.trans`, `calc`, `show`, `LinearMap.ext`, `congrArg₂`, or appropriate transparent/opaque definitions. Prove helper lemmas rather than assuming them, with strict standard axioms only. Cite exact Mathlib lemmas or show derivations.
3. **Cost/root-cause diagnosis:** Decide how to pinpoint the expensive tactic in a **single low-cost, resource-bounded diagnostic** using explicit `trace`/named helper checkpoints and potentially `set_option diagnostics true` at limited scope. Avoid unbounded CI. Distinguish memory exhaustion, external runner termination, and Lean reductions if evidence permits; otherwise mark uncertainty.
4. **Fallback if source cannot be resolved cheaply:** Return a rigorously argued blocker or counterexample with exact definition-level mismatch and proof obligation. Never invent a proof result.

## 7. Required deliverables and verification rules

Return (A) independent mathematical source verdict; (B) paste-ready self-contained corrected M4E5 Lean code or bounded helper module, with file/import choices and *precise* theorem names; (C) how to enforce axiom reporting `#print axioms independentCharge_intertwining` and reject `sorryAx`; (D) hypothesis about the resource bottleneck and a test that could falsify it; (E) any negative findings that should be written to the audit ledger.

No `sorry`/`admit`/`native_decide` with untrusted computations, extra axioms, source weakening, new original-Fock-dependent independent-charge definition, changing upstream pins, merging to main, or automatic broad CI triggers. A Lean command compiling without the *intended* theorem is not evidence of progress. Do not assert a verified green unless actual original logs support it.

Your answer is an **independent recommendation**, to be separately audited and re-verified by the Project Lead. Seek truth, not approval.
