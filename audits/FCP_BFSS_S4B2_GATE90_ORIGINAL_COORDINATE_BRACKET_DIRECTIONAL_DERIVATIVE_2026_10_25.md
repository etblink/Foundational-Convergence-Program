# FCP BFSS S4B2 — original source coordinate-bracket directional derivative (Gate90)

**Research date:** October 25 Pacific / October 26 UTC, 2026.  
**Status:** proposed three-root strict Gate90; mathematical and proof-level outcome MUST be set from terminal runner evidence, not the presence of source files.

## Predecessor and exact source fidelity

Accepted source result: [Gate89 #6](FCP_BFSS_S4B1_GATE89_6_SOURCE_GAMMA_CONTRACTION_TWO_ROOTS_STRICT_ACCEPTANCE_2026_10_25.md) proved, on the actual original `AlgebraData` gamma family, `sum_i gamma_i gammaTwo_(i,j) = 8 gamma_j` (2 strict Lean roots). Original prior [G4K9D Gate170](OPENAI_MATH_BFSS_SU2_G4K9D_GATE_170_SOURCE_OPERATOR_AND_CORE_FORM_ACCEPTANCE_0_1_0.md) already supplies the source-exact undeformed charge and core-form equality at `(h,m)=(1,0)`.

The next genuine source obstruction is differentiating the original quadratic bosonic color bracket. The frozen source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` defines in `lean/OAI/MathematicalPhysics/BFSS/ColorMatrices.lean` (original Git blob `1c1c2a838c48c0aea2a1c1640da5d412f22e3f0c`):

```text
M.coordinateBracketAll x i j A =
   sum_B sum_C (M.structureConstant A B C) * x(i,B) * x(j,C)
```

Here `x,v : Boson N` are the **actual** EuclideanSpace ℝ (SpaceIndex×ColorIndex N), not a made-up `Fin3` replacement. The two original source imports also use original `Core.lean` blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60` and `MassiveCoercivity.lean` blob `1a9a8fe629e69f3946602a786c2e63c2ca354462`; Mathlib pinned `d13f23b723b8a846827a245b89c10fc7d3f11612` and Lean `4.34.1`.

## Exact mathematical content of the Gate90 candidate

For `x,v : Boson N`, actual original `M : AlgebraData N`, spatial i,j, color A, define the original line `x(t)=x+t v`. The elementary affine derivative in any coordinate p is

```text
 d/dt [ (x + t v)(p) ] at t=0 = v(p).
```

Applying finite-sum differentiation and Leibniz directly to the genuine `coordinateBracketAll` gives

```text
 d/dt [M.coordinateBracketAll (x+t v) i j A] at t=0
   = sum_B sum_C f_(A B C) * [
           v(i,B) * x(j,C) + x(i,B) * v(j,C)
     ].
```

Specializing `v = EuclideanSpace.single (k,D) 1` is the exact original **single-coordinate derivative**, with both i=k and j=k contributions still explicit as original `EuclideanSpace.single` coefficients (no invented delta-selector simplification).

The prospective declarations are `originalBosonAffine_coordinate_deriv`, `originalCoordinateBracketAll_directional_deriv`, and `originalCoordinateBracketAll_single_coordinate_deriv`. They are written in the original `AlgebraData`, `Boson`, `ColorIndex`, `SpaceIndex`, and `coordinateBracketAll` types.

## Bounded implementation and acceptance gate

- Candidate [S4B2 original color-bracket derivative Lean file](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B2OriginalCoordinateBracketDirectionalDerivativeProbe.lean), immutable blob `be108377ab831adb32467659b9a66f9e5354b8be`.
- Strict workflow [Gate90](../.github/workflows/bfss-form-original-bracket-derivative-strict-gate90.yml), initial commit `470c03dfeb6d2063cb38b3b3767614a8f6e879fd`.
- [Gate90 #1 Actions run #40281792044](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40281792044), launched, terminal outcome unknown at the time of this initial audit.
- Gate checks exact original mathematics/file blobs and source file hash in both commit/worktree; frozen Lean 4.34.1/Mathlib; fresh source `Core`, `MassiveCoercivity`, `ColorMatrices` import closure; exactly three named declarations; `#print axioms` with only `{propext, Classical.choice, Quot.sound}`; no `sorryAx`, genuine Lean errors or warnings; output object nonempty. Inherit Gate89's narrow known-Lake-package-state warning classifier. No sixfold E3B/E3C source normalization and no inflated recursion/heartbeat limits.
- Any red must be attributed to its earliest actual source/compiler/test fault, not labelled a counterexample automatically. Do not count any prospective declaration until workflow **completed/success** and original compiler evidence verified.

## Deliberate scope boundary and next theorem

This establishes the **quadratic coefficient differentiation stage**, not the typed `M.deformedRealField 1 0` `fderiv ℝ` or complete Fermion continuous-linear-map equality. Future source theorem must compose the G4K9D accepted potential multiplier identification, differentiate the original continuous map `deformedRealField 1 0` at one actual coordinate, combine the accepted S4B1 eight-gamma contraction with the source `kineticSkewSymbol`, and use the original structure-constant sign to obtain the manuscript's fermion `B(x)`.

Preserve canonical FCP `main`, original `etblink/math`, accepted Gate89 #6 and prior historical red gate statuses. No BFSS eigenvalue existence or spectral gap promoted.


## Gate90 #1 completed strict RED — precise compiler defect

[GitHub Actions run #40281792044](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40281792044), job `121436493681`, **completed/failure** on original candidate blob `be108377ab831adb32467659b9a66f9e5354b8be`. No roots accepted. All source/manifest/hash preflights, frozen Lean4.34.1 Mathlib, original source `Core.olean` (1,281,224 bytes), `MassiveCoercivity.olean` (1,201,000 bytes) and `ColorMatrices.olean` (425,920 bytes) compiled freshly. Failure was in candidate proof only, no counterexample to the source bracket derivative.

**First actual error:** lines 32–38 attempted to derive an entire `Boson N` vector line derivative using `HasDerivAt.smul_const`, `HasDerivAt.add`, and `EuclideanSpace.proj`. Lean elaborated the derivative with an implicit `PiLp.normedAddCommGroup`/`PiLp.normedSpace` instance but the expected original `Boson N` function used the definitionally different `WithLp.instAddCommGroup`/`WithLp.instModule` instance. This is the **previously observed L6G7N module-instance mismatch**, not a new failure of calculus or original mathematics. Historical lesson: *do not infer generic PiLp normed-space instances then transport them to the original typed Boson; reason directly at the original real coordinate.*

**Other candidate proof issue:** line 51 `convert hh using 1 <;> ring` left two ordinary goals: (i) function extensionality equating `f * coord_i * coord_j` to `f * ((fun t => coord_i) * (fun t => coord_j))`; (ii) eliminating the zero perturbation `x + (0:ℝ) • v` before commuting the real scalar factors. None is a mathematical counterexample. All three `#print axioms` reports had `sorryAx` because the first theorem failed; strict admitted count remains 0/3.

**Gate90 #2 controlled repair** at commit `845da37ffd6550a36fe27c69691a5a91e1991be7`, candidate blob `68b3d0c37dcab6fccab57a60eb3cdaa75ef8f48a`, workflow blob `a4f0912ba236bc8327fa18c5b5fc8c1690c59639`. Keeps all three theorem statements and all original mathematics untouched. Replaces the problematic vector derivative by the **real scalar** original coordinate affine function `t ↦ x p + t * v p` and uses `PiLp.add_apply`/`PiLp.smul_apply` only for scalar-level conversion; resolves the two `convert` goals explicitly with `funext t; ring` and `zero_smul; add_zero; ring`. Both commit/worktree source-hash pins were updated atomically. [Gate90 #2 Actions run #40282671921](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40282671921) launched, **pending terminal compiler/axiom verdict** at this record's creation.

**Acceptance policy:** no new roots while Gate90 #2 is in progress. If red, inspect original compiler log for earliest residual and preserve this first failed proof as source-immutable negative knowledge. Do not increase recursion settings or change the scientific statement merely to obtain a green. The accepted Gate89 two original-gamma contraction roots remain unaffected.
