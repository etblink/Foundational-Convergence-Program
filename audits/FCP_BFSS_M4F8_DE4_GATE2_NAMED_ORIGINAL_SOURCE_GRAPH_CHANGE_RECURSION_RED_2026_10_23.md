# BFSS M4F8 DE4 named-original physical source-graph equality — Gate #2 RED (closure conversion recursion)

**Disposition:** `DE4_GATE2_RED__SOURCE_SET_CLOSURE_CHANGE_MAX_RECURSION__VALID_IMPORT_ANCESTRY__ZERO_ACCEPTED_ROOTS__308_HELD`.

Independent check of [run #40055971101](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40055971101), job `120758923195`, `completed/failure`, original workflow commit `95dadd80b5cb0e44025b187d79829c09df9250c2`, original compiler artifact [#12545129289](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40055971101/artifacts/12545129289), SHA256 `e44f3bdb6714227864982bd5b93f7e57ee91717e9ed1f46723766014dc0279a2`. Exact unmodified Gate2 theorem source blob `9aa96f043ad6ad0da33abab170b46a76c4c20c9d`.

**Qualified ancestry restored and pinned:** all original math/Lean/Mathlib checks passed, and three archives restored with **exact hits**, in order:
- E4 `bfss-fcp-m4f7-e4-physical-closed-graph-transport-75f06cc3-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64` — C3, C4 and E3 `.olean` closure restored.
- DE3 `bfss-fcp-m4f8-de3-physical-source-graph-96ccf495-gate3-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- DE3C `bfss-fcp-m4f8-de3c-k9d-k10a-d1-source-unchanged-0695420e-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

Original DE4 Lean `FCPM4F8OriginalNamedFullPhysicalGraphDE4.lean:85:6: error: maximum recursion depth has been reached`; diagnostic `use set_option maxRecDepth <num> to increase limit`; compiler's failed theorem `#print axioms` includes `sorryAx`; runtime 12.86 seconds, RSS 6990768 KB. **No strict accepted root; no new saved cache**. Earlier Gate1 C4 missing .olean is now decisively overcome.

**Exact proof-engineering cause:** line 85 invokes `change` with two fully expanded huge dependent `LinearMap.range` terms to identify coe of `(LinearMap.range (...)).topologicalClosure` with `closure (LinearMap.range (...))`. Lean's kernel elaborator/definitional equality search exceeds default recursion. The source and target expressions involve enormous original BFSS 16-charge families. This is an elaboration obstacle, not counterevidence to the existing DE3 or original D1 graph identity.

**Next bounded correction:** Keep source DE4 proposition (literal `pairedGaugeData.deformedModelGraph 1 0` equal to image of actual independent J-free P-to-P^16 operator graph) EXACTLY unchanged, retain all original pins, original three exact cache contracts and frozen mathematics. Eliminate the expensive redundant `change` calc step: first use already-qualified D1 named source `sourceGaugeRestrictedClosedGraph_equal` to rewrite its graph to `originalRestrictedClosedGraph`; then unfold only that named definition and rewrite using `Submodule.topologicalClosure_coe`; finally use the exact DE3 `sourceRestrictedClosure_eq_actualFullPhysicalE2Graph_image` theorem. If the typed rewrite still encounters recursion, consider a narrowly scoped explicit recursion depth test or a named `let S` submodule closure helper, with original compiler feedback before further escalation. DO NOT change the statement, assume a free Hamiltonian equality, or promote the theorem based on CI status alone.

**Ledger:** 308 accepted principal roots, unchanged. E4, DE3 and DE3C remain fully accepted. The DE4 named original-source physical graph equality remains UNACCEPTED. Canonical `main`, immutable `etblink/math` and PR #25 not changed.
