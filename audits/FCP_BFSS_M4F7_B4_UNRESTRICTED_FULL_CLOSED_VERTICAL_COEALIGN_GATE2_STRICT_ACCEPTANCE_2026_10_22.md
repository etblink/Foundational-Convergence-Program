# Foundational Convergence Program — M4F7 B4 independent unrestricted full closed graph vertical uniqueness: strict acceptance

**Independently accepted:** October 22, 2026 PDT / October 23 UTC.

**Disposition:** `M4F7_B4_COEALIGN_GATE2_ORIGINAL_INDEPENDENT_UNRESTRICTED_CLOSED_GRAPH_VERTICAL_STRICT_ACCEPTED__ONE_NEW_PRINCIPAL_ROOT__302_CUMULATIVE`.

## 1. Original complete workflow and Lean compiler evidence

[GitHub Actions run #39913871718](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39913871718), job `120282853078`, source/workflow HEAD `8c987984e8b6303a4317c6207b42eeb800fce66d`, verified **completed/success** across every mandatory workflow step. The Project Lead independently retrieved the original job log including fresh compiler output, exact axiom report, resource line, and confirmed saved qualified cache; not just GitHub's status headline.

- Immutable original BFSS mathematical source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, source blob pins and comment-aware no-hole checks passed.
- Lean `4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; strict qualified parent caches M4F5 unrestricted original graph closure, source C1, original source `.olean` import closure passed.
- Frozen candidate `experiments/openai-math-su2-physical-domain/FCPM4F7FullClosedGraphVerticalB4CoeAlign.lean`, immutable Git blob `2b485db6576f37cd13acd861eb9549d26f49bc51`. Strict source preflight verified the **only** Lean mathematical edit relative to failed B4 Gate #1 was the orientation and hypothesis target of the source-closure-coercion rewrite.
- Fresh `lake env lean -DwarningAsError=true` produced one qualified fully named theorem report, only `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx`, unexpected Lean source warning or error. Correct new `.olean` was written and saved in a qualified unique cache.

Exact original decisive log:

```
M4F7_B4_GATE2_NAMED_UNRESTRICTED_GRAPH_VERTICAL_SOURCE_PREFLIGHT_PASS
M4F7_B4_GATE2_SOURCE_EXACT_UNRESTRICTED_CLOSED_GRAPH_VERTICAL_ONE_THEOREM_STRICT_PASS {
 'FCP.M4F7FullClosedGraphVerticalB4.independentFullCoreGraph_closure_vertical':
   {'Quot.sound', 'Classical.choice', 'propext'}
}
DIAG_RESOURCE_TIME 13.31 CPU 98% MAX_RSS_KB 7047164
Cache saved with key:
bfss-fcp-m4f7-full-closed-vertical-b4-coealign-2b485db6-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

## 2. Actual mathematical theorem and scope

Exact new **principal** theorem:

```lean
FCP.M4F7FullClosedGraphVerticalB4.independentFullCoreGraph_closure_vertical
```

Under original independent `color,gamma,theta` and true (J:E≃ₗᵢ[ℂ] Fermion 2), `hColor`, `hGamma`, `hJ` representation-intertwining hypotheses, the **named genuine independent unrestricted** sixteen-charge smooth-core graph has a topologically closed graph relation whose fiber at input zero is trivial:

```text
∀ y : SpinIndex → Lp E 2 μ,
 (0,y) ∈ closure (independentFullCoreGraph color gamma theta : Set _) → y = 0.
```

The proof applies the prior strictly accepted M4F5 original-source-to-independent unrestricted 17-component homeomorphism graph **closure equality**; moves the transported zero-input graph point into the original pinned BFSS `pairedAlgebraData.fullClosedGraph`, applies its accepted `fullClosedGraph_vertical` theorem and injectivity of `fiberTransportUnitary J` componentwise.

It is **not** defined by transporting a source closed charge operator and does not assume physical core/gauge invariance or a source-derived independent graph alias. It is a logically distinct and stronger unrestricted claim than V1's physically input-restricted vertical theorem; the theorem is the sole substantive target of its own strict B4 gate. Thus this is **one new principal BFSS theorem root**, 301 → **302**. Supporting generic B2 (three roots) and named closed A3 (one root) remain zero-principal increments.

## 3. Gate #1 negative knowledge genuinely preserved

B4 Gate #1 [Actions #39912853335](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39912853335) job `120279596126` completed/failure. All frozen pins and caches passed; Lean's only error was line 72 `rw [Submodule.topologicalClosure_coe]` **on a submodule membership goal** with no set coercion occurrence. This introduced `sorryAx`; no theorem/root/certificate qualified or cache saved.

B4 Gate #2 replaced **only**:
```diff
-    rw [Submodule.topologicalClosure_coe]
+    rw [← Submodule.topologicalClosure_coe pairedAlgebraData.fullCoreGraph] at hh0
     exact hh0
```

The successful proof rewrote the **already obtained set-level hypothesis** in the direction required by its existing native submodule membership target. No recursion-depth increase, alternate CAR gamma/source, changed theorem statement or new axiom. This is a localized coercion-orientation failure, **distinct** from the two failed A2 concrete Set-equality recursive-conversion attempts, which remain stopped/unaccepted.

## 4. Next true closed physical operator boundary

Qualified state now contains:
- C1–C4: source and independent physically input-restricted literal smooth graph/image/closure correspondences.
- V1: genuine independent **restricted** closure vertical uniqueness under exact CAR/Hermitian/J identification.
- B4: genuine independent **unrestricted** closure vertical uniqueness without extra physical-input hypotheses.
- B2: abstract opaque normed complex closed relation to true `LinearPMap` graph and closedness certificates.
- A3: actual **J-free named independent restricted graph** as `Submodule ℂ (Lp E 2 μ × Lp E 2 μ^{16})` and its genuine named closedness theorem.

What remains **unproved** is the type-stable concrete identification between the accepted V1 literal restricted graph closure and A3's opaque named graph membership (or an equivalent graph inclusion route via B4's unrestricted named graph). The previously attempted fully literal A2 Set equality is **not** qualified; avoid replaying `rfl`, `exact`, `simpa` tactics on that large concrete type. Instead establish a named and precisely typed relation-inclusion certificate, then apply generic B2 or native Mathlib `Submodule.toLinearPMap_graph_eq` to construct the **genuinely independent closed partial charge operator**, with J used as a theorem witness and never as part of independent graph definition.

Even when that is strictly qualified, density of domain in **genuine independent physical Hilbert subspace**, preservation of all sixteen physical charge outputs, source-to-independent physical closed-operator graph/domain correspondence, Hamiltonian/form equivalence, spectral comparison and BFSS mass gap remain independent research obligations.

**Governance:** No canonical main merge, PR #25 merge, original BFSS math edit, relaxed strict axiom policy or retroactive green conversion of red gates. Preserve negative knowledge. Seek truth over CI color.
