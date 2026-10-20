# S1V52L9C1 Gate #1 — red: original Pauli dependency closure was incomplete

**Disposition:** `L9C1_GATE1_RED__ZERO_NEW_ROOTS__PINNED_SOURCE_PRECHECK_PASS__L9B4_CACHE_HIT__ORIGINAL_PAULI_MISSING_POTENTIALBASIS_OLEAN__SOURCE_MATH_NOT_REACHED`.

- [GitHub Actions run #39517332490](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39517332490), job `118952541722`, failure at **Compile exact original source normalized Pauli foundation (pinned)**, not at the new L9C1 theorem.
- Workflow/head SHA `c894ea6ee446e2007c3b01fdcfa67aef3daded45`. Candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9C1OriginalPauliQuaternionTracePolynomialProbe.lean`, blob `8aba2415cc4058228fe1a383f58cc7c5721fc5b9`. Actual original Pauli source `experiments/openai-math-su2-concrete-potential/SU2ColorCrossProbe.lean`, blob `399e9380ba1c679dc173a9dec0ac21e09d7757fd`.
- Original immutable upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Preflight and original L9B4 saved compilation cache passed.
- First compiler error, at **line 1 of the original source Pauli module**:
  ```
  SU2ColorCrossProbe.lean:1:0: error:
  object file '.../OAI/MathematicalPhysics/BFSS/PotentialBasis.olean'
  of module OAI.MathematicalPhysics.BFSS.PotentialBasis does not exist
  ```
- Therefore the original Pauli module did not compile and **L9C1 itself was NEVER elaborated**. Root count for the red gate is **0**. Historical accepted baseline **175** unchanged. The red does not challenge the nine symbolic sign coefficients.

## Source-exact dependent import closure

The pinned original `OAI.MathematicalPhysics.BFSS.PotentialBasis` imports `OAI.MathematicalPhysics.BFSS.CliffordSymbols` and `MassIdentity`. `CliffordSymbols` imports accepted `Core`. `MassIdentity` imports `GammaIdentity`, which imports `GammaWords`. The additional original `OAI.Analysis.CharacterCriterion.Pauli` import depends on `OAI.Analysis.CharacterCriterion.Definitions`.

The next infrastructure gate should compile, in original dependency order:

1. `OAI/MathematicalPhysics/BFSS/GammaWords` (blob `d12051e70de679f5458dbd456667a32c7b407ce4`)
2. `OAI/MathematicalPhysics/BFSS/GammaIdentity` (blob `45e58da900a7691b88e5760a483b8adff1c7f015`)
3. `OAI/MathematicalPhysics/BFSS/MassIdentity` (blob `331351401561e09a661068e83eb34cb6d8a96138`)
4. `OAI/MathematicalPhysics/BFSS/CliffordSymbols` (blob `cc01379653404c4ede3d551fd8d823e079543b21`)
5. `OAI/MathematicalPhysics/BFSS/PotentialBasis` (blob `bc9b526284166efcba5a8e296adc79ba88e6764d`)
6. `OAI/Analysis/CharacterCriterion/Definitions` (blob `4807a54ff13db29ad5efc8a2c1e56ae1f0982936`)
7. `OAI/Analysis/CharacterCriterion/Pauli` (blob `90c211b8635762030bfd6666e9293a237b474cff`)

Then compile the identical immutable original `SU2ColorCrossProbe` and unchanged L9C1 candidate. Preserve these source hashes and original source roots, allowing no extra axioms, sorryAx or surrogate Pauli matrices. Avoid a redundant full rebuild of already qualified L9B4 modules.

Separate staged L9C2 and L9C3 roots must NOT be promoted on the strength of Gate #1.
