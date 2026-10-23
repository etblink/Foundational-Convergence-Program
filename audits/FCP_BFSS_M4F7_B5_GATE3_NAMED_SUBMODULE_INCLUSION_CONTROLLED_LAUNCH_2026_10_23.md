# FCP BFSS — M4F7 B5 Gate #3: native named A3-to-unrestricted closure inclusion

**Research date:** October 23, 2026. **Status:** B5 Gate #3 launched, original compiler verdict pending. **Strictly accepted principal roots remain 302**; B5 is an interface-support theorem, not a new principal root even if qualified.

## Preceding original Gate #2 red, not a mathematical counterexample

[Gate #2 Actions #39916252060](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39916252060), job `120290368131`, completed/failure with original immutable sources and Lean 4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. This time the previous Gate #1 B4 cache path-version problem was fully repaired: original full runner log verified **Cache hit** of qualified B4 source `FCPM4F7FullClosedGraphVerticalB4CoeAlign.olean`, plus exact accepted C1–C4, V1, A3 and other required compiled dependencies.

Fresh Lean compiled `FCPM4F7NamedRestrictedVerticalB5.lean` blob `d88febcd86d196490696bce76bf79b564a594976` and reported:
```text
line 50: unknown identifier pairedAlgebraData.gamma
line 51: unknown identifier pairedTheta
line 75: maximum recursion depth has been reached
```
First two source namespace openings absent from B5 but present in accepted B4. Line 75: `change ((0 : Lp E 2 μ), y) ∈ G.topologicalClosure at hy` tries to convert A3's actual independently named closed-graph membership into membership in a **second local raw graph alias** `G`, forcing enormous concrete BFSS definitional conversion. The overall theorem reported `sorryAx`; no B5 cache saved; resource `18.78s`, `7105288 KB` peak RSS. Zero accepted B5 theorems. Forensic audit in `audits/FCP_BFSS_M4F7_B5_GATE2_LEAN_NAMESPACE_AND_NAMED_GRAPH_CONVERSION_RED_2026_10_23.md`.

## Different native submodule proof

New source `experiments/openai-math-su2-physical-domain/FCPM4F7NamedRestrictedVerticalB5SubmoduleInclusion.lean`, immutable Git blob `60c6c56889cc36395645f03aaa20ade56bd3734e`, [source commit `bb213541`](https://github.com/etblink/Foundational-Convergence-Program/commit/bb213541433a690ccddb032071843d7dfbd045bc).

Retains the **entire unchanged literal B5 theorem proposition**, including actual independent `color,gamma,theta,hCAR,hHermitian,J,hColor,hGamma,hJ` and A3 named membership. Adds only the original source namespace openings copied from accepted B4, `OAI.BFSSQuantum.AlgebraData` and `FCP.BFSSSU2GaugeG1A`. Removes the *failing* `let G` local raw-range alias and all `change ... ∈ G.topologicalClosure at hy` conversions.

Instead it proves a **single named submodule inclusion**:
```lean
have hClosed_le :
  A3.independentRestrictedClosedGraph color gamma theta hCAR hHermitian ≤
    (independentFullCoreGraph color gamma theta).topologicalClosure := by
  unfold A3.independentRestrictedClosedGraph
  apply Submodule.topologicalClosure_mono
  intro p hp
  have hcut : p ∈ {q | q ∈ independentFullCoreGraph color gamma theta ∧
    q.1 ∈ independentPhysicalSpace theta hCAR hHermitian} := by
    rw [← C2.independentCoreGraph_eq_physicalInputCut ...]
    exact hp
  exact hcut.1
have hfull : (0,y) ∈ (independentFullCoreGraph color gamma theta).topologicalClosure :=
  hClosed_le hy
```

It unfolds only the *outer named A3 graph definition* in a proof of native closed-submodule inclusion (a pattern already compiled in A3 itself), then uses accepted C2's literal physical-input cut exactly as accepted C1/V1 did and passes `hy` directly to the named inclusion. The remainder of the proof, consisting of source-exact `Submodule.topologicalClosure_coe` orientation and application of accepted B4 unrestricted graph vertical uniqueness, remains byte-identical to original B5.

This is a **single architectural correction** rather than a repeated `rfl/simpa/change` on the stopped concrete A2 Set equality. The candidate is not assumed correct until a new real Lean proof compiles with strict axioms. No recursion budget increase, original math edit, extra physical-input assumption, false operator claim or `sorry` permitted.

## One strict self-triggered Gate #3

Workflow `.github/workflows/bfss-m4f7-named-restricted-vertical-b5-submodule-strict-gate3.yml` at [commit `a3b34329`](https://github.com/etblink/Foundational-Convergence-Program/commit/a3b34329bc4cb36d8ca44774e1d1c597f10cdab8), [Actions #39917611368](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39917611368). Initially queued, no new theorem accepted.

Preserves immutable original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, pinned Lean/Mathlib; exact old and new B5 source blob SHA checks; source scanner verifies the complete theorem proposition byte-for-byte and entire final B4 proof segment against old B5, new correct namespace openings, and complete removal of the local-G conversion; exact C2/A3/B4 accepted theory, `.olean` closure and genuine CAR/Hermitian premises. Both qualified A3 and B4 caches are mandatory; B4 **12 restore paths** compared to **12 exact saved paths** of accepted B4. Fresh `lake env lean -DwarningAsError=true`, 105s bound, exactly one fully qualified B5 theorem axiom report with only `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`, source warnings/errors; output `.olean` and new unique qualified cache saved **only after whole-gate success**:
```text
bfss-fcp-m4f7-named-restricted-vertical-b5-submodule-60c6c568-gate3-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
Original compiler and resource log archive uploaded on any result. Programmatic static tests of source/compile/report stems, cache path lists, source pins, YAML indentation, saved cache uniqueness and exact theorem/report count passed before launch. No concurrent competing gates launched.

**Scientific ceiling:** Even a B5 green is an accepted *supporting vertical membership interface*, overlapping V1's source-exact restricted graph vertical theorem. The actual J-free independent closed `LinearPMap` graph and operator closedness, true independent physical Hilbert domain density, all sixteen physical charge outputs, source physical-operator graph/domain identification, Hamiltonian/form/domain equivalence, spectrum and mass gap remain future independent proof obligations. Canonical main and unmerged PR #25 unchanged.
