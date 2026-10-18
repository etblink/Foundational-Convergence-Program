# BFSS SU(2) H5E8AE — exact source gamma-charge decomposition acceptance (0.1.0)

**Date:** October 17, 2026 PDT.  
**Disposition:** `PASS__EXACT_ORIGINAL_CHARGE_GAMMA_REVERSAL__FIVE_KERNEL_AXIOM_CLEAN_ROOTS`.  
**Source/mathematical scope:** Literal pinned upstream `AlgebraData.charge`, its derivative and cubic source operators on `SmoothCore N`, and certified H5E8AD `oppositeGamma`. This proves a source operator decomposition, **not** a parity unitary on `FullL2`, not manuscript Clifford/gauge identification or physical Hamiltonian-domain equivalence, and not a BFSS mass-gap/spectral theorem.

## Frozen strict CI evidence

- [Gamma Charge Split #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39031262405): run `39031262405`, head commit `d9a6c95a59cae3de45df574c133c19fcc34c6fbc`, exact proof job `117392032935`, all jobs **success** (created `2026-10-17T12:07:02Z`, updated `12:10:40Z`).
- Artifact `bfss-su2-opposite-gamma-39031262405` ID `12100368239`: full exact original source proof trace.
- Qualified AE source file: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8AEOriginalChargeGammaOrientationSplitProbe.lean`, git blob `82fd9226043d059f78a79e64ad8de016729c9246`; imports AD at `f699d1a814c1646cfb819089356a64c3f5a169bc`.
- Source pin: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact accepted G1A Fock/Pauli cache. Job locally rebuilt AD from its qualified source before AE and inspected both logs for `sorryAx` and Lean errors.
- Qualified outputs: five roots each printed only `[propext, Classical.choice, Quot.sound]` as axioms and `L6H5E8AE_ORIGINAL_SOURCE_OPPOSITE_GAMMA_CHARGE_SPLIT_AXIOM_CLEAN_PASS`.

### Five accepted Lean declarations

Namespace `FCP.BFSSSU2PhysicalDomainL6H5E8AE`:

1. `originalCharge_split`: the exact upstream charge `M.charge α` is *definitionally* the sum of the new named `originalKineticPart M α` and `originalCubicPart M α` — no approximation or redefined dynamics.
2. `oppositeGamma_fermionAction`: source `AlgebraData.fermionAction` is unchanged under gamma reversal, retaining the source 48-Majorana field.
3. `oppositeGamma_originalKineticPart`: the literal nested nine-space/three-color/sixteen-spinor `(-i)γθ∂` sum reverses sign.
4. `oppositeGamma_originalCubicPart`: the *entire sixfold* `(1/2) f_{ABC} x_i^B x_j^C γ^{ij}_{αβ} θ^A_β` term is unchanged (including index conventions and scalar normalization).
5. `originalCharge_oppositeGamma`: full exact source operator identity `(oppositeGamma M).charge α = -originalKineticPart M α + originalCubicPart M α`.

This reduces the proposed parity bridge to proving, for actual spatial inversion `P` on source `SmoothCore`,
`P.comp (coordinateDerivative i A) = -(coordinateDerivative i A).comp P` and `P.comp (position i A) = -(position i A).comp P`, plus commutation with source fermion actions and gauge action. Those imply `(oppositeGamma M).charge α = P.comp (M.charge α).comp P` on SmoothCore, and then one must separately lift to source `FullL2` and transport the **restricted** physical sixteen-charge graph, closure, normalized quadratic form and operator domain.

## Negative knowledge and safeguards

- The gamma-sign operation by itself never produces a unitary equivalence on smooth/bosonic coordinates: the derivative is a separate analytic map. Do not collapse AD/AE equality into parity before a `TestFunction` pullback exists.
- Opposite Clifford-nine orientation is an actual boundary of representation equivalence; source gamma matrices' claimed ordered volume `-I₁₆` has independent finite arithmetic support but is not yet a new kernel-qualified volume-root theorem.
- Source Schur (earlier S1A, H5E8AC), gauge-flow (S1B, L6G7K), Gauss #358 and graph #361 remain qualified but do not establish an independent manuscript `Spin(48)` gauge module or manuscript global Spin(9) positive spectral result.
- No new trusted axioms, no `sorry`, no source import edits, no modifications to main/upstream/PR base/draft or pinned compiler/Mathlib.

**Next Project Lead task:** build a genuine `SmoothCore N` parity linear involution using TestFunction smoothness and compact-support preservation under `Homeomorph.neg (Boson N)`, then prove its position and coordinate-derivative conjugation laws on the original core, before attempting physical graph/domain transport.
