# S1Q — exact source SU(2) composition and inverses for real Clifford(48) algebra homomorphisms

**October 18, 2026 PDT | Project Lead | research branch only.**

**Disposition:** `STRICT_KERNEL_PASS__FOUR_ROOTS__SOURCE_CLIFFORD48_ALGHOM_GROUP_LAW_AND_TWO_SIDED_INVERSES__SPIN48_OPEN`.

## Frozen acceptance evidence

- [S1Q Original Clifford48 Group Law #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39165468446), run `39165468446`, job `117787377857`, full **SUCCESS** at `de30fd32a6aa064d0b7cb97b1d994e2a8c6cad25`.
- Source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1QOriginalClifford48GroupLawProbe.lean`, exact blob `5966c753342e63e360849c00944ec959941772a9`.
- Workflow `.github/workflows/bfss-su2-original-clifford48-group-law.yml`, exact blob `be1e8d9f9a49d8c26db0a428b587752a4dee8baa`.
- Frozen independent original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- CI source pins, compiler, cache closure and accepted S1C/S1J/S1K/S1P0/S1P1 rebuilt/checked. Fresh S1Q `.olean`; each of four printed declarations depends on exactly `[propext, Classical.choice, Quot.sound]`, no `sorryAx`, missing declaration or Lean error.
- Machine marker `S1Q_ACTUAL_CLIFFORD48_SU2_COMPOSITION_INVERSES_4_ROOTS_KERNEL_PASS`.

## Exact new theorem content

Using the accepted source matrix `sourceRealMajoranaMatrix (g * h) = sourceRealMajoranaMatrix g * sourceRealMajoranaMatrix h`, `Matrix.mulVec_mulVec`, and **the Clifford universal property** `CliffordAlgebra.hom_ext`, S1Q proves literal equality of algebra homomorphisms, rather than just a basis sample:

```lean
source48CliffordHom_one :
  source48CliffordHom 1 = AlgHom.id ℝ (CliffordAlgebra source48Quadratic)

source48CliffordHom_mul (g h : GaugeGroup 2) :
  source48CliffordHom (g * h) =
    (source48CliffordHom g).comp (source48CliffordHom h)

source48CliffordHom_inv_left (g : GaugeGroup 2) :
  (source48CliffordHom (g⁻¹)).comp (source48CliffordHom g) =
    AlgHom.id ℝ (CliffordAlgebra source48Quadratic)

source48CliffordHom_inv_right (g : GaugeGroup 2) :
  (source48CliffordHom g).comp (source48CliffordHom (g⁻¹)) =
    AlgHom.id ℝ (CliffordAlgebra source48Quadratic)
```

These are **not assumed inverses** and not a surrogate Spin group. The exact source SU(2) inverse supplies both sides via the compiled multiplicativity and identity theorems. The original 48 generator ordering, source (+i) Pauli color orientation, and Clifford normalization `Q(v)=∑ v_i²` are unchanged.

## Negative knowledge and boundaries

- S1Q Gate #1 passed first time, no new red to invent. S1O Gate #1/#2 reds remain recorded; the successful reusable architecture is S1P's direct universal Clifford algebra lift and qualified quadratic baseline.
- S1Q proves algebra-endomorphism equalities and two-sided inverse **facts**, but does not yet package the source action as a typed `AlgEquiv` for each SU(2) element. Do that with pinned `AlgEquiv.ofAlgHom`, not broad definitional unfolding.
- A group action by real Clifford-algebra automorphisms is **not** an inner lift into `spinGroup Q`; no continuous Spin(48) double-cover projection or normalized SU(2) lift is constructed here.
- Neither a separate irreducible complex Clifford module, an independently proved unitary generator-preserving intertwiner, physical closed graph/supercharge/Hamiltonian domain correspondence, nor global Spin(9)/point spectrum or BFSS mass-gap result follows.

Next: typed `AlgEquiv` packaging, source generator covariance and composition, then separately **inner even-Clifford Spin(48) realization** with projection, sign and continuity checks. Keep PR #25 draft; do not change canonical `main`, original `etblink/math`, or pinned dependencies.
