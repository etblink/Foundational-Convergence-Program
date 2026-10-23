# FCP M4F6 B1 — named-alias generic graph input-cut bridge launch after accepted A1

**Research date:** October 22, 2026 PDT / October 23 UTC. **Current result:** B1 single supporting theorem **in progress, not accepted**. Accepted principal roots remain **297**; exact concrete independent C2 input-cut theorem is still **unproved**.

## Why this is different from the three failed C2 gates

The exact original C2 theorem has failed by maximum recursion depth for (1) direct `exact core_graph_input_cut`, (2) concrete `ext` and witness constructors, and (3) concrete alias unfolding plus fully typed `exact`. Each failure arose when Lean needed to elaborate/check the giant instantiated independent-`Lp` equality goal. Prior D1 exploratory inferred-type diagnostics were compromised by parser, linter and later comment-sensitive Python validation, rather than showing a mathematical impossibility. Do not rerun D1, lower strict acceptance standards, or change the actual independent graph statement.

[A1 Gate #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39896595231) strictly **accepted two nonprincipal supporting equality theorems** in `FCPM4F6IndependentLiteralAliasBoundary.lean` (source blob `88a0cfdf5c5a4e407906462a56f62b9df9281ea0`):
- `independentInvariantCore_eq_actualComap`: actual independent gauge-invariant smooth test core `=` actual physical-space `comap` along the actual independent test-core L² embedding.
- `independentFullCoreGraph_eq_actualRange`: actual independent full smooth-core charge-column graph `=` range of the actual input/charge map.

Qualified cache `bfss-fcp-m4f6-literal-alias-a1-88a0cfdf-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Both have only `propext`, `Classical.choice`, `Quot.sound`. Neither by itself proves C2.

## Proposed generic named-alias bridge B1: opaque objects, explicit equalities

Exact staged source `experiments/openai-math-su2-physical-domain/FCPM4F6GenericNamedAliasInputCut.lean`, blob `b826575e5c39739a49e2797c02b79024c9f7e692`, authored independently of all concrete `Lp`, `theta`, gauge maps or test-function definitions.

```lean
theorem core_graph_input_cut_with_named_aliases
    {X Y Z : Type*}
    [AddCommGroup X] [AddCommGroup Y] [AddCommGroup Z]
    [Module ℂ X] [Module ℂ Y] [Module ℂ Z]
    (a : X →ₗ[ℂ] Y) (b : X →ₗ[ℂ] Z) (P : Submodule ℂ Y)
    (S : Submodule ℂ X) (G : Submodule ℂ (Y × Z))
    (hS : S = P.comap a)
    (hG : G = LinearMap.range (a.prod b)) :
    (LinearMap.range
      ((a.comp S.subtype).prod (b.comp S.subtype)) : Set (Y × Z)) =
      {p | p ∈ G ∧ p.1 ∈ P} := by
  subst S
  subst G
  exact core_graph_input_cut a b P
```

This is the M4E5-proven style of small algebraic equality composition: the actual input-core and full-graph aliases `S,G` are **opaque parameters** to the abstract proof, with explicit structural proof obligations `hS,hG`. The ambient complex modules are abstract; no full independent BFSS graph expected-type checking occurs yet. The target stays exactly an equality between the restricted graph range and the full graph *with independently stated input restriction*.

Source-only stage is not proof until Lean compiles it. No new axioms or assumptions are inserted in the eventual C2: A1 separately proves both alias hypotheses for exact concrete definitions.

## One independently qualified B1 experiment

Created narrow path-only `.github/workflows/bfss-m4f6-generic-named-alias-b1-strict-gate1.yml`, commit `9ca0d93d392904dcfd89ca8123ebaf6a34f0dfab`:

[GitHub Actions run #39897430060](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39897430060).

Unchanged frozen original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` and already accepted M4F5/C1/A1 qualified parent cache paths. Preflight validates exact Git source SHA and comment-aware no-hole/postulate check for all copied prerequisites, fixed B1 source/theorem/axiom-print names, opaque explicit abstract `S,G` equations and absence of any concrete BFSS objects in the B1 theorem. New source compiled fresh under `-DwarningAsError=true` capped at 105 sec; strict validator expects exactly one `FCP.M4F6GenericNamedAliasInputCut.core_graph_input_cut_with_named_aliases` theorem axiom report, no `sorryAx`/error/warning; qualified cache saved only upon complete success. Original compiler log and resource report archived on all outcomes. The preflight was statically reviewed, including inherited first and second false-positive history and YAML cache indentation.

**Decision rule:** B1 strict-green supports a later *separate* source-exact C2 specialization using the A1 equalities and explicit typed lemma application; it contributes **zero principal roots** to the running 297 count. Any B1 red requires full original logs and first causal error before any fix or downstream C2 gate. No claim that the abstract proof will automatically resolve the heavy C2 instantiation; it simply isolates that step. Canonical `main`, PR #25 and original BFSS source are unchanged.
