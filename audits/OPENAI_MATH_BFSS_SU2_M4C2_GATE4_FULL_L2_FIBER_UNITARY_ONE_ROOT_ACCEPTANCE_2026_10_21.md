# FCP BFSS SU(2) — M4C2 Gate #4 strictly accepted: original full-L² fiber unitary

**Project local date:** October 21, 2026 PDT (original GitHub Actions runner completed October 22 UTC).

**Disposition:** `M4C2_GATE4_PASS__EXACT_FULL_L2_FIBER_UNITARY__ONE_AXIOM_CLEAN_ROOT__QUALIFIED_CACHE_SAVED`.

**Authoritative cumulative accepted theorem roots: 276 = previous 275 + 1 M4C2 root.**

## Direct independently verified original evidence

- Completed [strict M4C2 Gate #4 run #39738798412](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39738798412), job `119690753269`, attempt 1, commit `0a4651abf8fa17008c851ebf5cd3780977eed3f8`: **completed/success**.
- Frozen immutable original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original Lean **4.34.1**, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, accepted source blob hashes, and exact candidate SHA preflight **passed**.
- Qualified **M4C1 v7** compilation cache restored successfully:
  `bfss-fcp-m4c1-independent-full-l2-gauge-v7-adc7f124-lean4341-d13f23b-Linux-X64`.
- Exact original G4J source, accepted M4B, M4C1, `FCPIndependentFullL2GaugeTransport.olean`, and source `OAI/MathematicalPhysics/BFSS/GaugeCore.olean` ancestry confirmed.
- Fresh `FCPIndependentFullL2Unitary.lean` compiled under `lake env lean -DwarningAsError=true` with a valid `.olean`. All six exact declaration-name checks, axiom reports, absence of `sorryAx`, and strict permitted-axiom validator **passed**, printing:
  ```text
  'FCP.IndependentFullL2GaugeTransport.fiberTransport_left_inverse' depends on axioms: [propext, Classical.choice, Quot.sound]
  'FCP.IndependentFullL2GaugeTransport.fiberTransport_right_inverse' depends on axioms: [propext, Classical.choice, Quot.sound]
  'FCP.IndependentFullL2GaugeTransport.fiberTransportLinearEquiv' depends on axioms: [propext, Classical.choice, Quot.sound]
  'FCP.IndependentFullL2GaugeTransport.fiberTransport_norm_le' depends on axioms: [propext, Classical.choice, Quot.sound]
  'FCP.IndependentFullL2GaugeTransport.inverseFiberTransport_norm_le' depends on axioms: [propext, Classical.choice, Quot.sound]
  'FCP.IndependentFullL2GaugeTransport.fiberTransportUnitary' depends on axioms: [propext, Classical.choice, Quot.sound]
  M4C2_ORIGINAL_FULL_L2_FIBER_UNITARY_ONE_ROOT_STRICT_PASS
  ```
  Each axiom list above was consolidated from its multi-line original Lean report without changing contents.
- New qualified M4C2 cache **saved successfully**, original runner message:
  `Cache saved with key: bfss-fcp-m4c2-original-full-l2-fiber-unitary-v4-adc7f124-lean4341-d13f23b-Linux-X64`.
- Original diagnostic artifact `bfss-m4c2-gate4-39738798412`, ID **12408278178**, uploaded successfully.

## Accepted mathematical theorem and exact limitation

- Accepted research source `experiments/openai-math-su2-physical-domain/FCPIndependentFullL2Unitary.lean`, Git blob `12ee07bf3b189c252fa54867e60f71cba532c574`.
- Successful isolated workflow `.github/workflows/bfss-m4c2-original-full-l2-fiber-unitary-strict-gate4.yml`, Git blob `1342c431b291c5444a4edf959efbb9f56468d4ed`.
- The final accepted declaration:
  ```lean
  def fiberTransportUnitary
      (J : E ≃ₗᵢ[ℂ] Fermion 2) :
      Lp E 2 (volume : Measure (Boson 2)) ≃ₗᵢ[ℂ] FullL2 2 :=
    LinearIsometryEquiv.ofBounds (fiberTransportLinearEquiv J)
      (fiberTransport_norm_le J)
      (by
        intro v
        exact inverseFiberTransport_norm_le J v)
  ```
  The source uses a private `μ` abbreviation in the actual type, definitionally identical to the explicit original measure.

It is a genuine complex-linear isometric **bijection** on the actual source full-`L²` space, not merely a formal continuous-linear intertwiner. Its forward map is definitionally **the accepted M4C1** `fiberTransport J`, and its inverse is induced by `J.symm`. Left/right inverse identities are proved in the AE-`Lp` quotient, not by illicit representative pointwise identifications. Both directions are contractive by pinned Mathlib `norm_compLp_le`, and `LinearIsometryEquiv.ofBounds` proves isometry. No new source gauge is substituted and no assumption that `J` exists for arbitrary fibers has been smuggled in: `J : E ≃ₗᵢ[ℂ] Fermion 2` remains an explicit input and M3J/M4B provides the eligible-fiber context separately.

**Counting:** Exactly **one** new cumulative theorem root `FCP.IndependentFullL2GaugeTransport.fiberTransportUnitary`. The five supporting inverse/norm/equivalence declarations pass the axiom validator but do not inflate the ledger. **275 → 276**.

## Exact negative knowledge retained

1. M4C2 Gate #1 [#39735409407](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39735409407), red: `coeFn_compLpL` mistakenly supplied explicit exponent and measure though these are implicit in the pinned API.
2. M4C2 Gate #2 [#39736606254](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39736606254), red: `rw [hf]` failed against the accepted `fiberTransport` alias; `rw [hb]` left a coercion normalization residual. Forward/inverse norm bounds clean.
3. M4C2 Gate #3 [#39737613965](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39737613965), red: `simpa only [fiberTransport]` exposed separately introduced private `μ` abbreviations; exactly three declarations clean (right-inverse plus two norm inequalities).
4. M4C2 Gate #4 [#39738798412](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39738798412), **green**: direct `exact congrArg J.symm hf` works through kernel definitional equality without restricted simplification, all six reports clean, qualified v4 cache saved.

## Next actual research target — M4C3

Original `OAI/MathematicalPhysics/BFSS/GaugeCore.lean` defines the source `GaugeData.physicalSpace` as:
```lean
def physicalSpace : Submodule ℂ (FullL2 N) :=
  ⨅ g : GaugeGroup N, LinearMap.ker (G.bosonPullback g - G.fiberAction g)
```

A subsequent independent theorem must first **equate this literal source kernel-intersection condition** with being fixed by the appropriate **combined** source action `G.fiberAction g ∘ G.bosonPullback g⁻¹`, checking representation inverse convention and commutation before claiming it. Then combine accepted M4C1 full-L² gauge intertwining and the newly accepted full-L² bijection to prove both directions of the physical fixed-space isometric correspondence. Do not silently infer the fixed-point identity from M4C1/M4C2: this is the new mathematical obligation.

Formal acceptance **does not prove** original smooth invariant-core preservation, all sixteen closed supercharge domain/graph transports, physical Hamiltonian equality, Spin(9), source-to-manuscript identity, or the BFSS spectral/mass-gap theorem.

## Governance

Acceptance audit only; no mathematical source, workflow, `main`, pinned original mathematics, accepted prior theorem file, draft PR #25 or Issue #28 modified. PR #25 independently verified open/draft/unmerged and Issue #28 open before committing. Audit-only push must start no workflows.
