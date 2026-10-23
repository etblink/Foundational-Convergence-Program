# BFSS SU(2) — Project Lead research/CI strategy after M4F7 E7 Gate #3

**Prepared:** 2026-10-23 PDT. **Canonical:** `main` frozen `cf06212a57db0ceffad74bd78280a8a240856a17`. **Research baseline:** `3cd275918228c79a38b5d883b75f39440ce381ab`, strictly accepted **307 principal source-specific theorem roots**. Active branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`. **Do not revise accepted count for auxiliary proofs or red runs.**

## Governing decision

Seek mathematical truth about the original source BFSS Hamiltonian, supercharges, and physical Hilbert spaces, not high green-run counts. Strict Lean reports are necessary evidence, not automatically theorem-scope sufficiency. Preserve exact original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; require actual qualified `.olean` dependencies, pinned source Git blobs and current-branch accepted imports, one source-specific principal theorem, full `#print axioms` reports (only `propext`, `Classical.choice`, `Quot.sound`), fresh bounded compilation, no `sorryAx`, no unauthorized axiom, and saved cache only on full success.

## Audited accepted boundary

- M4C3: physical Hilbert correspondence, source/independent gauge-constraint iff under exact J witness.
- M4D: independently defined physical invariant smooth core and source identification; witness J is not part of the independent definition.
- M4F1 S1/S2: historical D3B source, then independently defined smooth supercharges preserve native invariant smooth core, using a **typed intermediate**. S2 is strictly accepted [run #39887196835](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39887196835), with qualified cache `bfss-fcp-m4f1-typed-intermediate-s2-642ba305-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- M4F6 C4: literal restricted original/independent 17-slot closure transport.
- M4F7 E2–E3: **actual J-free independently constructed physical-input-cut closed** `LinearPMap`, exact equality of its graph with literal restricted invariant smooth-core graph closure.
- M4F7 E4: exact 17-slot transport of actual independent closed operator graph onto original **literal** source restricted graph closure. Not the source named `deformedModelGraph 1 0` yet.
- M4F7 E6 [run #39996198038](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39996198038): every input in actual E2 closed graph lies in the independently defined physical Hilbert subspace; the native physical space is closed. **307 principal roots**.

## Three E7 reds distilled into a proof rule

- E7 Gate #1 [#39998187714](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39998187714): `whnf` timeout at oversized concrete restricted graph theorem declaration.
- E7 Gate #2 [#39999291356](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39999291356): small BFSS smooth output helper compiled with exactly permitted axioms; direct concrete `LinearMap.range` elimination `⟨f,rfl⟩` and final closed graph timed out.
- E7 Gate #3 [#40000366126](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40000366126): generic abstract range-witness elimination was not enough; the final BFSS specialization `((independentChargeVector…).comp invariantCore.subtype) f β` to physical output timed out and final theorem declaration exhausted heartbeat budget. All roots from red gates **unaccepted**.

**Directive:** no Gate #4 copying the old E7 source with higher heartbeat/recursion. Avoid giant native product graph expression in both theorem statement and local proof normalization. Each difficult typing interface becomes a separate tiny named theorem with an accepted `.olean` and exact type; then an **abstract generic closed-range physical-output lemma**; only then compose with named E2/E3 and the accepted E6 physical closedness, without source-alias import.

## Stage A — E7A: subtype-composition output normalization (CURRENT implementation)

Source `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentChargeOutputTypedE7A.lean` states precisely
```text
((independentChargeVector color gamma theta).comp
  (independentInvariantCore theta hCAR hHermitian).subtype) f α
  ∈ independentPhysicalSpace theta hCAR hHermitian
```
for `f : independentInvariantCore theta hCAR hHermitian`, from already accepted M4F1 S2. It has no graph, product-range witness, closed operator, J-dependent definition, or new assumption. A strict isolated gate uses exactly the S2 save-path cache version, not E5 or historical D1. This is a typed **supporting certificate**: strict-accept it as importable only with exact axiom evidence; do not increase principal-root count for this technical bridge alone.

**Decision rule:** if E7A fails, classify the first exact source/type reduction, stop specialization, and change proof architecture before rerunning. Never infer physical output invariance merely because an E7A helper compiles.

## Stage B — generic closed-range output theorem, then E7B source-specific closure

Prove an **independent, unbundled abstract lemma**: for arbitrary complex-linear `F:V→ₗ[ℂ] X`, `Q:V→ₗ[ℂ](SpinIndex→Y)` and a closed submodule `P≤Y`, if `∀v α, Q v α ∈P`, then all second-coordinate outputs of points in `closure(range(F.prod Q))` lie in `P`. Prove it using `continuous_apply α`, `continuous_snd`, `IsClosed.preimage`, `closure_minimal` without any BFSS object.

Once **Stage A and the abstract lemma have separately greened** (or a single gate compiles them sequentially), state E7B using actual E2 graph and E3 exact literal closure and the independent physical subspace closed from E6. Use the named E7A result verbatim for `Q` output. The source charge and E2 operator remain J-free definitions; J remains only the exact transport proof witness. Strict acceptance creates **+1 source-specific principal root** only for the final E2 closed-output theorem, not for the generic and typed support modules.

## Stage C — independent physical Hilbert domain density and rebasing

Original source `SU2BFSSPhysicalDomainD2B10CFullHaarCoreCompatibilityAndDensityProbe.lean` historically proves `sourceCoreNormClosure_eq_physical_unconditional`. Audit the original [physical source density workflow](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/.github/workflows/bfss-su2-original-physical-charge-unconditional-density.yml) and its qualified import closure; do not infer a cache from historical gate success. Transport source Haar physical smooth-core density through the accepted M4C3 fiber unitary and M4D1 invariant smooth-core correspondence to prove density of **the actual independent native physical smooth-core embedding** inside its physical Hilbert subspace. Next show the E2 *domain* contains that core, hence is dense in the physical space. Then construct a genuinely rebased closed partial charge operator between `independentPhysicalSpace` and `SpinIndex → independentPhysicalSpace`, using independent E2 graph and separately qualified all-output invariance. No new weaker surrogate source-space operator.

## Stage D — exact original source operator/Hamiltonian identification

E5 historical source D1 theorem `sourceGaugeRestrictedClosedGraph_equal` remains accepted historically but **not currently importable** through E4 cache. E5 Gate #1 wrong GitHub cache path version (key alone not enough); Gate #2 restored E4 and showed upstream `SU2BFSSG4K9DSourcePotentialMultiplierProbe.olean` absent. Keep E5 unaccepted and do not retry until a qualified D1 ancestor chain exists, or find a new independently typechecked source theorem using qualified existing imports. Compare original source and genuine rebased independent closed operators/domains; then physical quadratic forms/normalized Hamiltonian; only then spectral comparison. Do not promote Spin(9), positive eigenvalues, mass gap or physical self-adjoint Hamiltonian from a graph-identification theorem.

## Operational lessons and stop policy

1. A GitHub cache identity includes **exact full path/version contract**, not just a matching key. Copy accepted **save** path lists unchanged into new restores. Test existence of every required imported `.olean`.
2. Avoid scanners that mistake Lean documentation comments for executable code; scope to code with a nested-comment-aware check or explicitly isolate executable body. Shallow checkout has no historical commit graph; use immutable blob/source checks rather than `git show` for missing commits.
3. Preserve the original workflow/job IDs, blob SHA, compiler diagnostic *first causal error*, axiom reports, resource wall/RSS and artifact SHA on every red and green. Multiple cascading unknown constants after a failed first theorem are not separate mathematical refutations.
4. Compile small typed lemmas at normal bounded resources. A second identical whnf failure should trigger proof-interface redesign, not repeated blind heartbeat increases. Gate #3 precommitted stop remains respected.
5. Do not run CI merely by changing broad shared workflow paths: new leaf workflow must trigger only on its exact self-path. Preserve canonical `main`, draft PR #25, and original `etblink/math` unchanged. No principal count inflation for definitions, technical wrappers, cached parents or unaccepted red-gate helpers.
6. Explicitly state absence of density, closed output sector, physical Hamiltonian and spectral result until proved. **Truth first, negative knowledge preserved.**
