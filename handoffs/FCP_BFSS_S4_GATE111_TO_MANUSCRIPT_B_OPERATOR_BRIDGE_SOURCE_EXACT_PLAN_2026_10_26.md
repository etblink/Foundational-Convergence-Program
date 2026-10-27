# BFSS S4: strict Gate111 acceptance → literal manuscript B(x) bridge

**Project Lead follow-on analysis, 2026-10-26.** Research/negative-knowledge record only. This note is an algebraic proof design **not a new Lean theorem** and does not establish physical closed-domain equality, coercivity or spectral existence.

## Frozen evidence and acceptance

- Original mathematics: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; pinned manuscript `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`.
- Original manuscript lines 85–96 fix `{theta,theta}=delta`, gamma conventions; lines 113–121 fix `Q_alpha` and `q=1/16 sum ||Q_alpha psi||²`; lines **236–250** give its fermionic form term `B(x)=(i/2) f_{abc} x_i^a gamma^i_{beta delta} theta_beta^b theta_delta^c`; lines **289–318** display the kinetic/potential cross-term calculation and color index sign change.
- Lean 4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Allowed axioms: `propext`, `Classical.choice`, `Quot.sound`. Canonical `main`, frozen original source and draft PR #25 unchanged.
- Gate109 S4B21: actual original `M.deformedFermionField 1 0 x` in `Fermion N →L[ℝ] Fermion N`, from the `1/16` scaled **ordered** kinetic-before-potential complex theta product after `restrictScalars ℝ`.
- Gate110 S4B22: actual nine-direction source gamma-entry identity with coefficient eight.
- Gate111 S4B23: [run 40423678502](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40423678502), job 121924000971, commit `03a7fd53a5e4ff6af6067ff31c23af261b172f39`, target blob `6fb1edd75cf1b4f8e6355c083a514945ce22f3ad`, one exact axiom-qualified root strictly accepted. S4 unique scoped roots: **48**. The accepted theorem is

```text
sum_k sum_alpha gamma[k,alpha,beta]
    * sourceMasslessComplexVariationCoefficient(x, e_(k,A), alpha,(delta,D))
 = 8 * sum_j sum_C f[D,A,C] * x[j,C] * gamma[j,beta,delta].
```

## Candidate operator coefficient calculation — mathematical derivation, not Lean acceptance

The actual Gate109 ordered complex operator has front scalar `(-i)/16`, and first theta `theta[beta,A]` (kinetic factor) immediately before second theta `theta[delta,D]` (source variation factor). Distributing the *actual* finite sums and applying the accepted Gate111 scalar contraction suggests exactly

```text
(-i/2) * sum_(j,C,A,D,beta,delta)
    f[D,A,C] * x[j,C] * gamma[j,beta,delta]
      * theta[beta,A] * theta[delta,D].
```

Use the **true original** structure constant from `AlgebraData.structureConstant`. Relabel `(a,b,c)=(C,A,D)`. Total antisymmetry implies `f[D,A,C] = -f[C,A,D]`; then the expression becomes the manuscript's **positive** `(i/2) f[a,b,c] x[j,a] gamma[j,beta,delta] theta[beta,b] theta[delta,c]`.

**Potential high-value simplification:** in this exact index presentation, the theta factors already occur in the manuscript order. There is **no apparent need to exchange theta factors** to get the coefficient sign. CAR is still essential for the other form identities and Hermiticity, but inserting an unnecessary CAR swap here risks the wrong sign and diagonal terms. This hypothesis must be tested against the original typed operator, not assumed.

This calculation is orientation-covariant: it uses the original arbitrary `AlgebraData N` structure constants, not the *false* assertion that every normalized color basis has positive `sqrt(2) epsilon`. The manuscript's positive Pauli orientation must be discharged separately for the concrete `N=2` instance. Under a handedness-reversing color basis, signed epsilon flips.

## Bounded acceptance path — smallest informative proof first

1. **S4B24: source f first/last antisymmetry.** Prove in Lean, for actual arbitrary `AlgebraData N`, `M.structureConstant D A C = -M.structureConstant C A D`. Candidate source route: exact `AlgebraData.bracket_trace_skew` and `Matrix.trace_mul_comm` on original color matrices, or derive from accepted `colorLie_skew` and basis identifications. Check the original lemma's precise argument order; do **not** infer this from only the accepted *last-two* skew lemma. No guessed epsilon law.
2. **S4B25: ordered Fock finite-sum expansion and Gate111 insertion.** Establish a typed equality of actual `Fermion N →L[ℂ] Fermion N` continuous-linear operators. Expose indices and use local `Finset.sum_comm`/`Finset.sum_congr`, module linearity, and exactly the S4B23 coefficient. Retain `(-Complex.I)`, `1/16`, and product order. Do not unfold giant original source objects en masse.
3. **S4B26: color signed reindex to literal B formula.** Consume S4B24 and S4B25. Produce an explicitly defined `originalManuscriptBComplex M x` with precisely `(Complex.I/2)` and `theta[beta,b] * theta[delta,c]`. This should not require swapping theta products. Then compare the source's `M.deformedFermionField 1 0 x` to this complex operator `restrictScalars ℝ`. A named B definition alone is **not** proof of source equality: demand a fresh source-identification theorem.
4. **S4B27: paired SU(2) normalization and physical action.** Independently qualify that the concrete original paired `AlgebraData 2` realizes the manuscript's normalized oriented Pauli basis, its trace/structure constants and real/complex Fock identification. Only then establish equality on the actual smooth physical core and separately on closed-domain operator/form objects where required.
5. **Adverse spectral track (independent of S4 progress):** check S3 branching → S4 gauge-physical transverse level exclusion → S5 coercivity using manuscript lines 439–610 and 615–668; look for missing global `Spin(9)` action, slice-domain, fermion weight, and closed-form hypotheses. Any falsifying example is a valid result. Track in issue #29; do not interpret arithmetic tests as a kernel theorem.

For each candidate: pre-register the exact proposition and source blob/axiom contract; perform static import/type/namespace checks first; attempt a small diagnostic before expensive strict CI; classify the **first causal error**; stop repeating conversion/recursion patterns. Keep successful parents source-pinned; count no supporting or restored root twice.

## Open boundaries

- The expansion, signed color reindex, and complete operator equality above are *proposed*, not yet kernel-accepted.
- No CAR/Hermitian bound, global physical Spin(9) representation, reducing isotypic projection, closed-form coercivity, compactness or eigenpair existence follows from Gate111.
- Existing H4G1B transport is an equivalence under qualified assumptions, not existence of any positive normalizable eigenpair. The central scientific conjecture remains open.
