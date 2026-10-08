# BFSS SU(2) F4 — complete pinned AlgebraData 2 constructor first gate 0.1.0

**Date:** 2026-10-08. **Disposition:** `F4_G1_SUBMITTED_UNCOMPILED`. Research branch `research/openai-math-su2-concrete-potential`.

## Pinned definition

`openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, `lean/OAI/MathematicalPhysics/BFSS/Core.lean`, blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, `OAI.BFSSQuantum.AlgebraData 2` has 12 exact obligations: five color (including witness), three gamma (including witness), four theta (including witness). The constructor must inhabit **this actual upstream type**, not a replica.

## Accepted ingredients

- Color: `FCP.BFSSSU2.normalizedPauli`, `normalizedPauli_hermitian`, `normalizedPauli_trace_zero`, `normalizedPauli_trace_pair`, `normalizedPauli_color_spanning`. The real spanning property was accepted by Gate #22, the 4-field witness independently accepted by Gate #23. Source `SU2ColorCrossProbe.lean`.
- Gamma: `FCP.BFSSGamma9.gamma`, `gamma_symmetric`, `gamma_clifford`; Gate #31 real signed-permutation Cl(9) proof, source `SU2RealGammaProbe.lean`.
- Theta: `FCP.BFSSFermionF2.thetaCandidate`, `FCP.BFSSFermionF3C2.thetaCandidate_upstream_selfAdjoint`, `thetaCandidate_upstream_CAR`, `thetaCandidate_upstream_irreducible`; Gate #79 run `37764292701`, job `113268010404`, source `SU2FermionF3C2ThetaFieldsProbe.lean`, all standard-only axioms.

## Required compiler probe

Compile `SU2BFSSFullAlgebraDataProbe.lean`, importing all three accepted source modules as generated `.olean` files. Construct `noncomputable def concreteAlgebraData : OAI.BFSSQuantum.AlgebraData 2` by filling all exact fields with these values and proofs.

**Scalar edge:** F3-C2 CAR theorem uses `(1 : ℂ)`; pinned `AlgebraData.theta_CAR` uses unannotated `if ... then 1 else 0` which elaborated as `ℕ` in the prior Gate #78 candidate. Bridge via explicit true/false conditional cases and `one_smul`/`zero_smul`, not by pretending definitional equality. Same issue may apply to gamma/color; respect upstream field types. No changed definitions, assumptions or weakening.

Print axioms on the actual constructed `AlgebraData 2` witness, plus identity lemmas for its `color`, `gamma`, `theta` fields. Require only `[propext, Classical.choice, Quot.sound]` and successful pinned CI. The assembly gate is **UNCOMPILED** until CI succeeds.

## Scientific scope

Constructing `AlgebraData 2` supplies only its finite color/gamma/fermionic assumptions; it does not solve the BFSS spectral, Hamiltonian, gauge-invariance or mass-gap problem. Do not mutate upstream `openai/math`, FCP `main`, or file PR/issue; no `sorry`, `admit`, custom axioms, shortcut assumptions, theorem weakening, or invented broader scientific conclusions. Stop after pushing candidate, without inspecting the newly triggered gate until the human owner reports GREEN/RED.
