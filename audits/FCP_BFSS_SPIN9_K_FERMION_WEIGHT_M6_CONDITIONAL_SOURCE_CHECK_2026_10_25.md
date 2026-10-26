# Source-first Spin(9) spectral check — explicit conditional K-weight ceiling M=6

**Dated:** October 25, 2026 Pacific / October 26 UTC.
**Classification:** independent mathematical derivation **conditional on the intended Spin(9)→Spin(48) Fock lift**; verified finite arithmetic but **not** an accepted Lean theorem, a completed original source matching proof, or an eigenvalue theorem.

## Primary source and dependency boundary

Original frozen manuscript `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `positive-eigenvalues-relative-su2-bfss.tex`, lines 327–410 (intended `Spin(9)` action on the **48 real** Majorana labels and Fock module); lines 439–517 (B4/D4 weights); lines 559–613 (unnamed uniform fermion (M) and transverse oscillator exclusion). Its intended 48-dimensional real representation is **three copies** of the real 16-dimensional `Spin(9)` spinor. The physical Fock module is an irreducible complex 48-Clifford module of dimension `2^24`.

External representation background: Gregory W. Moore, *Quantum Symmetries and Compatible Hamiltonians*, §18.4.2, Eq. (18.63), [Rutgers PDF](https://www.physics.rutgers.edu/~gmoore/QuantumSymmetryBook.pdf), states the complex spin-module torus-character formula as a product of half-weight pairs. This is a general representation-theoretic formula, not a verification of the BFSS implementation.

## Conditional exact arithmetic

Let (K=Spin(8)) stabilize a spatial unit vector in (Spin(9)), with weight coordinates ε_1,…,ε_4 used by the manuscript. Under the **specified standard vector-stabilizer embedding**, the complex weights of the real `Spin(9)` sixteen-spinor, restricted to (K), are all 16 sign choices
```text
(±1/2, ±1/2, ±1/2, ±1/2).
```
This is the (8_soplus8_c) restriction. There are 8 positive-ε_1 and 8 negative-ε_1 weights. Three independent color copies supply **24 positive +1/2 and 24 negative −1/2 label weights** in the 48-real Majorana orthogonal representation.

Group them as **24 opposite pairs** (w_j,-w_j). For the standard complex spin module of (Spin(48)) on Fock space, torus weights are
```text
mu = (1/2) sum_{j=1}^{24} s_j w_j,    s_j in {-1,+1}.
```
Consequently, for **every** Fock torus weight,
```text
mu_1 <= (1/2) sum_j |(w_j)_1|
     = (1/2) * 24 * (1/2) = 6.
```
Its first highest-weight coordinate is itself a torus-weight coordinate, hence no (K)-constituent of (\mathcal F) can have first coordinate exceeding **6**. The same bound applies to the gauge-invariant Fock subspace, if the gauge action commutes with the intended global (K) action.

**Conditional candidate:** the manuscript's unspecified uniform (M) can be taken to be **6** for its intended normalized Spin(48) complex spin lift, under the exact representation assumptions above. In this form the oscillator selection condition becomes
```text
lambda_2 > m+6.
```
Because the result is conditional, do not silently replace the manuscript's (M) or promote a concrete `source` theorem.

## Reproducible bounded diagnostic

[`bfss_spin9_fermionic_weight_ceiling_conditional_2026_10_25.py`](../experiments/openai-math-su2-physical-domain/bfss_spin9_fermionic_weight_ceiling_conditional_2026_10_25.py) enumerates the 16 spinor weights, three copies, opposite pairs, and exact rational ε_1 support bound. It verifies counts 48, 24 and 6 with rational arithmetic. No approximation or enumeration of (2^{24}) states is needed. Script creation commit `5f98b52d935309e2459ed52ce24f10347a90b879`.

The independent preceding [B4→D4 determinant test](../experiments/openai-math-su2-physical-domain/bfss_spin9_b4_d4_branching_finite_adversarial_check_2026_10_25.py) sampled 39,600 dominant matching-lattice pairs and found zero mismatch with classical interlacing; it cannot establish the universal source coefficient formula.

## Unresolved physical/formal premises

1. Construct and **qualify the actual global `Spin(9)` group lift** on the original 48-real Majorana source module, with all three copies, sign normalization, `Spin(48)` Clifford action, 16 supercharge covariance and source fermionic unitary. A postulated homomorphism or local Lie algebra calculation is insufficient.
2. Prove the weight-convention match under this lift. A different stabilizer embedding or torus scaling can change the numerical (M).
3. Ensure (K) action on the actual source physical Fock module is the standard spin restriction, and prove gauge commutation and closed-form invariance, rather than merely identifying abstract isomorphic finite-dimensional modules.
4. Independently verify the source's oscillator decomposition on true physical slices and lift the resulting inequality to the actual closed physical quadratic form.
5. No claim of positive eigenvalues, zero kernel, compactness, or a full Hamiltonian mass gap follows from this weight calculation alone.

**Next adjudication:** confirm the `Spin(9)` to real-48 label torus-weight dictionary against pinned `etblink/math` gamma and gauge conventions before trying a formal (M=6) theorem. If an explicit mismatch is found, retain this derivation as a valid statement about the standard representation, and reject its application to the original BFSS source.
