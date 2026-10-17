# BFSS L6-G0 — accepted GammaWords reuse and first bounded Lean source bridge

**2026-10-12. Qualification: UNCOMPILED CANDIDATE, NOT GREEN.**

## Project Lead discovery

The pinned mathematical upstream, etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a, already contains OAI.MathematicalPhysics.BFSS.GammaWords.lean with genuine proved gamma-word infrastructure: gamma_sq, gamma_anti, word_conj, trace_reverseWord_word, word_transpose, words_linearIndependent, words_span, sum_word_conj, gammaTwo_alt, and matrix_eq_of_trace_words.

In particular the 256 grade-0-through-4 gamma words span all 16-by-16 real matrices, and the gamma sandwich map has scalar action (-1)^grade(9-2grade). This is **more than enough upstream infrastructure** to avoid re-proving the entire 136-dimensional symmetric gamma-grade basis from scratch. The previous plan to create a huge new numerical Lean certificate or duplicate the signed-permutation gamma implementation is therefore retired.

The original FCP source is SU2RealGammaProbe.lean, with exact gamma_clifford and gamma_symmetric theorems. SU2BFSSFullAlgebraDataProbe.lean and SU2BFSSG1APairedThetaProbe.lean install the SAME gamma definition, not new matrices. The upstream GammaWords statements are generic in any nine gamma matrices satisfying those actual conditions, so their specialization does not add an unproved physical assumption.

## Artifact added

SU2BFSSPhysicalDomainL6G0SourceCliffordWordBridgeProbe.lean is a small direct specialization of seven original accepted GammaWords theorem families to FCP.BFSSGamma9.gamma: Clifford relation, symmetric gamma, word transpose sign, orthogonal traces, spanning, grade sandwich formula, and matrix equality from word traces.

No edited accepted Lean file, no sorry, no axiom declaration, no native_decide, no original Fock expansion, no physical eigenvalue claim. All seven theorems are written with actual source types and #print axioms. The local sandbox does **not** have Lean 4.34.1 or cached Mathlib objects and cannot reach public GitHub, so the new module has NOT been compiled. Mark it unqualified until pinned CI actually accepts the exact file. No previously green theorem or accepted cache list is touched. Do not present code as kernel-certified.

## Minimal next mathematical proof — upgraded from prior G1 plan

Derive the universal symmetric-matrix completeness theorem using existing GammaWords words_span over ALL 256 grade-0-to-4 words, not by constructing a second basis:
1. For a gamma word W of grade 0,1,4, the transpose is W; for grade 2,3, the transpose is -W. Thus the symmetric projection symm(W) is W in grades 0,1,4 and zero otherwise.
2. The grade-sandwich eigenvalues from sum_word_conj are 9,-7,+5,-3,+1 for grades 0,1,2,3,4 respectively. The skew grades vanish under symmetric projection.
3. Use upstream trace_reverseWord_word to show trace(symm(W)) and trace(G_p symm(W)) vanish except grades 0 and 1. The grade-zero coefficient is 16, and grade-one trace is 16 delta.
4. Show two REAL-LINEAR maps on the full matrix space agree on the 256 words. words_span then proves equality for all matrices:
     2(sum_i G_i symm(A) G_i-symm(A))
       = trace(A)I-sum_p trace(G_p A)G_p.
   Specialize to symmetric R to obtain the desired C-full identity.
5. The already written Clifford anticommutator derives the original generalized Fierz identity from C-full. Only then tackle original CAR/Gauss normal ordering and operator closure independently.

This route needs zero source-private definitions, zero huge concrete decision reductions and no expansion of the original cubic charge. A bounded kernel bridge using the EXISTING 256-word basis is easier than formalizing a new 136-element subtype/basis.

## Gates and permissions

Qualify L6-G0 alone using pinned upstream etblink/math, Lean v4.34.1, Mathlib d13f23b, accepted source SHA checks and only conventional kernel axioms. Fix any actual compiler diagnostic before opening L6-G1. Do not launch R4B/R4D or arbitrary 65-second fail-fast gates. Existing Python arithmetic remains external evidence, not Lean proof. Research branch only; leave FCP main, etblink/math and openai/math unchanged, and keep PR #25 draft/unmerged. No external publication or upstream PR authorized.
