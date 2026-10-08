# BFSS positive-eigenvalue theorem — first independent source-review adjudication 0.1.0

**Date:** 2026-10-07
**Project Lead disposition:** \`FAVORABLE_SOURCE_REVIEW_RECORDED__NO_MATERIAL_DEFECT_IDENTIFIED__REPRODUCIBILITY_AND_INDEPENDENCE_LIMITS_OPEN\`
**Effect boundary:** FCP research branch only, pinned OpenAI upstream unchanged, FCP main unchanged. No upstream PR, issue, fork, or public claim.

## Source authority

- Upstream: \`openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a\`.
- Primary manuscript: \`preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex\`.
- FCP review assignment: \`experiments/openai-math-su2-concrete-potential/POSITIVE_EIGENVALUE_STRESS_TEST_FREEZE_0_1_0.md\`.
- Earlier formally checked color proof: Gate #23, [run 37714988510](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37714988510), at \`b22e2b3e6232a7c5a43d0e7f71ec0f6485a2775d\`. Its four color-basis fields are clean. Its bosonic potential identification is *conditional* on a complete upstream \`AlgebraData 2\`; the gamma/theta/gauge model is not constructed.

## Reviewer response — provenance and calibrated acceptance

The owner relayed one independently produced, source-first review. The reviewer self-reports no exposure to other BFSS assessments, having read the pinned 888-line manuscript, plus the original BFSS paper. No provider identity, raw scripts, test inputs, terminal outputs, or untruncated hash audit were supplied with the report. Independence and computational reproducibility are therefore **self-reported rather than externally verified**.

The reviewer returned \`PASSES_SOURCE_REVIEW\` at approximately **90% personal confidence**, reported no load-bearing failure across all nine frozen test families, and supplied substantive arguments for:
- real gamma and fermionic CAR normalization, gauge lift, invariant smooth core, closable supercharge form;
- Lemma 2.1 coefficients (16 supercharges), quartic bosonic wedge potential and linear bounded Hermitian fermionic field;
- Spin(9)-isotypic reduction by form-preserving unitary actions;
- Spin(9)↓Spin(8) interlacing \`ν₁ ≥ λ₂\` (integral and half-integral);
- legitimate restriction of smooth finite-dimensional orbit spans to transverse slices;
- 16-dimensional oscillator energy \`|u|(n+8)\` and elimination of levels \`n ≤ m\` for \`λ₂>m+M\`;
- confinement coefficient \`(m+9)/3 - C > 0\`, compact embedding and kernel zero;
- gauge-invariant vacuum line and highest-weight polynomial sectors;
- infinitely many strictly positive normalizable eigenvalues from compact resolvent on an infinite-dimensional reducing sector.

Project Lead independently reread the pinned upstream manuscript's corresponding proof chain, including Lemmas 2.1–2.2, 3.1, 3.3, 3.5, Proposition 3.4, Lemmas 4.1–4.2, and the final theorem. The submitted review faithfully tracks the manuscript's load-bearing claims; no definite counterexample or earliest failed statement was established by this comparative audit. **This is a reasoned source-review passage, not an independent full derivation or a Lean proof of the spectral theorem.**

## Important numerical and interpretive corrections

1. The reviewer claims \`M = 6\` and reports a numerically observed \`‖B(x)‖/|x| ≥ ~13.064\` for one configuration, with no larger values in random searches. An **observed lower bound on the supremum is not a proven global upper bound**. Thus the reviewer’s proposed explicit \`m≥31\` and \`λ₂≥38\` thresholds are **not certified**. They are unnecessary for the manuscript's qualitative theorem, which uses only finite \`C\` and a sufficiently large \`m\`. Do not propagate these numerical thresholds as proven.
2. Reported gamma-matrix, supercharge, branching-character, and highest-weight-polynomial Python checks were not provided and **have not been independently reproduced**. Finite random tests are valuable diagnostics but cannot prove a theorem over all states/weights.
3. The manuscript explicitly **defines** the self-adjoint Hamiltonian by closure of the gauge-invariant supercharge form. Essential self-adjointness of a separate minimal differential operator, or identification with every alternative realization, is not proved here and is not required for the paper's theorem **as formulated**.
4. "Refutes BFSS" is a **qualified interpretation** of a historical passage; the mathematical claim of positive-energy eigenstates of the exact form-defined operator is separable from the historical threshold-state context.
5. Reviewer's residual reservation about gauge/rotation transpose conventions must not be called conclusively cosmetic without an explicit line-by-line covariance check.

## Decision

**Accept the delivered report as one favorable first source-level review, with no material mathematical defect identified.** Do not declare the OpenAI theorem formally proven, the Python checks reproduced, or the manuscript unconditionally correct.

Proceed to a **bounded, reusable gamma-realization feasibility assessment**, not wholesale implementation of \`AlgebraData 2\` or the compact-resolvent/representation-theoretic proof. Requirements for that assessment:
- target exactly the pinned \`gamma : Fin 9 → Matrix (Fin 16) (Fin 16) ℝ\`, \`gamma_symmetric\` and \`gamma_clifford\` fields;
- identify an explicit exact construction (for example via 7 real anticommuting skew 8×8 matrices and a 2×2 block extension) and a Lean proof plan that avoids giant explicit expanded matrix goals;
- inventory reusable upstream Mathlib/Clifford/Matrix/Kronecker APIs and unavoidable representation/transport issues;
- report feasibility, cost, and exact accept/reject criteria **before** starting a long CI proof series;
- leave the 48 CAR operators, irreducibility, gauge actions, and spectral theorem explicitly out of scope.

Separately, seek the reviewer’s exact numerical verification scripts and one narrowly scoped clarification of gauge/rotation covariance if obtainable; their absence does not impose a fresh global review or block the bounded feasibility step.

**Next stopping point:** independent gamma feasibility memo with grounded source references and a reasoned go/no-go decision. Do not start new CI proof gates in this adjudication turn.

**Operating maxim:** Protect the quality threshold, not the opportunity.
