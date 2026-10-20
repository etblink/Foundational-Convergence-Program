# S1V52 L7C3 Gate #1 — RED, two localized Lean proof failures

**Disposition:** `L7C3_GATE1_RED__S1V52_ACCEPTED_106__L7C2_CACHE_RESTORED__EXACT_SOURCE_PINS_PASS__TWO_LOCAL_PROOF_ERRORS__SORRYAX__NO_NEW_ROOTS`.

## Primary GitHub Actions evidence

- [Gate #1 run #39494052451](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39494052451), job `118874351469`, completed **failure** at commit `b9b8245ed4844c7adfb77fcf3b260d043ca6866e`.
- Exact candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L7C3UnitQuaternionToOriginalNativeSU2Probe.lean`, Git blob `2c22f7cc76466de44e524bff197b2b5bc40bec85`. Genuine original `OAI.BFSSQuantum.GaugeGroup 2` and exact B1 positive-i quaternion matrix.
- Pinned original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, BFSS Core `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; source hash/toolchain preflight passed. Strict qualified L7C2 compilation cache `bfss-s1v52l7c2-native-zero-safe-euler-polar-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored.
- Compiler line **73:46** after the determinant `simp` + `ring` proof: one unsolved equality
  `↑p.a ^ 2 - ↑p.b ^ 2 * Complex.I ^ 2 - Complex.I ^ 2 * ↑p.d ^ 2 + ↑p.c ^ 2 = ↑p.a ^ 2 + ↑p.b ^ 2 + ↑p.c ^ 2 + ↑p.d ^ 2`.
  The missing normalization is the explicit `Complex.I_sq` rewrite `I²=-1`. `ring` is not an analytic complex simplifier and treats `I²` as an independent term unless rewritten.
- Compiler line **123:10** `unknownIdentifier` — `SourceQuaternionCoords.mk.injEq.mpr` was assumed to be a generated lemma, but is not in this source environment. The following `simp` line reported `No goals to be solved`. Replace the brittle constructor-lemma invocation by destructuring and native component simplification.
- Axiom reports for `originalQuaternionComplexMatrix_adjugate` and `originalSourceQuaternionColorMatrix_complex` contained only `propext, Classical.choice, Quot.sound`; `originalSourceQuaternionColorMatrix_det` and three subsequent dependent roots contained `sorryAx`. None of the six new L7C3 roots was accepted by strict whole-gate policy. Fresh accepted L7C3 cache **not saved**.
- Warnings about unused `Complex.normSq_*` simplifier arguments are secondary. Runner setup passed; no source or physical counterexample was established.

## Repair discipline

Keep the EXACT statements, original positive-i Pauli basis, upstream `GaugeGroup 2` and source determinant/unitarity logic unchanged. Add the explicit `Complex.I_sq` to determinant normalization, remove unsupported constructor `injEq` and use direct constructor cases plus simplification. Pin the new exact Git blob SHA; gate with the original immutable source/Mathlib hashes, restored accepted L7C2 cache, seven? **six** exact L7C3 roots, individually parsed `#print axioms`, no `sorryAx`, and a distinct v2 immutable cache key. Preserve this failed gate rather than reusing its run number or calling two warning-free roots accepted.

The eventual full-native Euler witness, native `GaugeGroup 2 →* spinGroup source48Quadratic` without `hEuler`, 16-block combined action, original Majorana adjoint action and BFSS spectral results are **NOT** established by this red gate.
