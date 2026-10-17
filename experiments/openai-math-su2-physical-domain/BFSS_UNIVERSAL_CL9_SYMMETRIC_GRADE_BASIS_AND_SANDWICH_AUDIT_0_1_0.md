# BFSS SU(2) — universal Cl(9) symmetric gamma-grade basis and gamma-sandwich completeness

**2026-10-12 | Project Lead mathematical proof audit 0.1.0**

Status: ORDINARY_MATHEMATICAL_PROOF_FROM_ALREADY_ACCEPTED_GAMMA_CLIFFORD_AXIOMS; SOURCE_GRADE_TRACE_18496_PASS; SOURCE_SANDWICH_34816_PASS; NO_NEW_LEAN_KERNEL_CERTIFICATION.

## Decisive reduction

The accepted original FCP gamma source has nine real symmetric 16-by-16 matrices G_1,...,G_9 satisfying G_i G_j + G_j G_i = 2 delta_ij I. These are the *actual* matrices installed by SU2RealGammaProbe.lean, SU2BFSSFullAlgebraDataProbe.lean and SU2BFSSG1APairedThetaProbe.lean, not a surrogate Clifford system.

The predecessor BFSS_SOURCE_RANK_ONE_COMPLETENESS_AND_FIERZ_IMPLICATION_L6A_AUDIT_0_1_0.md identified the finite statement

  2(sum_i G_i (w w^T) G_i - w w^T) =
      ||w||^2 I - sum_p (w^T G_p w) G_p.

Instead of asking Lean to evaluate 34,816 separate concrete signed-permutation entries, we now PROVE that statement (indeed a stronger matrix statement) abstractly from the already source-qualified Clifford and symmetry relations.

**Universal theorem:** For ANY symmetric real 16-by-16 matrix R, define Phi(R)=sum_i G_i R G_i. Then

  BOX: 2(Phi(R)-R) = tr(R) I - sum_p tr(G_p R) G_p. (C-full)

This requires NO irreducibility premise beyond the fixed 16-dimensional matrix size.

## Complete finite-dimensional proof

For any ordered subset S={i_1<...<i_k} of the nine gamma indices, define G_S=G_i1 ... G_ik and G_empty=I. Consider ONLY k=0,1,4:

  B={I} union {G_i} union {G_i G_j G_k G_l: i<j<k<l}.

There are 1+9+126=136 such matrices. Transposing a grade-k product reverses k factors, costing (-1)^(k(k-1)/2); for k=0,1,4 the sign is +1. Thus every matrix in B is real symmetric.

For any nonempty proper subset U of {1,...,9}, tr(G_U)=0. If |U| is even, choose i in U: conjugation G_i G_U G_i = -G_U. If |U| is odd, choose i outside U, which exists because |U|<9: again G_i G_U G_i = -G_U. Since G_i^2=I and trace is conjugation invariant, tr(G_U)=-tr(G_U) and hence tr(G_U)=0.

For distinct S,T in B, G_S G_T is a sign times G_(S symmetric-difference T). Its degree lies in {1,...,8}, so its trace vanishes. For S=T, products in grades 0,1,4 all square to I, giving tr(G_S^2)=16. Therefore:

  BOX: tr(G_S G_T)=16 delta_(S,T), for every S,T in B.

B is an orthogonal family of 136 nonzero symmetric matrices, and the real vector space Sym(16,R) has dimension 16*17/2=136. Thus B is a basis, with coefficient expansion for arbitrary symmetric R:

  R = [tr(R)/16] I
      + sum_p [tr(G_p R)/16] G_p
      + sum_(i<j<k<l) [tr(G_i G_j G_k G_l R)/16] G_i G_j G_k G_l.

Now compute Phi on an arbitrary grade-k gamma product G_S. If i is in S, then G_i G_S G_i=(-1)^(k-1)G_S; otherwise G_i G_S G_i=(-1)^k G_S. Summing over all nine indices:

  Phi(G_S) = (-1)^k(9-2k) G_S.

In grades 0,1,4 this gives eigenvalues 9,-7,+1, respectively. Apply Phi-R to the orthogonal basis expansion of R: identity coefficients acquire multiplier 8, single-gamma coefficients multiplier -8, and ALL 126 four-gamma coefficients disappear. It follows that

  Phi(R)-R=[tr(R)/2] I - sum_p [tr(G_p R)/2] G_p.

This is exactly (C-full). Taking R=w w^T yields the previous rank-one identity. The predecessor's short Clifford anti-commutator calculation then yields the generalized gammaTwo Fierz identity for arbitrary real w. No Spin(9) transitivity, numerical verification, modified source constants, Gauss assumption, or duplicate Clifford matrices enter the proof.

**Important trace exception:** The zero-trace conjugation argument applies ONLY to gamma products with 1<=degree<=8. It must not be misapplied to the full nine-gamma volume element, which may equal plus or minus I.

## Independent exact SOURCE validation

The connected GitHub source was parsed for the original private signed-permutation rows in SU2RealGammaProbe.lean at the current research branch. Every one of the following exact integer checks passed:

- 136 grade 0/1/4 gamma products, with 2,176 signed-permutation symmetry row checks;
- 136x136=18,496 trace Gram coefficients equal to 16 times the identity;
- 136x16x16=34,816 sandwich coefficients with exact grade eigenvalues 9,-7,+1.

The checker used signed-permutation multiplication and exact integers, NOT NumPy floating point or Fock matrices. These are **independent reproducibility checks** of the algebraic theorem, not Lean certification. Frozen original gamma source files and accepted compiler objects were not changed.

## New prioritized Lean obligations

**G1 (the only NEW finite-dimensional mathematics):** abstract real Cl(9) ordered gamma products; prove transpose symmetry in grades 0/1/4, trace-zero for nonempty proper subsets by conjugation, and mutual trace orthogonality. These are small algebraic theorems derived from PUBLIC original gamma symmetry/Clifford interfaces.

**G2:** deduce the grade 0/1/4 basis of Sym(16,R) using dimension 136; compute Phi's eigenvalues from the grade sign formula.

**G3:** derive (C-full) by trace expansion; specialize to R=w w^T. The original gamma source is discharged by its already accepted gamma_symmetric and gamma_clifford without revealing its private perm/sign arrays.

**A2:** the prior rank-one-to-Fierz anti-commutator transport, now an ordinary matrix theorem. **B:** original 48-Majorana CAR/Gauss normal ordering, independently required. **C:** original physical operator/domain/spectral consequences, separately required.

Do NOT re-open R4B/R4D enormous cubic source assembly, modify accepted gamma files, add an unproved Clifford lemma as a global axiom, or pretend finite integer checks are Lean theorems. The pinned Lean 4.34.1 dependency build/cache remains unavailable locally, so this commit preserves a universal ordinary-mathematical proof and exact source evidence, not a new compiled Lean module.

Project Lead priority: qualify G1 on the smallest mathematical basis infrastructure that already exists in pinned Mathlib and the public source gamma API. The earlier 34,816-case concrete source gate is superseded, and its diagnostic evidence is retained. No CI has been run. Research branch only, PR #25 draft/unmerged; FCP main and both upstream math repositories untouched.
