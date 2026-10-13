# L6G6J — source color-current commutator and gauge-generator boundary

**2026-10-13. Status: source color-current commutator kernel-qualified in gate #109; gauge-representation generator identification remains OPEN.**

## Exact question and retained source

The accepted gate [#108](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38443708993) established the generic CAR color-current identity and the original ordered Majorana-pair commutator. It did not specialize the complete color-current commutator to the original SmoothCore operators or identify that current with the constructed gauge representation's generator.

The qualified source theorem proves, for the original `M : AlgebraData 2`, explicit normalized-Pauli color, every color `c,d`, and spin index `t`,

```text
G_F(c) = (-i/2) sum_(s,a,b) f_abc theta_(s,a) theta_(s,b)
[G_F(c), theta_(t,d)] = i sum_b f_dbc theta_(t,b).
```

Here every theta is the actual source `M.fermionAction` on `SmoothCore 2`; the named ordered summand is recovered by `sourceOriginalFermionColorTerm_eq_source`. Source CAR is discharged by G3, and first-two color antisymmetry by G6D. No gamma, gauge-invariance, or infinitesimal-representation hypothesis is added. The factor `-i/2` follows the original delta-one CAR normalization.

Compiler/source pins remain `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No mathematical source is modified. The normal PR25/S3K base and existing qualified dependency caches remain in use.

## Architecture and qualification

The original generic CAR proof is retained. A separate generic named-summand transport proves the finite-sum equality with its ring still abstract. The source specialization unfolds only the current definition and passes each literal summand's accepted recovery theorem explicitly. This addresses the observed G6I concrete reduction failures without unfolding the Fock realization or increasing Lean limits.

Acceptance requires successful pinned `.olean` compilation; the explicit source theorem type; audits of the original pair theorem, new current theorem, and all three generic CAR/transport roots; no `sorryAx` or compilation errors; only `propext`, `Classical.choice`, and `Quot.sound` permitted. A green workflow title alone does not qualify any stronger gauge or spectral claim.

## Accepted qualification evidence

- [Gate #109](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38449290364), job `115475727397`, completed **SUCCESS**. The new source stage compiled in approximately ten seconds, with unchanged Lean limits; all preceding qualification stages succeeded or reused their exact accepted caches.
- Research source/workflow commit: `a596e463d990c13cebcd557c9b7606341ca514c7`. Actual PR-merge CI checkout reported in the log: `179a3903a9519d3e5fc31044cd72c33d2211f24e`.
- Actual compiled G6J source blob: `912da58298e527d6b6e81a1571f09e9add0463ab`. The source at the recorded CI checkout was independently fetched and matched this blob; do not confuse a PR's source HEAD with its synthetic merge checkout.
- The real `.olean` build succeeded. Both public source roots, `sourceOriginalOrderedFermionPair_comm` and `sourceOriginalFermionColorCurrent_comm`, and all three private CAR/transport roots passed their explicit axiom audits. The new source theorem depends only on `propext`, `Classical.choice`, and `Quot.sound`; no compilation errors or `sorryAx` occurred.
- Lean 4.34.1 and the actual pinned Mathlib checkout were checked in the successful workflow. Its preserved evidence artifact is `bfss-l6g1-source-qualification-38449290364`, artifact ID `11839844379`, digest `sha256:205d099caebc06e97e5e2ec1034dc9be01dc8ee4a1f9a65f16ba7a70e081425f`; artifact retention expires 2026-10-27. This permanent source/statement record retains the qualification boundary beyond that retention window.

The printed final type quantified exactly over `M : AlgebraData 2`, the normalized-Pauli color premise, and `c,t,d`. It contains no gamma or gauge-generator premise. The successful architecture reused the accepted CAR theorem through a named-summand bridge, rather than unfolding the concrete 24-mode Fock representation. No resource-limit increase or repeated failed gate was needed.

This checkpoint update changes documentation only and requests no repeat proof run. Preserve the accepted source blob, and save newly qualified objects opportunistically at the next mathematically necessary CI operation rather than replaying the full prefix solely to populate a cache.

## Remaining mathematical obligation

The exact current commutator does not by itself identify an infinitesimal generator of `pairedGaugeData.fermion`. The next proof must connect it to the already constructed exterior-Fock SU(2) action, with the actual one-parameter curve and its sign specified. Equal Majorana commutators determine a generator only up to a scalar; that scalar must be fixed, for example by the genuine invariant vacuum or a trace/character argument whose premises are separately proved.

In the source convention, `J_F = i G_F = (1/2) sum f_abc theta_a theta_b` has `[J_F,theta_d] = -sum_b f_dbc theta_b`. This corresponds to differentiating color conjugation along `g(t)=exp(+i t T_c)`, rather than silently substituting the opposite curve. The full combined action also includes bosonic pullback. Check this sign against the literal adjoint-coefficient definition before claiming Gauss restriction.

After this identification, the ordered fermionic response still requires its explicit split into the original `B` and the x-weighted `G_F` channel. Full charge-square assembly, combined physical Gauss annihilation, operator closure, and spectral results remain separate obligations. Preserve the source orbital term; neither Gauss component may be discarded on the unconstrained core.

## Source calculation for the next stage — ordinary mathematics

This section is an explicit source-derived proof route, **not an additional Lean qualification**. Its source definitions are G1A's `spinPairEquiv`, `colorModeEquiv`, `pairedTheta_even/odd`; F1's `majorana0`, `creator`, `annihilator`; F2's `majorana1` and mixed CAR; and G4A/B's `exteriorGauge`, `fermionGaugeLinearEquiv_intertwine`, and invariant `fermionVacuum`.

Write `C_(j,a)` and `A_(j,a)` for the actual creators and annihilators at `colorModeEquiv (j,a)`, and `s=sqrt(2)/2`. The source Majoranas are exactly

```text
theta_(j,0,a) = s (C_(j,a) + A_(j,a))
theta_(j,1,a) = s i (C_(j,a) - A_(j,a)).
```

Since `s^2=1/2`, expanding their two ordered products gives

```text
theta_(j,0,a) theta_(j,0,b) + theta_(j,1,a) theta_(j,1,b)
  = C_(j,a) A_(j,b) + A_(j,a) C_(j,b).
```

For the source skew color matrix `F_c(a,b)=f_abc`, mixed CAR gives `A_a C_b=delta_ab-C_b A_a`. The diagonal coefficient vanishes, and exchanging the finite color indices changes `F_c(b,a)` to `-F_c(a,b)`. Consequently the literal current is

```text
J_F(c) = (1/2) sum_(s,a,b) f_abc theta_(s,a) theta_(s,b)
       = sum_(j=0..7,a,b) f_abc C_(j,a) A_(j,b).
```

This number-preserving expression annihilates the transported source vacuum because each source annihilator kills the exterior unit. It fixes the otherwise undetermined scalar directly, without assuming that the vacuum is Spin(9)-invariant.

For `g_c(t)=exp(+i t T_c)`, the derivative of the actual color coefficient is

```text
(d/dt)|0 adjointCoefficient(g_c(t), b, a)
  = Re tr(T_a i [T_c,T_b])
  = -f_acb = f_abc.
```

Thus G3C's exact one-particle block matrix has derivative `F_c` on each of its eight spin-pair blocks. On an exterior product, differentiation of G4A's actual `ExteriorAlgebra.map` acts on one factor at a time. Its infinitesimal operator is precisely `sum_(j,a,b) f_abc C_(j,a) A_(j,b)`. G4B's fixed linear transport preserves this equality. This is the direct route to identifying the current with the actual representation, including its vacuum normalization.

Finally the same curve has bosonic derivative `-gaugeTangent x e_c`. Differentiating the source `invariantCore_equivariant` equation `f(boson(g)x)=fermion(g)f(x)` therefore yields

```text
D f(x)[gaugeTangent x e_c] + J_F(c) f(x) = 0.
```

Multiplication by `-i` supplies **both** source Gauss components. Only after this fixed-direction identity is established may it be multiplied pointwise by the spinor-selected weights `x_(k,c) (w^T gamma_k w)`; no derivative acts on those weights.

The outstanding formal bridges are: the exact bounded-fiber/current-to-SmoothCore transport; the paired-spin ordered-product and mixed-CAR reduction; the actual SU(2) curve and one-particle derivative; differentiation of the exterior action; and differentiation of source equivariance. Keep their hypotheses and domain statements explicit. The current commutator alone does not discharge these bridges.

### Preferred formal route using existing accepted interfaces

Avoid differentiating a large concrete exterior-algebra expression as the first formal test. The accepted S1B theorem `theta_covariant_implementer_scalar` already compares an exact same-covariance implementer with the constructed gauge action. S3H supplies the pattern for a bounded skew-adjoint operator exponential on the actual Fock Hilbert space.

First prove the bounded-fiber current's skew-adjointness and vacuum annihilation. Then construct `V_c(t)=exp(t J_F(c))` and prove its **actual** Majorana covariance from the CAR commutator. Separately identify its finite color coefficient with the literal adjoint coefficient of `g_c(t)`. Once both hypotheses are proved, S1B gives `V_c(t)=z(t) fermionGaugeLinearEquiv(g_c(t))`. Both sides fix the same nonzero source vacuum, so `z(t)=1`. The exponential derivative then identifies the generator without a giant differentiation of `ExteriorAlgebra.map` or an assumed source representation derivative.

This route still requires each covariance, vacuum, finite-color-curve, and current-transport bridge to be qualified. S1B's covariance hypothesis must never be treated as discharged merely because the theorem is accepted. The existing bounded rotation-flow and scalar-commutant results are reusable architecture, not automatic evidence for this new color flow.

Research branch only; PR25 remains draft/unmerged, and canonical main and both mathematical-source repositories remain unchanged.
