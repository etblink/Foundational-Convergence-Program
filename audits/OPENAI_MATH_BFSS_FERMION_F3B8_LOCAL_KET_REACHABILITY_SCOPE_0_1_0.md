# BFSS fermions F3-B8 — local signed ket reachability first compiler gate 0.1.0

**Date:** 2026-10-08  
**Status:** `F3B8_SUBMITTED_UNCOMPILED`  
**Branch:** `research/openai-math-su2-concrete-potential`.

## Qualified mathematical input

Gate #73: run `37757226966`, job `113244648305`, accepted HEAD `1ecf52116eb5769f51fc5960a93b562a991b973f`; four F3-B7 signed transition / coefficient-nonzero theorems all kernel-verified with `[propext, Classical.choice, Quot.sound]`. Its acceptance is `audits/OPENAI_MATH_BFSS_FERMION_F3B7_GATE_73_FORMAL_ACCEPTANCE_0_1_0.md`.

The accepted F3-A2 theorem `thetaInvariant_creator_annihilator` proves theta-invariant submodule stability under each actual transported creator/annihilator.

## Two exact new targets

1. For `W : Submodule ℂ (OAI.BFSSQuantum.Fermion 2)` theta-invariant, `occupationKet A ∈ W`, and `i ∉ A`, prove `occupationKet (insert i A) ∈ W`: apply the actual creator to `occupationKet A`, use the signed F3-B7 action, divide by the proved nonzero `creationCoefficient i A`.
2. If `i ∈ A`, prove `occupationKet (A.erase i) ∈ W`: same procedure with the actual annihilator and `creationCoefficient i (A.erase i)`.

No formal reachability of arbitrary configurations, claim that an arbitrary ket is nonzero, or `theta_irreducible` is in scope. Full 24-mode Fock-to-BFSS mapping unchanged. These local transitions are the input to later finite induction reaching the vacuum and generating every target ket.

## Qualification controls

Pin `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` and Lean 4.34.1. Preserve predecessor compiler gates and print axioms for both new declarations. No `sorry`, `admit`, custom axioms, larger recursion limits, weakened targets, writes to FCP `main`, or upstream changes. Submit one compiler candidate then stop without inspecting its workflow until the human owner reports GREEN or RED.
