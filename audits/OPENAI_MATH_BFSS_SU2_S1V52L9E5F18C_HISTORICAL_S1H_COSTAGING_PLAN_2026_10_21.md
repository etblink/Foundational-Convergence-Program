# F18C source gauge hom identification — historical S1H co-staging plan (prospective, not accepted)

**Project Lead planning note:** `F18C_PROSPECTIVE__S1H_SOURCE_ACCEPTED_HISTORICALLY__IMPORT_CLOSURE_NOT_YET_CACHED_IN_S1V52__GATE_NOT_STARTED`.

## Frozen truth boundary

Accepted S1H [strict Gate #2, run #39144318743](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39144318743) proves for **any** original `GaugeGroup 2 →* (Fermion 2 ≃ₗ[ℂ] Fermion 2)` the equalities with `fermionGaugeLinearHom`, **conditional on** explicit source 48-`pairedTheta` vector covariance. It does not construct a paper-independent module or representation by itself.

The currently accepted F15 identifies a real original native sixteen-block Spin(48) Fock group hom into original `Fermion 2 ≃ₗ[ℂ] Fermion 2`. F17 and F18A successively established its exact original unscaled `pairedTheta` conjugation and right-transport operator identity. The staged F18B source targets the missing exact vector covariance premise; **F18B is NOT accepted until its own strict gate passes**. Staged F18C is just application of historically accepted S1H to that premise and is likewise **unqualified**.

## Historical exact source dependencies

The [manual-only S1H uniqueness workflow](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/.github/workflows/bfss-su2-source-gauge-uniqueness.yml) established the accepted imported closure. The present exact source file hashes are:

- `SU2BFSSPhysicalDomainS1HSourceGaugeCovariantImplementerUniquenessProbe.lean`: `f4c02e412e06d93841696dc9b36e926ee93c33bb`; imports S1G.
- `SU2BFSSPhysicalDomainS1GExactSourceRelativeCharacterTrivialityProbe.lean`: `e1fe07f84e4a1427b5b4d2b534bb32644e87b203`; imports S1F and original Euler `L6H5E8Y`.
- `SU2BFSSPhysicalDomainS1FSourceGaugeCurveHalvingProbe.lean`: `79f34a8d5dc8c7d2ebcf605f709f4d9f2c6b2b14`; imports S1E.
- `SU2BFSSPhysicalDomainS1ESourceRelativeGaugeCharacterReductionProbe.lean`: `cfee82b7531b00acfcdad4229cefe292c1ed9ca1`; imports S1D and original `L6G6X`.
- `SU2BFSSPhysicalDomainS1DRelativeGaugeCharacterProbe.lean`: `99ab414fc5d8d24157a6694c70c3f339b5947aa3`; imports S1B and original `G4B`.
- Historic S1H workflow co-staged historical S1G exact original Euler source imported from frozen baseline `f0683ba298a2c1109677f7bc7a8393265e0e8cda`, with a vetted 59-module import closure and qualified checks. Do not guess the historic cache key from the new research branch or use an invisible cross-branch cache as proof. The workflow used pinned upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Controlled acceptance recipe

1. Demand F18B strict source, three-axiom audit and saved F18B cache. If it is red, diagnose and correct it before launching F18C. No independent new source model or sign convention is needed.
2. Stage **both** the qualified F18B native Fock cache and the *real* S1H import DAG into the **same** pinned Lean job. Reuse historical S1H Euler staging logic and original source hashes, compiling missing modules topologically rather than using mere prior names or missing `.olean` files. Fail closed if exact imported dependencies cannot be reconstructed.
3. Compile `SU2BFSSPhysicalDomainS1V52L9E5F18COriginalNativeFockSourceGaugeIdentificationProbe.lean` with exact blob SHA preflight and audit its new theorem together with imported F18B and S1H. Axiom whitelist remains `propext`, `Classical.choice`, `Quot.sound`; reject `sorryAx`, type failures and unknown axioms.
4. Claim equality on **original Fermion 2** only after an entirely green gate and qualified cache. This does not imply manuscript abstract-Clifford-module identification, continuous Spin(48) group lift, closed-domain source-versus-paper Hamiltonian equality, or positive point spectrum.

## Governance and CI economics

Historic S1H workflow is manual-only. Do not retarget PR #25, mutate main, reset branch/cache pins, or rerun known-red gates unchanged. The F18C source is intentionally committed without an accompanying trigger. Research status and scientific boundary remain open.
