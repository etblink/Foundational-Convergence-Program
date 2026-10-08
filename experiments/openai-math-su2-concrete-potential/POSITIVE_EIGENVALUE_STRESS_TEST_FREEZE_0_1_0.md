# Family 270-B relative SU(2) positive-eigenvalue theorem — source-first stress-test freeze 0.1.0

**Status:** REVIEW ASSIGNMENT FROZEN; NOT AN ADJUDICATION; NO MATHEMATICAL VERDICT YET.
**Date:** 2026-10-07
**Execution:** independent reviewer, read-only, prior to committing to spectral-theorem formalization.
**Primary source:** pinned \`openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a\`, manuscript
\`preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex\`.

## Source-first independence protocol

Reviewer reads the manuscript (and necessary primary citations) **before** reading FCP's Lean bridge, independent-review reports, project plans, or any prior model summary of this theorem. Reviewer independently reconstructs the argument, records substantive mathematical judgments, then may inspect existing Lean infrastructure.

Do not treat a compiler-green *abstract charge bridge* as evidence for the concrete SU(2) model or the spectral argument. Do not assume the manuscript is right or wrong. Do not report a defect from lack of a formalization alone.

## Primary mathematical test families

1. **Model and symmetry:** \(T_a=\sigma_a/\sqrt2\), color commutator sign \(f_{abc}=\sqrt2\varepsilon_{abc}\), gamma and fermionic Clifford realization, lift of gauge adjoint \(\mathrm{SU}(2)\to\mathrm{Spin}(48)\), physical invariant \(L^2\) and smooth core. Check claimed gauge covariance/symmetry and density/closability without tacitly treating representative-level expressions as \(L^2\) equalities.
2. **Lemma 2.1:** verify \(\frac1{16}\sum_\alpha Q_\alpha^2\) integration-by-parts normalization, gamma traces, fermionic \(B(x)\), and scalar \(V(x)=\sum_{a<b}|x^a\wedge x^b|^2\). Check factors \(\frac12,\frac1{16},\sqrt2\), signs, boundedness \(\|B(x)\|\le C|x|\) and Hermiticity.
3. **Rotation reductions:** verify \(\mathrm{Spin}(9)\to\mathrm{SO}(9)\) action and its \(\mathrm{Spin}(48)\) lift, form/core invariance and strong form-norm continuity, character projectors, \(P_\lambda\mathcal C\) core density, and reduction of the associated self-adjoint operator.
4. **Orthogonal branching:** independently derive \(\mathrm{Spin}(9)\downarrow\mathrm{Spin}(8)\) interlacing \(\nu_1\ge\lambda_2\), including half-integral weights and the type-\(D_4\) \(t_4=0\) case. Audit the Weyl-character/determinant coefficient argument (exact denominator identity, possible Weyl-sign cancellations, and row-support determinant conditions).
5. **Fixed-slice representation:** prove evaluation at fixed \(u\neq0,s_b\) is meaningful for finite-dimensional orbit spans of smooth core representatives and \(K_u\)-equivariant; assess the subtle passage from \(L^2\) isotypic states to pointwise fixed-parameter slice types.
6. **Oscillator exclusion:** verify the transverse space has dimension 16, \(-\frac14\Delta_z+|u|^2|z|^2\) has eigenvalues \(|u|(n+8)\), the first highest-weight coordinate at level \(n\) tensored with the fermion module is at most \(n+M\), and the resulting bound \((m+9)|u|\) applies to all relevant slices.
7. **Confinement and compact resolvent:** verify the potential inequality and one-color bound, the averaged factor \(1/3\), gradient budgeting \(1/2\to1/4+1/4\), \(c_m=(m+9)/3-C>0\), transfer to the closed sector form, uniform tails, local Rellich, and compact resolvent with trivial kernel.
8. **Physical sector existence:** audit construction of the gauge-invariant fermion vacuum line, highest-weight polynomial \(P(x)\), its weight \(2(\epsilon_1+\epsilon_2)\), the nonvanishing radial cutoff vectors, invariance and infinite dimensionality of a single sector with arbitrarily high \(\lambda_2\).
9. **Final operator inference:** ensure the compact-resolvent spectral theorem supplies infinitely many strictly positive normalizable eigenstates for a reducing sector *of the exact relative physical Hamiltonian*, not merely quasimodes or approximation eigenvalues.

For any alleged flaw, return the **earliest load-bearing failed statement**, a counterexample or rigorous obstruction (when possible), and the downstream claims it threatens. Explicitly distinguish (a) demonstrably false, (b) plausible but unjustified, (c) supported, and (d) not examined. No blanket pass/fail by stylistic impression.

## Required deliverable

\`\`\`
SOURCE_IDENTITY = ...
INDEPENDENCE_EXPOSURE = ...
MODEL_AND_FORM = ...
ROTATION_REDUCTION = ...
BRANCHING = ...
SLICE_EQUIVARIANCE = ...
OSCILLATOR_EXCLUSION = ...
CONFINEMENT_AND_COMPACTNESS = ...
SECTOR_CONSTRUCTION = ...
SPECTRAL_CONCLUSION = ...
EARLIEST_MATERIAL_DEFECT = NONE_IDENTIFIED | PRECISE_STATEMENT
THEOREM_STRESS_DISPOSITION = PASSES_SOURCE_REVIEW | REPAIR_REQUIRED | INDETERMINATE
FORMALIZATION_SEQUENCE_RECOMMENDATION = ...
\`\`\`

**No external effects.** The review may be returned as chat/report. No direct modification to OpenAI, FCP main, or either experimental branch is authorized by this review request.

## Negative knowledge / bifurcation policy

- If an actual theorem defect is found, stop new spectral-formalization code and resolve the mathematical dispute with disjoint reviewers and reproducible counterproof before expanding infrastructure.
- If results are sound but substantial formalization gaps remain, proceed only through independently useful theorems with explicit concrete premises.
- A favorable source-level review is **not** a substitute for an eventual end-to-end Lean proof.

**Project maxim:** protect the quality threshold, not the opportunity.
