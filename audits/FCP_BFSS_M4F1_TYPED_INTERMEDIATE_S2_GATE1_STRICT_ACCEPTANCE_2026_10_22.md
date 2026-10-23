# FCP BFSS SU(2) — M4F1 S2 typed-intermediate independent charge preservation, strict acceptance

**Independent verification date:** October 22, 2026 PDT (run finished October 23 UTC). **Disposition:** accepted strict GREEN, **one new principal theorem root**, cumulative **296** (previous 295 including S1). Canonical `main` and draft PR #25 unchanged.

## Original run, compiler, source and caches

- [GitHub Actions run #39887196835](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39887196835), job `120198011868`: `completed/success`, workflow + job + actual candidate compilation + strict axiom validation + proof cache save + artifact upload all succeeded. Trigger commit `fa38f97ff73ffcf40c77c4d1a199ee0bfa7232c2`.
- Original pinned BFSS math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Source-hash preflight, actual adapter pins, exact original/S1/S2 source comparison, immutable original prerequisite closure, accepted M4F5 cache and separately **accepted S1 one-root** cache checks passed.
- The source is `experiments/openai-math-su2-physical-domain/FCPM4F1TypedIndependentInvariantCharge.lean`, Git blob `642ba305a7a9a0ca23093b2e873bff6929931f36`. The step `M4F1_S2_GATE1_FROZEN_EXACT_STATEMENT_AND_TYPED_CERTIFICATE_SOURCE_PASS` confirms that its theorem and assumptions are original M4F1 with only the intended import and local source-membership certificate proof refactoring.
- One principal theorem root `FCP.IndependentSmoothSupercharge.independentCharge_mem_invariantCore`, compiled under `lake env lean -DwarningAsError=true`. **Strict validator checked exactly one source `#print axioms` report**, completeness of the named root, no unexpected warnings/errors, no `sorryAx` and no axioms beyond `propext`, `Classical.choice`, `Quot.sound`. Original runner log states:

```
SOURCE_EXACT_STRICT_AXIOMS_PASS FCPM4F1TypedIndependentInvariantCharge 1
DIAG_RESOURCE_TIME 7.42 CPU 96% MAX_RSS_KB 7028832
M4F1_S2_EXACT_ORIGINAL_INDEPENDENT_INVARIANT_CHARGE_ONE_ROOT_STRICT_AXIOMS_PASS
```

- Qualified reusable cache **actually saved** under key:
`bfss-fcp-m4f1-typed-intermediate-s2-642ba305-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- No independent M4F1 theorem was accepted before this run; isolated S1 one-root source-specialization Gate #1 [#39885669948](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39885669948) was previously accepted. Do not count G4/D3B recovered original source declarations again as new roots.

## Exactly what the accepted theorem proves

With independently constructed `independentCharge color gamma theta α` and independently defined gauge-invariant compactly supported smooth test core `independentInvariantCore theta hCAR hHermitian`:

```lean
independentCharge_mem_invariantCore
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ...)
    (hHermitian : ...)
    (J : E ≃ₗᵢ[ℂ] Fermion 2)
    (hColor : color = pairedAlgebraData.color)
    (hGamma : gamma = pairedAlgebraData.gamma)
    (hJ : ∀ α A w, J (theta α A w) = pairedTheta α A (J w))
    (α : SpinIndex)
    (f : independentInvariantCore theta hCAR hHermitian) :
    independentCharge color gamma theta α f.val ∈
      independentInvariantCore theta hCAR hHermitian
```

**Precise qualification:** The conclusion is expressed in *independently defined* objects and has no `J` in its type, but the proof is still conditional on the explicit existence of `J`, `hJ`, and source-identification hypotheses. This is invariant-core preservation under a qualified witness, not unconditional existence of such a witness for every representation.

The proof composes the previously accepted two-sided invariant-core membership iff, exact `independentCharge_intertwining`, and isolated accepted S1 original source charge-preservation lemma with typed source membership and an explicit `g.val = independentSmoothTransport J f.val` equality. No `maxRecDepth` increase was needed. This resolves the previously observed M4F1 direct D3B elaboration recursion without adding new mathematical premises or changing the intended theorem.

## Scientific scope / next genuine frontier

**M4F1 established:** each of the actual 16 independent smooth supercharges sends the genuine independent invariant smooth core into itself, under explicit realization and intertwining hypotheses. This now enables precise output-invariance claims for restricted physical smooth-core graphs.

**Not yet proved by this root:** restricted physical 16-charge graph equality and closure on the literal original/independent core graphs (M4F6); single-valued closability and equality of their restricted physical closed operators; physical Hamiltonian domain/form equivalence; manuscript-level BFSS identification; spectral ground state/gap.

**Next controlled mathematical plan:** Revisit existing frozen `FCPIndependentRestrictedCoreGraph.lean` source and accepted `FCPRestrictedGraphInputCut.lean` generic lemmas, without automatically rerunning failed diagnostic wrappers or re-expanding the source graph. Stage separate exact typed source- and independent-input cut certificates, then compose with already accepted M4F4/M4F5 unrestricted image and closed graph results. Exploit the newly accepted M4F1 theorem for output physical membership, but do not conflate input constraint and output invariance with closability or a Hamiltonian equivalence. Any additional proof must have a specific first-obstruction diagnosis and pass the same strict source and axiom gates.

**Project governance:** Scientific truth over CI green counts; preserve negative results and exact source provenance, avoid unauthorized main merges or unnecessary Actions triggers.
