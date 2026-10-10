# BFSS SU(2) S3F — Actual Fock-Space Plane-Spin Skew-Adjointness Acceptance 0.1.0

**Status:** `S3F_ACTUAL_FOCK_PLANE_SPIN_SKEW_ADJOINT__KERNEL_ACCEPTED`  
**Date:** 2026-10-10  
**Exact qualified gate:** [BFSS SU2 Physical Domain Bridge #145](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38087735640), **SUCCESS**  
**Exact gate commit:** `4cf7700e0e507c5dc7284b3d385f6cd7d105c675`  
**Exact module blob:** `8da1181cf698caded890d3cdc17645f3e4b3c33b`  
**Source module:** `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3FActualFermionSpinSkewAdjointProbe.lean`  
**Pinned upstream:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`

## Scientific result

The accepted S3E source operator
```text
K_ij = (1/2) Σ_{A=0}^2 Σ_{α,β=0}^{15}
                 J_ij[α,β] θ[α,A] θ[β,A]
J_ij = (1/2) gammaTwo(i,j)
```
is **skew-adjoint as an actual bounded endomorphism of the exact
24-complex-mode / 48-real-Majorana fermionic Hilbert space**:
```text
star (pairedFermionPlaneSpinGenerator i j)
    = -pairedFermionPlaneSpinGenerator i j.
```
The CI run kernel-accepted the following exact theorems:
- `pairedTheta_pair_star`: reverse the product of two literal self-adjoint Majorana operators;
- `pairedFermionSpinQuadraticColor_star_eq_neg`: for any real skew spinor matrix J, its exact same-color quadratic fermionic operator is skew-adjoint;
- `pairedFermionPlaneSpinGenerator_star_eq_neg`: specialize to the accepted 16×16 gamma-plane generator and finite sum over the three **actual** SU(2) colors.

All three declarations passed exact-name and axiom checking with only
`propext`, `Classical.choice`, and `Quot.sound`, no `sorryAx`,
and no compiler errors. The immutable Gate-93 Hamiltonian cache,
S1ABC/S2ABC cache, and Gate-136 S2D/S3ABCDE cache
were restored/verified. S2D and S3A–S3E were not recompiled.
The unqualified D2B29 trial stayed skipped.

In conjunction with Gate #136's **separate** actual commutator
```text
[K_ij, θ[γ,C]] = Σ_α J_ij[α,γ] θ[α,C],
```
this completes the exact source **skew-adjoint infinitesimal
fermionic plane-rotation generator** obligation. For a bounded
skew-adjoint operator, the usual norm-convergent exponential
`exp(tK_ij)` is a one-parameter unitary group. That analytic
fact is ordinary mathematics; **no explicit such exponential
or its covariance is yet Lean-proved in this FCP module**.

## Failed trials / negative knowledge

Gates #139–#144 were unqualified, and did not invalidate
Gate #136 or the frozen Hamiltonian. Their diagnostic
sequence is important for successors:
- #139: generic simplification of star and a global rewrite with
  `J.transpose=-J` caused target mismatches and recursive
  rewriting. Avoid global `simp only [hsk]` when
  `hsk α β : J β α = -J α β` is symmetric under index exchange.
- #140: a source-real coefficient needed exact scalar
  conjugation and typed `neg_smul`; outer `rw [star_sum]`
  did not match the `Finset.univ` big-operator syntax.
- #141: broad simplifier still hit the matrix-entry
  elaboration issue. Avoid rewriting the full star-sum.
- #142: a manually proven `pairedStar_sum` via
  `starAddEquiv` and `map_sum` discharged those
  finite-sum rewriting defects. This exposed only the
  wrong proposed name `Complex.conj`.
- #143/#144: similarly unrecognized `RCLike.conj`
  and unqualified `conj` (the latter uses scoped
  `ComplexConjugate` notation). They are *namespace/
  notation errors*, not missing mathematical identities.
- #145: replace notation guessing with
  `rw [RCLike.star_def]`, then apply the exact
  pinned lemma `RCLike.conj_ofReal`; accepted.

Preserve the explicit
`pairedStar_sum` helper derived from
`starAddEquiv : BFSSOp ≃+ BFSSOp`,
and match finite-index sums one term at a time.
Do not retry the failed broad-rewrite strategy.

## Next truth-material obligation: S3G SU(2) gauge compatibility

Gauge covariance of the source Majoranas already exists in
G4H: under `U_g = fermionGaugeUnitaryHom g`,
`U_g θ[α,A] = Σ_B R_g[B,A] θ[α,B] U_g`,
where `R_g` is the **genuine 3×3 real adjoint-color
matrix** from G3A, with `R_gᵀR_g=I`.

To prove `U_g K_ij = K_ij U_g`, the needed contraction is
```text
Σ_A R_g[B,A] R_g[D,A] = δ_{B,D},
```
namely **row orthogonality** `R_g R_gᵀ=I`.
This is not supplied verbatim by the accepted
column-orthogonality `R_gᵀ R_g=I`, although the
two are equivalent for square matrices over ℝ.
Use pinned Mathlib `mul_eq_one_comm` for finite square
matrices (cf. `Mathlib/Data/Matrix/Mul.lean`) or a
genuine invertibility theorem; do not posit row
orthogonality. Then transport each exact bilinear using
G4H covariance and contract the two real color sums.
This should be a source-defined theorem for every group
element `g : GaugeGroup 2`, not a scalar surrogate.

Additional gaps after S3G: the actual global Spin(9)
representation, invariance of the original physical
smooth core and closed quadratic form under combined
boson/fermion rotations, reducing high angular sectors,
Spin(8) branching/transverse oscillator exclusion,
compact resolvent and positive point eigenvalues.
S3F by itself proves **none** of these spectral claims.

FCP `main` remains unchanged, no NFC/TOE conclusion
and no empirically new BFSS spectral prediction is promoted.
