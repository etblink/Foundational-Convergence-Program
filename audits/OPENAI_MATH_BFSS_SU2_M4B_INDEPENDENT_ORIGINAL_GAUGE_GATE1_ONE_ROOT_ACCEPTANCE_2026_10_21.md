# FCP BFSS SU(2) — M4B independent original gauge unitary Gate #1 acceptance

**Local date:** October 21, 2026 PDT (GitHub completion October 22 UTC).

**Strict disposition:** `M4B_GATE1_PASS__INDEPENDENT_ORIGINAL_SU2_GAUGE_UNITARY__ONE_AXIOM_CLEAN_ROOT__CACHE_SAVED`.

**Cumulative strictly accepted theorem roots:** **274**, +1 from M4B (273 previously). Supporting definition and lemmas are **not** three further newly counted roots.

## Independently checked original evidence

- [Strict GitHub Actions run #39724894382](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39724894382), job `119646440694`, attempt #1, head `ebaecdaebdb9d51c33bbc17d13a67370d5c60ee9`, completed **SUCCESS**.
- Branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`; exact source `experiments/openai-math-su2-physical-domain/FCPIndependentOriginalGaugeBridge.lean`, Git blob `f0258c3b68d3a64dab300ce3c32b1d3a5ab23e35`. Workflow `.github/workflows/bfss-m4b-independent-original-gauge-bridge-strict-gate1.yml`, Git blob `2a5bfe872dc34698bbc06878606e0bcaf6f2d953`. Original target theorem statement inspected unchanged at lines 82–95.
- Source hashes/toolchain preflight passed. Immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Actual **cache hits** and required original `.olean` presence:
  - F18C source gauge equality: `bfss-s1v52l9e5f18c-original-source-gauge-identification-v4-adc7f124-lean4341-d13f23b-Linux-X64`.
  - M4A source exact Clifford intertwining: `bfss-fcp-m4a-independent-real-clifford-bridge-v2-adc7f124-lean4341-d13f23b-Linux-X64`.
- Actual source specialisation was compiled under `lake env lean -DwarningAsError=true` with a produced `.olean`. The strict validator checked namespace, all four expected declarations, their individual `#print axioms` reports, forbidden axiom exclusion, `sorryAx` exclusion, and no compiler errors/unexpected warnings.
- All **four** reports depended exactly on `propext`, `Classical.choice`, and `Quot.sound`:
  - `FCP.IndependentOriginalGaugeBridge.independentOriginalGaugeHom`
  - `FCP.IndependentOriginalGaugeBridge.independent_original_gauge_real_covariance`
  - `FCP.IndependentOriginalGaugeBridge.independent_original_gauge_intertwining`
  - `FCP.IndependentOriginalGaugeBridge.exists_independent_original_gauge_unitary`
- Required marker: `M4B_INDEPENDENT_ORIGINAL_SU2_GAUGE_UNITARY_ONE_ROOT_STRICT_PASS`.
- **New qualified cache saved:** `bfss-fcp-m4b-independent-original-gauge-unitary-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Diagnostic artifact `bfss-m4b-gate1-39724894382`, artifact ID `12403155425`, uploaded.

Original compiler evidence:

```text
'FCP.IndependentOriginalGaugeBridge.independentOriginalGaugeHom' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'FCP.IndependentOriginalGaugeBridge.independent_original_gauge_real_covariance' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'FCP.IndependentOriginalGaugeBridge.independent_original_gauge_intertwining' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'FCP.IndependentOriginalGaugeBridge.exists_independent_original_gauge_unitary' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
M4B_INDEPENDENT_ORIGINAL_SU2_GAUGE_UNITARY_ONE_ROOT_STRICT_PASS
```

## What the accepted result says

Take an arbitrary nontrivial finite-dimensional complex Hilbert module `E` endowed with an independently provided Hermitian labeled 48-Majorana family `theta`, satisfying the genuine source delta-one CAR and complex invariant-subspace irreducibility.

First, **without selecting** any source intertwiner `J`, define the independently constructed SU(2) unitary representation as the composition of:
- `independentOriginalSpinHom theta hCAR hHermitian`, derived from the universal real Clifford action of the original normalized independent Hermitian generators, and
- the actual accepted `originalNativeSixteenSpinHom`, the source SU(2) → sixteen-block native Spin lift.

The independent representation is not defined by conjugation of source Fock operators and includes no `J` parameter. The supporting theorem `independent_original_gauge_real_covariance` establishes the exact action on every real original 48-Majorana generator using the actual source `sourceRealMajoranaMatrix` and original `+i` conventions, before `J).

Then M3J constructs the generator-preserving unitary `J : E ≃ₗᵢ[ℂ] Fermion 2`; M4A extends intertwining to every genuine original real Clifford element, and the separately accepted F18C identifies the image of the same original native Spin lift with the **actual source** `fermionGaugeLinearEquiv`. Thus, for every original SU(2) group element `g` and `v : Fermion 2`:

```lean
J (independentOriginalGaugeHom theta hCAR hHermitian g (J.symm v)) =
  fermionGaugeLinearEquiv g v
```

This is a full source-specialized **finite-dimensional gauge representation** identification, not merely equality up to an unknown phase, and not a transported-action definition. Since the proof intertwines the whole original Clifford action, the choice of generator-preserving `J` contributes no residual scalar phase in the conjugated representation.

## Important scientific limits

- The theorem quantifies over every eligible independently supplied module and its Majorana operators; it does not introduce a separately named concrete Hilbert-space matrix realization of the 2026 preprint's abstract `\mathcal F`.
- The independent action uses the genuine **accepted Mathlib Clifford Spin subgroup** and native sixteen-block lift. A theorem identifying a separately modeled classical Spin(48) double-cover object and its normalized covering lift remains a distinct interface if required by the manuscript interpretation. Do not conflate this with failure of the proved source-specific gauge equality.
- It does **not** yet construct unitary equivalences of full spatial `L²(ℝ²⁷;E)` spaces with the bosonic pullback, characterize the invariant smooth cores under that equivalence, or transport every original charge `Q_\alpha`, its closed 16-charge graph or associated normalized `1/16` Hamiltonian.
- Independent global Spin(9), isotypic analysis, nonzero sectors, spectral existence or any BFSS gap remains unproved here.

[Issue #28](https://github.com/etblink/Foundational-Convergence-Program/issues/28) remains open. [PR #25](https://github.com/etblink/Foundational-Convergence-Program/pull/25) remains draft, unmerged.

## Negative knowledge and next project-lead direction

- M4A Gate #1 failed only at a source quadratic-form rewrite transparency mismatch; M4A Gate #2 repaired it via an explicitly typed axis identity, preserving the mathematics. Reuse its accepted v2 cache.
- M4B Gate #1 was **green without a remedial gate**. Avoid rebuilding the prior F18B/F18C native Fock proof chain; the accepted exact identity is adequate for this boundary.
- The next truth-bearing task is **fiber-unitary transport of full L² and test-function cores**, with consistent source bosonic color pullback and precise invariant-core equality. Then transport original 16-component charge operators on their common core, prove the associated restricted **closed graph/domain** equality and the normalized `1/16` physical form/Hamiltonian identification. Separately audit the preprint's global Spin(9) spectral reasoning.
- Any future root needs its own mathematically substantive theorem, true source specialization, pinned cache ancestry, compiler proof/axiom validation and cache save. Do not merge into main or alter PR #25 without authorization.

**Governance:** audit-only new commit on the isolated research branch; no new workflow trigger, no mathematical source changes, no changes to pinned upstream.
