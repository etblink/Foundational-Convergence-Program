# L6G6J — source color-current commutator and gauge-generator boundary

**2026-10-13. Status: source specialization proposed; pinned qualification pending.**

## Exact question and retained source

The accepted gate [#108](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38443708993) established the generic CAR color-current identity and the original ordered Majorana-pair commutator. It did not specialize the complete color-current commutator to the original SmoothCore operators or identify that current with the constructed gauge representation's generator.

The candidate now proves, for the original `M : AlgebraData 2`, explicit normalized-Pauli color, every color `c,d`, and spin index `t`,

```text
G_F(c) = (-i/2) sum_(s,a,b) f_abc theta_(s,a) theta_(s,b)
[G_F(c), theta_(t,d)] = i sum_b f_dbc theta_(t,b).
```

Here every theta is the actual source `M.fermionAction` on `SmoothCore 2`; the named ordered summand is recovered by `sourceOriginalFermionColorTerm_eq_source`. Source CAR is discharged by G3, and first-two color antisymmetry by G6D. No gamma, gauge-invariance, or infinitesimal-representation hypothesis is added. The factor `-i/2` follows the original delta-one CAR normalization.

Compiler/source pins remain `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No mathematical source is modified. The normal PR25/S3K base and existing qualified dependency caches remain in use.

## Architecture and qualification

The original generic CAR proof is retained. A separate generic named-summand transport proves the finite-sum equality with its ring still abstract. The source specialization unfolds only the current definition and passes each literal summand's accepted recovery theorem explicitly. This addresses the observed G6I concrete reduction failures without unfolding the Fock realization or increasing Lean limits.

Acceptance requires successful pinned `.olean` compilation; the explicit source theorem type; audits of the original pair theorem, new current theorem, and all three generic CAR/transport roots; no `sorryAx` or compilation errors; only `propext`, `Classical.choice`, and `Quot.sound` permitted. A green workflow title alone does not qualify any stronger gauge or spectral claim.

## Remaining mathematical obligation

The exact current commutator does not by itself identify an infinitesimal generator of `pairedGaugeData.fermion`. The next proof must connect it to the already constructed exterior-Fock SU(2) action, with the actual one-parameter curve and its sign specified. Equal Majorana commutators determine a generator only up to a scalar; that scalar must be fixed, for example by the genuine invariant vacuum or a trace/character argument whose premises are separately proved.

In the source convention, `J_F = i G_F = (1/2) sum f_abc theta_a theta_b` has `[J_F,theta_d] = -sum_b f_dbc theta_b`. This corresponds to differentiating color conjugation along `g(t)=exp(+i t T_c)`, rather than silently substituting the opposite curve. The full combined action also includes bosonic pullback. Check this sign against the literal adjoint-coefficient definition before claiming Gauss restriction.

After this identification, the ordered fermionic response still requires its explicit split into the original `B` and the x-weighted `G_F` channel. Full charge-square assembly, combined physical Gauss annihilation, operator closure, and spectral results remain separate obligations. Preserve the source orbital term; neither Gauss component may be discarded on the unconstrained core.

Research branch only; PR25 remains draft/unmerged, and canonical main and both mathematical-source repositories remain unchanged.
