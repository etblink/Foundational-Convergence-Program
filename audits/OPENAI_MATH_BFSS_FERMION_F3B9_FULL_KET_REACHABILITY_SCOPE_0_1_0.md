# BFSS fermions F3-B9 — full finite occupation-ket reachability first gate 0.1.0

**Date:** 2026-10-08. **Status:** `F3B9_SUBMITTED_UNQUALIFIED`. Research branch `research/openai-math-su2-concrete-potential`.

## Accepted basis
- Gate #75, run `37759429654`, job `113251943811`, HEAD `4e6e80a8dfa29220666275e13ee27622706f88e1`; both accepted F3-B8 one-mode insert and erase invariance theorems have only `[propext, Classical.choice, Quot.sound]`.
- Exact 24-mode Fock-to-BFSS representation and theta stability remain unchanged.
- The Gate #72 F3-B6 theorem independently ensures a theta-invariant submodule containing a nonzero vector contains at least one canonical occupation ket.

## Bounded F3-B9 target
Prove using finite-set induction only:
1. For any A, theta-invariant W containing `occupationKet A` also contains `occupationKet ∅`. Induct by removing an element using the kernel-verified F3-B8 erase theorem.
2. For any B, theta-invariant W containing `occupationKet ∅` also contains `occupationKet B`. Induct by inserting modes using the accepted F3-B8 insert theorem.
3. Combine them: for any A and B, `occupationKet A ∈ W → occupationKet B ∈ W`.

This gate formalizes actual finite reachability for all 24 modes, not a picture of a graph, abstract CAR representation or implicit axiom. It does NOT yet prove that a nonzero theta-invariant submodule equals the whole Hilbert space; later F3-C must use actual finite-basis spanning and a verified submodule argument, and only afterward attempt `theta_irreducible` and upstream `AlgebraData 2`.

## Verification rules
Pin `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` and Lean v4.34.1. Recompile predecessor proofs, print exact new axiom footprints. No `sorry`, `admit`, custom axioms, theorem weakening, FCP main or upstream edits. After submitting the next compiler candidate stop without checking its workflow until the human owner reports GREEN/RED.
