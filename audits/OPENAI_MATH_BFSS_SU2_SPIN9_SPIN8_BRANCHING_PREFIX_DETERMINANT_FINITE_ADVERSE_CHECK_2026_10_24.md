# BFSS spectral Track B — independent small-weight B4→D4 determinant adversarial check

**Date:** October 24, 2026 Pacific. **Classification: FINITE DIAGNOSTIC ONLY / NO NEW LEAN ROOT / NO SPECTRAL CLAIM PROMOTED.**

## Exact pinned mathematical source

Primary `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, immutable Git blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`; `lem:branching` at source lines **439–517**.

Source uses dominant weights of `Spin(9)=B4`:
```text
λ1 ≥ λ2 ≥ λ3 ≥ λ4 ≥ 0
```
and `Spin(8)=D4`:
```text
ν1 ≥ ν2 ≥ ν3 ≥ |ν4|
```
on matching integral or half-integral lattices. It derives `m_ν = det(1_{|t_i|≤L_j})` when lattice parities match, `t_i=ν_i+(3,2,1,0)_i`, `L_j=λ_j+(3,2,1,0)_j`; otherwise coefficient zero. The needed conclusion for all occurring `ν` is `ν1≥λ2`, the first link in proposed oscillator exclusion S3→S4→S5.

## Diagnostic performed and preserved

A **no-external-dependency, exact-rational, explicit 4×4 determinant checker** was committed:
`experiments/openai-math-su2-physical-domain/BFSS_SPIN9_SPIN8_BRANCHING_DETERMINANT_FINITE_FALSIFICATION_2026_10_24.py`, commit `9fd5757f62c309488e1b9b586eb31592ccc7d02d`.

Enumerate B4 dominant highest weights for coordinate magnitudes integer `0..3` and half-integer `1/2..7/2`, and D4 dominant candidates integer `0..4` and half-integer `1/2..9/2`, **including both signs of ν4**, using exact `fractions.Fraction` arithmetic. For each matching-lattice pair compare the source prefix determinant with the independently stated full orthogonal interlacing indicator
```text
λ1≥ν1≥λ2≥ν2≥λ3≥ν3≥λ4≥|ν4|.
```
Also test that the source's own different-lattice rule yields zero on all cross-parity pairs.

Observed from independent local exact-arithmetic enumeration:

| Test family | Pairs examined | Source determinant nonzero | Counterexamples |
|---|---:|---:|---:|
| Integral B4 / integral D4 | 3,675 | 210 | 0 |
| Half-integral B4 / half-integral D4 | 4,900 | 330 | 0 |
| Integral B4 / half-integral D4 | 4,900 | 0 by source parity rule | 0 |
| Half-integral B4 / integral D4 | 3,675 | 0 by source parity rule | 0 |
| **Total** | **17,150** | **540** | **0** |

Every nonzero determinant in the matched-lattice cases was **exactly +1** and satisfied `ν1≥λ2`. Negative and zero fourth-weight coordinates were included, not replaced by an unsigned-only D4 list. Finite computation is only a refutation attempt against the character-coefficient/determinant algebra in the original source. It does NOT independently compute the actual representation multiplicities (the equality of source Weyl expression to actual restriction-character multiplicities is an input), prove the determinant formula for all weights, or check the physically realized 48-Majorana Spin(9) action.

## Interpretation — no counterexample, proof obligations remain

The small-weight test found no violation of the proposed B4→D4 interlacing rule. That is **bounded favorable evidence for the purely algebraic S3 subclaim**, not an accepted source theorem, not a formal Lean kernel proof, and not evidence that the complete positive-eigenvalue theorem is correct.

Next highest-information falsification should challenge the real **S4 physical fiber**: verify the actual `Spin(8)` types carried by the original 48-Majorana fermionic Fock module and uniform first-weight bound M, including spinorial conventions, then prove that the `n`th Hermite oscillator projector on **the actual 16 transverse real dimensions**, tensored with those fermions and evaluated on the legitimate smooth finite-dimensional-translate orbital slice, contains no type with `ν1≥λ2>n+M`. The missing endpoint remains S5: correct source `q=(1/16)Σ||Q_α·||²` full gauge-physical CLOSED quadratic-form coercivity, rather than a proxy scalar oscillator estimate.

Source original S1/S2 global `Spin(9)` closed-form symmetry and S7 nonzero infinite-dimensional genuine gauge-physical sectors independently load-bearing. Manuscript claims infinitely many positive normalizable physical eigenvectors, NOT positive global BFSS mass gap. H4G1B strict acceptance transfers existing Hilbert eigenpairs between actual independent and historical Hamiltonians but does not prove their existence.

**No new GitHub Actions mathematical gate from this diagnostic, no axiom report, no theorem root credited.** The frozen original mathematics, canonical FCP main and draft PR #25 remain unchanged.
