# BFSS SU(2) Physical Confinement — S2A–S2C Source Bridge Acceptance 0.1.0

**Status:** `S2A_S2B_S2C__KERNEL_ACCEPTED_CORE_ONLY`  
**Recorded:** 2026-10-10  
**Branch:** `research/openai-math-su2-concrete-potential`  
**Latest accepted workflow:** [BFSS SU2 Physical Domain Bridge #118](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38080124559)  
**Exact Gate #118 source HEAD:** `78cdc33a7e7abcecc3542fee769197eb450f050c`  
**Pinned OpenAI Math:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`  
**Existing accepted Hamiltonian baseline:** [Physical Domain Bridge #93](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38069074087), `e6dcc0f751252f9cdb609d3de61f67abe733a041`.

## 1. Accepted source-bound proofs

### S2A: normalized SU(2) quartic potential and first color lower bound

**Accepted [Gate #114](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38079299370)**,
commit `cea4b8761cd789cc42197bcb57c76ec537383705`.

Module: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS2ASpatialWedgePotentialProbe.lean`  
Exact blob: `2574f86c7e0c99a1275ef55b51bb0c19a217cd5b`.

Four declarations, accepted only with `propext`, `Classical.choice`,
and `Quot.sound`. For the literal `pairedAlgebraData : AlgebraData 2`,
```text
V(x) := pairedAlgebraData.deformedBosonicPotential 1 0 x
W_ab(x) := Σ_{i<j} (x(i,a) x(j,b) - x(i,b) x(j,a))²
V(x) = W_01(x) + W_02(x) + W_12(x)
V(x) ≥ W_01(x) + W_02(x) ≥ 0.
```
The crucial source bridge uses existing accepted
`SU2ColorCrossProbe.deformedBosonicPotential_one_zero_eq_wedge`,
specializing its explicit normalized-Pauli color hypothesis with
the *actual* `pairedAlgebraData.color`. Rearranging the finite
color/spatial sums introduces no replacement Hamiltonian or new physics.

### S2B: all three one-color bounds and the 16 source potential multipliers

**Accepted [Gate #116](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38079603984)**,
commit `d2129d7ba634982879b9e1eee987a5ed3b276748`.

Module: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS2BPotentialChargeEnergyBridgeProbe.lean`  
Exact blob: `0c72a36548d116344bb5138fb9076393aceb9781`.

Five declarations, standard three axioms only. Spatial wedge symmetry
permits the one-color estimate at colors `0`, `1`, **and** `2`.
More importantly, use the original pinned
`AlgebraData.deformed_potential_average` to prove:
```text
(1/16) Σ_{α:SpinIndex} ||pairedAlgebraData.deformedPotentialMultiplier 1 0 x α z||²
    = (W_01(x) + W_02(x) + W_12(x)) ||z||².
```
This is an identity on the exact 16 *potential multipliers* of
the source BFSS supercharges. It is **not** a lower bound for the
full charge form in isolation, because kinetic/mixed terms remain.

### S2C: actual original 16-charge smooth-core quadratic-form lower bound

**Accepted [Gate #118](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38080124559)**,
commit `78cdc33a7e7abcecc3542fee769197eb450f050c`.

Module: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS2CCoreFormLinearFermionBoundProbe.lean`  
Exact blob: `4f70aa506efdc6ccb821901ed4fc258139f4568b`.

Three declarations, standard three axioms only, including:
`pairedCoreForm_ge_sourcePotential_minusLinearFermion` and
`pairedCoreForm_ge_spatialWedges_minusLinearFermion`.

For every original `f : SmoothCore 2`, with the exact paired
model `M := pairedAlgebraData`, the kernel certifies
```text
M.coreForm f
 ≥ (1/2) Σ_{p:SpaceIndex×ColorIndex 2} ||coreToL2 (coordinateDerivative p.1 p.2 f)||²
   + ∫ x : Boson 2,
        (W_01(x)+W_02(x)+W_12(x) - C ||x||) ||f x||²
where C := M.fermionGrowthConstant ≥ 0.
```
The `1/2` kinetic coefficient, `1/16` original supercharge
normalization, and original Pauli color normalization are inherited
from the actual pinned source—not declared as fresh hypotheses.

**Essential source-first shortcut:** the upstream pinned source already
contains the difficult analytic ingredients:
- `DeformedCharge.lean`: `AlgebraData.averaged_core_energy` (exact
  kinetic + bosonic potential + fermion cross-term decomposition);
- `PotentialBounds.lean`: `AlgebraData.deformedFermionField_inner_lower`,
  `fermionGrowthConstant`, `fermionGrowthConstant_nonneg`;
- `MassiveMoments.lean`: `weighted_core_square_integrable`,
  `bosonic_core_integrable`, `fermion_core_integrable`;
- accepted FCP G4K9D:
  `sourceUnconditionalCoreForm_equal`, specializing
  the undeformed `h=1,m=0` core to the original `M.coreForm`.

The local proof establishes integral monotonicity with actual compact
smooth-core integrability, not by silently assuming an `L²` identity.

## 2. Cache and safety status

Every qualifying run restored and verified the frozen Gate-93
D2B11–D2B28 compiled objects and **skipped recompilation of all
eighteen**. The unqualified D2B29 trial remained opt-in/skipped.
No change to source pins, compiler pins, accepted Gate-93 sources,
FCP `main`, comparison ledgers or NFC status.

The failed diagnostic gates #112, #113 and #117 were respectively
an unreduced finite-color numeral elaboration issue and an addition
orientation mismatch; their rejected proofs are not accepted evidence.
Use the exact passing Gate #114, #116 and #118 source blobs above.

## 3. Crucial negative knowledge

**NOT established:** a spectral gap, a point eigenvalue, compact
resolvent of the full physical Hamiltonian, angular-sector confinement,
`Spin(9)` unitary action on the actual Fock physical Hilbert space,
orthogonal `Spin(9)→Spin(8)` branching, or the source/paper
positive-eigenvalue theorem in Lean.

The source quartic potential vanishes on commuting bosonic matrices,
so the rigorous basic bound above cannot on its own force
confinement in those directions. A fortiori, it cannot justify
positive point-spectrum claims or an NFC/TOE promotion.

This result holds on `SmoothCore 2` (therefore on the physical
invariant smooth core by restriction). Extension to the full closed
form domain requires the right coercive control, not an automatic
pointwise or distributional inference.

## 4. Next *physically material* investigation

**S2D — transverse-slice geometric wedge identity, bounded scope.**
Reuse the already accepted FCP G4K9C
`symmetricZeroDiagonal_halfDoubleSum_eq_upper` to prove the
finite-dimensional Lagrange identity on the *actual*
`SpaceIndex = Fin 9`:

```text
Σ_{i<j} (u_i v_j-u_j v_i)²
 = (Σ_i u_i²)(Σ_j v_j²) - (Σ_i u_i v_i)².
```

For `u ≠ 0`, `u·z_b=0` and
`x^a=u`, `x^b=s_b u/||u|| + z_b`, deduce exactly the manuscript's
`V(x) ≥ ||u||² (||z_{b1}||²+||z_{b2}||²)`
for each color `a`. Preserve the Euclidean measure/orthogonal
coordinate conventions; do not hide them in assumed axioms.

After S2D, the real obstruction becomes the manuscript's
large-rotation-sector transverse-oscillator selection:
`Spin(9)` action; `Spin(8)` stabilizer restriction;
`ν₁≥λ₂` and excluded oscillator levels
`n≤m`; and a *closed-form* coercive bound
`q≥1/4||∇ψ||²+c_m∫|x|||ψ||²` on high sectors.
Only this yields compact resolvent and positive point eigenvalues.
Evaluate existing math libraries before trying to implement the
entire Spin-group representation theory from scratch.

**Project Lead decision:** Preserve this accepted source-first
shortcut. Do not resume D2B29 positive radial trial gates merely
because those are easy to compile. The objective is the spectral
mechanism that could genuinely validate or falsify the manuscript,
not the accumulation of harmless operator lemmas.
