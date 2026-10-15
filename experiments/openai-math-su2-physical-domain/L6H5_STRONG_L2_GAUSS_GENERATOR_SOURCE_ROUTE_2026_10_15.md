# L6H5 — Source-faithful route from pointwise color Gauss calculus to strong L2 derivative

**Prepared:** 2026-10-15. **Scope:** FCP research branch `research/openai-math-su2-s3l-combined-rotation`, draft PR #25, *not* canonical or upstream integration. **Classification: PROPOSED MATHEMATICAL PROOF ROUTE, NOT A QUALIFIED THEOREM.** Recheck live refs and CI before action.

## Exact input status and negative knowledge

- Original source: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Keep original `FullL2 2`, `SmoothCore 2`, source 48-Majorana Fock action, genuine `GaugeGroup 2`, `+i` color curve, inverse boson pullback, current coefficient/sign and right-ordered `position.comp coordinateDerivative`.
- Qualified earlier: H0 original pointwise representative and almost-everywhere equality with the actual FullL2 orbit; H1 uniform compact support and uniform amplitude of the orbit of **any** source `SmoothCore 2` test function; H2 squared integrability of the radial envelope; H4C all-vector strong source-gauge continuity; H5A strongly continuous native one-parameter unitary group; H5B the exact linear SmoothCore Gauss candidate and its FullL2 embedding; H5C1 inverse-bosonic curve/sign; H5C2 the *pointwise* derivative of the genuine combined Fock and inverse-boson orbit at zero ([gate #267](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38788717239)).
- H5C3 [gate #268](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38790496820) RED. Two original coefficient-identification roots printed only the three permitted axioms; the final root had an unresolved `sourcePlusIGaugeCurve` (its namespace was not opened), followed by a deterministic `isDefEq` heartbeat timeout in `simpa` on the malformed goal. `sorryAx` in the final printed root prevents qualification. Neither an independent Gauss sign error nor mathematical contradiction was established.
- Source repair commit [`c30bbf7`](https://github.com/etblink/Foundational-Convergence-Program/commit/c30bbf73072cdc8f1930e0ae3200c8c876a330c5) explicitly opens the original L6G6X gauge-curve namespace and replaces the final broad `simpa` with an explicit rewrite of the already-proved coefficient equality. [Gate #270](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38795705404) was launched; **not qualified at the time of writing**. Do not call H5C3 accepted without compiled source `.olean` and a complete strict axiom audit.

## New proposed route: derive the derivative majorant from the Gauss candidate's own orbit

Fix color `c`, source test function `f : SmoothCore 2`, and define:

- `g(t) = sourcePlusIGaugeCurve c t : GaugeGroup 2`.
- `T_t f(x) = actualOriginalSmoothGaugeOrbitRepresentative f (g(t)) x`, exactly the original fermionic gauge action on `f (bosonGauge (g(t)⁻¹) x)`.
- `D_c f = actualOriginalCoreColorGaussCandidate c f : SmoothCore 2`. **It is an actual smooth-core function** because H5B defines a linear endomorphism of `SmoothCore 2`.
- Assuming qualified H5C3, `(d/dt)|_0 T_t f(x) = (D_c f)(x)` pointwise, for *all* `x`.

**Step A — all-time source pointwise derivative using the genuine group law, not a second 48-Majorana expansion.**

The original source bosonic and fermionic gauge actions are representations and `g(t+s) = g(t)g(s)`. For fixed `t,x`, with `y = bosonGauge (g(t)⁻¹) x`, prove the literal pointwise group relation
```text
T_(t+s) f(x) = fermionGaugeLinearEquiv (g(t)) (T_s f(y)).
```
The exact naming/ordering must be checked against G4J/H0; equality here is a mathematical proposal, not a compiled Lean identity. Differentiate with respect to `s` at zero by H5C3 at `y` and the bounded complex-linear source fermion isometry, viewed as real-linear for real time. Translate the base point to obtain
```text
(d/du)|_(u=t) T_u f(x) = T_t (D_c f)(x).
```
No covariance of `D_c` is assumed. It follows from differentiation and the actual group law. Separately certify the curve derivative and pointwise source representation identity.

**Step B — reuse H1/H2 on the new source test function `D_c f`.**

Because `D_c f : SmoothCore 2`, qualified H1 supplies `R>0`, `C>=0`, and the *time-independent* radial envelope
```text
E(x) = if ‖x‖ < R then C else 0
‖T_s (D_c f)(x)‖ <= E(x)          for every real s, every x.
```
Qualified H2 supplies integrability of `E(x)^2` against the *original* bosonic volume. This is the missing derivative majorant, obtained without bounding an expanded Fock-operator expression or changing the physical model.

**Step C — scalar mean-value/integral bound for the difference quotient.**

For each fixed original boson position, Step A makes `t ↦ T_t f(x)` a differentiable finite-dimensional fermion-valued curve with derivative bounded by `E(x)`. The vector-valued fundamental theorem of calculus (or a verified norm mean-value inequality) then yields, for `t ≠ 0`,
```text
‖(T_t f(x) - f(x))/t‖ <= E(x),
‖(T_t f(x) - f(x))/t - (D_c f)(x)‖^2 <= 4 * E(x)^2.
```
The derivative at zero gives pointwise convergence of the second norm to zero. Prove the estimate for positive and negative times; do not silently assume a one-sided derivative.

**Step D — genuinely strong FullL2 differentiation.**

Apply dominated convergence to the **squared norm** using H2 and Step C, then H0's exact almost-everywhere identification. Conclude the *source-defined* strong derivative on embedded smooth-core vectors:
```text
HasDerivAt
  (fun t : ℝ => actualOriginalFullL2GaugePairCLM (g(t)) (coreToL2 f))
  (coreToL2 (D_c f)) 0.
```
FullL2 topology and the Lp equivalence-class interface are explicit obligations. After this passes, the actual native one-parameter group law moves the strong derivative to each real time.

**Truth boundary:** This would establish source SmoothCore inclusion in the generator domain and the action of the generator there. It does **not** by itself prove core-ness for the closed generator, essential self-adjointness of the candidate, equality of any charge-square operator closures, the physical BFSS Hamiltonian spectrum, or infinitely many positive eigenvalues.

## Proof-engineering stop rule

Do not turn Steps A–D into one monolithic source theorem. First qualify a short exact pointwise source-group identity (potentially using already qualified source G4J/G7Y group laws); then an all-time pointwise derivative with the H5C3 lemma; then the independent H1 derivative envelope; then a generic real-parameter norm/FTC bound; finally the L2 dominated-convergence/representative bridge. Verify every imported source statement, parameter order and axiom root. If a specialization fails, identify the FIRST causal Lean error before retrying. Prefer a theorem-specific experiment that could discriminate a real missing premise from an elaboration problem.

**No merge, main mutation or upstream publication is authorized by this research note.**
