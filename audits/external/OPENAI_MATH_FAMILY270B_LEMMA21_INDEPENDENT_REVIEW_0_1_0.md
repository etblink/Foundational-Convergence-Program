# Independent review: Family 270-B Lemma 2.1 BFSS Lean bridge

**Public-repository copy:** A nontechnical disclosure line containing personally identifying account/memory metadata was redacted before committing. Mathematical findings, source pins, and reviewer verdicts are otherwise preserved.

**Reviewer:** Grok 4.7 (xAI), fresh session.
**Date:** 2026-10-07.
**Assignment:** `audits/external/OPENAI_MATH_FAMILY270B_LEMMA21_INDEPENDENT_REVIEW_HANDOFF_0_1_0.md` on `research/openai-math-family270b-lemma21-bridge-audit`.
**Effects:** Read-only. No fork, branch, commit, issue, or pull request.

## Disclosure

- No prior reading of this probe, acceptance report, or Family 270-B manuscript in this session.
- The reviewer disclosed that available persistent memory contained no bridge-specific information and was not used to judge the mathematics. [Personal account/memory metadata omitted for public repository publication.]
- Independence order was followed: pinned OpenAI BFSS sources were read and a mathematical verdict recorded before `Family270BBridgeProbe.lean` and the acceptance report.

## Verdicts

- `MATHEMATICAL_VERDICT = VALID`
- `LEAN_VERDICT = VERIFIED_FROM_CI`
- `NOVELTY_VERDICT = GENUINE_LINK`
- `UPSTREAM_VALUE = WORTH_CONSIDERING`
- `SCOPE_CEILING = Extensional equality, for an arbitrary abstract M : AlgebraData N, between the (h,m)=(1,0) deformed smooth-core charge pipeline and the original charge pipeline, plus the induced specialization of averaged_core_energy to coreForm. Not a concrete SU(2) model, not a gauge-invariant relative Hamiltonian, not an identification of the Lean potential/fermion field with manuscript V and B, and not a spectral theorem.`

This review does not authorize an upstream contribution.

## 1. Independent mathematical verdict, recorded before the probe

Pinned source: `openai/math` at `adc7f1241b42e322a6451854ab7e4b4c146bf78a`.

Compared:

- `Core.lean`: `charge`, `gammaTwo`, `coreForm = (1/16) ∑_α ‖charge α f‖²`
- `Kinetic.lean`: `bracketMultiplier`, `charge_kinetic_plus_bracket`
- `PotentialBasis.lean`: `pairGamma` on `{i<j}`, `bracketMassMatrix`, `deformedPotentialMultiplier`, `deformedBosonicPotential`
- `DeformedCharge.lean`: `deformedCoreCharge_apply`, `averaged_core_energy`
- `GammaWords.lean`: `gamma_anti` for `i ≠ j`
- `CliffordSymbols.lean`: `cliffordLinear`, `charge_apply`, coefficient indexing
- `ColorMatrices.lean`: `coordinateBracketAll` (used later by the probe; the pre-proof calculation used `structureConstant` skew)

### Multiplier

`bracketMultiplier α x` sums ordered pairs with coefficient `(1/2) * structureConstant A B C * gammaTwo i j α β * x(i,B) * x(j,C)`, and `gammaTwo` itself contains a second `1/2`.

`deformedPotentialMultiplier 1 0 x α` is `cliffordLinear` of matrix entries of `(-1) • ∑_{i<j} coordinateBracket • (γ_i γ_j)`. The mass term is killed by `m = 0`. The coefficient of `theta β A` reads matrix entry row `β`, column `α`.

These agree. The accounting is:

- Diagonal `i = j` vanishes because `gammaTwo i i = 0`.
- `structureConstant` is skew in its last two indices because `bracket` is skew and the color trace of the Hermitian bracket is real (`ColorMatrices.coordinateBracketAll_skew` is the packaged form).
- `gammaTwo` is skew in `(i,j)`. The product kernel is therefore symmetric, so the strict upper triangle is half the off-diagonal ordered sum. That cancels one `1/2`.
- For `i ≠ j`, `gamma_anti` gives `γ_i γ_j - γ_j γ_i = 2 γ_i γ_j`, so the remaining `1/2` in `gammaTwo` cancels and `gammaTwo i j = pairGamma` on strict pairs.
- `pairGamma` is skew, so entry `(β,α) = -` entry `(α,β)`. The `-h = -1` prefactor cancels that transposition. The `(β,α)` reversal in `deformedPotentialCoefficients` is therefore not a sign defect.

### Charge

`deformedCoreCharge_apply` and `charge_kinetic_plus_bracket` have the same kinetic term, `(-I) • kineticDerivative (kineticSymbol α)`. Specializing the multiplier gives extensional equality of the smooth-core operators. Not definitional equality.

### Energy

`coreForm` is exactly the left-hand side of `averaged_core_energy` once the charges agree. At `(1,0)` the right-hand side is kinetic energy plus `deformedBosonicPotential 1 0` plus `deformedFermionField 1 0`. The shared `1/16` is consistent: 16 spin components times the per-component kinetic factor `1/2`, divided by 16, produces the `1/2` gradient term. This does not by itself identify those Lean fields with the manuscript's `V` and `B`.

Pre-proof verdict: **VALID**, conditional on `AlgebraData` (gamma symmetry, Clifford relation, color axioms). No weakened hypothesis is required.

## 2. Patch-informed check

Proof commit `aa60be3b4faa776f4ac8682a9e3222f86288ac11`, blob `9c679976278c617462d37da04f36a66bf7100f4c`. The proof follows the accounting above.

| Lemma | Judgment |
| --- | --- |
| `family270B_spatialPair_sum` | Correct subtype/filter conversion. |
| `family270B_sum_pairs_half` | Correct for a symmetric kernel; diagonal excluded. |
| `family270B_kernel_symmetric` | Correct: bracket skew times `gammaTwo` skew. |
| `family270B_gammaTwo_eq_pairGamma` | Correct on strict pairs via `gamma_anti`. |
| `family270B_deformedPotentialMatrix_one_zero_coeff` | Correct, including `-h`, skew transposition, and `1/2`. |
| `family270B_sum_reorder` | Finite commutative reordering only. |
| `family270B_undeformed_coefficient` | Correct scalar expansion and `ℂ` casts. `coordinateBracket` and `coordinateBracketAll` match by unfolding, not by a hidden lemma. |
| multiplier equality | Correct CLM extensionality from the coefficient identity. |
| `deformedCoreCharge 1 0 = charge` | Correct by the two upstream pointwise lemmas plus the multiplier bridge. |
| `coreForm` identity | Correct `simpa` specialization of `averaged_core_energy 1 0`. |

No `sorry`, `admit`, or new axiom in the source. The proof does not silently drop a hypothesis: every statement is under `M : AlgebraData N`.

`#print axioms` certifies only that the elaborated theorem environment depends on `propext`, `Classical.choice`, and `Quot.sound`. It does not inhabit `AlgebraData`, does not prove the color/Clifford fields, and does not match the statement to the manuscript.

## 3. CI

`LEAN_VERDICT = VERIFIED_FROM_CI`. This session did not compile the proof.

Run [#24](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37704157463), job `113074420781`, conclusion `success`, head `aa60be3b4faa776f4ac8682a9e3222f86288ac11`. The workflow checks out OpenAI `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, asserts `leanprover/lean4:v4.34.1`, copies the probe into that tree, builds `OAI.MathematicalPhysics.BFSS.DeformedCharge` (`Build completed successfully (8936 jobs)`), and runs `lake env lean Family270BBridgeProbe.lean`. The log prints the standard axiom triple and no `sorryAx`. Pinned `lean/lake-manifest.json` has mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Caveat, not a defect: the 8936-job build was cache-hot (`family270b-bridge-ubuntu-lean4341-openai-adc7f124-deformedcharge-v2`) and finished in seconds. The probe elaboration itself is in the log. I did not replay the cache.

## 4. Novelty

`bracketMultiplier` occurs only in `Kinetic.lean` at this pin. No upstream lemma specializes `deformedPotentialMultiplier 1 0` or `deformedCoreCharge 1 0`. `PotentialSquares.lean` identifies the scalar deformed potential with `massivePotential`; that is a different statement. The charge-level link is genuine and not a rename of an existing theorem. It is also not a new analytic estimate: it is the missing interface between two existing pipelines.

## 5. Manuscript scope

Family 270-B manuscript at the same pin: `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026`. Section 2, `lem:form`, states a quadratic-form decomposition on the **gauge-invariant** relative `SU(2)` core, with explicit `V(x) = ∑_{a<b} |x^a ∧ x^b|²` and an explicit fermionic `B(x)`, and Theorem 1.1 is infinitude of positive eigenvalues.

The Lean theorem has the same shape and the right `1/16` / `1/2` bookkeeping for the abstract charge. It does not prove `lem:form`. In particular it does not construct `AlgebraData 2`, restrict to `SU(2)` invariants, remove the center of mass, or identify `deformedBosonicPotential 1 0` and `deformedFermionField 1 0` with manuscript `V` and `B`. The acceptance report's own ceiling is accurate. Calling the probe a formalization of Lemma 2.1 without that ceiling would be an overclaim.

## 6. Upstream value

Worth considering only as a small native interface lemma. The 267-line probe is not upstream-shaped: most lines are finite-sum bureaucracy and `#print axioms`. An idiomatic patch should be substantially shorter. The useful content beyond a comment is real: later `coreForm` estimates can reuse `averaged_core_energy` without re-expanding the charge. It does not advance Theorem 1.1.

## 7. Uncommitted minimal patch

Do not add `family270B_` names. Suggested home: end of `DeformedCharge.lean`, importing nothing new.

```lean
lemma deformedPotentialMultiplier_one_zero (x : Boson N) (α : SpinIndex) :
    M.deformedPotentialMultiplier 1 0 x α = M.bracketMultiplier α x := by
  -- coefficient identity at (β, α), then Finset.sum reorder
  sorry

lemma deformedCoreCharge_one_zero (α : SpinIndex) (f : SmoothCore N) :
    M.deformedCoreCharge 1 0 α f = M.charge α f := by
  ext x
  rw [M.deformedCoreCharge_apply, M.charge_kinetic_plus_bracket,
    M.deformedPotentialMultiplier_one_zero]

lemma coreForm_eq_averaged_undeformed (f : SmoothCore N) :
    M.coreForm f =
      (1/2 : ℝ) * ∑ p : SpaceIndex × ColorIndex N,
        ‖coreToL2 (coordinateDerivative p.1 p.2 f)‖ ^ 2 +
      ∫ x, (M.deformedBosonicPotential 1 0 x * ‖f x‖ ^ 2 +
        inner ℝ (f x) (M.deformedFermionField 1 0 x (f x))) := by
  simpa [coreForm, M.deformedCoreCharge_one_zero] using M.averaged_core_energy 1 0 f
```

The `sorry` above is a placement sketch only. It is not a proposed proof and must not be committed. The existing probe proof is a valid filling.

Tests before any upstream request: the three statements; `#print axioms` with no `sorryAx`; a comment that `(h,m) ≠ (1,0)` is not claimed; no manuscript identifier in the theorem name. A negative compile check that `deformedCoreCharge 2 0 = charge` is not asserted would be enough regression coverage.

## 8. Concerns that would change the recommendation

None found in the algebra or the CI pin. The recommendation would drop to `NOT_WORTHWHILE` if the patch retained the experimental filename, Family 270-B numbering, or any claim to have formalized the relative `SU(2)` quadratic form.