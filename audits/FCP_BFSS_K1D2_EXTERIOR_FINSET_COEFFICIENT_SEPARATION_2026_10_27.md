# FCP BFSS K1D2 — exact original exterior basis coefficient separation

**2026-10-27; Project Lead.** Status: *OPEN* (no scalar-common-kernel theorem strictly accepted at the time of creating this audit).

## Mathematical target

The actual original 48-real source label is `Source48Label = Fin 24 × Fin 2`. The original source vector space `Source48Vector = Source48Label → ℝ` has literal coordinate basis `Pi.basisFun ℝ Source48Label`. The true exterior algebra `E := ExteriorAlgebra ℝ Source48Vector` is `CliffordAlgebra (0 : QuadraticForm ℝ Source48Vector)`.

**K1D2 target (still unproved):**
```lean
∀ x : E,
  (∀ j : Source48Label,
    CliffordAlgebra.contractLeft (Q := (0 : QuadraticForm ℝ Source48Vector))
      (LinearMap.proj j : Module.Dual ℝ Source48Vector) x = 0) →
  ∃ c : ℝ, x = algebraMap ℝ E c
```

Input is already genuine Lean-qualified: [K1D1 Gate4 #40503702666](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40503702666), blob `46cd08ee5124dae7160f6fa2135b9b01c73b1030`, shows each literal source coordinate contraction vanishes for original Spin48 real-vector-action kernel elements. Accepted K1D0, K1C, K1A precede it.

## Source-exact proven library interfaces, not a replacement theory

Pinned Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean `4.34.1`.

- `Module.Basis.ExteriorAlgebra`: [ExteriorAlgebra/Basis.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/ExteriorAlgebra/Basis.lean). Basis indexed by `Finset Source48Label`, with `ExteriorAlgebra.basis_apply` yielding `ιMulti_family` in exact original label order. [`basis_mul_of_disjoint`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/ExteriorAlgebra/Basis.lean) gives an explicit **unit sign**, useful to avoid guessing wedge sign conventions when inserting a coordinate.
- `CliffordAlgebra.contractLeft_ι_mul`, `contractLeft_ι`, and `contractLeft_one` in pinned [Contraction.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/CliffordAlgebra/Contraction.lean). Derivation formula: `d⌋(ι(v)*x) = d(v)•x - ι(v)*(d⌋x)`. For literal coordinate dual `LinearMap.proj j`, `d_j(Pi.single k 1)=δ_{jk}`.
- The F20B accepted PBW basis uses the same **real linear exterior** basis transported via `(CliffordAlgebra.equivExterior Q).symm`. Never treat `equivExterior` as multiplicative; K1D0 already qualifies its genuine contraction transport.
- Existing S1V38 polarization and K1D1 original coordinate-dual equality remove the factor-of-two ambiguity.

## Chosen bounded next theorem

Rather than invent an unqualified identity for every subset, first qualify **K1D2A** finite coordinate wedge-word derivative building blocks on the actual original 48-label type:

1. `originalExteriorCoordinateWord_cons` realizes leading generator multiplication on `List Source48Label` by its literal coordinate exterior `ι` product.
2. `originalExteriorCoordinateWord_contraction_zero_of_not_mem` proves that if original label `j` is absent from a coordinate word, its native `LinearMap.proj j` contraction vanishes.
3. `originalExteriorCoordinateWord_leading_contraction` proves that for `j ∉ xs`, contracting `ι e_j` multiplied by the ordered tail word returns *exactly* the tail word, with coefficient 1.

Candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52K1D2AOriginalExteriorCoordinateWordContractionProbe.lean`, exact Git blob `b99cd7c09b2c44e5282db7cd1549c5fa425d06a2`. Its [strict Gate1 #40510963306](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40510963306) compiles with the **accepted K1D1 qualified cache**, literal F20B ancestor and pinned immutable Mathlib; original run result pending at audit creation. No +3 roots unless fresh Lean, axiom whitelist and binary save all succeed.

## K1D2B finite-subset coefficient strategy (unproved)

Let `B := (Pi.basisFun ℝ Source48Label).ExteriorAlgebra`. For each `I : Finset Source48Label` with `j∈I`, the ordered exterior basis monomial `B I` is a unit-sign multiple of `ι e_j * B(I.erase j)`, by the pinned `basis_mul_of_disjoint` and singleton-basis identification. If `j∉I`, the derivative identity kills `B I`; if `j∈I`, use K1D2A leading-contraction lemma to show `d_j⌋(B I) = u_{j,I} • B(I.erase j)` with invertible real scalar `u_{j,I}=±1`. The literal order/Unit sign must be proved, not guessed.

For arbitrary `x:E`, expand using `B.repr`'s finite support. Fix nonempty `I` and `j∈I`. The coefficient of `B(I.erase j)` in `d_j⌋x` is `u_{j,I}` times coefficient of `B I`: no other finite subset containing `j` has the same erased subset, and subsets not containing `j` have zero contraction. If every `d_j⌋x=0`, `u_{j,I} ≠0` forces `B.repr x I=0`. Therefore the only possible surviving subset is `∅`. The scalar `B ∅` must be source-proved equal to `1`; then `x=algebraMap ℝ E c`.

**Separately falsify** each required interface: singleton/empty exterior basis identity, sorted exterior-word equality, sign invertibility, no coefficient collisions, scalar-line equality, source label/coordinate alignment. Do not use unqualified `simp` shortcuts to obscure basis labels, and do not enumerate all 2^48 subsets. Stop at actual first Lean compiler error and preserve its run/statement/axon record.

## Scientific admission boundary

K1D2A alone is not K1D2B. K1D2B alone will not automatically establish the original Spin48 kernel `{±1}`: the scalar Clifford/Spin inclusion and genuine negative central Spin representative (K1B) are separately required. SO48 image/covering, source-exact global Spin9, actual physical BFSS symmetry and positive spectral existence remain distinct missing results. `main` and frozen `etblink/math` remain untouched.
