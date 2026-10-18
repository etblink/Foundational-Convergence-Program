# BFSS SU(2) S1V — isolated proof candidate, CI nontrigger preflight, and spectral audit priorities

**Date:** 2026-10-18 PDT  
**Status:** `RESEARCH_CANDIDATE_ONLY__NOT_LEAN_COMPILED__NOT_AXIOM_QUALIFIED__NO_CI_DISPATCH`  
**Owner:** Project Lead succession research  
**Branch:** `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018`  
**Parent accepted research HEAD:** `e840d811b0ac06b00539ad7f9a168af655fe99ff`  
**S1V file:** `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1VSourceSpin48AllVectorPlaneActionProbe.lean`  
**Provisional source blob:** `aa2c621353dd2f01011c943b27a6321c7afcfebd`

## Read-only CI safety preflight and action boundaries

Inspected the 76 workflows under `.github/workflows` at the parent research HEAD, including the event blocks relevant to this research branch and the existing push workflows. The repo has `push` workflows scoped to the DIFFERENT `research/openai-math-su2-concrete-potential` branch; the BFSS S1U and related research gates use `pull_request` targeting `research/openai-math-su2-s3k-physical-spin-flow` and/or `workflow_dispatch`. The S1V branch is **not** the head of any PR and does not match those push branch filters. Branch creation and the initial S1V file commit were followed by a direct Actions query with **zero** runs on this isolated branch.

This safety conclusion is limited to the inspected repository workflows: external rules or future workflow edits can change trigger behavior. No PR was created; no workflow was dispatched; no source on the active PR #25 branch, `main`, or the pinned independent `etblink/math` source was modified.

**Important unresolved CI hygiene:** the legacy rejected S1O workflow continues to run automatically on the active draft PR's accumulated diff and fails on its frozen `QuadraticMap.IsometryEquiv` recursion, though the source-faithful S1P0/P1 replacement and S1R automorphism path passed their own accepted strict gates. Treat repeats of S1O as known-red rechecks, not regressions of S1P. Make S1O manual-only only in a deliberately planned CI-governance operation; editing its listed workflow file on PR #25 is itself a potential broad PR-event trigger. Do not touch the active PR merely for cosmetic CI status.

## Exact new mathematical proposition

Let `Q=source48Quadratic` on the actual 48 real original Majorana labels, and `B=QuadraticMap.associated Q`. For any `a,b,v` with `Q a = Q b = 1` and `Q.IsOrtho a b`, define

```
x = B a v
y = B b v
c = v - x • a - y • b.
```

Because `B a a=B b b=1` and `B a b=B b a=0`, bilinearity gives `B a c = B b c =0`; `QuadraticMap.associated_isOrtho` translates these into the exact `Q.IsOrtho` hypotheses. The additive identity `v=x•a+y•b+c` then allows direct reuse of the already qualified S1U generator-conjugation theorem. The claimed all-vector image is the explicit

```
sourcePlaneFlip a b v =
  (-B a v) • a + (-B b v) • b +
  (v - (B a v) • a - (B b v) • b).
```

This is an exact source-normalized two-plane half-turn, not an assumed Spin cover, a continuous SU(2) lift, or a substitution of a different quadratic space.

The candidate source has exactly four proposed `#print axioms` roots:
1. `sourcePlane_decomposition`
2. `sourcePlaneComplement_ortho_first`
3. `sourcePlaneComplement_ortho_second`
4. `sourceSpinPair_conjugates_every_source_vector`

**No Lean compiler was available locally.** These are candidate declarations, and the proof scripts' compatibility with the pinned Mathlib API is not yet established. No green, no accepted theorem, and no new scientific consequence are claimed. A future qualification must compile the *exact* source file on the fixed `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` / Lean 4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` input, with a fresh `.olean`, verified S1U prerequisite closure, 4 exact axiom reports limited to `propext`, `Classical.choice`, `Quot.sound`, and zero Lean errors/`sorryAx`. A standalone dedicated **manual** gate with explicit branch ref and source hash is preferable to any new broad PR trigger. Verify workflow dispatch availability before designing that gate; do not change default branch to enable it.

If elaboration fails, preserve the FIRST causal diagnostic and do not blindly increase `maxRecDepth` or split out unproved hypotheses. Suspect `QuadraticMap.associated_eq_self_apply` specialization, implicit parameters on `associated_isOrtho`, and `simp only [map_sub, map_smul]` normalization as initial bounded checks, not asserted errors. Avoid unfolding the full 48-dimensional Clifford algebra.

## Independent spectral-truth work opened, without false certification

Read the pinned manuscript `positive-eigenvalues-relative-su2-bfss.tex` at the independent `etblink/math` commit. The theorem at approximately lines 113–150 and its proof at approximately 803–815 claim **infinitely many positive point-spectrum eigenvalues**, not a gap above zero. The proof relies on several independent statements whose truth remains to be assessed separately:

- lines approximately 236–318: exact `(1/16) Σ Q_α²` differential/form expansion, including the source-sensitive `1/2` kinetic coefficient, quartic potential and fermionic cross-term sign. The source Fock/Hamiltonian results do not independently validate this *manuscript presentation*.
- lines approximately 327–410: existence and continuity of an independent Spin(9) Clifford implementer, commuting with the exact gauge lift, smooth-core invariance, and reduction of closed form and operator by isotypic projections.
- lines approximately 435–516: Spin(9)-to-Spin(8) branching `ν₁ ≥ λ₂`, including half-integral highest weights. Check the Weyl-determinant/interlacing argument independently rather than using its statement as a premise.
- lines approximately 550–700: slice oscillator exclusion, finite-dimensional fermionic weight cutoff, gradient allocation, Fubini and Rellich steps, and the resulting compact resolvent/trivial kernel for sufficiently large rotation types.
- lines approximately 735–803: construction of infinitely many independent vectors in high-weight gauge-invariant physical sectors, including nonvanishing and highest-weight identifications.

No mathematical contradiction has been established by this preliminary reading. The priority is adversarially validate each load-bearing link, try explicit counterexamples or known edge cases when feasible, and record whether any found problem is physical, analytic, representational, or only proof-engineering. Do not confuse the manuscript theorem with a BFSS mass gap.

## STOP / continuation

1. Leave active draft PR #25 and accepted hashes unchanged.
2. Do NOT claim the S1V candidate passes before a deliberately scoped, strict manual qualification.
3. If S1V is accepted, next test source SU(2) quarter-color-turn and the actual 16-block Spin(3) composition with exact +i conventions and central sign; the continuous `SU(2) → Spin(48)` lift remains OPEN.
4. Independently audit the manuscript's strongest spectral dependencies *before* committing to a lengthy full module equivalence proof.
5. Preserve all red-to-green history in scoped audits, not the evergreen governance guide.
