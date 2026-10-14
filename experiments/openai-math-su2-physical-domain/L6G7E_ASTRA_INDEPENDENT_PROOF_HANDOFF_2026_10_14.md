# FCP independent proof review: original fermionic color ODE (L6G7E)
Date: 2026-10-14. Prepared by active Project Lead for Astra's independent GitHub-backed work.

## Assignment and scientific boundary

Provide an independent Lean 4 proof strategy (and, if practical, an axiom-clean PR) for the missing ORIGINAL bounded Fock operator commutator evolution

$
\frac{d}{dt} B_{s,A}(t)
= J_F(c)B_{s,A}(t)-B_{s,A}(t)J_F(c),
\quad B_{s,A}(t)=\sum_B R_c(t)[B,A]\,\theta_{s,B}.
$

The theorem's exact Lean name is `FCP.BFSSSU2PhysicalDomainL6G7E.sourceRotatedTheta_deriv_comm_all`. **The underlying full all-time commutator identity is not yet qualified.** No finite-time implementer equality, full gauge/Gauss or BFSS spectral result should be claimed from it.

Repository `etblink/Foundational-Convergence-Program`; working branch `research/openai-math-su2-s3l-combined-rotation`. Exact original upstream pinned `etblink/math` commit `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, source Lean 4.34.1 / pinned Mathlib. Only permitted axioms: `propext`, `Classical.choice`, `Quot.sound`; no `sorryAx` or hidden unproved hypotheses. Preserve positive `+i` SU(2) source curve and original output B/input A orientation.

## Accepted anchors (independent compiler/axiom audits)

- L6G7B: Original source `g_c(s+t)=g_c(s)g_c(t)`, `R_c(s+t)=R_c(s)R_c(t)`, `R_c(0)=I`. [Original Source Spin Identity #170](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38527740908) GREEN, four roots audited.
- L6G7C: `R'_c(t)=C_c R_c(t)` for all real t with `C[B,D]=structureConstant B D c`, using actual source adjoint coefficients. [#174](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38531556989) GREEN, two roots audited.
- L6G7D: `HasDerivAt (fun u => sourceRotatedTheta c spin A u) (sourceRotatedThetaDerivative c spin A t) t`, for the LITERAL `pairedAlgebraData.theta` bounded 48-Majorana source on `Fermion 2`. [#176](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38532849648) GREEN, two roots audited.
- L6G6L (and source-specific L6G7E): `[J_F(c),theta_spin,d]=Σ_b (structureConstant b d c : ℂ) • theta_spin,b`. The source-specific theorem `sourceGenerator_theta_comm_output` in the current L6G7E compiled with only the allowed three axioms under all gates #178–#180.
- In the current L6G7E, the generic `abstract_finite_color_commutator` over `[Ring R][Algebra ℂ R]` is also verified axiom clean since #179. The genuinely hard obligation is adapting a generic finite-sum identity to the literal source `SourceFiberEnd = Fermion 2 →L[ℂ] Fermion 2` without exploding elaboration.

## Negative knowledge, exact recent CI errors

- [#178](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38534755284), job `115756905811`, original source `432cad81`: missing last `Finset.sum_smul` step in generic lemma, plus maximum recursion depth at its concrete source specialization line 128. Missing sum was repaired with `Finset.sum_smul`.
- [#179](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38536640554), job `115761007307`, source `5ed01bb9`: generic lemma and exact source commutator BOTH accepted. Sole error: `maximum recursion depth` at line 139 using `sourceGenerator_theta_comm_output c spin d` to fill an abstracted local `let J, theta, F, r` hypothesis. Direct locally named source operators did **not** avoid concrete theorem-unification cost.
- [#180](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38538675621), job `115767761008`, source `74e64f30`: generic lemma and exact original generator-theta commutator STILL accepted. Sole error: `maximum recursion depth` at L6G7E line **129:2**, the `calc` block containing very large repeated literal source expressions; the log did not report reaching the later `rw [sourceGenerator_theta_comm_output ...]`. Thus literalizing the source did not solve elaboration. Full `sourceRotatedTheta_comm_evolution` and `sourceRotatedTheta_deriv_comm_all` roots printed `sorryAx` in this red gate and remain UNQUALIFIED.
- Historical L6G7A #161–167 failed at concrete Fock-operator apply/elaboration boundaries. Do not repeat those wrapper attempts, raise `maxRecDepth` as the default fix, or substitute CI success for actual source theorem qualification.

## Preferred independent design space

1. **Investigate a cached abstract *continuous linear* commutator transport interface** for `T ↦ J*T-T*J`, or a fixed-`SourceFiberEnd` specific lemma with *named* inputs, before any concrete source identification. A ring-hom/linear-map of finite sums may avoid elaborating gigantic explicit `calc` LHS expressions. Use `map_sum`/`map_smul` and a small source commutator theorem with rigid types; define thin helper lemmas to control elaborator unfolding.
2. Reuse the original L6G6L theorem, L6G7D derivative and independently compiled abstract E lemma, while **proving the exact transport back to literal original operators**. Do not replace the true Fock operators with a toy/proxy action, a mathematical assumption, or a reformulated weak theorem.
3. Verify the *first actual* CI error on each attempt, after checking any old caches/accepted source `.olean`; preserve red-gate negative knowledge and minimize unnecessary runs. The research branch CI workflow `.github/workflows/bfss-l6g1-original-spin-identity.yml` has the full E strict `#print axioms` audit.

## Collaboration protocol

Please work on an **isolated research branch** (e.g. `research/openai-math-su2-l6g7e-astra`), not overwrite the current Project Lead's work. Use a PR or a report with exact commits, workflow run IDs, exact first Lean error and root axiom results. Propose a minimal source-specific patch; do not merge `main` or publish downstream. If unsuccessful, deliver a concise falsifiable diagnosis and recommended smallest next proof gate, rather than a speculative green claim.

The current source is `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6G7ERotatedThetaCommutatorEvolutionProbe.lean`. Full prior historical context and negative knowledge: `experiments/openai-math-su2-physical-domain/L6G7_FINITE_TIME_COLOR_COVARIANCE_ROUTE_0_1_0.md`.
