# BFSS L6G5P → orbital Gauss: ordered mixed-term source derivation (0.1.0)

**Status:** Source-bound ordinary mathematical derivation and next formal-proof specification, **NOT** a kernel-qualified Lean theorem, physical-domain theorem, full Hamiltonian identity, or spectral result. **Date:** 2026-10-12 (America/Los_Angeles). Preserve the original source and prove each finite/operator identity in Lean before promotion.

## Frozen provenance and exact scope

- FCP research branch: `research/openai-math-su2-s3l-combined-rotation`. Parent qualified source modules include L6G3 CAR normal ordering; L6G4A genuine smooth-core multiplier/derivative commutators; L6G4B coefficient response; L6G5C/E exact kinetic/scalar split; L6G5N finite SU(2) quartic contraction; L6G5O complex source multiplication operator.
- Pinned *mathematical* source: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, especially `eq:supercharges` and `lem:form`.
- Hypotheses: original `M : AlgebraData 2` with `M.gamma = FCP.BFSSSU2PhysicalDomainL6G1.originalGamma` and every original source color `M.color a = FCP.BFSSSU2.normalizedPauli a`. Thus `f_{abc}=sqrt(2) epsilon_{abc}`, not an assumed arbitrary normalization.
- Work on the **actual original** `SmoothCore 2`; operator product is composition, not commutative multiplication. No gauge-invariant restriction is imposed for the derivation.

## Original coefficient definitions

For any real `w : SpinIndex → ℝ`, fermion label `p=(β,a)`, and bosonic configuration `x`, write (all repeated labels summed, with original ordered spatial indices)

```text
K_{βa} = -i sum_i (w^T gamma_i)_β ∂_{ia}
W_{βa} = (1/2) sum_{j,k,b,c} f_{abc}
                 x_j^b x_k^c (w^T gamma_{jk})_β
gamma_{jk} = (gamma_j gamma_k - gamma_k gamma_j)/2
v_i(w) = w^T gamma_i w.
```

These are the actual `sourceSpinorKineticDifferential` and `sourceSpinorQuadraticMultiplication` from L6G5C/D, not substitute operators. L6G5E defines `sourceSpinorOrderedMixedTerm = sum_{β,a}(K_{βa}W_{βa}+W_{βa}K_{βa})`. The L6G5P generic noncommutative rearrangement is already axiom-checked; the source specialization is undergoing qualification separately.

## Step 1: the SAME-label differential/multiplication commutator vanishes

Because `f_{aac}=f_{aba}=0` for the *source-proven* normalized-Pauli color constants, `W_{βa}` contains no coordinate of color `a`. In particular,

```text
∂_{ia} ( f_{abc} x_j^b x_k^c )
  = f_{abc} (δ_{ij}δ_{ab} x_k^c + δ_{ik}δ_{ac} x_j^b)
  = 0.
```

The original smooth-core product rule therefore yields `[K_{βa},W_{βa}]=0` for each `(β,a)`. It is **not** generally permissible to commute kinetic and position operators; this cancellation depends on the repeated-color zero of the exact `SU(2)` constants and must be discharged in the source implementation using L6G4A's `sourceD_positionPair_comm` and the qualified `epsilon3` source relation.

Consequently,
```text
(1/2) sum_{β,a}(K_{βa}W_{βa}+W_{βa}K_{βa})
   = sum_{β,a} W_{βa}K_{βa}.
```

## Step 2: row-gamma contraction with the **correct skew-transpose sign**

Original `gamma_i` are real symmetric and `gamma_{jk}` real skew. In a real spinor row,

```text
S_{ijk}(w)
 = sum_β (w^T gamma_i)_β (w^T gamma_{jk})_β
 = -w^T gamma_i gamma_{jk} w
 = -(1/2) w^T [gamma_i, gamma_{jk}] w
 = δ_{ik} v_j(w) - δ_{ij} v_k(w),
```

using the original Euclidean Clifford identity

```text
[gamma_i,gamma_{jk}] = 2(δ_{ij}gamma_k - δ_{ik}gamma_j).
```

The second equality uses `gamma_{jk}^T=-gamma_{jk}`; the third uses symmetry of `w^T A w` under transposition. A column-spinor identity with the opposite sign is **not** interchangeable. The existing L6G2 `originalGammaTwo_transpose` and original Clifford laws supply the source-faithful ingredients. This is a precise small standalone Lean lemma candidate, valid for **every** real `w`, including zero.

## Step 3: first-order operator exactly equals the orbital Gauss combination

Apply Step 2 without ever moving a differential operator through a position multiplier:

```text
sum_{β,a} W_{βa} K_{βa}
 = (-i/2) sum_{a,b,c,i,j,k}
       f_{abc} x_j^b x_k^c
       (δ_{ik}v_j - δ_{ij}v_k) ∂_{ia}
 = i sum_{a,b,c,i,k} f_{abc} x_i^b x_k^c v_k ∂_{ia}.
```

The last equality uses exactly `f_{acb}=-f_{abc}` and commutativity of the **scalar coordinate values**, not operator commutativity. With the source convention

```text
J_c^orb = - sum_{a,b,i} f_{cab} x_i^b ∂_{ia},
G_c^orb = -i J_c^orb
        =  i sum_{a,b,i} f_{cab} x_i^b ∂_{ia},
```

cyclic antisymmetry `f_{abc}=f_{cab}` identifies the fully ordered term as

```text
(1/2) sourceSpinorOrderedMixedTerm
 = sum_{c,k} v_k(w) x_k^c G_c^orb
```

on every original smooth-core test function. This is the **proposed Lean proof target**, not an accepted theorem. It does not say the mixed term vanishes on the full core. Its gauge contribution disappears only on the *combined* physical gauge-invariant functions after the independently required fermionic Gauss term is incorporated.

**Cross-check against the manuscript's all-spinor quadratic form:** for `w=e_α`, `v_k(e_α)=(gamma_k)_{αα}`; summing over all 16 `α` gives `tr(gamma_k)=0`. Thus averaging all 16 original supercharges kills this orbital first-order contribution, consistent with the source `lem:form`. That trace cancellation must **not** be applied to an arbitrary fixed `w`.

## Exact next formalization and stopping rules

1. Qualify unchanged L6G5P after the observed Gate #55 namespace failure; reject any `sorryAx` and preserve L6G5N/O.
2. Prove source `epsilon3` repeated-color zero and the diagonal `[K_{βa},W_{βa}]=0` directly from L6G4A/L6G5D; a generic assertion that all `K,W` commute is wrong.
3. Kernel-qualify the signed, index-explicit row `gamma_i/gamma_{jk}` contraction for the exact original `gamma`, with `w=0` allowed.
4. Reindex the finite original coefficients with fixed operator order; discharge the precise `G_c^orb` identity. Keep this separate from the accepted quartic source multiplication theorem.
5. Only then address the L6G4B original fermionic coefficient response against `B + G^F`, with CAR and the full row-Fierz source theorem; the complete physical charge identity remains open until both Gauss components and their restriction/closure are qualified.

**Negative knowledge:** A failure to resolve `originalGamma` is a source namespace defect, not a contradiction. An accepted generic `KW+WK=2WK+[K,W]` is not proof of `[K,W]=0` or of its Gauss identification. Do not silently discard `[K,W]`, reverse the gamma row/column sign, divide by the wrong CAR factor, drop a color index, or apply gauge cancellation prematurely. Do not infer positive spectrum from this finite differential identity.

**Governance:** Research-only; no modification to FCP `main`, `etblink/math`, `openai/math`, or draft PR #25's base. Classification: `SOURCE_DERIVED` **ordinary mathematics**, `OPEN` as Lean source discharge, `OPEN` as full physical/spectral conclusion.
