# BFSS L6-G1: upstream GammaIdentity already proves original finite Fierz structure

> **Superseding qualification:** [L6G1 #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38294155678) is green at `8731052a43b8abfe29dad4d9cd2951982a2bd364`. The two exact FCP source theorems and imported upstream theorem passed the pinned compiler/axiom gate. See `L6G1_ORIGINAL_SOURCE_SPIN_IDENTITY_ACCEPTED_CHECKPOINT_0_1_0.md`. The original candidate description below records the pre-qualification state; arbitrary-spinor/row-orientation G2 remains a separate gate.

**2026-10-12 — UNCOMPILED source-specialization candidate.**

Discovery: pinned etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a contains lean/OAI/MathematicalPhysics/BFSS/GammaIdentity.lean, which imports GammaWords.lean and ALREADY proves the theorem OAI.BFSSGamma.spinIdentity : SpinIdentity G under the same symmetric nine-gamma Clifford hypotheses accepted for FCP.BFSSGamma9.gamma.

The original theorem is for unit real 16-spinors and uses COLUMN-spinor gammaTwo. The external source-coefficient regression expressed row-spinor gammaTwo; since gammaTwo is skew-symmetric, row and column contractions carry opposite signs. With this orientation accounted for, the original normalized Fierz identity and upstream theorem agree. For arbitrary nonzero real w, the identity is quadratic homogeneous and follows from the unit theorem applied to w/||w||. The zero-spinor case is trivial. The full source CAR Gauss-square and analytic physical domain conclusions are NOT obtained by simply importing spinIdentity.

The new L6-G1 Lean candidate imports the EXISTING verified upstream GammaIdentity and accepted original SU2RealGammaProbe; it defines no new gamma representation and specializes the upstream theorem directly to FCP.BFSSGamma9.gamma. The paired AlgebraData uses the SAME gamma definition. There are no new axioms, sorry or expensive explicit signed-permutation reductions. Both theorem names have #print axioms obligations. This module remains UNCOMPILED until pinned CI qualifies it; its appearance on the research branch must not be mistaken for a new kernel-checked theorem.

This is an important successor lesson: upstream GammaWords not only provides the full 256-word trace basis and sandwich map, but upstream GammaIdentity already COMPLETES the normalized spin identity. We should not spend resources formalizing a duplicate grade-0/1/4 symmetric-basis theorem unless an independent reason emerges. L6-G0 is a small optional source interface, not a mathematical prerequisite for L6-G1.

Related upstream source: CliffordSymbols.lean proves generic BFSS AlgebraData Clifford-linear CAR, principal-symbol square, norm and cutoff commutator identities. Audit their compatibility before recreating any domain calculations.

NEXT gate: qualify L6-G1 as an isolated exact imported source theorem, then derive a named row/column orientation and real-spinor homogeneity bridge and carry it into the true original SU2 Gauss normal ordering. Do not restart stalled R4B/R4D assembly.

Permissions: research branch only; FCP main and etblink/math and openai/math unchanged; PR #25 remains draft/unmerged. No external publication or merge authorized.
