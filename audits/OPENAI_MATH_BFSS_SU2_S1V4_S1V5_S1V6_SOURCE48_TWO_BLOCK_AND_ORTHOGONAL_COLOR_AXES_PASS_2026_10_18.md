# BFSS SU(2) S1V4–S1V6 — accepted orthogonal Spin rotor commutation and concrete 16×3 real-label blocks

**Research date:** 2026-10-18 PDT / 2026-10-19 UTC.  
**Final qualification:** [Isolated strict gate #39210817379](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39210817379), job `117923551625`, overall **SUCCESS**.  
**Pinned verified environment:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.  
**Exact successful workflow checkout SHA:** `c607ceb7c8c9be1696f6dab126b6e1bf72ae6011`.

## Accepted mathematical results

**S1V4** — source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V4TwoDisjointSpinRotorsCommuteProbe.lean`, exact blob `debd4f447d075a2f65817860d156fee8061ce024`.

For any four source-sized 48-real vectors a,b,c,d with Q-unit hypotheses for each and the four explicit cross-plane orthogonality hypotheses Q.IsOrtho a c, a d, b c, b d, the two actual Mathlib `spinGroup Q` even rotor elements s(a,b)=ι(a)ι(b), s(c,d)=ι(c)ι(d) COMMUTE, first as literal Clifford algebra words and then as genuine spinGroup elements.

Roots:
- `FCP.BFSSS1V4.sourceSpinPair_coe_comm_of_cross_ortho`;
- `FCP.BFSSS1V4.sourceSpinPair_comm_of_cross_ortho`.

**S1V5** — source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V5ConcreteSixteenSourceColorBlocksProbe.lean`, exact blob `6d15a3a76625b3677f132c544f71e5d5eb1dc93c`.

Constructs an explicit coordinate-index equivalence `(Fin 8 × Fin 2) × Fin 3 ≃ Fin 24 × Fin 2`, preserves the real/imaginary Majorana bit and packs color with `finProdFinEquiv`, proves injectivity, and constructs concrete coordinate axis vectors with their self and other-index values. This establishes 16×3 *literal indices* and is not an assumed orthonormal basis. The original source's `ColorIndex 2 = Fin 3` and accepted `colorModeEquiv` have been inspected independently but a typed equality of two imported definitions is not yet kernel-qualified.

Roots:
- `FCP.BFSSS1V5.sourceColorModeEquiv`;
- `FCP.BFSSS1V5.sourceBlockColorEquiv`;
- `FCP.BFSSS1V5.sourceBlockColorLabel_injective`;
- `FCP.BFSSS1V5.sourceBlockColorAxis_self`;
- `FCP.BFSSS1V5.sourceBlockColorAxis_other`.

**S1V6** — source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V6ConcreteSource48ColorAxisOrthogonalityProbe.lean`, exact blob `4ae8b38d5601b8c57f09e94c523beb9b4598dcb1`.

Proves the unit-weight source quadratic Q coincides with the actual 48-real coordinate dot product, each concrete 16×3 coordinate axis has Q-norm one, distinct axes have coordinatewise product zero, and any two distinct such axes are **Q-orthogonal**. These are the exact geometric preconditions needed to feed the cross-plane commuting Spin rotors.

Roots:
- `FCP.BFSSS1V6.source48Quadratic_eq_dot`;
- `FCP.BFSSS1V6.sourceBlockColorAxis_unit`;
- `FCP.BFSSS1V6.sourceBlockColorAxis_mul_eq_zero`;
- `FCP.BFSSS1V6.sourceBlockColorAxis_ortho`.

The strict gate checked all eleven `#print axioms` root reports, each exactly `[propext, Classical.choice, Quot.sound]`, verified nonempty fresh `.olean` artifacts, and excluded `sorryAx`, Lean `error:`, and unresolved identifiers. It printed:

- `S1V4_SOURCE48_ORTHOGONAL_SPIN_ROTORS_COMMUTE_2_ROOTS_KERNEL_PASS`;
- `S1V5_CONCRETE_SOURCE48_SIXTEEN_COLOR_BLOCK_INDEX_4_ROOTS_KERNEL_PASS` (legacy banner says 4, but five exact axiom roots were actually audited following the explicit equivalence repair);
- `S1V6_SOURCE48_BLOCK_COLOR_AXES_UNIT_AND_ORTHOGONAL_4_ROOTS_KERNEL_PASS`.

## Preserve negative knowledge: three causally distinct red runs

1. [S1V4 first run #39209389471](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39209389471) — final Clifford fourfold multiplication had a remaining goal `A*(Cc*(D*B)) = (A*(Cc*D))*B`. This is only associativity; replacing the fragile local `rw [mul_assoc]` with `simp only [mul_assoc]` allowed the exact word commutation to compile. The first result had `sorryAx` due to the unsolved goal and was never accepted.
2. [S1V4 second run #39209849293](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39209849293) — S1V4 both roots compiled cleanly but the next new S1V5 index equivalence failed because `finProdFinEquiv.symm` lacked an explicitly typed `Fin 8 × Fin 3 ≃ Fin 24` size. Named `sourceColorModeEquiv` resolved the metavariable without altering the mathematical mapping. Overall job red due to S1V5.
3. [S1V4 third run #39210341975](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39210341975) — S1V4 and S1V5 both clean, three of the S1V6 root reports clean, but the norm-one theorem left the finite sum of squared `Pi.single` unevaluated. Replace the simplifier with an explicit `Finset.sum_congr` that reduces the sum to a single nonzero coordinate. No change to its theorem statement or source normalization.
4. [S1V4 fourth run #39210817379](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39210817379) — ALL three modules and eleven axiom roots green in one identical pinned cold-Mathlib research workflow. Compiled output provenance and strict checks preserved. No unsound assumptions introduced.

## The literal original-source bridge is now well specified, still OPEN

The accepted **original** `experiments/openai-math-su2-concrete-potential/SU2BFSSG1APairedThetaProbe.lean` from active research HEAD `e840d811b0ac06b00539ad7f9a168af655fe99ff` defines:
- `spinPairEquiv : SpinIndex ≃ Fin 8 × Fin 2 := (finProdFinEquiv : Fin 8 × Fin 2 ≃ Fin 16).symm`;
- `colorModeEquiv : Fin 8 × ColorIndex 2 ≃ Fin 24 := finProdFinEquiv`;
- `pairedLabelEquiv : SpinIndex × ColorIndex 2 ≃ Fin 24 × Fin 2` sending `(α,A)` to `(colorModeEquiv ((spinPairEquiv α).1,A), (spinPairEquiv α).2)`.

This precise original primary source was located and read, eliminating the uncertainty about block order. The staged `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V7OriginalSourceSixteenBlockLabelBridgeProbe.lean`, blob `ac7955db39a08abc987f28a3ed6dd71b878a1b76`, proposes **typed equalities** between S1V5 and original G1A. It has NOT been compiled; do not mark it accepted or infer it from the analogous expressions without a kernel bridge. The earlier `S1V3` typed original S1P0/S1S to standalone S1V1 bridge is likewise unqualified due to heavy original-import cache scope.

## Scope boundary and Project Lead next decision

We have constructed mathematically meaningful **source-sized 16×3 concrete orthogonal axes** and actual **two-block Spin rotor commutativity**. We have **NOT** constructed:
1. exact typed source G1A/G3B/S1L index/representation interoperability in one Lean import closure;
2. a source-normalized blockwise SU2 → Spin3 homomorphism preserving exact original +i, row/column signs;
3. 16 even Clifford embeddings, their finite product, center sign `(-1)^16`, or continuity;
4. the independent manuscript complex-irreducible Fock module intertwiner, closed physical Hamiltonian transport, Spin9 spectral decomposition, or positive-eigenvalue theorem.

Avoid diluting these boundaries. Source-only research commits and audits on the isolated branch did not trigger broad PR25 workflows. The expensive cold-Mathlib CI was intentionally activated only by editing its branch-and-workflow-file scoped trigger. No changes to active PR25 branch or canonical main.
