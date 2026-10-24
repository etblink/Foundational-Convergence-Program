# BFSS M4F9 H4D2A — generic Hilbert adjoint forward domain/action covariance, STRICT Gate #1 ACCEPTANCE

**Disposition:** `M4F9_H4D2A_GATE1_GENERIC_DENSE_HILBERT_PARTIAL_ADJOINT_FORWARD_COVARIANCE_1_OF_1_STRICT_ACCEPTED__REVERSE_AND_ACTUAL_BFSS_NATIVE_INSTANTIATIONS_NEXT__HAMILTONIAN_AND_SPECTRUM_OPEN`.

## Original immutable verified evidence

[GitHub Actions run #40107215202](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40107215202), job **120911289379**, completed/**success**, source event commit **67f8a2d017e3e2a7290f388f5ff0e869013d9408**. The one new theorem is in `experiments/openai-math-su2-physical-domain/FCPM4F9H4D2AGenericNativeHilbertAdjointForward.lean`, exact source Git blob **4a1b229ed1e00d3894f67d4d229bc6e7598d8314**. Exact workflow `.github/workflows/bfss-m4f9-h4d2a-generic-hilbert-adjoint-forward-strict-gate1.yml`, Git blob **69feff42ce9c24dd2c0e86968557af292cb9efd1**.

Frozen original mathematical source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib **d13f23b723b8a846827a245b89c10fc7d3f11612**. Source SHA, namespace, one-root and warning policy preflight passed. Qualified source-native dense-domain H4D1 Gate3 parent cache restored as an **exact HIT**, not fallback:
```
bfss-fcp-m4f9-h4d1-original-native-dense-9d542dd4-gate3-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

Original Lean proof compiled and validator reported:
```
'FCP.M4F9H4D2AGenericNativeHilbertAdjointForward.adjoint_forward_domain_action'
  depends on axioms: [propext, Classical.choice, Quot.sound]
BFSS_M4F9_H4D2A_GENERIC_ADJOINT_FORWARD_ONE_ROOT_STRICT_PASS
```
No `sorryAx`, unapproved axioms, leaf Lean errors or strict validator warnings. Complete qualified archive was **saved**:
```
bfss-fcp-m4f9-h4d2a-generic-adjoint-4a1b229e-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
Original unfiltered diagnostics [artifact #12565586770](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40107215202/artifacts/12565586770), ZIP SHA256 **7f4a6832a18af47188b8d9d530bc1391989b4b5d1853a1382f63576c8972ee1c**.

## Exact mathematical statement and scope

A generic theorem, not a BFSS-specific result. For genuinely densely defined `LinearPMap` operators `f : E →ₗ.[ℂ] F` and `g : E' →ₗ.[ℂ] F'`, genuine `LinearIsometryEquiv` input U and output V, densities of both natural domains, exactly matched forward/backward input domains, and genuine action covariance on all `f.domain`,
```
V (f x) = g ⟨U x, hFwdDomain x x.property⟩,
```
the theorem proves for every `y ∈ f.adjoint.domain`:
```
∃ hVy : V y ∈ g.adjoint.domain,
    g.adjoint ⟨V y,hVy⟩ = U (f.adjoint ⟨y,hy⟩).
```
It does so through `LinearPMap.adjoint_isFormalAdjoint`, source/unitary inner-product covariance, `LinearPMap.mem_adjoint_domain_of_exists`, and uniqueness in `LinearPMap.adjoint_apply_eq`; actual densities enter the genuine Hilbert adjoint action. No source BFSS charge definition is altered or manufactured by transport.

This is the FORWARD adjoint-domain inclusion/action theorem **only**, NOT an accepted iff for adjoint domains and graphs and NOT yet its BFSS instance. A reverse result can be separately proved by swapping `f,g` and `U,V` for `U.symm,V.symm`; doing so may require careful typed proof-witness alignment; qualify independently.

## Historical truth boundaries and next work

H4C2B/C/D true BFSS native charge graph/domain/action strictly accepted. H2D2A independent native dense and H4D1 original AY native dense (under original-independent representation hypotheses) accepted. Earlier H4D1 Gate1 preflight red and Gate2 Lean-variable-scope red remain immutable. No historical red is retroactively upgraded.

Next: (1) strictly gate generic inverse adjoint inclusion, (2) use H4D2A/B generic covariance with true H2D2A and H4D1 density, exact H4C2C two-way native domains, and H4C2D charge action to prove actual source-independent **native Hilbert adjoint domain/action equivalence**; (3) separately qualify exact `T†T` composition domain/action and its Hilbert normalization; (4) bridge the original native physical-output adjoint square to source-original ambient-output AY square using the actual physical output embedding and exact inner-product/isometry/domain facts, not a fictitious codomain-surjective unitary.

Historical working principal-root total **309** is unreconciled; this adds one accepted SUPPORT root. `main`, original pins, draft PR #25 remain untouched. No spectral-gap claim.
