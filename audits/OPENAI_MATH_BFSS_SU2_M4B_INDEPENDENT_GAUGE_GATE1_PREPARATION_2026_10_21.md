# FCP BFSS SU(2) — M4B Gate #1 independently specified original Spin gauge action

**Preparation date:** 2026-10-21 PDT / 2026-10-22 UTC.
**Disposition at publication:** `M4B_GATE1_RUNNING_OR_PENDING__STRICT_LEAN_ACCEPTANCE_UNDETERMINED__273_ROOTS`.

## Scientific objective

Follow accepted M3J and M4A with one bounded source-exact theorem,
`FCP.IndependentOriginalGaugeBridge.exists_independent_original_gauge_unitary`.

For arbitrary independent Hermitian 48-Majorana delta-one CAR operators `theta` on an eligible irreducible nontrivial finite-dimensional complex Hilbert module `E`, define `independentOriginalGaugeHom` as `independentOriginalSpinHom theta hCAR hHermitian` *composed with the actual accepted original sixteen-block SU(2) Spin lift* `originalNativeSixteenSpinHom`. **Neither `J` nor original Fock gauge operators enter that definition.**

The target proves existence of the generator-preserving M3J unitary `J` satisfying exact unitary conjugacy to the actual original `fermionGaugeLinearEquiv`, with no residual scalar ambiguity. A separately asserted real Clifford generator covariance before selecting `J` is included in the source and checked in the same gate as supporting evidence.

## Frozen provenance

- Audit-only accepted [M4A Gate #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39723291619); accepted M4A source Git blob `193c41c4437c413a87db7442ba725230afdf39ec`.
- Accepted original Fock native gauge equality [F18C strict Gate #4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39649964814); F18C Git blob `159dcb0a2d1ef45e3894f33eae851166faba0fb3`.
- Original SU(2) ordered Spin lift L8E Git blob `c68e630797f64861d46a54b04bb02b0e9ef33442`; original real Clifford conjugation L9E1 blob `d62909cef3a7d44e970d243258465bb4a8f88da7`.
- New source `experiments/openai-math-su2-physical-domain/FCPIndependentOriginalGaugeBridge.lean`; Git blob `f0258c3b68d3a64dab300ce3c32b1d3a5ab23e35`; SHA256 `41ca4064191d702a4375a14fb644bae47441bda7430f76d68b26cfd48d32deb2`, byte-exact from Astra handoff. **Not locally typechecked against original source closure.**
- Immutable mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Strict isolated Gate #1 design

Single branch/workflow-path push trigger, no PR or global-source trigger. Restore two separately qualified caches, verify exact cache-hit and required original `.olean` artifacts before compiler execution:

1. `bfss-s1v52l9e5f18c-original-source-gauge-identification-v4-adc7f124-lean4341-d13f23b-Linux-X64`.
2. `bfss-fcp-m4a-independent-real-clifford-bridge-v2-adc7f124-lean4341-d13f23b-Linux-X64`.

Compile `FCPIndependentOriginalGaugeBridge.lean` from the genuine original source, `lake env lean -DwarningAsError=true`, print/check all four declared axiom reports, accept only `propext`, `Classical.choice`, `Quot.sound`, reject `sorryAx`, missing reports, Lean errors and unexpected warnings. Preserve raw logs and save an M4B-qualified cache only if this entire strict proof validation succeeds. A generic local source result, successful cache restoration or compilation absent axiom checks cannot justify a ledger increment.

**One newly counted theorem root:** `exists_independent_original_gauge_unitary`. The definition, covariance and fixed-`J` lemma are supporting declarations; they must compile and be axiom-clean but are not additional counted theorem roots.

## Known limitations / falsifiability

This gate is the first **original BFSS `.olean` elaboration** of Astra's M4B candidate; failures might expose CLM/module-end coercion, Spin/Clifford embedding, exact label/coefficient convention or a genuine mathematical mismatch. Report the original compiler goal and repair only what evidence warrants. M4A and F18C accepted evidence remain immutable. Even success does **not** prove equivalence to every external classical Spin double-cover model, nor manuscript bosonic pullback, invariant test-function cores, all 16 supercharges, closed Hamiltonian domains, Spin(9), or any spectral statement.

**Governance:** research branch only; no upstream changes, PR #25 changes, main changes or unrelated CI. Accepted ledger **273** until complete gate acceptance.
