> **New mathematical simplification (2026-10-12):** Concrete 34,816-entry finite Lean evaluation is NOT required in principle. From the already-qualified source gamma symmetry and Cl(9) relations, the 136 gamma products of grades 0, 1, and 4 form a trace-orthogonal basis of symmetric 16-by-16 matrices. The map R -> sum_i gamma_i R gamma_i has eigenvalues 9,-7,+1 by grade. This proves the universal completeness formula for ALL symmetric R, hence the earlier rank-one Fierz identity. Exact checks against the original accepted gamma source passed. See BFSS_UNIVERSAL_CL9_SYMMETRIC_GRADE_BASIS_AND_SANDWICH_AUDIT_0_1_0.md. This is NOT yet Lean kernel-certified.

# BFSS Project Lead: rank-one Spin(9) gamma completeness is the minimal next kernel gate

**2026-10-12 | research branch | source-faithful mathematical refactor 0.1.0**

**Status:** ORIGINAL_EXACT_SIGNED_GAMMA_SOURCE_RANK_ONE_34816_PASS; ALGEBRAIC_DERIVATION_OF_GENERALIZED_FIERZ_FROM_RANK_ONE; LEAN_FINITE_SOURCE_GATE_OPEN; NO_SPECTRAL_CLAIM_PROMOTED.

## Refreshed standing Project Lead duties

Reaffirmed from project decisions: independently lead substantive mathematical progress toward the original BFSS SU(2) Hamiltonian; distinguish actual operator theorems from finite coefficients, conditions, and physical speculations; preserve accepted kernel modules, original source definitions, pins, and cache identities; treat red CI as diagnostic rather than a physics counterexample; make small source-concrete repairs and verify axiom/compilation evidence before marking a gate accepted. Do not burn time on arbitrary 65-second repeats, bulk administrative preparation or source hunting that displaces mathematics. Editing is restricted to the FCP research branch; FCP main and both math upstreams are unchanged, PR #25 remains draft/unmerged. No upstream PR, merge, external publication or reviewer request is implied.

## 1. A new shorter and stronger L6-A proof decomposition

The immediate predecessor BFSS_PINNED_SOURCE_FIERZ_L6A_ACCEPTANCE_AND_GAUSS_BRIDGE_AUDIT_0_1_0.md established via exact original committed gamma source 313,344 generalized Fierz entries. That finite statement uses the nine gamma matrices AND the 9x9 gammaTwo matrix family, and had been proposed as the first Lean gate.

**We identified a substantially smaller source-specific identity that IMPLIES the former one by general matrix/Clifford algebra.** Let the actual real 16x16 symmetric source gamma matrices be G_i, 1<=i<=9; let w in R16 be arbitrary; set
- R=w w^T (rank-one symmetric matrix);
- T=sum_i G_i R G_i;
- v_p=w^T G_p w, n=w^T w.

Then the *rank-one completeness identity* is

(C)  **2(T-R)=n I_16-sum_p v_p G_p.**

This identity uses only the original **nine G_i**, NOT gammaTwo and no Fock operator. It is quadratic in w. It can be checked on just 16 basis vectors e_a and 120 pair sums e_a+e_b, since each matrix entry is a quadratic polynomial in w. The **34,816 integer matrix-entry comparisons** on those 136 inputs all passed against the literal signed permutation rows in SU2RealGammaProbe.lean, imported definitionally via concreteAlgebraData and pairedAlgebraData. This was independently executed using source text fetched directly from the GitHub branch and only integer arithmetic. The companion Python script reads the SAME source files, refuses changed Git blob digests, and reproduces the rank-one check in an FCP checkout. It has not been separately run in CI or given a Lean certificate.

**Exact source blob pins:** SU2RealGammaProbe.lean 5ec0fcb039fb5c1367f72b2bd0f8c05fcd936587; SU2BFSSFullAlgebraDataProbe.lean fe3e0b21bb60d74b54c9faf7c066db9b02939405; SU2BFSSG1APairedThetaProbe.lean 4f8fbf05a35c1d625746931b7ff0361b7ffc2ec4. The original matrices and accepted theorem signatures are NOT modified.

## 2. Complete mathematical derivation: (C) implies original generalized Fierz

The source defines gammaTwo_i,p=(G_i G_p-G_p G_i)/2. The original Clifford relation {G_i,G_p}=2 delta_ip I implies exactly

gammaTwo_i,p=G_i G_p - delta_ip I.

Because G_i and R are symmetric while gammaTwo_i,p is skew, define

S_p=sum_i G_i R gammaTwo_i,p.

Then

S_p = [sum_i G_i R G_i] G_p - G_p R = T G_p-G_p R,

and therefore

S_p+S_p^T = T G_p+G_p T-G_p R-R G_p
          = {T-R,G_p}.

Now insert (C):

{T-R,G_p}
  = 1/2 {n I-sum_q v_q G_q,G_p}
  = n G_p - sum_q v_q delta_qp I
  = n G_p - v_p I.

The (r,s) entry on the left is precisely

sum_i [(w^T G_i)_r (w^T gammaTwo_i,p)_s
      +(w^T G_i)_s (w^T gammaTwo_i,p)_r].

The right is (w^T w)G_p[r,s] - delta_rs(w^T G_p w).

**Thus the complete generalized Fierz identity follows algebraically from the single source-specific rank-one (C), the ALREADY ACCEPTED source symmetry/Clifford relations, and elementary matrix multiplication and transpose rules.** Spin(9) group transitivity is unnecessary; no new operator assumption, altered normalization or Fock representation is introduced. All factors of 2 and transpose signs are explicit.

This also supplies a second independent mathematical check on the previous 313,344-entry all-spinor finite result: the new smaller identity plus Clifford algebra implies precisely the same equation.

## 3. Minimal bounded formalization targets

**L6-A1: source rank-one completeness.** State (C) literally for G_i=pairedAlgebraData.gamma_i, w:SpinIndex->Real, as an equality of the original GammaMatrix 16x16. Verify its entries over the exact accepted signed-permutation source; prove quadratic polarization once rather than 313,344 slow concrete matrix reductions. Use the 136 sparse cases, or 18,496 independent entries if exploiting r,s symmetry (136 spinor cases times 136 symmetric matrix entries). Require no sorry, no native_decide, no new axioms and strict #print axioms. The source gamma's signed-permutation helpers are declared **private** in SU2RealGammaProbe.lean; do not presume they are available as public Lean identifiers from a new module, and do not edit their accepted source.

**L6-A2: general matrix anti-commutator transport.** A lightweight source-independent lemma that derives gammaTwo Fierz from (C) using the true gamma_clifford and gamma_symmetric interfaces. Only after L6-A1 is accepted can A2 be treated as an unconditional source theorem. A2 is abstract matrix algebra and should not invoke the gigantic original cubic operator expression. It should compile in a separate cached module with a strict axiom audit.

**L6-B: true source CAR differential normal-ordering to Gauss identity.** Only after A1/A2 should the finite gamma identity be connected to the original 48-theta and both original gauge generators. The already independently checked ordinary-mathematical target is Q(w)^2=n H0+sum_cp v_p x_p^c G_c on the full smooth core, followed by its physical reduction. This is NOT discharged merely by A1/A2.

**L6-C: closure/domain and spectral use.** The prior source-specific ESA/cutoff proofs, genuine physical Spin(9) action, branching and compact embedding still require independent source proof/verification. The finite gamma theorem alone neither proves eigenvalues nor qualifies 256-fold supermultiplet statements in Lean.

## 4. Critical negative knowledge and actionable next move

- **Do not waste finite proving effort on gammaTwo entry tests** when the rank-one 16x16 identity plus anti-commutator algebra supplies the entire general theorem.
- **Do not confuse 34,816 external integer checks with kernel certification.** We cannot run pinned Lean v4.34.1 and accepted olean dependency cache in this environment; avoid inventing a green result or placing an uncompiled elaborate module into the accepted cache.
- **Do not introduce a second nine-gamma implementation in Lean** as a surrogate source discharge. Any finite sparse lemma must be tied to the accepted public pairedAlgebraData.gamma by source-preserving definitional equality or a proved bridge.
- **Do not bypass positive Clifford eigenspace multiplicity/domain subtleties**; the 256-bound depends on closed physical supercharges and full Gauss constraint, not just these finite coefficients.
- **Do not resume the red R4B/R4D cubic source response assembly or 65-second arbitrary CI retries.**
- **Next action:** implement L6-A1 as the smallest source-faithful Lean lemma after checking the accepted compiler/cache environment and a conservative source-private-definition strategy; then prove A2 as a separate small algebra theorem. If no compiler access, preserve these exact obligations without falsely claiming compilation. The proof target has shrunk from the earlier 313,344 raw Fierz coefficient comparisons to a 34,816-entry source-only rank-one identity with an independent generic algebraic consequence.

## Preservation and permissions

This audit is a forward-compatible mathematical replacement for the large first-gate proof strategy; accepted S3L0–K3 proofs remain unchanged. Research branch only, PR #25 draft/unmerged, main and upstream source forks unchanged. No CI workflow was launched.
