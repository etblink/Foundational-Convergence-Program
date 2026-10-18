# BFSS SU2 S1C — source-exact 24-mode gauge determinant one

**Accepted:** 2026-10-17 Pacific / GitHub 2026-10-18 05:02 UTC.
**Disposition:** PASS__ACTUAL_SOURCE_ONE_PARTICLE_GAUGE_SU24_HOM__FIVE_AXIOM_CLEAN_ROOTS__PAPER_INTERTWINER_STILL_OPEN.

## Strict, reproducible primary evidence

- [Manuscript Spin Lift Determinant #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39098987016), job 117591181654, **success**, source/workflow head ed4db2cfb8e1baf0f59f94b01fa36951a255c479. Final strict marker S1C_ACTUAL_SOURCE_SU24_DETERMINANT_ONE_FIVE_ROOTS_KERNEL_PASS, observed 2026-10-18 05:02:17 UTC.
- Original previously unqualified S1C source, unchanged: experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1COneParticleSpecialUnitaryProbe.lean, immutable Git blob c5de7c744744212711780aee2d4f9742c002cd84.
- Original exact source: etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a, Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Verified repository HEAD, compiler, Mathlib checkout and original frozen prerequisite hashes G3A c8bbd59782c3116fb514d6aa20d91c607a11c3e7; G3B c90b25156ec4d81ee16e5939cd888cc12cdc33a3; G3C e555823155d5ce348843acb9eaa9ea6762f636ac. PR-scoped pinned cached objects were present; no unproven dependency was substituted.
- **Five** printed, independently audited Lean declarations in namespace FCP.BFSSSU2PhysicalDomainS1C: adjointColorMatrix_det_sq_one; oneParticleMatrix_det_one; complexOneParticleMatrix_det_one; complexOneParticleSpecialUnitary; complexOneParticleSpecialUnitaryHom. Each has only the permitted Lean axioms propext, Classical.choice, Quot.sound. No sorryAx, Lean errors or unknown identifiers. Actual importable S1C olean compiled.

## Exact mathematical advance

The source 24-mode Fock one-particle gauge matrix is the eight-fold spin-pair/color-block lift of the actual real orthogonal color action, through G1A's exact Fin8×Fin3 ↔ Fin24 labeling. Its determinant obeys:

    det U24(g) = det O3(g)^8 = (det O3(g)^2)^4 = 1.

Complexification preserves determinant. S1C thus constructs the genuine source homomorphism from SU(2) into SU(24), not merely an unqualified formal or generic hypothesis.

This is an important input toward identifying the source exterior-Fock gauge action with the canonical Spin(48) implementation of its realified 24-complex-mode orthogonal action: the potential half-determinant phase is one along the SU(24) image, **provided** the realification, Clifford orientation, group lift and continuity are themselves constructed and checked.

## Remaining independent burden — no hidden theorem promotion

The manuscript etblink/math@adc7f124 (positive-eigenvalues-relative-su2-bfss.tex, lines 98–133) uses an **independent irreducible 48-Clifford module** F and its unique SU(2) lift into Spin(48). The source's Fermion 2 is NOT definitionally this arbitrary F. CAR, irreducibility, G4H exact theta covariance, S1A/S1B scalar implementer results, and this new S1C determinant-one theorem do **not** manufacture a unitary between independent modules or prove equality of the paper Spin lift with fermionGaugeUnitaryHom.

The next actual mathematical bridge is to prove the source exterior implementer *belongs to and equals* the normalized Spin lift with the correct realification/sign/phase, construct an independently specified paper module and its Clifford-unitary correspondence, then transport the source inverse SU2 bosonic pullback, invariant compactly supported smooth core, all 16 original supercharges and exact closed graphs/adjoints/form domains. Independently re-audit the manuscript's kinetic/quartic/linear fermionic expansion and full Spin(9) positive-point-spectrum argument. This gate proves **no** eigenvalue or BFSS mass gap.

Full scoped proof-engineering plan: [independent representation preflight](./OPENAI_MATH_BFSS_SU2_INDEPENDENT_MANUSCRIPT_SPIN48_PHASE_BRIDGE_SOURCE_BOUND_RESEARCH_2026_10_17.md).

**Governance:** active S3L research branch; [PR #25](https://github.com/etblink/Foundational-Convergence-Program/pull/25) draft/open with unchanged S3K base; no main/upstream changes. Avoid rerunning AY–BH 30-minute full Hamiltonian build to test this separate finite-dimensional boundary.
