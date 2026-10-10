# BFSS SU2 physical-domain D2/D3 — source-bound analytic obligation map 0.1.0

**Date:** 2026-10-09 Pacific. **Classification:** `SOURCE_INSPECTION_AND_PROSPECTIVE_PROOF_PLAN`; `NO_PROOF_CLAIM`; **no new CI theorem**. The D1 gate has been transferred to the accepted cache owner branch after the sibling-branch cache scope failure and is still unqualified until actual compilation succeeds.

## Exactly verified definitions

At frozen upstream OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`:

- `BFSS/Core.lean`: `GaugeGroup N := Matrix.specialUnitaryGroup (Fin N) ℂ`; `Boson N := EuclideanSpace ℝ (Fin 9 × Fin (N²-1))`, `Fermion N := EuclideanSpace ℂ (Fin (2^(8*(N²-1))))`, `FullL2 N`, `SmoothCore N`; source `chargeVector` and `coreForm = (1/16)∑ ||coreToL2 (charge α f)||²`.
- `BFSS/GaugeCore.lean`: `G : M.GaugeData` has continuous group actions `G.boson` on bosonic Euclidean Hilbert space, `G.fermion` on Fermion N, color- and theta-covariance fields. `G.physicalSpace := ⨅ g, ker (G.bosonPullback g - G.fiberAction g)`, and `G.invariantCore := G.physicalSpace.comap coreToL2`. For invariant test functions `f`, source `invariantCore_equivariant` upgrades an L² invariant relation to exact pointwise `f(G.boson g x) = G.fermion g (f x)`. `physicalSpace_closed` is already proved.
- `BFSS/GaugeCore.lean`: `G.invariantCore_fderiv` supplies exact transformed Fréchet derivatives. This is the correct starting point for D3 and avoids inventing a coordinate derivative property.
- `BFSS/CovariantFields.lean`: `G.deformedPotentialMultiplier_covariant`, `G.principalSymbol_covariant`, `G.kineticSkewLinear_covariant`, and `G.deformedRealField_derivative_covariant` are genuine upstream identities. None, alone, is a theorem that all deformed/original core charge images belong to `physicalSpace`.
- `BFSS/ClosedProfiles.lean`: `G.coreNormClosure` is closure of the physical test-core image in ordinary L² norm. `G.deformedModelGraph` is closure of the gauge-restricted full charge graph in the product of L² and 16 L² components. These two closures are categorically distinct. `G.deformedModelGraph_le_full` shows inclusion in the full-space closed graph, not equality.
- `BFSS/GaugeAverages.lean`: source `M.gaugeAverage` is an **ℝ-valued scalar** average over `unitary (ColorMatrix N)` for gauge-patch functions; it is *not* already the SU(N)-valued/fermionic vector Haar projection needed for D2. Do not silently treat this scalar patch average as the full unitary projection.

## Manuscript source anchor

Pinned original TeX blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`:
`preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, lines 68–133. It fixes `T_a=σ_a/√2`, `f_{abc}=√2 ε_{abc}`, 48 self-adjoint CAR generators, 9 real symmetric gamma matrices, a lifted fermionic SU2 action `V_h`, the physical space `[L²(ℝ²⁷; F)]^{SU(2)}`, its invariant compactly supported smooth core and 16 original supercharges. The quadratic form on that physical core is `q(Ψ)=1/16∑||Qα Ψ||²`; the manuscript defines H as the unique nonnegative self-adjoint operator associated with the closure of q. It asserts gauge averaging gives density and gauge supercharges preserve invariance. The 2026 spectral result is already registered in FCP as a **paper mathematical proof**, not as Lean-certified spectrum.

FCP concrete paired `AlgebraData 2/GaugeData` uses the genuine SU2 source gauge type and Pauli normalization; however the paper's abstract Clifford module and lift `V_h` have **not** been formally given a unitary intertwiner to the FCP 2^24-dimensional concrete fermionic space/action. Exact equality of representations must not be silently inferred from matching the name 'SU2'. Matching theta CAR plus irreducibility, gauge covariance and triviality of continuous characters suggests a representation-equivalence path; that is proposed reasoning, not a compiled identification.

## D2 — physical smooth-core density: explicit mathematical construction

Desired source-specific equality:
```lean
  pairedGaugeData.coreNormClosure = pairedGaugeData.physicalSpace
```
(or the analogous theorem for general `M,G` if compactness/measurability assumptions can be proved source-typed). Source has `coreNormClosure ≤ physicalSpace` immediately by closedness and exact physical membership of the image; proving the reverse inclusion is the substantive half.

For `g : SU(N)` define a unitary *combined gauge action* on L², formally
`(W_g ψ)(x) = G.fermion g (ψ ((G.boson g)⁻¹ x))`.
Physical membership is exactly fixed-point membership under each `W_g`, using `G.bosonPullback`/ `G.fiberAction` identities. Let
`Pψ := ∫_{SU(N)} W_g ψ dg` using normalized Haar on the compact group.
Prove `P` norm-nonincreasing, `Pψ=ψ` on physicalSpace, and `P f` an invariant smooth compactly supported section for every smooth compactly supported `f`. For support, the union of the compact-group orbit of a compact set is compact; for smoothness, justify arbitrary-order derivative interchange with compact-group integration and uniformly supported integrands (do not rely on continuity alone). Starting from arbitrary smooth-core approximants `f_n → ψ` in L² yields `P f_n → ψ` in physicalSpace; that proves density.

Source's scalar `gaugeAverage` does not directly implement this vector-valued Haar projection. Formalization should check the available Haar, Bochner integration, test-function smoothness and support APIs before committing to it. **No source-core density theorem is currently accepted.**

## D3 — charge preservation of physical test sections

Precise source target:
```lean
  ∀ (f : G.invariantCore) (α : SpinIndex),
    coreToL2 (M.charge α f.val) ∈ G.physicalSpace
```
It is not enough to show the norm of the charge image is gauge invariant. The goal is equality of `bosonPullback g` and `fiberAction g` applied to each exact image for every `g`.

For physical `f`, `G.invariantCore_fderiv` gives
`Df(G.boson g x)(G.boson g v) = G.fermion g (Df(x)v)`. For the potential part apply the kernel-accepted original/deformed multiplier identity G4-K9D and pinned `G.deformedPotentialMultiplier_covariant`. For the kinetic part use `G.principalSymbol_covariant`/`G.kineticSkewLinear_covariant` and orthogonal-coordinate contraction across the 27 bosonic basis directions: the inverse linear action on the derivative is matched by the direct linear transformation of the kinetic coefficient. No spin-index mixing is necessary for SU2 gauge symmetry; Spin9 is a separate action. Establish pointwise exact `Qα f(G.boson g x)=G.fermion g (Qα f(x))`, then promote to L² membership via the source equivalence/continuous `coreToL2`.

**D3 has not been proved.** A formal theorem requires a real derivative-index cancellation on pinned SU2 actions, rather than assuming that covariance of the multiplication field alone implies the whole charge result.

## Relationship to graph and form closure

D1, if compiled, equates the original and deformed graph closures **on the same invariant smooth-core subset**. It does not need D2 or D3 to state that equality. D2 is required to identify this closure as a densely-defined physical-space form. D3 ensures the supercharge column actually targets `SpinIndex → physicalSpace` so the physical operator is well-defined as an operator on the manuscript Hilbert space.

The source graph uses a finite function space `SpinIndex → FullL2 N`, whose Pi norm is equivalent to the sum-of-squares norm. With 16 spin components,
```
  maxα ‖yα‖ ≤ (∑α ‖yα‖²)^(1/2) ≤ 4 maxα ‖yα‖
```
Hence the product graph topology is equivalent to the manuscript form norm `‖ψ‖²+(1/16)∑α‖Qαψ‖²` on the invariant test core. A separate source-typed norm-equivalence/closure lemma is needed for exact Lean operator identification; this is standard finite-dimensional functional analysis, not a new BFSS spectral theorem.

Once D2, D3, representation identification, and this graph/form closure match are proved, use the closed nonnegative quadratic-form representation theorem to identify the paper's self-adjoint Hamiltonian. None of those steps independently gives new eigenvalues; the 2026 positive-point-spectrum theorem remains a *paper theorem* rather than a Lean formalization.

## Protocol stop

No automatic D2/D3 CI gates. First qualify D1 on the **cache-owner** branch, review diagnostics, then choose at most one substantive next obligation supported by a source-typed construction. The end-goal is correct scientific correspondence, not prolonging the gate count. Preserve prior T6 source-delta classification, no T2, no framework-level or empirical promotion, no `main` merge or upstream PR without separate owner authorization.
