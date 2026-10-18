# BFSS SU(2): independent manuscript Spin(48) ↔ source Fock representation — phase bridge preflight

**Date:** 2026-10-17 PDT. **Scope:** source-bound mathematical analysis and a new bounded S1C strict gate. **Status:** new Lean S1C gate PROSPECTIVE; independent manuscript module intertwiner and spectrum OPEN.

## Verified exact source boundaries

1. Original manuscript `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`:
   - lines 98–111 specify an **independent irreducible complex Clifford module** `𝓕`, the normalized **48** generators `√2·θ`, an SU2-adjoint color rotation `O_h ⊗ I₁₆`, a unique **SU2→Spin(48)** group lift, its unitary action `V_h`, gauge pullback with **inverse** spatial/color transform and the true smooth gauge core;
   - lines 113–133 define original `Q_α` with `−i` derivative and `+1/2` antisymmetric cubic signs, and `q=(1/16)Σ_α‖Q_α·‖²`;
   - lines 236–318 assert a specific kinetic / scalar-quartic / linear fermionic expansion, NOT implied by abstract `T†T` source identification;
   - lines 327–410 and 731–803 carry independent, load-bearing global Spin9 covariance, spectral reduction and high-weight sector arguments.
2. Actual literal source's 24-mode Fock representation: `SU2BFSSG1APairedThetaProbe.lean` uses `spinPairEquiv : Fin 16 ≃ Fin 8 × Fin 2`, `colorModeEquiv : Fin 8 × Fin 3 ≃ Fin 24`, and `pairedTheta`. Each theta is self-adjoint, satisfies delta-one CAR `{θ_{αa},θ_{βb}}=δ_{αβ}δ_{ab}I`, and is jointly irreducible on `Fermion 2`; therefore normalized `√2θ` obeys the conventional `{Γ,Γ}=2δI`.
3. The actual source fermionic gauge action is **not a paper-defined Spin lift**: `SU2BFSSG4EFermionHilbertUnitaryProbe.lean` defines the exterior/occupation Fock hom `fermionGaugeUnitaryHom` and `SU2BFSSG4HExactThetaCovarianceProbe.lean` proves exact theta covariance with real `adjointColorMatrix g B A`. `SU2BFSSG4JExactGaugeDataAssemblyProbe.lean` then builds the real gauge action. These facts by themselves do not construct `J : 𝓕 ≃ₗᵢ[ℂ] Fermion 2`.
4. `SU2BFSSPhysicalDomainS1ASchurScalarCommutantProbe.lean` proves a scalar Schur commutant; `S1BRelativeGaugeImplementerProbe.lean` gives scalar uniqueness of SAME-COVARIANCE invertible source implementers, explicitly **conditional** on the candidate covariance. `S1COneParticleSpecialUnitaryProbe.lean` is a frozen-existing **unqualified-until-tested** candidate proving the actual 24-mode complex one-particle action has determinant 1.

## Nontrivial new phase calculation; testable against exact source

The exact `G3B` 24-mode real one-particle matrix is an index-relabeling of
`I₈ ⊗ O(g)`, where `O(g)` is the three-color adjoint orthogonal matrix.
Consequently
`det_{24}(I₈ ⊗ O(g)) = det_3(O(g))^8 = (det_3(O(g))^2)^4 = 1`.
This uses **only** orthogonality, not an unproved SO3 connectedness statement.
Complexification preserves determinant. Hence the actual Fock one-particle
action lands in `SU(24) ⊆ U(24)`. This is the exact content of S1C's five
proposed roots and is the next scoped Lean qualification target.

In a one-mode standard CAR system `c,c†` with number operator `N=c†c`,
the induced real two-Majorana rotation from `c†→e^{it}c†` is implemented on
exterior Fock space by `Γ(e^{it})=e^{itN}`. The normalized Clifford/Spin lift
of the **same oriented real rotation**, with identity-basepoint convention,
is `e^{it(N−1/2)} = e^{-it/2} Γ(e^{it})`. Thus the possible scalar is a
half-determinant character; across 24 complex modes, `det U=1` is precisely
what should remove it on the SU24 subgroup **provided the realification,
Clifford order, group lift and global continuity are independently verified**.
Beware reversing the imaginary Majorana sign, swapping `U` with `U^{-1}`,
or choosing an inconsistent continuous square root; each changes the phase
or conjugation orientation. This phase calculation is analysis, not Lean proof
of equality of any new Spin(48) gauge representation.

## Explicit falsification/acceptance plan

**Stage S1C:** the dedicated `.github/workflows/bfss-su2-manuscript-spin-lift-phase.yml` uses unchanged historical S1C candidate blob `c5de7c744744212711780aee2d4f9742c002cd84`, frozen G3A/G3B/G3C source blobs `c8bbd59782c3116fb514d6aa20d91c607a11c3e7`, `c90b25156ec4d81ee16e5939cd888cc12cdc33a3`, `e555823155d5ce348843acb9eaa9ea6762f636ac`, frozen Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Fail closed if PR-scope cache or original accepted G3C compiled dependency is missing. Only a real strict run with all five root axiom reports, zero `sorryAx`, Lean errors and importable `.olean` qualifies determinant one.

**Next MUST-REMAIN-OPEN obligations:**
1. Independently specify `𝓕` rather than aliasing `Fermion 2`. Prove complex Clifford representation unitarity/irreducibility equivalence at normalized `√2θ` and source 48-label ordering; a theorem with an **assumed** unitary intertwiner must not be advertised as constructing one.
2. Explicitly construct the manuscript lift and its transported real 48-generator gauge action. Prove that it and literal `fermionGaugeUnitaryHom` cover the SAME `O(g) ⊗ I₁₆` with correct forward/inverse sign. Derive the scalar `χ(g)` via Schur, check `χ(gh)=χ(g)χ(h)` and continuity, and eliminate it via SU2 having no nontrivial continuous U1 character or an independent typed SU24→Spin48 lift. Do not assume uniqueness of an arbitrary SO48 implementer fixes scalar orientation.
3. Fiberwise unitary on `L²(ℝ²⁷;𝓕)`; exact physical SU2-invariant Hilbert space; equality of `C_c^∞` invariant cores, including all smooth representatives and correct gauge action; intertwining **all sixteen original Q_α** with `−i` and `+1/2` cubic signs.
4. Closed graph and domain transport of the native original AY/BE/BH charge and Hamiltonian, including 1/16 closed quadratic form association. Only then identify the paper Hamiltonian with source.
5. Independent audit of the paper's scalar quartic and fermionic core-form expansion, global Spin9 covariance, branching/interlacing, transverse oscillator bound, confinement, nonzero high-weight sectors, positive point spectrum. **No global BFSS mass gap follows from these operator identities.**

**Negative knowledge preserved:** S1B already proves an exact scalar commutant *conditional* on same covariance; S1C is not a theorem about the manuscript `𝓕`. Do not re-run the AY–BH 30-minute source proof just to check SU24 phase. Likewise do not call a failed CI cache lookup a physical mathematical gap.

**Branch governance:** only active S3L research branch, draft PR #25 unchanged, no main or upstream edits, no newly assumed axiom, no spectral claims.
