# BFSS S3L R4D — Gate #1 source-preflight false positive (RED)

**Date:** October 24, 2026 Pacific / October 25 UTC. **No Lean proof compiled, 0/1 roots accepted.**

- [Original immutable CI run #40148114808](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40148114808), job `121033724388`, workflow commit `ef55d74351bbbdc99d06224a096eb3e1c7c74648`, completed/failure.
- Exact mathematical candidate unchanged: `SU2BFSSPhysicalDomainS3L5K2R4DNamedSourceAssemblyProbe.lean`, immutable Git source blob `1a56b2055ff4ed3c1a227bce3910e974876c5774`.
- Original pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Checkout steps succeeded.
- Gate #1 halted inside NEW Python source-text `Verify source-exact R4D original named assembly and frozen math`; original Python traceback `File "<stdin>", line 24, AssertionError`; **the Lean compilation steps were not executed**.
- Root cause independently reproduced against exact original R4D source: source text contains a regular COMMENT line `axiom-audited; no Hamiltonian spectral claim.`. The new regex `(?m)^\s*(?:sorry|admit|axiom)\b|\bsorryAx\b` matches the prefix `axiom` inside ordinary hyphenated comment `axiom-audited` because `\b` is true before hyphen. **This is not a Lean `axiom` declaration.**
- The exact pinned prerequisite blobs remained stable: R4A `ef803c1b5c62a819e568c5a645c5e622ec1a0d6f`, R4C1 `fefc730033cd7445565d40a2a104f1a08f80d07b`, R4C2 `3cbb14466539d15497adad31305298d87beb624a`, R4D `1a56b2055ff4ed3c1a227bce3910e974876c5774`.
- Source contained exactly one anticipated R4D `#print axioms` and all genuine original expression markers; it contains no actual `sorry`, `admit`, or `axiom` declaration.
- **Fix:** require whitespace or end-of-line AFTER any forbidden declaration keyword and only horizontal whitespace BEFORE it, rather than a word boundary: `(?m)^[ \t]*(?:sorry|admit|axiom)(?:\s|$)|\bsorryAx\b`. This rejects genuinely written `axiom Foo`, `sorry`, `admit` at the code margin while not falsely rejecting ordinary comment `axiom-audited`. This regex is a defensive source scan, **not** a substitute for the Lean `#print axioms` dependency whitelist.
- New source-exact Gate #2 must use the **identical** original mathematical blob, upstream math hash, exact R4A/C1/C2 qualification and bounded 180s R4D compiler. Preserve this red as independent knowledge; do not count or promote R4D before Gate #2 passes all checks including its new cache save.

**Mathematical status:** The historic R4B recursion and timeout reds remain unaltered. R4D full original fixed-color source response assembly remains unproved at this checkpoint. No covariance of all sixteen original supercharges, global Spin(9) action, closed form symmetry, or positive eigenvalues follows from this workflow outcome. Canonical main and draft PR #25 untouched.
