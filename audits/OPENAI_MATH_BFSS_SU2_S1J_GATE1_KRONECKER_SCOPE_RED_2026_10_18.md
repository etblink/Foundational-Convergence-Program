# S1J original source 48-real Majorana matrix — Gate #1 red diagnosis

**2026-10-18 PDT.** S1J is **NOT YET ACCEPTED** at this handoff; strict Gate #2 is the first requalification.

## Exact evidence

- [Actual 48 Real Majorana Color Action #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39150152120), run `39150152120`, job `117741952418`, **RED**, HEAD `925c9c9682419a473c683f007c99d199ef4ae131`.
- Source file `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1JActual48RealMajoranaColorActionProbe.lean`, Gate #1 blob `6460a2caa730597171db75811f988c1b9ec7da96`. Frozen pinned original source/matrix/S1C dependencies passed the strict compiler/source/cache checks.
- Seven S1J roots **did compile** with only `propext`, `Classical.choice`, `Quot.sound`: `sourceRealMajoranaMatrix`, `sourceRealMajoranaMatrix_entry`, `sourceRealMajoranaMatrix_one`, `sourceRealMajoranaMatrix_mul`, `sourceRealMajoranaMatrix_transpose`, `sourceRealMajoranaMatrix_orthogonal`, `sourceRealMajoranaMatrixHom`. That does NOT make the whole S1J family accepted.
- Sole S1J error: `S1J...lean:102:6: error: Tactic rewrite failed` on `rw [Matrix.det_kronecker]`, because the current expression `((oneParticleMatrix g).kronecker 1).det` did not elaborate to the `kroneckerMap` representation expected by the determinant theorem without scoped `Kronecker` notation (compare *accepted* S1C source, which opens `Kronecker` explicitly).
- `sourceRealMajoranaMatrix_det_one` therefore printed **`sorryAx`**. Not axiom clean. No claim of SO(48) qualification for this run.

## Minimal scope-only repair

Added `open scoped Kronecker` inside S1J's namespace/section, preserving every definition, index, source Pauli +i convention, matrix equality, theorem statement, and original proof tactic. This mirrors the exact scope used in the accepted S1C determinant-one theorem.

- Repair source commit `3d0c184a0fcba9fe7de2e2287bcaff5af20758e6`, corrected source blob `5c302134991e171eff69909d3bb518af340b1428`.
- [Actual 48 Real Majorana Color Action #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39150635000), strict source-pinned candidate HEAD `18f67ce9d14b11544a44389f19fbfe6ef67a9662`. Workflow returned to manual-only afterward.

**Gate #2 must complete SUCCESS and emit `S1J_ACTUAL_ORIGINAL_SOURCE_48_REAL_MAJORANA_SO48_MATRIX_8_ROOTS_KERNEL_PASS` with eight genuine `.olean`/axiom-checked roots before S1J can be accepted.** If red again, inspect first real error rather than presuming the scope repair was sufficient.

Separate next-milestone obligations: typed `SU(2) → SO(48)` source homomorphism, exact spin×color index transport, independent Spin(48) double-cover lift and action on second Clifford module, unitary operator/module identification, and eventually manuscript Hamiltonian/spectral claims. S1J does not solve latter obligations.

Research branch draft PR #25; no main/upstream changes.
