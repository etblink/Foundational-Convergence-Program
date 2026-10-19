# BFSS S1V19 — source z-quarter remaining identification: actual definitions, minimum bridge

**Date:** October 19, 2026 PDT. **Status:** primary-source mathematical dependency assessment; only G4K is accepted. G4L and source-curve proof are unqualified pending strict CI.

## Accepted starting point

- G4J: exact OAI `pairedAlgebraData.GaugeData` for genuine paired Fermion 2 and boson Hilbert structures, 24 strict roots at [#39304517087](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39304517087).
- G4K: exact OAI `GaugeData` full theta ±-sign for any **actual** `g : GaugeGroup 2` with the visible premise `(g : ColorMatrix 2) = !![Complex.I, 0; 0, -Complex.I]`, all 6 roots strict at [#39308419612](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39308419612). Verified cache `bfss-s1v19-isolated-g4k-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Original unchanged physical source `SU2BFSSPhysicalDomainL6G6XOriginalSU2GaugeCurveProbe.lean` Git blob `b4aff5ae8e55e506d6850765ec661d777b63a58e`. **Its exact actual definition** is:
  ```lean
  noncomputable def sourcePlusIGaugeCurve (c : ColorIndex 2) (t : ℝ) :
      GaugeGroup 2 :=
    ⟨sourcePlusIColorMatrix c t, sourcePlusIColorMatrix_mem_specialUnitary c t⟩
  ```
  with `sourcePlusIColorMatrix c t` defined, in unchanged `SU2BFSSPhysicalDomainL6G6VOriginalPlusIConjugationDerivativeProbe.lean` blob `eca3be7fef1c5844b0713284a64befcec0a749f1`, by:
  ```lean
  NormedSpace.exp (t • ((Complex.I : ℂ) • pairedAlgebraData.color c))
  ```
  **Consequently the group-curve proof witnesses are propositionally irrelevant** to a later `Subtype.ext` equality if their underlying matrix expressions are definitional duplicates of the historical source expression. This is a testable Lean proof strategy; not an already compiled equality.
- Historical S1E `sourceZ t := sourcePlusIGaugeCurve (2 : Fin 3) t`. Historical S1G `sourceQuarterTurnTime := (Real.pi/2)*Real.sqrt 2`, the +i Pauli scale `√2/2`. The desired underlying matrix is exactly `!![Complex.I,0;0,-Complex.I]`.
- Historical `SU2BFSSPhysicalDomainL6H5E8RSourceNormalizedZColorFlowDiagonalProbe.lean` blob `f0bc161282e7e88404173cfec7a4aa7e5169c72c` already provides proof text (under immense imports) of the exact diagonal tangent and `Matrix.exp_diagonal` identity. The uncompiled reduced candidate S1V22 separately reproduces these exact calculations, but still imports L6G6X and hence the deep physical L6G5/L6G4 source chain.

## Minimum forward mathematical work

1. **Native source group witness:** G4L research candidate `SU2BFSSG4LNativeQuarterSourceGaugeWitnessProbe.lean`, Git blob `037c2c9882bf4096988a1439ec6a7d6cba5507d9`, constructs a genuine `GaugeGroup 2` element `actualQuarterGauge` from the same literal matrix, verifies unitary and determinant 1, and discharges G4K's conditional `GaugeData` sign. Strict six-root gate [#39309892604](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39309892604) has been triggered. **It is not yet accepted and is not the historical source curve**.
2. **Small-import actual color exponential:** On the G4J/G4K accepted original AlgebraData, define the *same underlying matrix term* `NormedSpace.exp (t • ((Complex.I : ℂ) • pairedAlgebraData.color (2 : Fin 3)))` and prove a z-specific diagonal exponential identity and special-unitary membership without importing the L6G6X historical physical chain. A diagonal 2×2 proof of determinant=1 and unitary may be substantially cheaper than the original generic L6G6X adjugate determinant argument. If all these proofs pass Lean, define a new named native z-curve `GaugeGroup 2` from this literal source expression. All signs, normalization and exact original G1A `pairedAlgebraData.color` must match.
3. **Source-identification obligation (NOT optional):** In a separate qualified bridge that imports the **actual original** L6G6X symbol, prove equality of the small-import curve to `sourcePlusIGaugeCurve 2 t` on `GaugeGroup 2` using `Subtype.ext` and definitional equality of matrix terms (with the pinned source definition unfolded). No manuscript interpretation is allowed as a substitute. This will require restoring/recompiling L6G6X's original physical imports or a properly pinned accepted cache; historical caches may not be available on this isolated branch. First evaluate exact access and cost, do not launch a vast build based on guessed cache availability.
4. Once the source curve bridge compiles, specialize at `(π/2)√2`, obtain the original source quarter matrix, and invoke accepted G4K source `pairedGaugeData` theorem. This would close the genuine **source-curve quarter theta covariance**, without establishing independent manuscript Spin(48) lift, Hilbert intertwiner, physical operator domains or BFSS spectral gap.

## Constraints and negative knowledge

No casual identification of (i) a local matrix, (ii) a native SU2 element with that matrix, (iii) an explicitly exponentiated native z-curve, and (iv) the *historically imported original* `sourcePlusIGaugeCurve`. (i)→(ii) is the current G4L strict hypothesis; (iii)→(iv) is open until compiled. S1G's original full Euler/relative character theorem has historical 59-module import cost, and previous source physical `.olean` cache was unavailable in the isolated branch. Preserve only source-immutable Lean kernel-qualified statements in accepted ledgers. Do not edit original math, PR #25, or main.
