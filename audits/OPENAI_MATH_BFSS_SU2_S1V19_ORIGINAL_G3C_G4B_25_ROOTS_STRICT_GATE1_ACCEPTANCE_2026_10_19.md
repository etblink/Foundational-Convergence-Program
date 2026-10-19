# BFSS S1V19 — original source G3C–G4B complex unitary and fermion transport accepted

**Date:** 2026-10-19 PDT. **Status:** `STRICT_KERNEL_PASS_25_ORIGINAL_ROOTS__SOURCE_FOCK_LINEAR_TRANSPORT__HILBERT_UNITARITY_NEXT`.

## Exact acceptance evidence

- [Original G3C to G4B Fermion Transport Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39297465939), GitHub Actions job `118213602665`, whole job **completed SUCCESS** on source-pinned isolated commit `3e9b34fd65ef25025031ad2192204d8132f010c0`. Original candidate files were not altered.
- Immutable upstream source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Real original `OAI.Analysis.Laughlin.Exterior.SpinAction` built and original G3B source cache restored.
- Source blobs and exact axiom roots:
  1. `SU2BFSSG3CComplexOneParticleUnitaryProbe.lean` `e555823155d5ce348843acb9eaa9ea6762f636ac`: `complexOneParticleMatrix_block`, `complexOneParticleMatrix_one`, `complexOneParticleMatrix_mul`, `complexOneParticleMatrix_conjTranspose`, `complexOneParticleMatrix_left_unitary`, `complexOneParticleMatrix_adjoint_inv`, `complexOneParticleMatrix_right_unitary`, `complexOneParticleUnitary`, `complexOneParticleUnitaryHom` (**9**).
  2. `SU2BFSSG4AExteriorGaugeActionProbe.lean` `1b1c1099dfa486f76ede75a082f84c19b29155b5`: `orbitalGauge_one`, `orbitalGauge_mul`, `exteriorGauge_one`, `exteriorGauge_mul`, `exteriorGauge_inv`, `exteriorGauge_vacuum`, `projection_orbitalGauge`, `annihilate_exteriorGauge`, `create_exteriorGauge` (**9**).
  3. `SU2BFSSG4BFermionLinearTransportProbe.lean` `c6270243d0f61e8ee415e378c0865d2954958472`: `exteriorGaugeLinearEquiv`, `exteriorGaugeLinearEquiv_apply`, `fockAlgebraToBFSS`, `fermionGaugeLinearEquiv`, `fermionGaugeLinearEquiv_intertwine`, `fermionGaugeLinearEquiv_vacuum`, `fermionGaugeLinearHom` (**7**).
- Original job log lists **all 25 named roots** and for each only the approved axioms `[propext, Classical.choice, Quot.sound]`; the strict validator printed `ORIGINAL_G3C_G4B_AXIOM_CLEAN_PASS 9`, `... PASS 9`, `... PASS 7`, then `ORIGINAL_SOURCE_G3C_G4B_25_ROOTS_KERNEL_PASS`. Source `.olean` exists for all 3; no `sorryAx` or `error:`.
- GitHub Actions explicitly printed successful cache write: `Cache saved with key: bfss-s1v19-isolated-g4b-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

## Truth boundary and next gate

F4/G1A, original G1B–G3B, and G3C/G4A/G4B now provide the accepted exact source candidate's color and complex one-particle unitary transport, exterior Fock gauge action, and fermion linear equivalence. **They do not yet certify the Hilbert-norm-preserving fermionic representation, creator/annihilator covariance on the Hilbert Fock model, or G4H exact paired Majorana covariance.**

Next stage: exactly pinned original `SU2BFSSG4CFermionOperatorCovarianceProbe.lean` (`83e3fe5ffc3d521c38f9c20069b96aa6627ece06`, 4 roots), `SU2BFSSG4DExteriorOccupationIsometryProbe.lean` (`85c9d998a9e01fbca2d32f5610fe6b7bf925d507`, 6 roots), and `SU2BFSSG4EFermionHilbertUnitaryProbe.lean` (`d29e7acf325db8e9e383b26b8ee6b536c9078676`, 8 roots): **18** roots. G4D imports real `OAI.Analysis.Laughlin.Exterior.SpinUnitary`, so the upstream source must be built rather than substituted. Cache through G4B can be reused; do not compile G4F–G4H until this acceptance is established or a precise first-error diagnosis is available.

Parallel separate mathematical obligation: local **actual original** +i sourceZ z-quarter equality and source G3A trace; original S1G full Euler/relative character closure is too broad an import for that restricted equality (see `OPENAI_MATH_BFSS_SU2_S1V19_SOURCE_QUARTER_MINIMAL_IMPORT_CUT_PROPOSAL_2026_10_19.md`). Global continuous SU(2)→Spin(48), independent manuscript Clifford-module Hilbert intertwiner, physical domain equivalence, Spin(9) and positive spectral gap remain open. Do not merge with PR #25/main or mutate original upstream.
