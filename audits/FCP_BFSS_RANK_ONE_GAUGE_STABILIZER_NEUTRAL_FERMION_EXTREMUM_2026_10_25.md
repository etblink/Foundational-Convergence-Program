# FCP BFSS — rank-one fermionic energy extremizer survives the residual gauge stabilizer

**Date:** October 25, 2026 Pacific / October 26 UTC.  
**Disposition:** independently derived finite-dimensional CAR/representation result and exact integer enumeration; **NOT** a Lean/kernel certificate or a proof of physical point spectrum.  
**Scientific use:** preserves **negative knowledge** for proposals to improve high-spin coercivity by assuming the gauge constraint automatically rules out the sharp full-Fock fermionic pointwise norm.

## 1. Original pinned source and governing boundary

Frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`:
- `lean/OAI/MathematicalPhysics/BFSS/Core.lean`: `ColorIndex 2=Fin 3`, `SpaceIndex=Fin 9`, `SpinIndex=Fin 16`, and `Fermion 2` dimension `2^(8*3)=2^24`, plus exact source `theta_CAR`, `gamma_clifford`, `M.charge` and `M.coreForm`.
- October 5 relative-SU2 BFSS TeX manuscript, lines 72–128: `{theta^a_beta,theta^b_delta}=delta_ab delta_beta_delta`; real symmetric `gamma^i`, `{gamma^i,gamma^j}=2delta_ij`; color `f_abc=sqrt(2)epsilon_abc`; gauge `O_h\otimes I_16` and its genuine Spin48 lift.
- Same manuscript, lines 229–326: `B(x)=(i/2)f_abc x_i^a gamma^i_(beta delta) theta_beta^b theta_delta^c`.
- FCP's [exact original source gauge-orbit averaged confinement audit](../experiments/openai-math-su2-physical-domain/BFSS_JOINT_FERMION_SPHERE_M8_LAMBDA14_K6_AUDIT_0_1_0.md) proves (as **ordinary** source mathematics, not Lean-certified physical spectral theorem) `||B(X)|| <= (84sqrt(2)/5) A(X)` via a 64-cell certificate and notes the lower bound `16sqrt(2)` from rank-one configurations. The new observation here strengthens the *meaning* of that lower bound: the fermionic pointwise extremizer is already neutral under the rank-one gauge **stabilizer**.

The sole new restriction checked here is the genuine **residual SO(2) color gauge action fixing one nonzero bosonic color vector**. This is not equivalent to global SO(3)/SU2 invariance of a wavefunction and not to any fixed Spin9 isotypic sector.

## 2. Exact Clifford reduction at a rank-one bosonic point

Choose original color coordinates `X=(u,0,0)`, `u∈R^9`, `r=|u|>0`. The source fermionic multiplication simplifies using `f_abc=sqrt(2)epsilon_abc` and CAR anticommutation across colors to

```text
B(u,0,0)=sqrt(2)*i*sum_(beta,delta=1)^16 gamma(u)_(beta,delta) theta_beta^2 theta_delta^3.
```

The normalized real symmetric `gamma(u)/r` squares to 1. It has trace zero: for any orthogonal nonzero `v⊥u`, `gamma(v)` is invertible and anticommutes with `gamma(u)`, pairing `+1` and `-1` eigenspaces. Thus `gamma(u)/r` has **eight eigenvalues +1 and eight −1**. Changing the spinor basis orthogonally in both color copies 2 and 3 does not alter their color SO2 stabilizer action or the CAR.

After diagonalizing `gamma(u)`, define sixteen commuting Hermitian CAR bilinears

```text
K_j = i theta_j^2 theta_j^3, K_j^2=1/4, [K_j,K_k]=0 (j≠k).
c_j=(theta_j^2+i theta_j^3)/sqrt(2), N_j=c_j^*c_j,
K_j=N_j-1/2, N_j∈{0,1}.
```

With `s_j=+1` for eight indices and `s_j=-1` for the other eight,

```text
B(u,0,0)/(sqrt(2)*r) = sum_j s_j K_j.
```

The spin-lift of the **residual color SO2** acts on these sixteen oriented color-2/color-3 planes; its generator (up to the overall orientation convention) is `K_tot=sum_j K_j=sum_j N_j-8`. There is no independent 1-dimensional character ambiguity when retaining the source's continuous SU2 group lift; after a 2π SO3 rotation the 16-plane Spin48 lift sign is `(-1)^16=+1`. Therefore the **zero `K_tot` eigenspace** is the genuine stabilizer-fixed fermionic fiber.

## 3. Exact extremum, multiplicity and comparison

Let `n_plus` be occupied modes among the eight `s=+1`, and `n_minus` among the eight `s=-1`. The two simultaneously diagonal operators have eigenvalues

```text
K_tot = n_plus+n_minus-8
B/(sqrt(2)*r) = n_plus-n_minus.
```

The **global minimum** is `-8` and is attained at `n_plus=0,n_minus=8`. At precisely that extremum `K_tot=0`. The entire 16-mode rank-one stabilizer-fixed space has dimension `binomial(16,8)=12870`; the extreme-negative occupancy pattern is unique among these 16 modes. Eight additional independent complex modes from the spectator color-1 Majoranas multiply its full irreducible 48-Majorana Fock eigenspace dimension by `2^8=256` (no claim of global SU2 or Spin9 invariance of these 256 states).

For any fixed residual charge `q∈{-8,…,8}` the exact minimum is even more diagnostic:

```text
min(B/(sqrt(2)*r) | K_tot=q) = -8+|q|.
```

Thus among *all* residual SO2 charge sectors, **the neutral sector has the most negative possible rank-one fermionic energy**. Stabilizer neutrality does not force an improvement over the original pointwise worst case; for this operator it retains it.

For `X=(u,0,0)`, the exact normalized color-spherical observable is `A(X)=r E_{n∈S²}|n_1|=r/2`. Consequently the ratio of the extreme negative fermionic eigenvalue to the positive spherical oscillator scale is

```text
|B_min|/A = (8 sqrt(2) r)/(r/2) = 16 sqrt(2).
```

This reproduces the prior sharp lower ratio but now on a **gauge-stabilizer-neutral Fock subspace**, not merely arbitrary Fock states.

## 4. Reproducible test, evidence level and explicit stopping rule

Companion source [`bfss_rank_one_gauge_stabilizer_fermion_extremum_check_2026_10_25.py`](../experiments/openai-math-su2-physical-domain/bfss_rank_one_gauge_stabilizer_fermion_extremum_check_2026_10_25.py), blob to be checked from live tree, creation commit `3650a482e014b1d6014d30b49f4a9d51cef07dbd`. Its 81 `(n_plus,n_minus)` integer bins exactly exhaust the `2^16` color-2/3 CAR occupation states with binomial multiplicities; no 16-million-dimensional Fock matrix. Checks `2^16`, `12870`, `256`, charge-sector minima and rank-one ratio. The algebraic CAR reduction and residual-lift identification above are an **ordinary mathematical argument**, not an independent Lean theorem; finite arithmetic itself does not certify the source Spin48 implementation.

**Negative decision:** Do **not** launch a new source-bound confinement gate or claim a stronger universal coefficient merely because physical gauge covariance constrains the Fock fiber. In particular, the residual gauge stabilizer alone cannot exclude the worst-case rank-one fermionic contribution. An improved estimate must use genuine **global wavefunction constraints**, fixed Spin9 sector, derivatives, non-rank-one geometry or a coupled mechanism. Those stronger possibilities remain open.

This finding leaves intact the previously derived conditional source estimate `lambda_2>14` and method-relative `m=8` stop bound. It does not prove `16sqrt(2)` is the global supremum of `||B(X)||/A(X)`, nor validate all source spectral steps, nor establish positive eigenpair existence or a full BFSS mass gap.

**Governance:** preserve canonical FCP main, original `etblink/math`, research proof gate records, and draft PR #25. No new Lean root and no automatic CI gate are claimed here.
