# FCP BFSS SU(2) — M4E4B Gate #1 strict acceptance: independent cubic supercharge component

**Date:** October 22, 2026 PDT.  
**Disposition:** `M4E4B_GATE1_STRICT_PASS__INDEPENDENT_CUBIC_COLOR_GAMMA_POSITION_SOURCE_INTERTWINING__ONE_NEW_ROOT__286_CUMULATIVE`.

**Cumulative accepted theorem roots: 286 = previous 285 (including M4E4A) + exactly one M4E4B principal root.**

## Independently verified original run and qualified cache

- GitHub Actions [M4E4B strict Gate #1, run #39810292820](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39810292820), job `119934393145`, first attempt, **overall completed/success** and job completed/success. Run API updated `2026-10-22T16:06:49Z`.
- Triggering commit `2bcb144140c211aaf764ebf3899cbabd9a9bc82f`, branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Accepted source `experiments/openai-math-su2-physical-domain/FCPIndependentCubicCharge.lean`, blob `fd1526cddf92845adf004c6b4fbb4a052d6e1746`; source-only staging commit `050cb2a625233d9e0f5e05f516a0dbbb70c4ff64`.
- Workflow `.github/workflows/bfss-m4e4b-independent-cubic-charge-strict-gate1.yml`, unique workflow-path-only push trigger on isolated research branch.
- Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; all original/candidate and qualified upstream source pins, toolchain and `.olean` closures checked.
- Qualified M4E4A position cache restored `bfss-fcp-m4e4a-position-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- New source compiled with `lake env lean -DwarningAsError=true` without compiler errors, `sorryAx` or unexpected warnings. Strict exact declaration-name audit matched seven declarations, each original `#print axioms` report contained **only** `propext`, `Classical.choice`, `Quot.sound`:
  ```text
  FCP.IndependentSmoothSupercharge.independentColorBracket
  FCP.IndependentSmoothSupercharge.independentStructureConstant
  FCP.IndependentSmoothSupercharge.independentGammaTwo
  FCP.IndependentSmoothSupercharge.independentStructureConstant_source
  FCP.IndependentSmoothSupercharge.independentGammaTwo_source
  FCP.IndependentSmoothSupercharge.independentCubicCharge
  FCP.IndependentSmoothSupercharge.independentCubicCharge_intertwining
  M4E4B_INDEPENDENT_CUBIC_CHARGE_INTERTWINING_ONE_ROOT_STRICT_PASS
  ```
  Six supporting declarations were checked, with **exactly one** counted theorem root: `independentCubicCharge_intertwining`.
- New qualified compilation cache saved `bfss-fcp-m4e4b-cubic-charge-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Original diagnostic artifact uploaded `bfss-m4e4b-gate1-39810292820`, artifact ID `12440317100`.

## Exact mathematical achievement

The independent cubic data are constructed *before* selecting any original-fiber equivalence `J`:

- `independentColorBracket(x,y) = (-Complex.I) • (x*y - y*x)`, independently encoding original signed Lie commutator.
- `independentStructureConstant color A B C = (Matrix.trace (color A * independentColorBracket (color B) (color C))).re`, directly from input color basis; strictly proved equal to `pairedAlgebraData.structureConstant A B C` when choosing the exact accepted original color basis.
- `independentGammaTwo gamma i j = (1/2 : ℝ) • (gamma i * gamma j - gamma j * gamma i)`, directly from input nine real symmetric gamma matrices; strictly proved equal to the literal original `pairedAlgebraData.gammaTwo i j` for accepted gamma basis.
- `independentCubicCharge color gamma theta α` is a direct E-valued smooth-core sum
  ```lean
  ∑ i : SpaceIndex, ∑ j : SpaceIndex, ∑ A : ColorIndex 2,
    ∑ B : ColorIndex 2, ∑ C : ColorIndex 2, ∑ β : SpinIndex,
    (((1 / 2 : ℝ) * independentStructureConstant color A B C *
       independentGammaTwo gamma i j α β : ℝ) : ℂ) •
      ((independentFermionCoreAction theta β A).comp
        ((independentPosition i B).comp (independentPosition j C)))
  ```
  with **exact original 1/2 coefficient**, A/B/C color order, i/j gamma order and **fermion action after position i B after position j C**.
- Counted theorem `independentCubicCharge_intertwining` proves the independent finite cubic expression is sent by the qualified `independentSmoothTransport J` to the **literal SECOND (cubic) summand** in original `AlgebraData.charge`, under exact color/gamma matching and generator-intertwining `J`. Proof reuses strictly accepted M4E1 fermion action and M4E4A position transport, and checks finite sum coefficients using the two new exact source-identification lemmas.

There is no transported definition masquerading as independent: input color/gamma/theta and E-valued coordinate multipliers are the actual definitional data.

**M4E4 is complete at this source-term level:** M4E4A position multiplication (+1 root) and M4E4B cubic supercharge term (+1 root) qualified without failed gates. M4E3 independently established kinetic term previously. Nonetheless, the *sum of kinetic and cubic is not yet a separately qualified whole-supercharge theorem*. No gauge core charge invariance, closed joint graph, normalized Hamiltonian or point spectrum follows automatically from M4E4.

## Next mathematical boundary

M4E5 should define `independentCharge color gamma theta α := independentKineticCharge gamma theta α + independentCubicCharge color gamma theta α` directly from independent E-valued operators, then **separately** prove equality under smooth transport to `pairedAlgebraData.charge α` for every spin index `α : SpinIndex`. A new strict gate must prove this exact combined statement. Only after M4E5 acceptance proceed to gauge-restricted charge action, closed-graph/domain equality and normalized Hamiltonian.

**Governance:** audit-only research branch commit; immutable original math, accepted source proofs/cache, canonical `main` at `cf06212a57db0ceffad74bd78280a8a240856a17`, PR #25 and Issue #28 untouched.
