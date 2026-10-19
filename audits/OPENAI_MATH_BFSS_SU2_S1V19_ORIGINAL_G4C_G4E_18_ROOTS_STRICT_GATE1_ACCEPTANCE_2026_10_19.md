# BFSS S1V19 — original G4C–G4E operator covariance and Hilbert-unitary accepted

**Date:** October 19, 2026 (PDT). **Disposition:** `ORIGINAL_SOURCE_G4C_G4E_18_ROOTS_KERNEL_PASS__HILBERT_FOCK_UNITARY_ACCEPTED__EXACT_MAJORANA_THETA_COVARIANCE_NEXT`.

## Strict immutable source evidence

- [Original G4C to G4E Fermion Hilbert Unitary Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39298927950), job `118218660698`, all steps **completed SUCCESS**, exact triggering isolated branch commit `82426aebad406b4760e300085c5b69237aaa6ca4`.
- Actual immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Accepted original G4B cache restored with actual pinned `OAI.Analysis.Laughlin.Exterior.SpinAction`. Genuine additional `OAI.Analysis.Laughlin.Exterior.SpinUnitary` compiled in this run, not replaced by a surrogate.
- Exactly pinned candidate source blobs and exact axiom roots:
  1. `SU2BFSSG4CFermionOperatorCovarianceProbe.lean` `83e3fe5ffc3d521c38f9c20069b96aa6627ece06` (**4**): `creator_transport`, `annihilator_transport`, `creator_fermionGauge_covariant`, `annihilator_fermionGauge_covariant`.
  2. `SU2BFSSG4DExteriorOccupationIsometryProbe.lean` `85c9d998a9e01fbca2d32f5610fe6b7bf925d507` (**6**): `orbitalDual_gauge`, `vectorAnnihilate_gauge`, `exteriorGauge_ι_mul`, `occupationInner_scalar_gauge`, `exteriorGauge_occupationInner`, `exteriorGauge_occupationNormSq`.
  3. `SU2BFSSG4EFermionHilbertUnitaryProbe.lean` `d29e7acf325db8e9e383b26b8ee6b536c9078676` (**8**): `fockMass_eq_occupationNormSq`, `exteriorGauge_fockMass`, `fockAlgebraToBFSS_norm_sq`, `fermionGaugeLinearEquiv_norm_sq`, `fermionGaugeLinearEquiv_norm`, `fermionGaugeUnitaryEquiv`, `fermionGaugeUnitaryEquiv_toLinearEquiv`, `fermionGaugeUnitaryHom`.
- Actual log reports every **18 fully qualified** `#print axioms` declaration with exactly approved `[propext, Classical.choice, Quot.sound]`, and verification markers `ORIGINAL_G4C_G4E_AXIOM_CLEAN_PASS 4`, `... PASS 6`, `... PASS 8`, `ORIGINAL_SOURCE_G4C_G4E_18_ROOTS_KERNEL_PASS`. Strict source/complete output check, fresh source `.olean` each, no `sorryAx` or `error:`.
- GitHub Actions log explicitly confirms successful new cache save `bfss-s1v19-isolated-g4e-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

## Mathematics, obligations and negative knowledge

The genuine original paired Fock action is now a unitary group implementation, with creator/annihilator covariance and Hilbert norm/inner-product compatibility in the pinned original source implementation. It does **NOT** follow automatically that its **48 actual paired Majorana operators** transform as the real 48 source color matrix, that the original full SU(2) source-action exact field equation follows, or that any independent manuscript fermionic Hilbert space is unitary-equivalent to this source Fock model.

The next narrow source gate restores accepted G4E cache and compiles the **unchanged original** G4F `SU2BFSSG4FRealColorAnnihilatorForwardProbe.lean` `c633692f73341514efbf1365bd3a7ebcbc4e22f3` (**4**), G4G `SU2BFSSG4GMajoranaModeCovarianceProbe.lean` `5343c70f955c630c2f93b050a89d51f094d17440` (**6**), G4H `SU2BFSSG4HExactThetaCovarianceProbe.lean` `3ee402e49bbca8d90a232ddf5d34f578814549eb` (**5**): **15 roots total**, preserving source +i signs, output/color order B vs input A and exact original paired `AlgebraData 2`. Save a new cache only on successful complete strict kernel/axiom audit.

The independently investigated original `sourcePlusIGaugeCurve` z-quarter candidate S1V22 is uncompiled and has deep physical-sector transitive imports (L6G6→L6G5→L6G4), despite avoiding full S1G Euler dependencies. Do not trigger an expensive blanket closure on the false premise that it is now lightweight; the negative-knowledge audit `OPENAI_MATH_BFSS_SU2_S1V19_SOURCE_QUARTER_MINIMAL_IMPORT_CUT_PROPOSAL_2026_10_19.md` describes this. The literal source-quarter bridge, global SU2→Spin48 lift, manuscript module equivalence, physical charge domain transport, and nontrivial BFSS spectral gap remain **open**.

Governance: isolated branch only; no main, active PR #25, or upstream original mathematical definitions changed.
