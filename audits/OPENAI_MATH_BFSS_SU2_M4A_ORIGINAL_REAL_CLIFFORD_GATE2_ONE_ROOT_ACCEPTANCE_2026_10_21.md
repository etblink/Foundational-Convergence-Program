# FCP BFSS SU(2): M4A independently verified Gate #2 strict acceptance

**Local date:** October 21, 2026 PDT (October 22 UTC).

**Disposition:** `M4A_GATE2_PASS__INDEPENDENT_ORIGINAL_REAL_CLIFFORD_INTERTWINING__ONE_AXIOM_CLEAN_ROOT__CACHE_SAVED`.

**Cumulative strictly accepted theorem roots:** **273**, +1 from M4A (272 before this gate). Fresh compilation of supporting generic modules is accepted dependency evidence, not additional newly counted roots.

## Source-exact execution provenance

- [Completed strict Actions run #39723291619](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39723291619), job `119641428421`, first attempt, head `96b70c16ced4c40ba43bda32b7207f79ac929d3a`, **SUCCESS**.
- Source branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Accepted original source `experiments/openai-math-su2-physical-domain/FCPIndependentOriginalCliffordBridge.lean`, Git blob `193c41c4437c413a87db7442ba725230afdf39ec`.
- Strict gate workflow `.github/workflows/bfss-m4a-independent-source-clifford-bridge-strict-gate2.yml`, Git blob `2b7e5a0f041a570179d8a2db61549233e74c4c06`.
- Actual original mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` were validated by the source preflight and pinned toolchain check.
- Separately qualified C1 cache `bfss-s1v52l9e5c1-original-fock-clifford-algebra-lift-v3-adc7f124-lean4341-d13f23b-Linux-X64` and accepted M3J cache `bfss-fcp-m3j-independent-original-unitary-v3-adc7f124-lean4341-d13f23b-Linux-X64` both had explicit cache hits and required original .olean closure verified.
- Freshly compiled, `-DwarningAsError=true`, `FCPIndependentCliffordIntertwining.lean`, `FCPIndependentSpinRealization.lean`, `FCPIndependentMajoranaAction.lean`, followed by the **actual** source-specialized `FCPIndependentOriginalCliffordBridge.lean`. Compiler `#print axioms` reports for expected supporting declarations and target contained only `propext`, `Classical.choice`, `Quot.sound` and no `sorryAx`.
- Required workflow proof marker `M4A_ORIGINAL_INDEPENDENT_CLIFFORD_INTERTWINING_ONE_ROOT_STRICT_PASS` emitted after the strict evidence validator.
- **New qualified cache saved** with exact key `bfss-fcp-m4a-independent-real-clifford-bridge-v2-adc7f124-lean4341-d13f23b-Linux-X64`.
- Diagnostic artifact `bfss-m4a-gate2-39723291619`, artifact ID `12402052689`, uploaded.

Decisive compiler report:

```text
'FCP.IndependentOriginalCliffordBridge.independent_original_clifford_intertwining' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
M4A_ORIGINAL_INDEPENDENT_CLIFFORD_INTERTWINING_ONE_ROOT_STRICT_PASS
```

## Precise mathematical boundary

Given any eligible independently supplied Hermitian CAR operators `theta` and a complex-linear isometric equivalence `J : E ≃ₗᵢ[ℂ] Fermion 2` obeying the **labeled generator intertwining** required by M3J, the strictly verified M4A theorem extends the intertwiner to **every element** of the **actual original real Clifford algebra** `CliffordAlgebra source48Quadratic`:

```lean
J (independentOriginalClifford theta hCAR x w) =
  originalFockCliffordAlgHom x (J w)
```

This is not a circular definition: `independentOriginalClifford` is built directly from the independent CAR data and exact source label equivalence, before selecting `J`. The original right side is the qualified C1 universal real Clifford-to-Fock action. The source bridge also introduces `independentOriginalSpinHom` from an independently constructed Hilbert-unitary Spin representation; its printed axiom report passed as a supporting declaration, but it is not an additional separately counted theorem root.

M3J supplies existence of an eligible `J` when its exact Hermitian, CAR, irreducibility and nontrivial finite-dimensionality conditions hold. M4A itself does not prove a given external manuscript's concrete theta or its Spin lift satisfies those hypotheses.

## Negative knowledge

- [M4A Gate #1 RED](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39720261133), job `119631852200`, source specialized `rw [cliffordAction_axis, hsource]` failed at source line 108 because the generic axis lemma uses `coordinateQuadratic` while the actual source uses the definitionally equal `source48Quadratic`. Generic modules all compiled and strict cache ancestry restored. The dependent adapter proofs printed `sorryAx`, so zero accepted M4A roots and no cache save.
- [M4A Gate #1 negative-knowledge audit](https://github.com/etblink/Foundational-Convergence-Program/blob/96b70c16ced4c40ba43bda32b7207f79ac929d3a/audits/OPENAI_MATH_BFSS_SU2_M4A_ORIGINAL_REAL_CLIFFORD_GATE1_QUADRATIC_FORM_REWRITE_RED_2026_10_21.md) preserved. The Gate #2 correction gives a named `haxis` with explicit `change` between source and generic form before rewriting `hsource`, without altering any theorem statement, CAR normalization or label order.

## What remains open

A formalized **independently specified** SU(2) action on the manuscript-side module, constructed from its Majoranas and the actual sixteen-block original Spin lift, needs to be specialized and proved to agree under M3J/M4A with the accepted literal source `fermionGaugeLinearEquiv`. The candidate `FCPIndependentOriginalGaugeBridge.lean` remains uncompiled and unaccepted; qualified F18C is available for the final native-source gauge equality.

A separate Spin-covering-model identification would be required to claim equality with a differently formalized classical double cover instead of the actual Mathlib Clifford `spinGroup` model. No source/manuscript invariant smooth-core equivalence, sixteen-charge graph-operator transport, closed Hamiltonian identity, global Spin(9) reduction or positive BFSS spectral claim follows from M4A alone.

Issue #28 remains open; PR #25 remains draft and unmerged. Neither canonical main nor pinned upstream mathematical source is changed.

**Governance:** This acceptance record is audit-only and must not launch any additional CI run. Next gate should be separately path-scoped to the literal independent original gauge implementation theorem, with checks for qualified M4A + F18C ancestry and actual proof outputs.
