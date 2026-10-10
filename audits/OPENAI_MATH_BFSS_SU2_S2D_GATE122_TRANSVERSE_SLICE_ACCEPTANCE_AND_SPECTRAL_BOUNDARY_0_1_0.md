# BFSS SU(2) S2D — Exact Physical Transverse-Slice Wedge Geometry

**Status:** `S2D_TRUE_SOURCE_TRANSVERSE_SLICE_GEOMETRY__KERNEL_ACCEPTED`  
**Date:** 2026-10-10  
**Branch:** `research/openai-math-su2-concrete-potential`  
**Qualified workflow:** [BFSS SU2 Physical Domain Bridge #122](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38081369713), **SUCCESS**  
**Qualified commit:** `1cea7922b1aa3b57c73f581619f59d71ee5a3b3a`  
**Exact S2D Lean source blob:** `a5695d5942006a6bd59db3fe621a06d15b3eccf5`  
**Pinned upstream:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`

## 1. What the pinned kernel actually accepted

Module: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS2DTransverseSliceWedgeProbe.lean`.

Exactly **five** printed theorems checked with dependencies contained in `propext`, `Classical.choice`, and `Quot.sound`; the CI diagnostic asserts no `sorryAx` or compiler errors:

- `spatialWedgeSq_lagrange`: the exact nine-index Gram/Lagrange identity on `SpaceIndex = Fin 9`.
- `spatialWedgeSq_longitudinalShift`: wedges are invariant under adding any scalar multiple of the first 9-vector to the second.
- `spatialWedgeSq_transverse`: orthogonality of `u` and `z` yields `W(u, s u + z) = (Σᵢuᵢ²)(Σᵢzᵢ²)`.
- `sourceSpatialWedgeSq_eq_spatialWedgeSq`: the source-defined `Boson 2` spatial minors are exactly these 9D wedges (including the commuted scalar-factor ordering).
- `pairedPotential_ge_transverseSlice_color0`: on explicit two-transverse-vector slice data with `x(i,0)=u(i)`, `x(i,1)=s₁u(i)+z₁(i)`, `x(i,2)=s₂u(i)+z₂(i)`, and `u⋅z₁=u⋅z₂=0`, the **actual** `pairedAlgebraData.deformedBosonicPotential 1 0 x` is at least `(Σᵢuᵢ²)(Σᵢz₁ᵢ²+Σᵢz₂ᵢ²)`.

The first identity is
```text
Σ_{i<j} (u_i v_j - u_j v_i)²
  = (Σ_i u_i²)(Σ_i v_i²) - (Σ_i u_i v_i)².
```
Its strict-pair to ordered-pair conversion **reuses the previously accepted**
`FCP.BFSSSU2GaugeG4K9C.symmetricZeroDiagonal_halfDoubleSum_eq_upper`.
It does not introduce an assumed Gram inequality.

The source-potential passage **reuses accepted S2A/S2B** and the exact
`pairedAlgebraData` with its actual normalized Pauli colors.
There is no invented coupling constant, surrogate Hamiltonian,
new scalar product, implicit spectrum or switch to the massive model.

The manuscript writes `x^b=s_b u/||u||+z_b` for `u≠0`;
S2D writes `x^b=s'_b u+z_b`. These describe identical slice
parameters under `s'_b=s_b/||u||` when `u≠0`.
S2D proves the **conditional-on-an-explicit-slice** algebraic estimate.
Existence/measurable parametrization of orthogonal slices for every
nonzero `u` and the resulting Fubini/integral transport
are separate analytic steps.

## 2. Operational integrity

The accepted Gate-93 D2B11–D2B28 cache was restored and verified.
The pre-existing qualified S1A–S1C and S2A–S2C code compiled
successfully on the #122 lane. Unqualified D2B29 remained skipped.
There were two unsuccessful compiler iterations (#120 and #121)
due to finite double-sum rewrite direction and scalar-factor
normalization in elaboration; neither is accepted proof evidence.
The scientific formula did not change.

A separate *new* immutable S1ABC/S2ABC cache, qualified against
Gate #110 and Gate #118 source objects, was staged at
`0893c0d78bd2d1658ac693a17b5117683444eab1`.
It is **not** described as populated or hit until an Actions
run actually completes the save and a subsequent run verifies a hit.
Gate #93's accepted cache remains independent.

## 3. Source reuse for the real spectral frontier

In pinned `openai/math` BFSS sources, reusable
abstract analysis already exists:

- `lean/OAI/MathematicalPhysics/BFSS/RellichCompactness.lean`
  contains `OAI.BFSSRellich.localRellich`.
- `lean/OAI/MathematicalPhysics/BFSS/CoreCompactness.lean`
  contains `localRellich_on` and original smooth-core derivative bounds.
- `lean/OAI/MathematicalPhysics/BFSS/WeightedCompactness.lean`
  contains local-to-global weighted tightness tools.
- `lean/OAI/MathematicalPhysics/BFSS/FormCompactness.lean`
  contains `weightedClosure_totallyBounded`, **but its stated
  coercion is quadratic in the spatial radius**; the manuscript's
  high-sector bound controls a *linear* `|x|` moment, so this
  theorem is not a plug-in for the required high-sector compactness.
- `lean/OAI/MathematicalPhysics/BFSS/OscillatorForms.lean`
  contains normal-oscillator form identities at a *massive/normal*
  geometry; these do not by their filenames prove the manuscript's
  sixteen-dimensional massless transverse harmonic oscillator
  bound or its Spin(8) level exclusions.
- `lean/OAI/MathematicalPhysics/BFSS/SpinCoupling.lean`
  proves **spin-one-half Casimir/coupling algebra**, not an actual
  `Spin(9)` unitary action or `Spin(9)→Spin(8)` branching theorem.

These statements were inspected at the pinned commit. **Reuse rather
than recode** the appropriate functional-analysis tools after the
angular-sector bound exists; never silently import a result for the
wrong geometric/massive setting.

## 4. No spectral promotion, exact next question

The source potential still vanishes along commuting matrix valleys.
S2D alone cannot produce global radial coercivity or positive
point eigenvalues. Neither S2D nor prior S2A–S2C establishes a
`Spin(9)` action on the accepted paired Fock physical Hilbert
space, a reducing rotation isotypic sector, a `Spin(8)` branching
selection `ν₁≥λ₂`, exclusion of transverse oscillator levels
`n≤m`, or the paper's `c_m|x|` bound and compact resolvent.

**Project Lead scope decision:** the *next genuinely discriminating*
work should be a bounded `Spin(9)` angular-sector realization and
source covariance test, starting with a source-first feasibility check
for exact gamma-matrix/Clifford action and existing representation
tools. Avoid additional generic positivity or finite-sum gates after
this now-completed S2D geometry. Do not embark on a speculative
full-weight-category formalization in one step.

**Acceptance is mathematical/representational, not empirical.**
This does not promote NFC or a new framework-level result.
