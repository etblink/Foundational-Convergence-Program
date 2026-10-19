# BFSS SU(2) S1V12 — strict literal positive-i Pauli z-quarter source sign equivalence PASS

**Research date:** 2026-10-19 PDT.  
**Conclusion:** `S1V12_SOURCE_LITERAL_Z_QUARTER_PAULI_NORMALIZATION_AND_LOCAL_SPIN_SIGNS_7_ROOTS_KERNEL_PASS__S1V13_ORIGINAL_NAMESPACED_IMPORT_BRIDGE_UNQUALIFIED`.  
**Strict CI:** [S1V12 #39231052811 — GREEN](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39231052811), job `117988817974`, exact checked-out commit `486cfb5eca54e2b7b0754516fef7ab08e9397552`.  
**Source:** `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V12SourceLiteralPauliQuarterSpinSignProbe.lean`, exact Git blob `20b8708eea4c9c3ec30e3b3c47eea66dcbd19e93`.  
**Workflow:** `.github/workflows/bfss-s1v4-disjoint-spin-rotors-cold-mathlib.yml`, exact Git blob `84f75c80239b3006cf54a91d88335183b4f1345a`.  
**Pinned environment:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Primary source identity, independently checked

The SOURCE ORIGINAL experimental BFSS files at accepted research HEAD `e840d811b0ac06b00539ad7f9a168af655fe99ff`:

1. `experiments/openai-math-su2-concrete-potential/SU2ColorCrossProbe.lean`, source Git blob `399e9380ba1c679dc173a9dec0ac21e09d7757fd`:
   - `pauli 0 = !![0,1;1,0]`,
   - `pauli 1 = !![0,-I;I,0]`,
   - `pauli 2 = !![1,0;0,-1]`,
   - `normalizedPauli A = (pauliScale : ℂ) • pauli A`,
   - `pauliScale = Real.sqrt 2 / 2`.
2. `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1GExactSourceRelativeCharacterTrivialityProbe.lean`, blob `e1fe07f84e4a1427b5b4d2b534bb32644e87b203`:
   - `sourceQuarterTurnTime = (Real.pi / 2) * Real.sqrt 2` with original positive-i `sourceYAngle` normalization.
   - qualified `source_quarter_z_matrix`: the ACTUAL named source element `sourceZ sourceQuarterTurnTime` is `!![Complex.I,0;0,-Complex.I]`.
3. `experiments/openai-math-su2-concrete-potential/SU2BFSSG1APairedThetaProbe.lean`, blob `4f8fbf05a35c1d625746931b7ff0361b7ffc2ec4`: exact source paired 8×3 Fock complex-mode / real-Majorana index order, matching the already accepted S1V5 stand-alone expressions.
4. S1L exact 48-label source real Kronecker matrix equality and G3A original adjoint coefficient matrix orientation are previously accepted and remain unchanged.

## Newly accepted source-literal theorem

Without importing that expensive original-source module closure, S1V12 restates EXACTLY the above pinned literal 2×2 matrices and sqrt(2)/2 normalization and proves, with the existing compiled concrete 48-source-label Spin48 rotor S1V8:

```
U := !![Complex.I,0;0,-Complex.I]
T(A) := ((Real.sqrt 2 / 2 : ℝ) : ℂ) • pauli(A)

U * U.conjTranspose = 1
U * T(0) * U.conjTranspose = -T(0)
U * T(1) * U.conjTranspose = -T(1)
U * T(2) * U.conjTranspose =  T(2)
```

The same **−,−,+** color-sign rule is proved for the ACTUAL typed `sourceColorPlaneRotor α : spinGroup source48Quadratic` conjugating original-sized 48-Majorana Clifford basis generators `ι(sourceBlockColorAxis α A)` in each of 16 blocks. The proof does not alter the original Pauli sign convention, reorder Pauli colors, or insert a replacement Clifford representation.

Seven roots:
- `sourceQuarterZLiteral`,
- `sourcePauliLiteral`,
- `sourceNormalizedPauliLiteral`,
- `sourceQuarterZLiteral_mul_conjTranspose`,
- `sourceQuarterZLiteral_conjugates_Pauli`,
- `sourceQuarterZLiteral_conjugates_normalized`,
- `sourceColorPlaneRotor_matches_quarter_sign`.

All seven `#print axioms` lines reported ONLY `[propext, Classical.choice, Quot.sound]`, with successful fresh nonempty .olean, zero `sorryAx`, zero Lean errors. The job produced `S1V12_PINNED_LITERAL_PAULI_QUARTER_TO_SPIN_COLOR_SIGN_7_ROOTS_KERNEL_PASS`. No retries or mathematical proof edits after strict acceptance were necessary.

## Live source bridge S1V13 — UNCOMPILED, never mark green by inference

`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V13OriginalSourceZQuarterSpinColorBridgeProbe.lean`, blob `692a437c3ecf8a496d5a5cc7581dfa1512ff5360`, is a staged **original-name imported** proof candidate with three proposed roots:
- `original_sourceQuarterZ_eq_literal` — typed equality of ACTUAL named `sourceZ sourceQuarterTurnTime` and S1V12's exact literal matrix, from S1G's `source_quarter_z_matrix`;
- `original_normalizedPauli_eq_literal` — typed original `FCP.BFSSSU2.normalizedPauli A` and S1V12 original-literal normalized Pauli formula, not an assumed equivalent basis;
- `original_source_quarter_adjoint_sign` — original-named Pauli adjoint color signs from the qualified S1V12 sign theorem.

**No Lean original import closure has been compiled for S1V13**, because S1G's historical pinned physical/Fock/OAI prerequisite chain is not present in the isolated cold Mathlib accepted source module environment, and a previous PR-scoped cache restore failed `PINNED_LEAN_CACHE_MISSING`. The exact original-source typed identity and namespace bridge remain OPEN; avoid silently promoting the copied source definitions as an imported original theorem.

## Scientific truth boundary / strategic next action

**Accepted:** source-literal, source-normalized 2×2 original Pauli matrix calculation with the EXACT sign rule of each actual source-sized Spin48 block, in a standalone kernel-qualified module; plus the already accepted genuine 16-rotor ordered product and center parity (S1V8–S1V11).

**Not accepted:** the original-named S1V13 source bridge, the original-named S1V7 paired labels, S1V3 source rotor identity, all-parameter continuous `SU(2) → Spin(48)` group homomorphism, original source Fock module unitary equivalence, closed-domain Hamiltonian transport, global Spin9 or point-spectrum claims. A single z-quarter group element does not prove a homomorphism nor global topology.

**Next high-value gate:** find a *measured, cost-bounded* original-import qualification for S1V13 and S1V7 based on the existing G1A/S1G sources and accepted Mathlib/OAI modules; only if original import closure genuinely resolves should the project claim typed original action matching. Otherwise develop the exact source one-parameter Spin(3) block representation and homomorphism on the accepted source-sized geometry while leaving original bridge OPEN. Do not repeat expensive cross-PR cache restore failures without an explicit structural correction.

## Repository safety

S1V12 triggered exactly one deliberate isolated workflow-file-only push run on `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018`, without adding a PR event. The subsequent S1V13 research-source-only commit did NOT retrigger the workflow. PR #25, its active research HEAD, main, and independent etblink/math pinned source remained untouched. The accepted theorem statement and source hash remain stable.
