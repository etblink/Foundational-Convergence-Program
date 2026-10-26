# BFSS — rank-one fermionic extremizer survives the full physical gauge constraint

**Date:** October 25 Pacific / October 26 UTC 2026.
**Status:** ordinary mathematical result from original CAR/gauge source and compact-group equivariant tubular neighborhoods; NOT Lean certified, NOT a positive-eigenvalue theorem.

## Claim and quantitative scope

Let F be the actual original irreducible 48-Majorana complex Clifford module, G=SU(2), C=[C_c^infty(R^27;F)]^G its genuine physical smooth core, and the original fermionic multiplication B(x) and color-spherical comparator A(x)=E_{n∈S²}|Xn|. Suppose a constant C_B satisfies for EVERY nonzero Psi in the genuine physical core:

    integral <Psi(x),B(x)Psi(x)> dx
       >= -C_B * integral A(x) ||Psi(x)||² dx.

Then **C_B >= 16 sqrt(2)**. This sharp *lower obstruction on admissible coefficients* holds despite imposing full gauge equivariance on Psi. It does NOT prove C_B=16sqrt(2) is sufficient for every x, nor a statement about the full kinetic-plus-fermionic energy.

Original frozen source: etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a, manuscript October 5 TeX lines 70–128 and 229–326, original lean/OAI/MathematicalPhysics/BFSS/Core.lean. It fixes Boson(2)=R^27, CAR theta²=1/2, real gamma, f_abc=sqrt(2)epsilon_abc and genuine gauge action O_h on bosons with V_h on F.

## Proof I — residual-circle neutral extremal Fock fiber

Fix rank-one original x0=(u,0,0), r=|u|>0. Diagonalize gamma(u)/r, an involutive traceless symmetric 16x16 matrix, into eight signs +1 and eight signs -1. The original B simplifies to

    B(x0)=sqrt(2)*i*sum_(beta,delta) gamma(u)_(beta,delta)
                               theta_beta^2 theta_delta^3.

In the simultaneously diagonal spinor basis, K_j=i theta_j^2 theta_j^3=N_j-1/2 are 16 commuting CAR occupation bilinears, each with eigenvalues ±1/2. The original residual gauge SO(2) rotates color planes 2,3 and acts on F with Hermitian generator (up to orientation) K_tot=sum_j K_j. The true continuous Spin(48) gauge lift has no extra circle character; 16 two-plane rotations make its 2π total sign (-1)^16=+1.

The occupation configuration N_j=0 for the eight gamma-positive labels and N_j=1 for the eight gamma-negative labels satisfies

    K_tot = 0,
    B(x0) v = -8 sqrt(2) r v

on a nonzero Fock eigenspace. Thus choose a unit vector v in that eigenspace: it is fixed by the ACTUAL stabilizer H⊂SU2 of x0 (the circle preimage of SO2), not just by an abstract U1. The eight remaining independent color-1 complex CAR modes give 256 such Fock vectors. A(x0)=r/2, so the negative pointwise ratio is -16sqrt(2).

Details and exact integer enumerator: [rank-one stabilizer and Fock audit](FCP_BFSS_RANK_ONE_GAUGE_STABILIZER_NEUTRAL_FERMION_EXTREMUM_2026_10_25.md) and [CAR occupation-count script](../experiments/openai-math-su2-physical-domain/bfss_rank_one_gauge_stabilizer_fermion_extremum_check_2026_10_25.py).

## Proof II — a genuine compactly supported full physical gauge wavepacket

This second step goes beyond the H-fixed Fock fiber. Let G·x0 be its compact rank-one bosonic gauge orbit. Because the original G action is linear orthogonal, the standard equivariant tubular neighborhood theorem provides an H-invariant small open ball U in the normal slice N at x0, with a G-equivariant diffeomorphism of a tube with G×_H U. Choose an H-invariant nonnegative radial smooth bump rho_epsilon supported where |n|<epsilon. On the tube define

    Psi_epsilon(O_g(x0+n)) = V_g (rho_epsilon(n) v),

and extend it by zero outside the tube. This is WELL DEFINED because changing [g,n] by h∈H also changes v by V_h v=v and preserves the radial bump. The support is compact, the extension is smooth, Psi_epsilon is nonzero, and for every h∈SU2 it satisfies the actual source physical equivariance

    Psi_epsilon(O_h x) = V_h Psi_epsilon(x).

Hence Psi_epsilon belongs to the ORIGINAL gauge-invariant C_c^infty smooth physical core, not merely to F or the ambient L2.

The original source gauge covariance gives B(O_g x)=V_g B(x)V_g^-1, and A(O_g x)=A(x). On each slice x=O_g(x0+n), therefore,

    <Psi_epsilon(x), B(x) Psi_epsilon(x)>
        = |rho_epsilon(n)|² <v, B(x0+n) v>,

    A(x) ||Psi_epsilon(x)||²
        = A(x0+n) |rho_epsilon(n)|² ||v||².

Since B is an original polynomial multiplication operator and A is continuous, and A(x0)=r/2>0, the ratio <v,B(x0+n)v>/(A(x0+n)||v||²) tends UNIFORMLY to -16sqrt(2) as epsilon→0. Taking the ratio of the two genuine 27-dimensional integrals over this positive-mass shrinking tube yields

    lim_(epsilon→0)
      [integral <Psi_epsilon,B Psi_epsilon> dx] /
      [integral A ||Psi_epsilon||² dx]
       = -16sqrt(2).

The smooth tubular Jacobian is positive and cancels in the weighted average limit. Any universal full physical-core multiplication inequality with constant C_B must therefore have C_B>=16sqrt(2). This is a global physical gauge construction, not a claim that a bare Fock vector is SU2-singlet.

## Relation to previous quantitative discoveries; what is NOT established

The previously accepted ordinary-mathematics [64-cell joint B/A rational certificate](../experiments/openai-math-su2-physical-domain/BFSS_JOINT_FERMION_SPHERE_M8_LAMBDA14_K6_AUDIT_0_1_0.md) gives a SUFFICIENT all-configuration bound with C_B=(84/5)sqrt(2)=16.8sqrt(2), and the rank-one full-Fock lower obstruction 16sqrt(2) was known. The new result certifies that the same obstruction survives even the full physical SU2 smooth-core gauge constraint. The previous conditional lambda_2>14, m=8 and k=6 sector witness remain the current strongest source-first ordinary-mathematics quantitative results; no claim of a global BFSS mass gap follows.

For all m<=7 and allocation a<1/2, the positive oscillator coefficient 2sqrt(a)(m+9) is strictly below 16sqrt(2). Therefore merely projecting to gauge-physical wavefunctions **cannot** supply a strictly positive constant by separating the source oscillator A bound from the fermionic B/A multiplication bound. This is a negative result about that proof architecture. It does NOT rule out a coupled kinetic/fermionic estimate, enhanced fixed-Spin(9)-isotypic constraints, sharper geometric localization or a different oscillator method: the wavepackets constructed here are not claimed to occupy a specified Spin(9) type, and their gradients can diverge as epsilon→0.

Historical character cross-check: the SO2-neutral full Fock weight-zero dimension is 12870*2^8=3294720; the true SU2-singlet dimension computed by prior exact character projection is 3294720-2928640=366080. Do not confuse fixed-fiber H-invariance with a globally SU2-invariant *Fock vector*; the smooth wavepacket's orbital gauge equivariance is essential.

**Evidence ceiling:** ordinary source-specific CAR + standard equivariant tubular geometry, no new Lean .olean or axiom check, no positive eigenpair existence, and no accepted main-branch scientific promotion. No changes to original etblink/math, canonical FCP main or draft PR #25.

**Project Lead stop rule:** reject proposals to beat m=8 by invoking physical gauge invariance alone while retaining a separated uniform multiplication-only B/A estimate; demand a truly new coupled source-exact mechanism before spending strict CI resources.
