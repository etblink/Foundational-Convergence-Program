# BFSS L6G1 — original source spinor identity accepted

**2026-10-12. Status: kernel-qualified finite-source matrix theorem.**

[L6G1 #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38294155678) completed successfully at commit `8731052a43b8abfe29dad4d9cd2951982a2bd364`. The exact mathematical source remains `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean is 4.34.1, and both the lockfile and actual Mathlib checkout were verified at `d13f23b723b8a846827a245b89c10fc7d3f11612`. PR25 retains its normal S3K base, stays draft/unmerged, and canonical FCP main and both mathematical source repos are unchanged.

## Exact source results

`SU2BFSSPhysicalDomainL6G1OriginalUpstreamSpinIdentityProbe.lean` compiled to a real `.olean`. Its frozen blob is `b3c4cb1b12c64d3e718d2c547ee29ebac2b18a36`; the concrete gamma source remains the previously qualified blob `5ec0fcb039fb5c1367f72b2bd0f8c05fcd936587`.

The gate explicitly checked:

- `FCP.BFSSSU2PhysicalDomainL6G1.originalGamma_spinIdentity`;
- `FCP.BFSSSU2PhysicalDomainL6G1.originalGamma_spinIdentity_apply`;
- imported `OAI.BFSSGamma.spinIdentity`.

Every requested theorem had only `propext`, `Classical.choice`, `Quot.sound`. No `sorryAx`, unapproved axiom, Lean error or missing theorem was accepted. Original `GammaWords`, `GammaIdentity` and `Core` were independently compiled, and all six concrete real-gamma axiom roots were checked.

For every real unit spinor v and original spatial index j, the theorem gives

`sum_i symm(outer(gamma_i v, gammaTwo_ij v)) = (1/2)(v^T gamma_j v) I - (1/2)gamma_j`.

The gamma matrices are the unchanged explicit original FCP construction installed in the actual paired AlgebraData. The proof invokes the genuine upstream Clifford-word theorem with the separately proved original symmetry/Clifford premises. No replacement gamma system or extra physical premise enters.

## Reproducible cache and negative knowledge

The new dependency environment is reachable from PR25 under `bfss-l6-pinned-env-v1-adc7f124-lean4341-d13f23b-Linux-X64`. The accepted five gamma/source objects were saved under `bfss-l6g1-source-v1-adc7f124-lean4341-Linux-X64-5a5a9a3ad1e781ba22d441c480ad7fd4379522b791f6ccfedd86c7a7dd4f9460`.

Gate #1 had already resolved the cache-scope problem and compiled the prerequisites, but its application formula omitted the matrix notation scope and used invalid `Matrix.dotProduct`. Gate #2 opened the exact matrix scope and used the pinned API's `dotProduct`, without increasing proof limits or changing the equation. The subsequent `isDefEq` timeout in #1 was not an independent reason to abandon the small imported theorem. See the scoped L6 negative-knowledge record for logs and classification.

## Scientific meaning and next boundary

This qualifies the unit-spinor finite coefficient identity for the actual source gamma construction. It does not yet qualify arbitrary-spinor homogeneity, row-spinor orientation, the original CAR/Gauss normal-order operator identity, physical operator closure, or a spectral result. G2 is the separate next candidate: extend quadratically to all real spinors (including zero), preserve the skew gammaTwo row/column sign, and derive the literal original row Fierz entries. Its accepted parent objects should be reused by exact source hashes.

The compactness/existence argument has its separate Spin(9), branching, oscillator and actual-sector dependencies. A finite spinor theorem must not be promoted into the complete source Hamiltonian or positive-eigenvalue theorem.
