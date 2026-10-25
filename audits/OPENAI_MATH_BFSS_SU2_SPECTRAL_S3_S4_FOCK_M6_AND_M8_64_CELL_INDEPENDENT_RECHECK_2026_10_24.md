# BFSS spectral S3/S4 — independent source-character M6 and exact-rational M8 certificate rechecks

**Date:** October 24, 2026 Pacific. **Disposition:** reproducible independent arithmetic checks, zero new Lean roots, no new spectral existence theorem.

## Frozen authority and prior accepted state

Primary pinned mathematics: etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a, primary TeX source preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex, immutable Git blob 12c5fffb5f90b48856f60fb0e93c18e2490c5f1b. The source has 48 real fermionic Majoranas/24 creation modes, 16 supercharges and genuine physical quadratic form q=(1/16)Σ||Qαψ||².

The repository's earlier exact SU2-singlet Fock character analysis computed 366080 gauge-singlet states and 32 Spin9 highest types/35 copies. The old k=18 threshold was superseded. Strongest recorded CONDITIONAL source-faithful confinement estimate: lambda2>14, m=8, P^6 high-sector witness, from BFSS_JOINT_FERMION_SPHERE_M8_LAMBDA14_K6_AUDIT_0_1_0.md. Neither ordinary mathematics nor this audit is an end-to-end accepted Lean spectral proof.

## Independently executed full-Fock SU2 singlet first-weight test

Take 8 positive Spin9 spinor weights omega_s=(e1+s2 e2+s3 e3+s4 e4)/2, each with 3 genuine SU2 adjoint-color creation modes. The spin-vacuum shift is -(3/2)omega_s. With t exponent four times the first Spin9 weight, one block has joint SU2 character:
D(t,z) = t^(-3)+t^3+(t^(-1)+t)(z^(-2)+1+z^2).
The full 24-mode Fock character along this Cartan coordinate is D(t,z)^8. Extract SU2 singlet multiplicities COEFFICIENTWISE using [z^0]-[z^2], NOT z^0 alone (which includes SU2 nonsinglets). Exact integer dynamic programming, independently executed during this review, returned:

- Full Fock dimension: 16,777,216 = 2^24.
- Actual SU2-singlet Fock dimension: 366,080.
- Maximum first Spin9 torus-weight coordinate: +6, minimum -6, with one SU2 singlet state at each extreme.
- Character-level uniform fermionic weight bound M=6 is therefore sharp already on gauge singlets. For source proposed lambda=(15,15,1,0), lambda2=15>n+6 for n=0..8 is arithmetically verified, CONDITIONAL on actual Spin9/Spin8 physical stabilizer action and oscillator projection.

The new, executable stdlib-only exact integer check is experiments/openai-math-su2-physical-domain/BFSS_ACTUAL_SU2_SINGLET_FOCK_M6_SOURCE_CHARACTER_CROSSCHECK_2026_10_24.py, commit 9b1352da741e9056b7df12604f05b9b409983194. It is an independent lower-dimensional recheck, NOT a new proof of the original global Spin9 lift, 48-Majorana representation action or spectral existence.

## Independently executed exact rational 64-cell confinement certificate

Independently recomputed the previous certificate using exact Python Fraction rational arithmetic, isqrt integer bounds, direct 4d rational cubic and triangular barycentric mesh. For J0=integral_0^1 1/sqrt(1+15s²)ds, N=1024 and integer scale 10^10, the results match prior reported bounds EXACTLY:
LOW=5322427482; UP=5333071805;
133/250 < LOW/10^10 < UP/10^10 < 267/500.

The four globally claimed rational affine lower supports for color-spherical mean A(t), for ordered nonnegative t1>=t2>=t3, are:
L0=(t1+t2+t3)/3;
L1=t1/2;
L2=3(t1+t2)/8;
L3=(231t1+104t2+104t3)/500.

Normalize t=(1,u,v), 0<=v<=u<=1. At each of 45 exact-rational vertices and each of 64 closed triangles, test the cubic predicate 4d³-d Σt_i²-t1t2t3>=0 with d=(21/20)Lk. Independently found ALL triangles covered by one common support and counts exactly L0:34, L1:1, L2:10, L3:19; no uncovered triangle. Positive coefficient exact check 119²−2·84²=49>0 and retained gradient 1/2−49/100=1/100.

This independently reproduces the **finite arithmetic** in BFSS_JOINT_B_SPHERICAL_M8_CERTIFICATE_0_1_0.py. Given the previous source-to-B(t) exact 48-Majorana fermionic eigenvalue norm calculation, global validity of the four supports and convexity of f, the 64 cells certify the all-configuration scalar inequality f(t)<=(21/20)A(t); with B=16sqrt2 f this gives ||B|| <= (84sqrt2/5) A. It is not proof of the unverified Hilbert source Spin9 group action, real smooth slice oscillator exclusion or extension to the complete physical closed form.

## Shorter S3 determinant implication, independently derived

For the exact pinned source's B4→D4 branching coefficient formula (source lem:branching, lines 439-517), matching integral/half-integral weight lattice, let L_j=lambda_j+4-j and t_i=nu_i+(3,2,1,0)_i. The manuscript's proposed coefficient is the determinant of the 4x4 matrix of 0/1 indicators 1[|t_i|<=L_j]. There is a short alternative implication:

If t1<=L2, then by D4 dominance |t_i|<=t1<=L2<L1 for all four i, so the FIRST TWO COLUMNS of the indicator matrix are IDENTICAL (both all 1); hence determinant zero. Contraposition: a nonzero coefficient forces t1>L2, i.e. nu1>lambda2-1. Integral difference nu1-lambda2 then implies nu1>=lambda2.

The proof is a genuine elementary determinant implication, conditional on the source's **unproved-in-Lean representation-theoretic identification** of B4→D4 branching multiplicities with this determinant. Formalizing identical-columns⇒zero may simplify a future source-faithful gate, but must never be promoted into the full branching theorem prematurely.

## Most important remaining scientific dependency

Already formally source-qualified: S2A–S2C original paired smooth-core charge form and bosonic potential, S2D literal transverse slice wedge geometry; D2B28 genuine paired H self-adjointness and weak-form associated operator, full independent/pair graph image H4E3D4C4, conditional nonzero eigenpair iff H4G1B. Missing: a full genuinely global unitary Spin9 action on original gauge-physical Fock-valued L², covariance of ALL source kinetic+cubic 16 supercharges, genuine form-norm symmetry/isotypic projection core, actual K_u-equivariant smooth fiber Hermite projectors, completion of the high-isotype coercivity on the true CLOSED source form domain, and nonzero infinite reducing sectors. Old S3A/B gamma-plane infinitesimal identities and S3L partial source cubic identities cannot be promoted into global closed-form covariance. See BFSS_S3L_CUBIC_WEIGHTED_RESPONSE_SOURCE_GAP_AND_NEXT_PROOF_0_1_0.md.

The manuscript's target is infinitely many positive NORMALIZABLE point eigenvectors on the original relative SU2 physical Hilbert space, not a global positive mass gap. These tests are useful falsification coverage but do not prove such eigenvectors.

**Decision:** preserve source-first plan handoffs/FCP_BFSS_PROJECT_LEAD_SPECTRAL_EXISTENCE_EXECUTION_PLAN_SOURCE_GATES_2026_10_24.md; target the actual original Spin9 cubic-charge/global closed-form seam next. Zero new Lean roots. Canonical main, draft PR #25, immutable etblink/math unchanged.
