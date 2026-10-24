# BFSS M4F9 H2A Gate #1 — compiler and 3/3 theorem reports succeed, post-compiler warning validator false-red

**Disposition:** `M4F9_H2A_GATE1_RED__KERNEL_COMPILED_3_PERMITTED_AXIOM_REPORTS__POSTPROCESSOR_MISCLASSIFIES_LAKE_DIRTY_DEPENDENCY_WARNINGS__NO_CACHE__NO_ACCEPTED_ROOT`.

Independently inspected original [GitHub Actions run #40060960004](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40060960004), job `120774141405`, `completed/failure`, exact head `a66f4b2e583b09342fed051137574a1d277e7173`, original diagnostic artifact [#12547626473](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40060960004/artifacts/12547626473), SHA256 `e2086d1f7a9e77cd27af17c20ff77a21cc41c93c19f527909a326a9ed9e8a4ff`.

Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. H2A proof source `experiments/openai-math-su2-physical-domain/FCPM4F9H2APhysicalHilbertOutputUnitary.lean` exact Git blob `9224ebd878f0bbc2b3924083650489b8b01b070e`, **unchanged**. Source pin and exact H1+DE4 accepted cache hit `bfss-fcp-m4f9-h1-original-source-hamiltonian-ay-bh-05a54077-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64` and parent .olean checks all passed.

**Proof compilation:** The fresh Lean command `lake env lean -DwarningAsError=true -o ...` returned success, emitted its requested nonempty `.olean`, and reported exactly three axiom inventories:
```
FCP.M4F9H2APhysicalHilbertOutputUnitary.independentPhysicalHilbertOutputUnitary
FCP.M4F9H2APhysicalHilbertOutputUnitary.independentPhysicalHilbertOutputUnitary_apply
FCP.M4F9H2APhysicalHilbertOutputUnitary.independentPhysicalHilbertOutputUnitary_norm
```
All three emitted only `[propext, Classical.choice, Quot.sound]`; no `sorryAx`, Lean `error:`, missing imports, or theorem-specific Lean `warning:` identified. The Python exact 3-root postprocessor **nevertheless raised**:
```
AssertionError: warning: belyi: repository '.../.lake/packages/belyi' has local changes
```
and similar `warning:` records from 10 other *Lake package checkout* repos (formal-schemes, elliptic-curves, tempered-fundamental-groups, oka, orbicurve-cores, pi1, heights, genl, tate-curves-theta, iut). These are Lake's vendor repository dirty-status warnings from `lake env` and *not Lean declaration warnings*. Validator blanket rule `'warning:' not in s` was overbroad. Last strict step failed, **cache/save step SKIPPED**. Not an accepted H2A theorem despite apparently clean source proof output.

**Bounded correction required:** Preserve exact H2A source Git blob and all hypotheses. Continue to demand the three **exact** axiom-root names, only the three allowed axioms, no `sorryAx`/Lean `error:`/Lean declaration `warning:`. Remove only the exact catalogued Lake package dirty-status lines via narrow matching `^warning: ([A-Za-z0-9_-]+): repository '([^']*/\.lake/packages/\1)' has local changes$`; fail on any other warning or unknown package. Retain the raw unfiltered diagnostic artifact; filtered text must be used *only* for postprocessor classification. Gate2 fresh Lean compile + validator + new cache save needed to accept; do not use Gate1 CI red as acceptance.

**Principal accepted working ledger 309 unchanged**, H1 and DE4 remain qualified. Original pinned source, main and draft PR #25 unchanged.
