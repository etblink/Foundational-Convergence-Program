# BFSS S1V28 — accepted original continuous SU2→SO48 and the O(48)/SO(48) orientation versus Spin(48) double-cover Z2 distinction

**2026-10-19 PDT. Project Lead.** **Acceptance:** `S1V28_ORIGINAL_SU2_TO_SO48_CONTINUOUS_GROUP_HOM__3_MODULES_11_ROOTS_KERNEL_PASS__SAVED_JOINT_CACHE`. **Research insight, not Lean-accepted:** 16 direct copies kill both the determinant sign and the induced fundamental-group obstruction for a **SO3→Spin48** lift. These are DISTINCT mod-two phenomena.

## 1. Exact S1V28 accepted strict kernel evidence

- [Historical SU2 to SO48 Hom and Continuity Source Strict Cache Gate #1, run #39330641791](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39330641791), job `118327648569`, completed **SUCCESS** on workflow commit `0b462602c8d6e485f5ddc830e530ea0d8a635936`.
- Verified original mathematical pins `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, source SHA1 S1K `e7f09cc289bc254aa4b23568dfec70552a0f613c`, S1L `f225a7417413008e281a143fe6db4c0da4b86026`, S1M `bed1023e4bfb6b48ee866fdad79cb88a880bcfbc`. Restored the complete accepted S1V27 historical original SU2/independent Spin48 48×48 equality cache `bfss-s1v27-isolated-historical-source-spin48-matrix-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Recompiled **three ORIGINAL** unchanged S1K (3), S1L (3), S1M (5) source modules in exact import order. Exactly **11** explicit `#print axioms` reports; each uses only `propext, Classical.choice, Quot.sound`, zero `sorryAx`, error, missing or extra root. Per-module markers `S1V28_ACTUAL_SO48_ORIGINAL_SOURCE_KERNEL_PASS` and final `S1V28_HISTORICAL_SU2_SO48_HOM_AND_CONTINUITY_3_MODULES_11_ROOTS_KERNEL_PASS` emitted.
- GitHub Actions confirmed saved reusable cache `bfss-s1v28-isolated-source-su2-so48-continuous-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Accepted original Lean proof types: `S1K.sourceRealMajoranaSOHom : GaugeGroup 2 →* Matrix.specialOrthogonalGroup OriginalMajoranaLabel ℝ`, `S1M.sourceRealMajoranaSOHom_continuous : Continuous (fun g => S1K.sourceRealMajoranaSOHom g)`, and `S1L.sourceColorSpinMatrix_eq_adjoint_kronecker` exactly source-matrix `G3A.adjointColorMatrix(g) ⊗ I16`. S1V27's fixed positive-i historical quarter exact **48-real** matrix equality with independently constructed source-sized Spin48 remains accepted in the SAME saved `.olean` source closure.

## 2. TWO different Z2s and why the proposed O(48)/SO(48) quotient is useful

**Orientation connected-component quotient:**
```
1 → SO(48) → O(48) →^{det} {±1} ≅ Z/2 → 1.
```
It detects determinant sign / proper versus improper orthogonal transformations. For the source manuscript's 16-block orthogonal color action, `ρ(g) ≃ ⊕_{α=1}^{16} O(g)`. Therefore `det ρ(g)=(det O(g))^16=+1` even if all one initially knows is `O(g)∈O(3)`. This *does not* deduce `det O(g)=+1` from the 48-real determinant (important S1N negative knowledge). The ORIGINAL independent S1N Gate #1 [run #39158512809](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39158512809) separately proves `sourceAdjointColorSOHom : GaugeGroup 2 →* SO(3)`, using actual original Pauli source character/Euler identities. Thus factorization through SO(3) is source-exact, not merely conjectural.

**Spin deck transformation / double-cover kernel:**
```
1 → {±1} ≅ Z/2 → Spin(48) →^{π} SO(48) → 1.
```
This second mod-two object is the KERNEL of the Spin covering, NOT the O/SO quotient. An accepted equality of real SO48 matrices or their determinant-one property cannot determine a unique sign in Spin48.

## 3. Nontrivial NEW global-lift hypothesis suggested by the 16 actual spin labels

Let `D16 : SO(3) → SO(48)` be the block-diagonal **sixteen** copies of the defining SO3 action, using the precise original G1A `spinPairEquiv`/S1L matrix relabeling, not an arbitrary 48-dimensional surrogate. The standard fundamental-group facts are `π₁(SO(3))≅Z/2` and `π₁(SO(48))≅Z/2`. A generating 2π SO3 rotation becomes a simultaneous 2π rotation in 16 orthogonal 3D blocks. Homotopy group law and block inclusions imply `(D16)_*(1)=16·1=0 mod2`; therefore `(D16)_*=0`.

If the **genuine** topological Spin48→SO48 double-cover and usual group-lifting theorem are available, this trivial induced π1 map implies a normalized continuous lift of **D16 defined already on SO(3)** (stronger than simply lifting source SU2 because SU2 is simply connected). The normalized continuous lift is a group homomorphism by uniqueness of based lifts on connected product `SO(3)×SO(3)`; its composition with the exact source adjoint SU2→SO3 group map gives a continuous original SU2→Spin48 hom whose projection equals accepted S1V28 `sourceRealMajoranaSOHom`. Crucial: this is **mathematical reasoning only**, not yet a Lean source theorem under the pinned Mathlib API.

**Parity contact, not yet a full-group theorem:** previously kernel-qualified S1V11 [run #39213572905](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39213572905) proves each concrete color-plane quarter rotor has Clifford square `-1`, but the ordered 16-factor source Spin48 rotor has square `(-1)^16=+1`. S1V27 proves THIS rotor projects to the ORIGINAL historical SU2 quarter element's 48-real matrix. That demonstrates the right sign/index mechanism at one point; it is consistent with, but does NOT prove, the general loop or continuous group-lift parity claim.

## 4. TWO next formal routes; choose based on exact pinned Mathlib scope, not CI green count

1. **Topological covering route:** first actually CONSTRUCT and kernel-audit the source Euclidean Clifford `π : spinGroup source48Quadratic →* SO(48)` from conjugation and exact `ι` injectivity; prove continuity, image, kernel ±1, genuine two-sheeted cover and the relevant connectedness/π1 or path-lift interface. Then prove 16-block `(D16)_*=0`, apply based group-lifting. The inspected immutable `Mathlib/LinearAlgebra/CliffordAlgebra/SpinGroup.lean` alone lacks an exported named Spin→SO covering hom/continuous group lifting theorem: do not assume a hidden instance exists without source checking.
2. **Constructive Clifford route:** construct source-normalized ONE-block continuous group hom `SU2≈Spin(3) → Spin(48)` on actual three-color axes for arbitrary `g`, prove sixteen orthogonal block embeddings commute (for even Clifford elements), then define its ordered 16-fold group hom into the genuine Mathlib `spinGroup source48Quadratic`. Show projection is the actual S1L/S1K matrix for EVERY source SU2 element (not just quarter), and central `(-1)^{16}=+1` for original SU2 `-I`. The latter permits descent through SO3. Requires real proofs of variable-angle action, group law, topology and normalization; cannot promote S1V11 fixed rotor parity into the full hom.
3. First bounded next kernel gate, if justified: exact source48 Clifford generator injection, and a typed projection's preservation of Clifford `ι` and source Euclidean quadratic form. Do NOT start an expensive workflow until its small source proof has concrete available pinned API and proper source hash/axiom validator.

## 5. Scientific ceiling and negative knowledge

The O48/SO48 parity quotient and S1N/S1V28 determinant-one theorems do not supply the second Z2 covering structure automatically. S1V27 at ONE source element does not fix a global spin sign, normalized phase, Lie group lift, manuscript independent irreducible complex Clifford module or its concrete Hilbert/unitary intertwiner. Domain equality, normalized BFSS physical supercharge/Hamiltonian and positive spectral gap are all OPEN. Preserve the actual `+i` Pauli, input/output color indices, `√2 θ` normalization, spin16 color-mode labeling, and S1V27 accepted 48-real equality. Keep changes isolated to research branch; never touch draft PR #25, `main`, pinned upstream `etblink/math`, or claim any unproved global lift axiom.

**Project Lead priority:** exploit the **even sixteen-copy parity** as a concrete candidate for a SO3-factored global Spin48 lift, but distinguish mathematical topological criterion from current Lean kernel results.
