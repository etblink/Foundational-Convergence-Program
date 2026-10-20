# S1V52A Gate #2: pinned geometry Lean compilation reached, .olean output directory missing

**Disposition:** `S1V52A_G2_RED__S1V0_PROOF_PROCESSED__OUTPUT_DIR_NOT_CREATED__S1V52A_NOT_COMPILED__G3_MKDIR_ONLY`

## Primary CI evidence

- [Gate #2 run 39382022479](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39382022479), job 118493055223; workflow commit `4475dc0f877e377795e82446ee28e2f6a2b17e72`.
- Source SHA/toolchain pinned preflight **PASS**.
- Exact pinned Lean 4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` restore **PASS**.
- First original-geometry file `SU2BFSSPhysicalDomainS1V0StandaloneOrthogonalGeometryProbe.lean` reached Lean; emitted permitted-axiom declarations, e.g. sourcePlaneComplement_ortho_first and _second depend only on `propext, Classical.choice, Quot.sound`.
- Lean then emitted **`failed to write '.lake/build/lib/lean/SU2BFSSPhysicalDomainS1V0StandaloneOrthogonalGeometryProbe.olean': failed to create file`**. This is the observable decisive error.
- Because the runner did not contain the target `.lake/build/lib/lean` directory, the explicit `lake env lean -o .lake/build/lib/lean/...` output had no existing parent directory. Mathlib's dependency cache restore does not promise to create the FCP local package output tree.
- The command exited nonzero; S1V5, S1V6 and all eleven S1V52A target roots were **not compiled**. Therefore no conclusion on S1V52A candidate provability can be drawn.
- The Gate #1 sibling-branch cache-scope issue was successfully bypassed. This is an **independent** setup precondition, not evidence against the Gate #1 cache diagnosis.

## Minimal repair & gate constraints

Create the output parent via `mkdir -p .lake/build/lib/lean` immediately before compiling the first local source dependency, and, defensively, immediately before target compilation. Keep the four exact source blob SHA preflights, pinned Mathlib and Lean versions, unchanged eleven target source declarations, `#print axioms` all-roots qualification, allowed axioms, fail-closed proof checking, and artifact logs unchanged.

**No proof/source-theorem weakening and no alternate representation introduced.**

Gate #3 requires: all three original-size geometry roots compile and emit `.olean`, all eleven exact target S1V52A declarations pass kernel and allowed-axiom validation. A future RED compiler error must be handled at its actual first failing theorem; no automatic assumption of green after this directory fix.

## Negative knowledge

A Mathlib `lake exe cache get` can restore its own compiled dependencies **without** creating the local OAI/experiments project's `.lake/build/lib/lean` directory. Any manual `lake env lean -o ...` must create its output directory explicitly or use a supported Lake build target.

Canonical `main`, upstream math pins, and draft PR #25 untouched. No full global SU(2) → Spin(48) lift claimed.
