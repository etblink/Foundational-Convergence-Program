# BFSS S3L R4A Gate 28 #5 — real Lean failure at S3L3B case-split hypothesis scope and zero map application

**October 24, 2026 PDT / October 25 UTC. Verified RED.** No new source root or five-module ancestry checkpoint accepted. No saved child cache.

## Direct GitHub/Lean evidence

- [GitHub Actions run #40167688095](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40167688095), job `121091982327`, `completed/failure`, workflow research HEAD `39a9bc4de5e0d1a4a499f93ddf8d1be1c030fdf4`.
- Exact frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; source blob checks and strict compile toolchain restore PASS.
- Gate27 S3F child cache MISS. Qualified Gate23 S3E2 original ancestor cache `bfss-fcp-s3l-s3e2-fock-selector-c6942d34-gate23-v1-adc7f124-lean4341-d13f23b-Linux-X64` HIT; original S3C/D/E1/E2 objects verified.
- Source walker V6 immutable Git blob `79474d8fcd5853d310e95a93a5b3ddd87abd9623`. Canonical 116-module R4A source closure, 40 missing original object files.
- Original unchanged S3L3A `aa47f20d0c14374659aee0bf24c6361e464386ad`; accepted-in-ephemeral-V6 S3L3A proof-only compat blob `a1586fdcbadd829ac7d57cfb4f8c2dab7ae655c1`. Original unchanged S3L3B `19a7eb6a710fe6d4b531dc0eefba7ee27ed21dca`; candidate V6 proof-only split-ifs blob `75af029434de4a633acbda65e89200a8c43d564a`. Both strict exact-source-diff identity tests PASSED.
- Fresh original source S3L1 and proof-only original-statement S3L3A Lean compilation both passed with exactly one `#print axioms` root using only `propext, Classical.choice, Quot.sound`. NO persistent child cache was saved because the full checkpoint failed.
- First actual compiler red at **S3L3B**, at original case-split proof location, in recovered source:
```lean
  split_ifs with hleft hright
  · simp only [Complex.ofReal_one, one_smul, LinearMap.id_apply]
  · exact (hright hleft.symm).elim
  · exact (hleft hright.symm).elim
  · simp only [Complex.ofReal_zero, zero_smul, LinearMap.zero_apply]
```
Original compiler:
```text
SU2BFSSPhysicalDomainS3L3BSourceOperatorHeisenbergProbe.lean:45:17:
error(lean.unknownIdentifier): Unknown identifier `hright.symm`

SU2BFSSPhysicalDomainS3L3BSourceOperatorHeisenbergProbe.lean:46:2:
error: unsolved goals
case neg
hleft : ¬(k, B) = (i, A)
h✝ : ¬(i, A) = (k, B)
⊢ 0 = 0 x

'FCP.BFSSSU2PhysicalDomainS3L3B.sourceCoordinateDerivative_position_commutator_operator'
depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
```
Thus genuine 3B S3L3B theorem fails and its `sorryAx` report is unaccepted. S3L3C/D never compiled. Provenance [artifact #12589810182](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40167688095/artifacts/12589810182), original ZIP SHA-256 `b819312e82b96cb1c0d5b4a916ce35cf70af67836e2fb780261a309329c51d04`.

## Five-gate causal sequence (do not collapse)

1. Gate28 #1 [run #40165057067](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40165057067): workflow path to stale Gate27 Mathlib log, failed before original source compiler.
2. Gate28 #2 [run #40165418177](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40165418177): S3L1 compiled, S3L3A failed exact deprecated `ContinuousLinearMap.add_apply`/`smul_apply`.
3. Gate28 #3 [run #40165968882](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40165968882): S3L3A fixed, S3L3B `if_pos` and `if_neg` deprecated under required `-DwarningAsError=true`.
4. Gate28 #4 [run #40166512645](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40166512645): naive `simp only [h,hr,...]` with opposite pair equality orientation caused maximum simp recursion depth; proof unaccepted.
5. Gate28 #5 above: bounded `split_ifs` avoided recursion but proof relies on missing named split hypothesis, with residual `0=0 x`. No proof acceptance.

## Project Lead recommendation: stop blind gates; independent Grok research

The repeated local failures now justify independent review rather than immediately creating Gate28 #6. Preserve original source data/physics and ask Grok for a **single self-contained, namespace-accurate S3L3B proof that compiles under Lean4.34.1 with `-DwarningAsError=true`**. In particular, the two `if` conditions are `(i,A)=(k,B)` versus the reversed `(k,B)=(i,A)`. Do not rewrite both h and h.symm in `simp` (recursion); do not rely on `split_ifs with hleft hright` producing every named hypothesis. Resolve the distinct `0 : SmoothCore 2 →ₗ[ℂ] SmoothCore 2` vs `0 : Fermion 2` application via explicit `LinearMap.zero_apply` and map/function coercion only as justified by actual goal. Demand proof object, not a Lean-looking speculation. Candidate independently compiled answer must preserve *exact original theorem statement* and reuse original `sourceCoordinateDerivative_position_commutator_apply`, not postulate commutators.

Grok research mandate published separately in `handoffs/FCP_BFSS_GROK_INDEPENDENT_S3L3B_GATE28_SOURCE_EXACT_REVIEW_2026_10_24.md`. Original `main`, math pins and PR25 remain untouched. Full original R4A, cubic R4D, 16-charge Spin9 covariance, closed physical Hamiltonian form symmetry and positive normalizable BFSS eigenvectors remain open.
