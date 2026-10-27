# BFSS source-exact real gamma and Spin(9) center orientation — bounded falsification

**Date:** 2026-10-27 (Pacific). **At creation:** finite diagnostic candidate, CI outcome pending, **0 new Lean theorem roots**. This is a new source-fidelity / sign calibration experiment, not a physical spectral theorem.

## Frozen source authority

- Pinned original manuscript: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, TeX Git blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`. Spin(9) group-lift discussion lines 327–410, B4→D4 branching 439–517, 16-dimensional oscillator 524–613, high sector argument 615–685.
- Actual accepted paired gamma field: `FCP.BFSSGamma9.gamma` in `experiments/openai-math-su2-concrete-potential/SU2RealGammaProbe.lean`, Git blob `5ec0fcb039fb5c1367f72b2bd0f8c05fcd936587`. Its nine source **signed-permutation** matrices correspond to literal four-factor words `JIIJ, JIJX, JXJZ, JZJZ, JJIZ, JJXX, JJZX, XIII, ZIII`, `J=[[0,1],[-1,0]]`.
- Prior [Gate88 finite B-field tensor test](./FCP_BFSS_PROJECT_LEAD_GATE88_DIRECT_SOURCE_FORM_SPIN9_COVARIANCE_2026_10_25.md) used **different** real Cl(9) words `IIIX, IIIZ, ZZYY, XZYY, YXXY, YXZY, IYIY, YZIY, IXYY`. Direct exact entry comparison shows 0/9 same-index gamma matrices coincide even up to individual signs. Both are valid Cl(9) realizations. This does NOT invalidate Gate88's abstract Clifford or Lie covariance mechanism, but its finite matrices should NOT be cited as a literal entrywise test of the later accepted `pairedAlgebraData.gamma` basis. Preserve the distinction.

## Actual new independent test

The bounded standard-library Python script `experiments/openai-math-su2-physical-domain/bfss_actual_source_gamma_spin9_center_exact_2026_10_27.py` reads the **private Lean `perm` and `sign` rows themselves**. It checks their coefficients against all nine four-factor words, exact matrix Clifford relations for 81 gamma pairs, and for each of the 36 spatial planes `r<s` the true signed source spinor label generator `J_{rs}=-gamma_r gamma_s`. It checks `J^T=-J`, `J²=-I`, and original plane covariance `[J,gamma_r]=2 gamma_s`, `[J,gamma_s]=-2 gamma_r`, with zero on other gamma matrices. TWO independent exact Pfaffian algorithms (signed-matching and rational Schur complement) must agree.

**Preliminary exact local calculation on the literal signed four-factor source matrices:** all 36 `Pf(J16)=+1`. On the actual three SU2 adjoint color copies the oriented 48-real label plane generator has `Pf(J48)=Pf(J16)^3=+1`. Under the **additional still-unproved source identification of a genuine continuous Spin9→Spin48 homomorphism with this infinitesimal action**, the \(2\pi\) plane endpoint in the genuine CAR Fock module must act with the sign implied by this Pfaffian. For 24 original annihilator pairs `chi=√2 theta` and the exact original pair ordering, `Omega48=product(chi)=i^24(-1)^N=(-1)^N` (pair permutations have even sign), and the number of plane half-turn factors is even. Hence the *candidate orientation-specific central identification* is `U_{z=-1}=+Omega48`, not an arbitrary `±Omega48`; a global source lift with the wrong sign or a spurious SO9-factored trivial center fails this interface. **The calculation has no power to construct the missing continuous source group law, gauge commutation, or physical form invariance.**

A separate exact eight-block SU2 adjoint Fock character/parity calculation uses the **true SU2 singlet extraction [z^0]-[z^2]** (never merely torus weight 0). Its proposed check is **366080** gauge singlets split as **183040 even, 183040 odd**, confirming that an SO9-factored trivial center could not represent both sectors under the candidate lift. It does not generate any physical wavefunction or spectral eigenvector.

## Strict limitations and adoption policy

A green finite gate establishes only its original source matrix identity and reproducible character/Pfaffian outputs, **not** a new Lean proof or original-source global Spin(9) action. Neither previous source-closed Hamiltonian and S4B36 (63 accepted S4 roots) nor this finite experiment proves any positive normalizable BFSS eigenstates. A red run must preserve the first failing source, parser, gamma sign, or Pfaffian case as adversarial evidence; do not edit the source gamma matrices to make a test green.

Scientific critical path after this sign-orientation test: actual global continuous source Spin9→Spin48 group hom and matching original paired CAR Fock action, commutation with literal SU2 gauge datum, strong closed physical form invariance/isotypic projector, original fixed-slice Spin8 exclusion and closed high-type coercivity. Numerical threshold improvements or generic abstract Hamiltonian identities must not be substituted.


## Verified run 40475067910 — finite source-exact acceptance (0 Lean roots)

[Actions run #40475067910](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40475067910), job `122091173631`, attempt 1, source/head commit `e28a74ab4eda90de303a03fedc6a0a87b46b2e7f`, completed **success** 2026-10-27T08:39:48Z–08:39:59Z. Original job log attests the frozen actual Lean signed-permutation gamma source blob `5ec0fcb039fb5c1367f72b2bd0f8c05fcd936587`, script blob `6430043cadc977e98c6b7cd3d64058f56ee899e2`, true paired theta source `4f8fb05a35c1d625746931b7ff0361b7ffc2ec4` and manuscript blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`. Exact stdout:

```
ORIGINAL_GAMMA_SOURCE_AND_FINITE_PROGRAM_PINS_PASS
LITERAL_ACCEPTED_GAMMA_9X16_SIGNED_PERM_ROWS_AND_WORDS_PASS
GATE88_ALTERNATE_CLIFFORD_REPRESENTATIVE_NOT_LITERAL_0_OF_9_PASS
LITERAL_SOURCE_CL9_CLIFFORD_81_PAIR_CERTIFICATES_PASS
LITERAL_SOURCE_SPIN9_PLANE_LIE_AND_DOUBLE_PFAFFIAN_PASS 36
CONDITIONAL_SOURCE_CENTER_PLUS_FOCK_PARITY_ORIENTATION_PASS
GAUGE_SU2_TRUE_SINGLET_EVEN_ODD_PARITY_COUNTS_PASS 183040 183040
ZERO_NEW_LEAN_ROOTS_AND_NO_GLOBAL_SPIN9_OR_SPECTRAL_THEOREM_CLAIMED
ACTUAL_ORIGINAL_SOURCE_FINITE_CENTER_CONSTRAINT_PASS_NO_NEW_LEAN_ROOT
```

Run artifact: [12720033188](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40475067910/artifacts/12720033188), checksum and immutable full GitHub Actions job preserved. The exact literal original source relation is confirmed: `SU2BFSSFullAlgebraDataProbe.concreteAlgebraData.gamma = FCP.BFSSGamma9.gamma` by definitional identity; `SU2BFSSG1APairedThetaProbe.pairedAlgebraData.gamma = concreteAlgebraData.gamma` also by definitional identity. Therefore this genuinely tests the actual gamma component of the S4B36 accepted paired source, whereas the original historical Gate88 diagnostic tested a different equivalent Clifford matrix basis.

**Classification: reproducible original-source finite algebraic result, not a source-global Spin(9) representation theorem.** The orientation-specific central value `+Omega48` follows in ordinary Clifford/Fock algebra *conditional* on proving the genuine 48-Majorana Lie-to-group lift matches these original generators and CAR ordering. The new test does not prove that missing bridge. The 183040/183040 parity counts are for the exactly specified SU2-adjoint representation character, not an independently constructed Haar projection on the actual source Hilbert space. Any use of these facts in global physical source theorems requires those missing imports/proofs to be named explicitly.

**Acceptance ledger:** +0 Lean roots; 63 previously accepted S4 roots unchanged. Scientific next priority remains the actual continuous global Spin9 group law, Fock/gauge commutation, and preservation of the original physical closed form; only then high-isotype oscillator exclusion and compactness.

## New original Pauli/Fock B-field covariance finite experiment — 2026-10-27

**Pre-registered test; acceptance deferred to actual CI. No Lean theorem roots.** Prior Gate88's 48-label B tensor check used a different valid 9-gamma realization. The later source-exact center gate 40475067910 verified the actual accepted `FCP.BFSSGamma9.gamma` signed permutations, Lie plane generator `K_{rs}=-gamma_r gamma_s/2` and Pfaffian central sign. This new test composes them **on the literal same gamma basis and original Pauli color epsilon** to test the missing ORIGINAL Pauli/Fock B-field covariance interface.

New exact integer test source: [bfss_actual_source_gamma_bfield_spin9_lie_covariance_2026_10_27.py](../experiments/openai-math-su2-physical-domain/bfss_actual_source_gamma_bfield_spin9_lie_covariance_2026_10_27.py), staged Git blob `9eb39ebb0fb3a01a6df91f5efb9bf4223bb0aac4`. Reuses previously pinned exact Lean-source gamma parser instead of retyping approximate gamma matrices. Input frozen `SU2RealGammaProbe.lean@5ec0fcb0`, `SU2BFSSG1APairedThetaProbe.lean@4f8fb05a` and accepted S4B36 physical charge/Pauli-Fock B source `@81dd44ee`, manuscript `@12c5fffb`. The B-field's original **48-real Majorana coefficient tensor**, color-major indexing, is `T_(a,i)[(b,beta),(c,delta)] = epsilon_(a,b,c) * gamma_i[beta,delta]`. This is an exact, necessary finite-index component of the accepted original source, not an altered Hamiltonian.

The experiment attempts independent falsifiers:

- 27 original 48×48 antisymmetric epsilon-gamma source coefficient tensors, checked elementwise;
- **972** `36 planes × 3 colors × 9 spatial` original B tensor tests for Lie `[I3⊗(-gamma_r gamma_s),T_(a,i)] = 2 T_(a,J_rs i)` and doubled quarter-turn `(I3⊗(I16-gamma_r gamma_s)) T_(a,i) (..)ᵀ = 2 T_(a,R_rs i)`;
- full **1296** pairwise source 9D spinor Lie bracket checks, exact integral-matrix normalization, detecting a gap between individual gamma covariance and Lie algebra closure;
- **81** original SU2 adjoint-color generator plus exact quarter-turn B source identities; **108** `3 gauge planes × 36 spatial` original label-Lie commutators;
- a **deliberately reversed spinor-quarter sign negative control** for plane (0,1), coordinate (0,0), requiring a nonzero max-integer error 4. This is source-specific, not a generic numerical tolerance.

All checks are exact signed 64-bit integer arithmetic with entries within small bounds; numpy==2.3.4 is pinned and zero tolerances are used. Strict GitHub workflow `.github/workflows/bfss-spin9-actual-source-bfield-lie-covariance-finite-gate.yml` checks exact source and program Git blobs and fails closed. Source gamma matrices and all accepted mathematical proofs are unchanged.

**Hard stop:** even a fully green run would establish only exact *finite generator/field tensor* algebra. It would not construct or qualify a globally continuous `Spin(9)→Spin(48)` source homomorphism; establish its Fock action or gauge commutation as a genuine unitary group representation; prove invariance on the complete closed physical form domain; or establish a sector coercivity/eigenvalue theorem. If red, preserve exact first mismatched source plane/tensor/commutator; do not edit gamma or color epsilon to seek green. Cumulative accepted S4 count remains **63**.
