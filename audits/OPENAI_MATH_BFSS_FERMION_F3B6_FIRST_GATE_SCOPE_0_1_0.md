# BFSS fermions F3-B6 — first compiler gate scope 0.1.0

**Date:** 2026-10-08. **Status:** SUBMITTED, NOT YET VERIFIED.

Research branch: `research/openai-math-su2-concrete-potential`. Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1.

Accepted input: F3-B5 Gate #71, run `37754565942`, job `113235810039`, source commit `da10e052ac425a79b25167bea736ca063d230b9c`. Both `occupationExpansion` and `occupationSelector_apply` are verified with `[propext, Classical.choice, Quot.sound]`. F3-B1 and F3-B4 kernel-verified occupation modes and ordered selectors remain inputs.

New theorems in `SU2FermionF3B6NonzeroKetProbe.lean`:
1. Theta-invariant submodules are stable under all full 24-mode occupation selectors.
2. Each nonzero exact BFSS fermion vector has some nonzero transported occupation coefficient.
3. A theta-invariant submodule containing a nonzero vector contains some canonical occupation ket, using the genuine selector identity and scalar inverse.

**Not proved by this gate:** nonzero status of every ket, reachability of all kets by creators/annihilators, `theta_irreducible`, full `AlgebraData 2`, or physical BFSS spectral/positivity claims. No assumptions of irreducibility, no weakening, no custom axioms or admitted proofs, no edits to main or upstream. Require exact candidate SHA and successful pinned CI with three standard-only axiom reports. After candidate submission, do not inspect new CI until human owner reports GREEN/RED.

Research maxim: discover what is true, not merely green checks.
