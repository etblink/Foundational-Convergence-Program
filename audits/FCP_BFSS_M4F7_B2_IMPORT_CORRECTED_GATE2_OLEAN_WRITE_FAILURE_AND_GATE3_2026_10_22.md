# FCP BFSS — M4F7 B2 import-corrected Gate #2: clean kernel axiom reports but missing output artifact (strict red)

**Research date:** October 22, 2026 PDT / October 23 UTC. **Disposition:** `B2_IMPORTS_GATE2_MATHEMATICS_ELABORATED_CLEAN__OLEAN_OUTPUT_WRITE_FAILED__NOT_QUALIFIED__301_PRINCIPAL_ROOTS_UNCHANGED`. **Gate #3 initiated with an output-directory guard only.**

## Primary evidence: original completed run

Independently inspected the completed/failure [GitHub Actions #39909179095](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39909179095), job `120269086138`, workflow source commit `4ec735a7dad957b2c94b53b4d49d1904bf04bb8e`. Not an inferred theorem acceptance.

Source pin `experiments/openai-math-su2-physical-domain/FCPM4F7GenericOpaqueClosedRelationBridgeImports.lean` = Git blob `9fd9cbcd864f603566233867350f743d6763fdba`. The file differs from failed B2 Gate #1 only by importing the actual pinned `Mathlib.Analysis.Complex.Basic` and `Mathlib.Analysis.Normed.Module.Basic`, retaining `Mathlib.Topology.Algebra.Module.LinearPMap`. Its **entire three theorem statements and proof bodies are byte-identical** to original source B2. Provenance preflight and original BFSS math pin `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` and Lean `4.34.1` / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` restoration succeeded. Compile and report used the correct candidate stem, verified in original runner log.

Fresh actual Lean compilation yielded three exact axiom reports and **no Lean theorem errors**:

```text
'FCP.M4F7GenericOpaqueClosedRelationBridge.topologicalClosure_vertical_of_set'
depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.M4F7GenericOpaqueClosedRelationBridge.topologicalClosure_toLinearPMap_graph_eq'
depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.M4F7GenericOpaqueClosedRelationBridge.topologicalClosure_toLinearPMap_isClosed'
depends on axioms: [propext, Classical.choice, Quot.sound]
```

Immediately afterward, the compiler emitted:

```text
failed to write '.lake/build/lib/lean/FCPM4F7GenericOpaqueClosedRelationBridgeImports.olean':
failed to create file
```

The step exited 1, fresh resource `DIAG_RESOURCE_TIME 6.47 CPU 64% MAX_RSS_KB 2450344`. Because the B2 workflow had deliberately dropped all BFSS `.olean` parent caches to avoid gratuitous restoration, it did not ensure the `.lake/build/lib/lean` output folder existed before executing `lake env lean -o ...`. The exact underlying OS errno is not present, so directory absence is the strongest testable explanation, not independently established as the sole possible cause. The strict axiom-validator and new cache-save step never ran. Therefore, **ZERO B2 supporting roots strictly qualified** in this gate, despite the successful theorem elaboration. The principal ledger **remains 301**.

The preceding Gate #2 run [#39909106201](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39909106201) used a workflow wrapper with an incorrect old source filename stem; it is also completed/failure and is **not** proof of qualification, independent of its terminal status.

## One bounded corrective action — Gate #3

Workflow `.github/workflows/bfss-m4f7-generic-opaque-closed-relation-b2-output-dir-strict-gate3.yml`, committed at `8bc16878003d0ce004e90fae84f0694333393afa`, [Actions #39910234421](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39910234421), in progress at launch.

Inherited exact math candidate pin `9fd9cbcd864f603566233867350f743d6763fdba` and unchanged original source/Mathlib/Lean pins. Both source preflight and compile/validator variables point to `FCPM4F7GenericOpaqueClosedRelationBridgeImports`. **Only causal execution correction** in fresh-compile shell block:

```bash
cd upstream-math/lean
mkdir -p .lake/build/lib/lean
test -d .lake/build/lib/lean
/usr/bin/time ... lake env lean -DwarningAsError=true -o ".lake/build/lib/lean/$stem.olean" "$stem.lean"
```

The save cache key was made unique to Gate #3, `bfss-fcp-m4f7-generic-opaque-closed-relation-b2-9fd9cbcd-gate3-output-dir-v1-adc7f124-lean4341-d13f23b-Linux-X64`, with the `.olean` path as its saved artifact. Original strict 3-root namespace exact-report check, axiom whitelist `propext, Classical.choice, Quot.sound`, no `sorryAx`/compiler warning/errors, and full logs/upload on all results remain unchanged. Workflow static checks covered YAML structure/indentation, self-path-only trigger, immutable source hashes, exact stem, unique cache and timeout.

**Gate #3 successful only if** the original runner has complete success, the candidate `.olean` is genuinely created, the strict validator passes all 3 named reports, and a fully qualified new B2 cache is saved. **Even then these are 3 generic supporting theorems, not principal BFSS operator roots, so ledger stays 301.** Gate #3 red requires inspection of exact first failure rather than any acceptance inference.

## Scientific boundary and lessons

Gate #2 provides positive evidence for the correctness of the **generic abstract** graph-to-closed-partial-operator argument under an opaque submodule and vertical-uniqueness hypothesis. It is **not** proof that the concrete BFSS independent physical-input-restricted closed graph has been instantiated as an independent `LinearPMap`. Direct A2 concrete closure-equality tactics remain stopped after two verified recursion reds. A future concrete specialization must protect opacity and preserve original CAR/Hermitian, gauge physical-core data, and J intertwining proof witnesses separately. No independently physical domain-density theorem, output invariance, Hamiltonian graph/square/form/domain identity, spectral equivalence or BFSS mass gap follows from the abstract results.

Canonical `main`, draft PR #25 and frozen original BFSS sources remain unchanged. Preserve all red gates as legitimate negative knowledge.
