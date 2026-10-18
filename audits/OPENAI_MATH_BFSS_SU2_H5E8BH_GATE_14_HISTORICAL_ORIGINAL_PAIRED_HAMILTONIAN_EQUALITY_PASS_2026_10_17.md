# H5E8BH — literal original versus historical paired BFSS SU2 Hamiltonian equality

**Accepted:** 2026-10-17 PDT / 2026-10-18 04:38 UTC.
**Disposition:** `PASS__AY_BB_BC_BE_AND_HISTORICAL_D2B17_D2B28_NATIVE_ADJOINT_SQUARE_AND_PAIRED_H_EQUAL__ALL_OPERATOR_DOMAINS__7_AXIOM_CLEAN_ROOTS`.

## Frozen acceptance evidence

- [Original Paired Hamiltonian Equality #14](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39096180117), job **117582996932**, `conclusion=success`, GitHub run source SHA **`9a65ad89b7000a401655bd1355e27b4ed6ff6d50`**; completed at 2026-10-18 04:38:38 UTC.
- Exact candidate source: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8BHOriginalHistoricalPairedHamiltonianEqualityProbe.lean`, immutable blob **`05a540772eb1b0e5c8570fd4eca101be76bbdd9b`**, hashed by strict gate.
- Exact source pins: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib **`d13f23b723b8a846827a245b89c10fc7d3f11612`**.
- Original AY–BG source gates, exact historical 20 G4K, 22 Haar, 7 D2B11–D2B17, and **11 further D2B18–D2B28 historical Hamiltonian** proof sources were rebuilt/co-compiled under the same pinned environment. Historical final marker `D2B18_TO_D2B28_FROZEN_HISTORICAL_11_MODULES_AXIOM_CLEAN_PASS`.
- Seven #print axioms roots in `FCP.BFSSSU2PhysicalDomainL6H5E8BH`:
  `originalMinimalPhysicalHilbertChargeAdjoint_eq_historical`,
  `originalMinimalPhysicalHilbertChargeAdjoint_domain_eq_historical`,
  `originalMinimalPhysicalHilbertChargeAdjointSquare_eq_historical`,
  `originalMinimalPhysicalHilbertChargeAdjointSquare_domain_eq_historical`,
  `originalMinimalPhysicalNormalizedHamiltonian_eq_historical`,
  `originalMinimalPhysicalNormalizedHamiltonian_domain_eq_historical`,
  `pairedOriginalPhysicalNormalizedHamiltonian_eq_historical`.
- Each new theorem's printed axioms are subsets of `propext`, `Classical.choice`, `Quot.sound`; no `sorryAx`, Lean `error:` or `unknownIdentifier` in final proof log. Exact final marker `L6H5E8BH_ORIGINAL_HISTORICAL_ADJOINT_SQUARE_PAIRED_H_7_ROOTS_KERNEL_PASS` at ~2026-10-18 04:38:34 UTC.

## Mathematical content: full source-native equality, not a new spectral theorem

Let `T = originalMinimalPhysicalHilbertChargeColumn M G` on the true original physical Hilbert subspace `G.physicalSpace` with source-original 16-output `PiLp 2`. H5E8BG already proved equality `T=sourcePhysicalHilbertChargeColumn M G` as actual closed, densely-defined native Hilbert `LinearPMap` operators including domain and graph. BH now establishes exact equality of the independently constructed **genuine Hilbert adjoints**, **natural-domain T†T squares**, **properly normalized (1/16)T†T source self-adjoint operators**, **all operator domains**, and the concrete paired SU2 Hamiltonian:

```
FCP.BFSSSU2PhysicalDomainL6H5E8BF.pairedOriginalPhysicalNormalizedHamiltonian
  = FCP.BFSSSU2PhysicalDomainD2B28.pairedSU2PhysicalHamiltonian
```

This is for the SAME actual source `pairedAlgebraData` 48-Majorana/24-Fock orbital field and `pairedGaugeData` real SU2 gauge, not a surrogate maximal extension or a bare quadratic-form identity. No unproved full-domain `LinearPMap.comp` invariance hypothesis is used.

**Still OPEN:** unitary identification with the INDEPENDENT 2026 manuscript's arbitrary irreducible 48-Majorana Clifford module \(\mathcal{F}\), its specific continuous SU2-to-Spin(48) gauge lift, transported smooth invariant domain, its unbounded 16 supercharges and their graph closures; independently, full global Spin(9) rotation covariance, sector confinement and positive point spectrum. A kernel-clean self-adjoint source-Hamiltonian equality does not validate a paper-specific spectral theorem or demonstrate a BFSS mass gap.

## Next project-lead scientific boundary: stop repeating source Hamiltonian construction

The genuine next theorem is a **manuscript-to-source equivariant unitary with DOMAIN**, not another `T†T` instance. The pinned original manuscript `etblink/math@adc7f124…/preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex` defines its own abstract \(\mathcal F\), normalized \(\sqrt2\theta\), \(V_h\in\mathrm{Spin}(48)\) and \(\mathcal H_{phys}\) at lines **98–111**, `Q_α` and the form `(1/16)Σ‖Q_αψ‖²` at **113–133**, its expanded `(1/2)‖∇ψ‖²+V+B` at **236–318**, and load-bearing global \(\mathrm{Spin}(9)\) and spectral estimates at **327–410** and **731–803**.

Existing FCP G1A proofs establish exact paired 48 self-adjoint theta operators with delta-one CAR and irreducibility. G4G proves original paired Majorana gauge covariance; G4J constructs actual source gauge data. S1A/AC scalar-commutant results supply a route to Schur uniqueness, but **neither CAR irreducibility nor gauge covariance alone gives a constructed typed `Cl(48)` manuscript-module intertwiner or equality of the spin lift**.

Next falsifiable interfaces, in order:
1. Define an **independently specified** finite-dimensional manuscript 48-generator complex Clifford representation \((\mathcal F,\vartheta_{a\alpha})\), with real orthogonal color representation \(O_h\), true \(\mathrm{Spin}(48)\) lift \(V_h\), and gamma/color normalization. Do NOT define `\mathcal F := Fermion 2` to force trivial success.
2. Construct a unitary \(J : \mathcal F\simeq_{\mathbb C}^{\rm unitary} \mathrm{Fermion}(2)\) with \(J\vartheta_{a\alpha}J^{-1}=\mathrm{pairedTheta}_{a\alpha}\) and \(J V_h J^{-1}=\mathrm{pairedGaugeData.fermion}(h)\). Character ambiguity must be eliminated by continuity and exact SU2 trivial-character argument, not chosen away. Check the SU2 inverse-pullback and basis orientation.
3. Lift to \(L^2(\mathbb R^{27})\), prove the exact gauge-fixed Hilbert subspace and `C_c^∞` invariant-core correspondence; check **all sixteen** supercharges on the *same smooth core* with paper's \(-i\) kinetic and \(1/2\) cubic signs; then prove **closed graph/adjoint/normalized associated operator domain** transport.
4. **Independently** audit/prove the manuscript form's kinetic/quartic/linear fermionic expansion and the global Spin(9) equivariant reduction, oscillator lower bound and highest-weight sectors. These are actual remaining requirements for the paper's positive point-spectrum conclusion; no blanket BFSS mass gap follows.

Do not trigger another 25-minute historical source rebuild merely to rename the same operator. Shift effort to mathematically falsifiable new proof interfaces and source-faithful spectral audit. Preserve first causal Lean errors, strict pins, signed source identities and unaccepted-lemma boundaries.

**Governance:** research S3L branch and draft [PR #25](https://github.com/etblink/Foundational-Convergence-Program/pull/25), base S3K and `main` unchanged. Source paper and fork not edited.
