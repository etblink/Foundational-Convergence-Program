# FCP BFSS M4F6 — A1 Gate #2 second inherited pre-Lean validator false positive, exact Gate #3 repair

**Local date:** October 22, 2026 PDT / October 23 UTC. **Status:** A1 Gate #2 RED before Lean; Gate #3 launched to test same frozen mathematical candidate. **Accepted principal theorem ledger remains 297; C2 remains 0.** Neither A1 original run established or falsified either alias equality.

## Evidence independently verified from actual GitHub Actions job log

- [A1 Gate #2 run #39895870027](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39895870027), job `120226070473`, trigger commit `ab82b361d6ec711bd9a5cab132ed085531acc7d1`, `completed/failure`.
- All immutable math/source/blob checks passed: `M4F6_ALIAS_A1_COMMENT_AWARE_EXACT_SOURCE_PASS`; Lean 4.34.1 and pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` restored; qualified M4F5 and exact C1 source-generic cache restored, expected `.olean` import closure verified. **Neither A1 theorem reached the Lean compiler.**
- Second preflight step named `Fail-closed literal definition boundary and document-safe proof preflight` then failed at Python stdin line 17:

```
Traceback (most recent call last):
  File "<stdin>", line 17, in <module>
AssertionError: ('HOLE_OR_AXIOM_DECL',)
```

- This was the only failing assertion. Original exact Python:

```python
assert not re.search(r'^\s*(sorry|admit|axiom)\b',src,re.M),('HOLE_OR_AXIOM_DECL',)
```

- Because `\s*` accepts a **newline** as whitespace and the pattern lacks a comment/code distinction, it matched the ordinary documentation line `axiom or additional premise, and does not assert the C2 full input cut.` in the **`/-! ... -/` module-level comment** of frozen source `FCPM4F6IndependentLiteralAliasBoundary.lean`, Git blob `88a0cfdf5c5a4e407906462a56f62b9df9281ea0`. This is no Lean `axiom` declaration and is no mathematical negative result.
- The first preflight had already examined the **same hash-pinned source** after stripping nested `/- ... -/` comments and `--` line comments and had approved no executable hole/postulate command. The second raw-text regex was not only unsound against documentation but **redundant**.

## Complete offline preflight assessment before correcting

Independent source inspection compared the exact source file and the original C2 theorem file directly and verified **all other second-preflight predicates passed**:

- Namespace exact `FCP.M4F6IndependentLiteralAliasBoundary`, two theorem names `independentInvariantCore_eq_actualComap` and `independentFullCoreGraph_eq_actualRange`, and exactly two matching `#print axioms` lines.
- The actual CAR/hHermitian assumption text is byte-for-byte identical to original C2.
- The two theorem goals mention literal `independentInvariantCore` and `independentFullCoreGraph`, plus original `independentCoreToL2 (E := E)`; the source has exactly two `rfl` proof lines.
- Running an independently implemented comment-aware code-only check on the exact candidate source showed **no forbidden executable Lean `sorry`, `admit`, `axiom` or `sorryAx`**. The historical raw-text pattern matched the documentation as expected.

**Process failure:** A1 Gate #1 had a first-stage raw text false-positive; Gate #2 fixed the first stage but failed on the separately copied *second* preflight. Both tests were **pre-Lean** and cost expensive toolchain rebuilds for no mathematical evidence. Prior M4F6 historical diagnostic audits, M4C1 declaration parser, M4F2 stale validator stem, S1V19 private theorem-root regex had all already warned to test the entire workflow, not only the edited segment.

## Exactly bounded validator-only repair and formal stopping conditions

[Commit `dbb57b2a555dff815e64fd43955c60f71c991038`](https://github.com/etblink/Foundational-Convergence-Program/commit/dbb57b2a555dff815e64fd43955c60f71c991038) removes **only the second redundant, comment-sensitive `HOLE_OR_AXIOM_DECL` regex assertion** from `.github/workflows/bfss-m4f6-literal-alias-a1-isolation-gate1.yml`; it substitutes a note documenting that the earlier hash-pinned provenance step already performs code-only source checks. The change was verified by exact one-hunk equality and independent offline evaluation of every other preflight assertion against both original frozen Lean sources. This does **not** remove the first-stage hole guard, source SHA pins, exact original CAR check, compiler strictness, `#print axioms` whitelist, `sorryAx` rejection, qualified dependency cache, artifact logs, or fail-closed qualified cache save.

This generated **one path-only [A1 Gate #3 run #39896595231](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39896595231)**, initially queued.

- **If Gate #3 reaches Lean and both alias identities pass strict axiom and cache save checks:** accept the small alias certificates as supporting proof interfaces. **Do not increase the 297 *principal-root* ledger** and do not label J-free C2 accepted; C2 still needs exact original theorem, genuinely new controlled composition.
- **If Lean fails:** collect full original first-error, classify whether `rfl` submodule definition, private `μ`, modules/coercions or instance elaboration is the boundary. No equivalent tactic retry, no indiscriminate maxRecDepth.
- **If a pre-Lean checker fails again:** stop workflow launches and conduct a complete executed local/standalone validation of all workflow scripts before spending another GitHub runner. The problem would be proof-process quality, not operator mathematics.

The accepted parent C1 root, M4F4/M4F5 unrestricted graph transport, M4F1 invariant-core preservation, original BFSS source hash and pinned Mathlib, canonical `main` and draft PR #25 remain unchanged. No claim of closed physical operator domains, Hamiltonian equality or spectral results follows from A1.
