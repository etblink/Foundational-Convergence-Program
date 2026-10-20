# S1V52B1 Gate #1 — wrong preflight path (workflow-only RED)

**Disposition:** `S1V52B1_G1_RED__MISSING_SOURCE_PATH_FROM_AUTORENAME__NO_LEAN_CHECKS_RUN__G2_EXACT_FILE_REPAIR`

**Primary evidence:** [S1V52B1 Source Pauli Quaternion Matrix strict Gate #1, run 39384004913](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39384004913), job `118499406101`; workflow commit `199a4abe5cafbaef37074e327b7c9de574651be8`.

The strict preflight attempted the nonexistent path:
`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52B1SourceEvenCliffordQuaternionTableProbe.lean`
and GitHub runner logged:
`fatal: could not open '.../SU2BFSSPhysicalDomainS1V52B1SourceEvenCliffordQuaternionTableProbe.lean' for reading: No such file or directory`.

This was a *workflow-generation typo*: the correct accepted dependency is
`SU2BFSSPhysicalDomainS1V52ASourceEvenCliffordQuaternionTableProbe.lean`,
qualified [S1V52A Gate #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39382823800) with blob `ad67d8eac5a8147f7ae099c3d9b913db2038f53a`. During workflow cloning, a global textual replacement of `S1V52A` into `S1V52B1` silently rewrote this **source filename**, which must remain unchanged.

**Status:** B1 Gate #1 did not restore Lean/Mathlib or compile **any** new B1 theorem roots. It is a preflight RED, not a mathematical verdict.

**Minimal repair:** restore ONLY the correct A-source filename in the preflight, keep its immutable blob check, all four B1 target SHA checks, original toolchain pins, branch-scoped accepted A cache restore and 4-root `#print axioms` validator. No changes to the B1 theorem file.

**Negative knowledge:** when copying a qualified workflow for a follow-up gate, never apply global string replacement to an existing imported theorem module's filename or qualification key. Compare the generated workflow preflight against its actual Lean `import` lines and check every `git hash-object` target exists before the costly CI kickoff. This is independent of S1V52A Gate1 inaccessible sibling-branch cache and Gate2 missing local `.olean` directory.

No main/upstream/PR changes and no global Spin lift claim.
