# S1V16 infrastructure negative knowledge: pinned Lean release TLS failures

**Date:** October 19, 2026 PDT.

The accepted standalone Spin48 S1V0–S1V15 source proofs are untouched. The unqualified S1V16 arbitrary-vector proof advanced from three compiler issues in [Gate #39258929774](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39258929774) to a **single** final scalar-rearrangement proof step in [rerun attempt #2 of Gate #39259919657](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39259919657) (job `118085480275`). In that second proof attempt, S1V16's first THREE roots were kernel-compiled with only `propext`, `Classical.choice`, `Quot.sound`; its fourth remained `sorryAx` when `simp only [mul_smul,smul_mul_assoc]` made no progress. Source was repaired to use the pinned `mul_smul_comm` and `smul_mul_assoc` (exact source Git blob `51f2299511ecb9d94e4a4b2a3b38299107061711`). Do not count the fourth theorem as accepted without an independent clean compilation.

Separately, the runner repeatedly failed *before any Lean theorem compilation* to fetch the exact Lean 4.34.1 toolchain from `releases.lean-lang.org`, reporting:

```
error: could not download file ... lean-4.34.1-linux.tar.zst
info: caused by: [35] SSL connect error (TLS connect error: error:00000000:lib(0)::reason(0))
```

This occurred at [Gate #39259919657 attempt 1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39259919657), [Gate #39261087508](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39261087508), and an **unexpected duplicate** push-triggered [Gate #39261227580](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39261227580) with the same source/workflow checkout `2e77a95c31728b8738ab2b4b1e1f931b9f66e350`. That duplicate was not deliberately initiated by the Project Lead, and is not a novel proof attempt.

The isolated path-triggered workflow has therefore been hardened at commit `a72736a5548c2eab0d661700400cf0a758c7a82b` / workflow blob `7dcc84949d8608730afadbd24c13ebdf0854df3a` to perform at most three bounded installs of **only the immutable pinned Lean 4.34.1** toolchain with the same Mathlib, source-hash, compiler-version and `.olean` checks. The source mathematical statement and theorem hash have not been altered by that workflow hardening. [Hardened Gate #39261447018](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39261447018) must be judged strictly from its own completed compiled-root evidence.

**Boundary:** TLS failures do not falsify mathematical statements. A CI success without the four printed permitted axiom roots does not prove S1V16. No PR25 or main modifications. Do not respond by launching broad PR or changing toolchain/Mathlib pins.
