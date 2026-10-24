# BFSS M4F8 DE1 — original J-free E2 actual physical-input rebase, Gate #2 strict acceptance

**Accepted:** October 23, 2026 PDT (runner logs crossed midnight UTC into October 24). **Disposition:** `DE1_GATE2_ACTUAL_INDEPENDENT_E2_PHYSICAL_INPUT_REBASE_FOUR_DECLARATIONS_STRICT_PASS__CORRECT_DC_CACHE__NEW_DE1_CACHE_SAVED__PRINCIPAL_308_HELD`.

## Immutable source-exact evidence

- [GitHub Actions run #40045706261](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40045706261), original job **120726812788**, completed/success, run attempt 1, frozen workflow HEAD `b6964590f8ce8cb404224c54ad537e250fe74eaf`.
- Actual candidate source `experiments/openai-math-su2-physical-domain/FCPM4F8IndependentActualE2PhysicalInputRebaseDE1.lean`, immutable Git blob `6666d957c03571ac80c3c3886a67e976aec1eb6a`; same source as unsuccessful Gate #1; *no mathematical source edits required for this acceptance*.
- Original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. All original/source preflight steps and exact source-hash checks passed, marker `M4F8_DE1_GATE2_SOURCE_EXACT_JFREE_NATIVE_PHYSICAL_INPUT_REBASE_PASS`.
- Exact previously accepted DC joint original Haar + DD cache **restored** (ordered **40**-entry manifest matching DC saved manifest):
`bfss-fcp-m4f8-dc-haar-join-bac97ce9-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Strict new Lean compilation `lake env lean -DwarningAsError=true` completed in **17.62 s**, CPU **63%**, peak `MAX_RSS_KB 7029612`. Axiom validator exact success marker `M4F8_DE1_GATE2_ACTUAL_E2_JFREE_PHYSICAL_INPUT_REBASE_FOUR_DECLARATIONS_STRICT_PASS`. All four original `#print axioms` reports have exactly the permitted `{propext, Classical.choice, Quot.sound}`, no `sorryAx`, no warnings, no compiler errors:
  - `FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputGraph` (definition);
  - `FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputGraph_mem_iff`;
  - `FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn` (definition);
  - `FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1.independentE2PhysicalInputChargeColumn_graph_eq`.
- Exact accepted DE1 cache **saved** `bfss-fcp-m4f8-de1-physical-input-6666d957-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Preserves the complete 40-entry qualified DC dependency set **plus actual DE1 .olean** (41 paths), not an approximate or mismatched manifest.
- Original preserved Actions diagnostic [artifact #12541436907](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40045706261/artifacts/12541436907), SHA256 `eb0b4e3564f31abc10cd3e68211399cae8374bf9f167b73c07d5114961175ee8`.

## Qualified mathematical content

The accepted native input-physical graph is
`(independentPhysicalInputCutClosedChargeColumn color gamma theta hCAR hHermitian).graph.comap (independentPhysicalSpace.subtype.prodMap LinearMap.id)`.

The input Hilbert subspace is the genuine independently constructed SU(2) gauge-constraint space, **not** a transported source-defined physical space. The graph is literally the genuine original-independent E2 operator graph restricted through the physical input inclusion. The resulting true partial `ℂ`-linear operator on physical Hilbert input is `independentE2PhysicalInputChargeColumn`. DE1 proves exact graph membership iff and exact operator graph equality, with actual vertical uniqueness proved as a private obligation. The mathematical definitions are J-free; external source-intertwining witness appears in **neither** definition.

DE1 **alone does not** establish that this rebased operator has a closed graph, that its domain is norm-dense in the physical subtype, that all sixteen outputs land physically, or that its output codomain is the sixteen-component physical Hilbert product. Accepted E2/E7N2/DC can support these future theorems, but they remain separately unqualified. No Hamiltonian, self-adjointness, graph-norm density, spectral equivalence or source E5 operator identity follows.

## Negative knowledge and governance

- Gate #1 [run #40044769712](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40044769712) verified red **before Lean**: its 39-path DD-based cache restore collection omitted the DC .olean and mismatched the already-saved 40-path DC cache version. Explicit `DE1_GATE1_DC_CACHE_MISSING`; no reason to infer mathematical inconsistency.
- Gate #2 copied the exact DC SAVE ordered manifest into the DE1 RESTORE and retained source blob `6666d957...` unchanged; actual full qualified four-declaration Lean compilation passed.
- Principal BFSS physics roots **308 unchanged** (DE1's two definitions/two theorem declarations are *support*).
- Canonical `main`, original `etblink/math`, draft PR #25 unmodified.
- Next priority: strict DE1B closedness + E7N2 physical-output membership and DE1C native domain iff/DC-driven unconditional density; then strict full physical-input/output DE2 and DE2B, maintaining source-genuine J-free operator definitions. Never promote future proofs from a green DE1 gate.
