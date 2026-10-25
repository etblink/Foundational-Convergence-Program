# BFSS S3L R4A — Gate #5 canonical-vs-recovery proof conflict (RED)

**2026-10-24 Pacific / 2026-10-25 UTC. 0/1 new roots accepted; no Lean proof attempted.**

## Independently checked primary GitHub original evidence

- [Gate #5 run #40149957298](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40149957298), original job `121039204927`, source workflow commit `7b854ce776ef096a7a0a11bfc535f8afa414185b`: both completed/failure. Exact source preflight, Lean 4.34.1/Mathlib commit `d13f23b723b8a846827a245b89c10fc7d3f11612`, accepted H4G1B cache hit+restore, and script source-hash+syntax check all passed.
- A real source import walker reached duplicate `SU2BFSSG4K9ASourceChargeCoefficientCrosswalkProbe`, selected canonical `experiments/openai-math-su2-concrete-potential/...` and confirmed that recovery copy had identical declaration/proof body from `namespace` onward (but different import). This part succeeded.
- The next collision rejected `SU2BFSSG4K8E2KineticOddParityProbe` with exact `ValueError: CONFLICTING_DUPLICATE_DECLARATION`, before any `lake env lean`. Canonical committed source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K8E2KineticOddParityProbe.lean`, Git blob `1b20b65c53d116ab4193fd968c0b559c7afce346`. Recovery copy `experiments/openai-math-su2-physical-domain/recovery/SU2BFSSG4K8E2KineticOddParityProbe.lean`, blob `380e1e90248e9fc7baa3101154aa2aec367eb8cc`.
- Both K8E2 copies retain same module declarations, same target original kinetic-oddness theorem statements, same `import SU2BFSSG4K8E1MasslessPotentialParityProbe`. They are **not source-identical**: canonical proof has `simpa only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.neg_apply, ...]`, while recovery proof uses `simpa only [ContinuousLinearMap.comp_apply, neg_apply, ...]`. This proof tactic difference must not be overwritten, blurred, or represented as a theorem identity proof.
- Gate #5 failed during source-choice policy, **not** in the Lean compiler. No compiler root/axiom report generated, no `.olean` accepted or saved. Original R4A mathematical source Git blob remains `ef803c1b5c62a819e568c5a645c5e622ec1a0d6f`; R4D remains `1a56b2055ff4ed3c1a227bce3910e974876c5774`.

## Next evidence-producing intervention

Earlier gates: R4D Gate1 defensive scanner comment false positive; R4D Gate2 missing obsolete `family270b` cache; R4D Gate3 accepted modern H4G1B cache correctly restored but missing historical R4A source `.olean`; R4A Gate4 duplicate K9A module names; R4A Gate5 **actual duplicate proof-body divergence**. Stop pretending every duplicate recovery and canonical theorem body matches.

**Gate6 must unambiguously choose exactly one canonical non-recovery path for every collision, pin its precise Git blob, and separately record *all* recovery paths/blobs and whether bodies agree or conflict.** Recovery sources are preserved as adversarial/reference alternatives only and never copied, imported, counted or silently substituted. Canonical proof is compiled under the frozen pinned kernel; if it reds, report its first genuine Lean error and optionally compare the discarded recovery proof as a *different candidate* in a separate provenance-qualified investigation.

Prefer to print an actual import closure/parent-missing count before attempting a large historical rebuild. Bound work by module count, per-module and total time. Require exact allowed axiom reports, no `sorryAx`, warnings or errors, and conditional cache save, never green by preflight alone.

Scientific boundary: H4E3D4C4 actual physical graph equivalence and H4G1B conditional eigenpair iff remain strictly accepted. R4A is still unqualified in the modern cached ancestry, R4D still uncompiled; nothing new proves Spin(9) physical covariance or existence of positive normalizable eigenvectors. Canonical FCP main, PR #25 and frozen original mathematical source untouched.