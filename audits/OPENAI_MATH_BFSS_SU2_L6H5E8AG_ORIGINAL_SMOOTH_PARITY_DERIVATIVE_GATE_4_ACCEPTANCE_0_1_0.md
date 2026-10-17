# BFSS SU(2) L6H5E8AG — original smooth-core derivative-parity acceptance (0.1.0)

**Date:** October 17, 2026 PDT.  
**Disposition:** `PASS__ACTUAL_ORIGINAL_SMOOTHCORE_DERIVATIVE_PARITY__ONE_AXIOM_CLEAN_ROOT`.  
**Boundary:** Exact original BFSS `SmoothCore N` / `coordinateDerivative i A` / accepted AF spatial parity. Not yet a supercharge parity conjugation, a `FullL2` parity unitary, SU2-gauge physical graph identification, associated Hamiltonian domain equivalence, manuscript Spin(48) unitary equivalence, or global Spin(9) spectral theorem.

## Strict source-pinned acceptance

- [BFSS SU2 Original Parity Derivative #4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39033725435): run `39033725435`, `SUCCESS`, exact accepted SHA `475ae0f790d71de735006a19329f9894ea4ba4c2`, job `117399278198`, created `2026-10-17T12:44:27Z`, updated `12:48:12Z`.
- CI evidence artifact `bfss-su2-opposite-gamma-39033725435` ID `12102005123`, retained compiler and AF/AG proof logs.
- Exact accepted source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8AGOriginalSmoothParityDerivativeProbe.lean` Git blob `0e96b538f3a3eb63a3aaa24772a4d0e883bdb141`.
- Preaccepted AF actual SmoothCore spatial parity source `SU2BFSSPhysicalDomainL6H5E8AFOriginalSmoothParityInvolutionProbe.lean` Git blob `c9f71c6929121226788181ce3547979dcfe6afef`, reconstructed from original source in same job.
- Frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, unchanged exact accepted original G1A Fock/OAI cache.
- The single exact `#print axioms` output:
```
'FCP.BFSSSU2PhysicalDomainL6H5E8AG.originalSmoothParity_coordinateDerivative'
  depends on axioms: [propext, Classical.choice, Quot.sound]
```
- Strict job emitted `L6H5E8AG_ACTUAL_SOURCE_SMOOTH_PARITY_DERIVATIVE_AXIOM_CLEAN_PASS` and no `sorryAx` or Lean `error:`.

## Exact theorem on original BFSS test-function space

```lean
FCP.BFSSSU2PhysicalDomainL6H5E8AG.originalSmoothParity_coordinateDerivative
    {N : ℕ} (i : SpaceIndex) (A : ColorIndex N) :
    (originalSmoothParity (N := N)).comp (coordinateDerivative i A) =
      -((coordinateDerivative i A).comp originalSmoothParity)
```

It is a literal `SmoothCore N →ₗ[ℂ] SmoothCore N` identity, **not** a postulated formal directional differential expression. The proof uses the actual source `AlgebraData.coordinateDerivative_apply` (real Fréchet derivative on `Boson N`), accepted AF compactly supported smooth inversion `(Pf)(x)=f(-x)`, and pinned Mathlib `fderiv_comp` with actual differentiability of source `TestFunction`. It computes the derivative of `x↦-x` using `fderiv_fun_neg` and the pinned `fderiv_id` as `-ContinuousLinearMap.id ℝ (Boson N)`; uses `ContinuousLinearMap.id_apply`, `neg_apply`, `map_neg`. All assumptions discharged from literal source definitions.

## Negative knowledge: exact three-red sequence, no mathematical counterexample

1. [Derivative #1 red](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39032239936), job `117394914802`, candidate SHA `2b158fb31f3a7885139864fec24063876c9c44f5`: Lean line 63 `simpa only [fderiv_fun_neg, fderiv_id, ...] using hv` failed to rewrite the derivative of the eta-expanded spatial negation map. Goal expected `-Df(-x)e` but proof retained `Df(-x)(Dneg(x)e)`. The attempted root printed `sorryAx`. The chain rule itself elaborated correctly.
2. [Derivative #2 red](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39032913737), job `117396861589`, candidate SHA `1e12a6d9fd794d50f48e68d0ea7b3fb41bbe03f6`: explicit `fderiv_fun_neg` yielded `Dneg = -D(fun y => y)` but `simp only [fderiv_id]` failed to treat eta-expanded identity `fun y=>y` as syntactic `id`. Failed root contained `sorryAx`.
3. [Derivative #3 red](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39033269153), job `117397962490`, candidate SHA `34527fa791a6e785e1914484ac1363069316f8f9`: explicit literal `id` resolved the eta question; final goal became `-ContinuousLinearMap.id ℝ (Boson N) = -1`, and `rw [fderiv_id]` alone did not reconcile that generic multiplicative identity with the concrete bounded identity. Again `sorryAx`.
4. [Derivative #4 green](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39033725435): candidate revision [`4e52a733`](https://github.com/etblink/Foundational-Convergence-Program/commit/4e52a73303aadb976e7af9afd943a109c600a89e), workflow exact content-hash revision [`475ae0f7`](https://github.com/etblink/Foundational-Convergence-Program/commit/475ae0f790d71de735006a19329f9894ea4ba4c2); directly states the canonical `ContinuousLinearMap.id` term returned by `fderiv_id`, then evaluates it with the correct operator lemma. One clean accepted root.

**Reusable rule:** Never ask a generic `simp` call to guess both the syntactic `id` eta reduction and algebraic `1` identification in a large dependent source proof. Expose `id` in the algebraic chain rule, rewrite `fderiv_id`, preserve `ContinuousLinearMap.id` explicitly, and reduce via application. Three failed elaborations are useful feedback but are not mathematical objections.

## Qualified upstream chain and still-open boundary

Prior relevant accepted source mathematics:
- AD [Gamma Orientation #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39031030146): `oppositeGamma` is valid source `AlgebraData`, `gammaTwo` unchanged, 48 theta and color unchanged.
- AE [Gamma Charge Split #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39031262405): original upstream `M.charge α = originalKineticPart M α + originalCubicPart M α`; gamma reversal negates kinetic term only.
- AF [Original Smooth Parity #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39031747595): source `SmoothCore N` parity involution, negates each source position multiplier and commutes with each theta fermionAction.
- **AG #4**: each original `coordinateDerivative i A` changes sign under this source parity.

**Next genuinely new target** is to combine AD/AE/AF/AG on the literal upstream charge to prove, without new source axioms,
```
(oppositeGamma M).charge α =
    (originalSmoothParity (N := N)).comp
       ((M.charge α).comp (originalSmoothParity (N := N)))
```
on actual `SmoothCore N`, controlling all source finite sums, source linear-map composition, the full cubic `x_i^B x_j^C` parity-even structure, and correct `-i` sign. After that, the source `FullL2` parity unitary, color gauge commutation, restricted physical sixteen-charge graph and normalized associated Hamiltonian operator **domains** remain. The manuscript independent `Spin(48)` gauge lift and global Spin(9) spectrum also remain open.

Original source pins, canonical `main` and fork, accepted source proofs, PR #25 base, and draft/merge state were not changed. Archive [GitHub logs](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39033725435) and all three red failures.
