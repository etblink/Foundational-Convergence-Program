# BFSS SU2 G4-K8E4 — source L² bridge candidate launch 0.1.0

**Date:** 2026-10-09. **Status:** `UNCOMPILED_CANDIDATE`.

Prospective source path: `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K8E4L2BridgeProbe.lean`. Exact accepted parent prerequisites: Gate #159 core noncancellation; Gate #160 cold-build+compiled-cache seeding. The current file tries seven new declarations and prints axioms individually: `sourceCoreToL2_injective`, `sourceCoreToL2_ne_zero`, `physicalInteractingCoreCharge_massless_L2_ne_zero`, `physicalInteractingCoreCharge_one_L2_ne_zero`, `physicalMasslessInteractingTrialEnergy_pos`, `physicalInteractingTrialEnergy_one_pos`, `physicalInteractingNormalizedTrialEnergy_one_pos`.

Source derivation: `coreToL2_ae` and `Lp.ext_iff` give almost-everywhere equality of the actual smooth-core sections. `Continuous.ae_eq_iff_eq volume` upgrades equality to everywhere on the genuine bosonic Lebesgue-volume domain; the pinned OpenAI Math BFSS.GaugeCore uses the same theorem with the same volume. Then use Gate #159's exact smooth-core nonzero result, the accepted `physicalDeformedEnergy_pos_iff`, and the independently certified positive denominator. No new measure assumptions or surrogate operators.

A successful proof would give source interacting charge L² nonvanishing for all real couplings h at m=0, strictly positive energy of the **one explicit physical test state** (including h=1,m=0), and positive normalized quotient for that state. **No** global Hamiltonian spectral infimum, lower bound, ground state, mass gap, arbitrary N, or nonzero mass conclusion follows.

This uncompiled change also causes the FIRST expected warm restore of the qualified Gate #160 compiled-prerequisite cache. If red, separate CI cache errors from Lean proof errors; do not attribute one to the other. If green, inspect all seven axiom reports and cache-hit timing. Stop before inspecting the next triggered gate without an owner color report.
