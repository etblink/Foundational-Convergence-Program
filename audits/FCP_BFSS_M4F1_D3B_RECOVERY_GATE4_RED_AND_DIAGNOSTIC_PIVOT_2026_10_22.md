# FCP BFSS SU(2) M4F1 qualified D3B recovery — Gate #4 causal RED and diagnostic pivot

**Date:** October 22, 2026 PDT (completed October 23 UTC). **Disposition:** verified red; **zero** newly accepted principal roots; cumulative ledger stays **294**.

## Exact execution evidence

- [Actions run #39881050041](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39881050041), job `120178237633`, completed/failure; pinned triggering workflow commit `28efe8db9b20f9495410f2019e62a4b6a40f946a`.
- Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Preflight source hashes and exact one-line G4K7/G4K8A/G4K8C adapters passed. Accepted M4F5 parent and original upstream prerequisites caches restored.
- Qualified G4K7 checkpoint from Gate #3 **restored**. G4K8A, G4K8B and adapted G4K8C strictly compiled with `-DwarningAsError=true`; exact `#print axioms` validation passed, respectively **6, 5, 7 declarations**. Fresh qualified G4K8C checkpoint **actually saved**:
  `bfss-fcp-m4f1-qualified-g4k8c-994e89ee-cf0736c8-9f802fdf-gate4-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
  This is restored prerequisite availability, not a newly counted principal root.
- First later source module `SU2BFSSG4K8DPositiveCouplingAlternativeProbe.lean`, original blob `6b2402e1c1364ae7cc48b908fccfee01ee741972`, failed at line 54:

```
error: This simp argument is unused:
  IsSMulApply.smul_apply
Hint: Omit it from the simp argument list.
  [apply] simp
```

- Five G4K8D axiom reports were printed containing only `propext`, `Classical.choice`, `Quot.sound`, but Lean exited **1** and no strict validation passed. G4K8E1–G4K9D, G4K10A, D3A, D3B and unchanged M4F1 were **not compiled**.
- Uploaded artifact `bfss-m4f1-qualified-d3b-recovery-gate4-39881050041`, ID `12470817295`, SHA-256 `f1eca21aed686cb701add8c1dd85316d7793aad050021cf91565b6fc7a6616fd`.

## Classification and consequential strategy change

**Category: historically accepted proof-script simplifier/linter compatibility**, not a source-mathematics counterexample. The successive G4K7→G4K8A→G4K8C→G4K8D strict reds mainly rediscover language/linter incompatibilities one module at a time.

**Do not launch another expensive strict gate merely to remove a single unused simplifier argument.** Reuse the verified **G4K8C cache** in a new, bounded **non-acceptance exploratory workflow** that compiles **all remaining historical source prerequisites followed by D3B and M4F1** with ordinary warnings recorded (`-DwarningAsError=false`) rather than promoted to errors. Retain exact original source checks, permitted-axiom inventory, explicit rejection of proof holes, complete per-module logs, and a stop on genuine compiler/type/proof errors. Do not save a qualified proof cache or count results from that exploratory run.

This should reveal the remaining style/deprecation warnings in one pass, allowing a batch of fully source-differenced compatibility adapters and then a separate strict acceptance gate. The intended theorem remains the unchanged `independentCharge_mem_invariantCore` with the original D3B gauge-invariant source charge theorem, not a surrogate. No physical Hilbert-domain closability, source-manuscript Hamiltonian equality, Spin(9) spectrum, or mass gap follows automatically. `main`, draft PR #25, accepted mathematical source files, and the accepted root ledger remain unchanged.


## Implemented exploratory control (not a proof gate)

The Project Lead created the isolated self-path workflow `.github/workflows/bfss-m4f1-d3b-historical-suffix-warning-inventory-diag1.yml` in commit `c702367a82404d92d1fb6e2e29d567f8cb242089`. The one intentionally triggered workflow is [warning-inventory run #39882273445](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39882273445). At launch inspection the job was **in progress**, without a compiler verdict.

The new workflow preserves immutable upstream/mathlib pins, checks the exact Git blob identity of every untouched candidate (G4K8D–G4K9D, G4K10A, D3A, D3B and independent M4F1), restores the accepted M4F5 cache and the **matching-path saved** Gate #4 G4K8C cache, verifies required `.olean` imports, and compiles one module at a time with `-DwarningAsError=false`, capturing complete source/compiler output and axiom inventories. It **does not save any proof cache**, does not bypass genuine Lean errors or source proof-hole checks, and **must not count any new theorem roots even if green**. This run is a deliberate change of diagnostic method, not a relaxed version of the acceptance gate.

The future decision depends on the *actual* first diagnostic and full warning inventory, not on a speculative pre-edit of all later source files.


## Diagnostic-wrapper defect and bounded correction (separate from Gate #4)

The initial non-acceptance warning-inventory [run #39882273445](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39882273445) **completed/failure before Lean**. Job `120182169492` reached the source-provenance preflight and failed with `TypeError: bad operand type for unary -: 'list'`. The generated Python `rows=[...]` used a YAML-style `- [stem,dir,sha]` instead of Python tuple/list entries. The frozen source hashes were **not disproved**; this was a tool-generation syntax mistake. No compiler or graph result is inferred from this run.

The correction [commit `b6c4ebc3e98b752ef25887975acefb0214ad9970`](https://github.com/etblink/Foundational-Convergence-Program/commit/b6c4ebc3e98b752ef25887975acefb0214ad9970) replaced exactly twelve incorrect generated list rows with Python `(stem,dir,sha),` tuple rows. It preserves pinned source hashes, the accepted M4F5/G4K8C restore contracts, no cache save, ordinary-warning diagnostic policy, and exact self-file workflow trigger. [Corrected diagnostic run #39882478306](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39882478306) was **in progress** when this addendum was authored; **no compilation, qualified result, or new theorem is yet asserted**.

**Process feedback:** even non-acceptance diagnostics need pre-CI syntax and generated-script checks. A wrapper red must be classified and preserved, not misrepresented as progress on D3B.
