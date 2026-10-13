# L6G6K — bounded source color current, exact core transport and Hermiticity

**2026-10-13. Status: candidate, UNQUALIFIED until the pinned new gate passes.**

## Scientific target

G6J gates [#109](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38449290364) and [#110](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38451538513) qualified the original SmoothCore color-current action. #110 reran the same mathematical source after the accepted-checkpoint commit; it introduced no new theorem. Its actual merge checkout was `4c5c5803c879715f5f18a9731474cdf449df1592`.

The current next step is the literal bounded operator on the original `Fermion 2` Hilbert space,

```text
G_F(c) = (-i/2) sum_(s,a,b) f_abc theta_(s,a) theta_(s,b).
```

The candidate establishes six public source roots: exact ordered-term recovery; pointwise current recovery; equality of the accepted SmoothCore current with `TestFunction.postcompCLM G_F`; the bounded CAR commutator; Hermiticity of `G_F`; and skew-adjointness of `J_F=i G_F`. The transport needs no color or gamma premise. The last three use the explicit normalized-Pauli color premise; source CAR and self-adjointness are discharged from the original AlgebraData fields. No alternate Fock space, gauge-invariance, or representation-generator premise is introduced.

## Sources and proof architecture

The G6J generic named-term CAR proof is exported through a public interface with the same signature and proof. All existing G6J source statements remain unchanged. G6K imports that checked interface, uses the source `M.theta`, and proves its complete recovery to the previously accepted `M.fermionAction` current. Finite evaluation maps follow the accepted G6H source-evaluation strategy; the literal `postcompCLM` interface follows S3L4B/C.

The star argument is proved first in an abstract complex star algebra, using real coefficients, the original theta self-adjointness, and first-two color antisymmetry. Each source summand stays named during specialization. Pinned Mathlib `Algebra/Star/Basic.lean` was inspected: `StarRing` already inherits involutive star, so a second independent `InvolutiveStar` instance is deliberately avoided. No Lean recursion or heartbeat limit is increased.

## Necessary-run cache discipline

This new mathematical qualification also populates an exact-source cache of the already-qualified prefix through G6J. Its key includes the mathematical source pin, Lean/Mathlib pins, platform, gamma/color source files, and the complete FCP L6 source closure through J. It is saved only after all prefix compilations and named axiom audits pass, and before G6K runs. A failed new target therefore need not destroy reusable prerequisite work.

G6K is excluded from the prefix key and is always compiled and independently audited. A cache hit is reuse of accepted prerequisite evidence, not new theorem acceptance. The normal PR25 base, original dependency cache, and exact pin checks remain intact.

**New negative knowledge:** GitHub pull-request path filters inspect the PR's changed-file set, so a standalone checkpoint commit on this long-lived PR still triggered the full proof workflow (#110), despite changing no Lean source. Combine routine checkpoint updates with necessary proof edits; do not count that replay as new mathematical progress. The prefix cache reduces the cost of unavoidable future executions without changing the evidence standard.

## Acceptance and remaining obligations

Acceptance requires real `.olean` compilation, all six public source roots and three private CAR/star roots audited, explicit public theorem types, no `sorryAx` or compiler errors, and only `propext`, `Classical.choice`, and `Quot.sound`. The audit parser accepts honest axiom-free reports as well as permitted standard-axiom reports.

Even a successful G6K gate does not identify the current with `pairedGaugeData.fermion`, prove vacuum annihilation, construct its flow, discharge the physical Gauss constraint, or prove the complete charge square or a spectrum statement. Next: establish the actual paired-Fock vacuum normalization and the current's exponential covariance, then use the accepted scalar-commutant interface to match the actual SU(2) action. The detailed source derivation and its curve sign are preserved in the G6J boundary record.

Research branch only. FCP main and both mathematical source repositories remain unchanged; PR25 stays draft and unmerged.
