# FCP BFSS — M4F7 D1 Gate #2 direct-image witness RED; opaque transport decision

**Date:** October 23, 2026 (PDT).  
**Disposition:** `M4F7_D1_GATE2_DIRECT_SOURCE_IMAGE_WITNESS_RECURSION_RED__ZERO_PRINCIPAL_ACCEPTED__302_UNCHANGED`.  
**Scope:** Source-pinned isolated BFSS SU(2) research branch; diagnostic adjudication and bounded next-design decision. **Not** a new Lean theorem, a strict acceptance audit, or a statement about spectrum.

## 1. Immutable original evidence

- [GitHub Actions run #39971597274](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39971597274), job `120475418712`, independently retrieved complete job/Lean compiler output. **Run/job:** `completed/failure`; first failing workflow step: `Fresh strict genuine independent literal partial charge-column graph identity` (#24).
- Source/workflow run commit: `5561e351a159899839508ca9becd462771934ef9`; candidate source commit `d8ecf95095d3a7877e07ee4764622f08466dbe42`; exact source blob `acc4179f17d45b0e4109ba924f8f7e1a4193d8a8`, `experiments/openai-math-su2-physical-domain/FCPM4F7LiteralIndependentClosedPartialOperatorD1DirectTransport.lean`.
- Original mathematics frozen at `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Source/blob checks, imported source dependencies, qualified ancestor cache restores (including C1–C4, V1 and generic B2) and the candidate's unchanged J-free definition/theorem-statement preflight passed.
- Fresh bounded `lake env lean -DwarningAsError=true` exited **1** after **31.25 seconds**, **7,042,480 KB peak RSS** (105-second cap not reached). The original compiler/resource diagnostics were uploaded to the failed run.

First new Lean error:
```text
FCPM4F7LiteralIndependentClosedPartialOperatorD1DirectTransport.lean:99:32:
error: maximum recursion depth has been reached
```

Exact site:
```lean
rw [FCP.M4F6RestrictedGraphClosureC4.sourceRestrictedCoreGraph_closure_eq_independent_image_closure
  color gamma theta hCAR hHermitian J hColor hGamma hJ]
exact ⟨((0 : Lp E 2 μ), y), hp, rfl⟩
```

At this point Lean is checking the **concrete** independent restricted graph-closure membership `hp` inside the C4 transported-image witness. The resulting recursive conversion is a **proof elaboration/reduction obstruction**; the log supplies no mathematical counterexample or contradictory premises. Unrelated inherited external dependency dirty-tree warnings were present but not the first causal defect.

The independent J-free `independentLiteralRestrictedClosedChargeColumn` *definition* printed only `propext`, `Classical.choice`, `Quot.sound`. The graph theorem `independentLiteralRestrictedClosedChargeColumn_graph_eq` printed **`sorryAx`**, and the workflow did not produce a qualified success/cache. **Principal theorem delta 0; cumulative 302.** Do not count the definition as a principal theorem or report the desired single-valued operator graph as accepted.

## 2. Comparison with earlier reds

- [D1 Gate #1, run #39969876986](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39969876986), job `120469415933`, failed at line 88 column 59 on the direct application of the accepted V1 vertical theorem to B2's concrete `hp`: the same class of definitional-conversion recursion, despite valid original theorem and prior caches.
- Gate #2 changed the proof **materially** by using accepted C4 transport directly; it advanced to the *image witness* but still forced the same oversized concrete type. The two gates are not independent mathematical refutations; neither theorem qualifies.
- Earlier A2 direct set/coercion equalities and C5A concrete raw product witness/normalization experiments had already failed for recursion/heartbeats/`simp` no progress. Do **not** recycle their `rfl`, `exact`, `simpa`, or broad unfolding patterns with higher limits.

## 3. New bounded design: opaque transport, source-exact specialization

**Structural stage (no BFSS expansion):** take arbitrary typed complex normed spaces `X,Y,X',Y'`, an opaque `S : Submodule ℂ (X × Y)`, an opaque source closed set/relation `C : Set (X' × Y')`, and a map `H : X × Y → X' × Y'`. Under a checked inclusion
```text
H '' closure (S : Set (X × Y)) ⊆ C
```
together with (i) preservation of zero input by `H (0,y)`, (ii) source vertical uniqueness for `C`, and (iii) injectivity at zero of `y ↦ (H (0,y)).2`, a generic lemma proves
```text
∀ y, ((0 : X),y) ∈ closure (S : Set (X × Y)) → y=0.
```
The abstract proof needs a single image witness **over opaque S**, not the giant concrete charge formula. It is a supporting lemma only; it cannot count as a BFSS principal theorem.

**Exact source-specialization stage:** use C4's accepted restricted graph-closure image equality, the accepted original source restricted-to-full closure inclusion from V1, original `pairedAlgebraData.fullClosedGraph_vertical`, and the accepted `independentGraphTransportHomeomorph J` zero-input/injectivity identities. Keep the exact CAR, Hermitian, `J`, `hColor`, `hGamma`, `hJ` hypotheses. The source-specific application must demonstrate a *kernel-checkable, typed* match between `S` and the literal restricted `LinearMap.range ...`; it must not assume that match, hide it as a new hypothesis in the final intended theorem, or define the independent operator using `J`.

**Composition stage:** after a genuine qualified source specialization, use the already accepted B2 abstract `topologicalClosure_toLinearPMap_graph_eq` and `topologicalClosure_toLinearPMap_isClosed` to obtain the actual independent J-free operator graph equality and closedness. Do not re-prove the generic B2 results or double-count supporting roots.

**Stop rule:** before CI, inspect exact importable Lean signatures and prototype the opaque and source-matching statements separately. A matching failure or another full BFSS definitional recursion terminates this architecture; report the remaining typed interface instead of tweaking tactics or raising recursion limits. CI is justified only by a different, discriminating proof obligation after path-trigger and cache-version preflight.

## 4. Scientific ceiling and governance

A genuine closed `LinearPMap` graph would **not** by itself prove domain density in the true independent physical Hilbert space, preservation of physical outputs for all sixteen charges, equality with the original source physical operator including domains, associated quadratic-form/self-adjoint Hamiltonian equality, Spin(9) spectral reduction, positive eigenvalues, or any full BFSS mass gap.

The original manuscript/source pins, all accepted source objects and theorem statements, canonical `main`, and draft PR #25 remain unchanged. No additional Lean gate is launched by this audit. Separate dated audit from evergreen guidance. **Preserve results, not theories; preserve this red as negative knowledge.**
