# BFSS Foundational Convergence Program — Project Lead spectral-existence execution plan

**Established 2026-10-24 Pacific (current source audit). Status: PHASE ZERO COMPLETE; PHASE ONE UNDERWAY; NO NEW SPECTRAL ROOT CLAIMED.**

## Governance, known accepted boundary, preserved evidence

Repository: `etblink/Foundational-Convergence-Program`, branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`. Canonical `main` and draft PR #25 untouched; pinned primary math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, source TeX `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`, 889 lines. Frozen Lean 4.34.1/Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; authorized axioms only `propext, Classical.choice, Quot.sound`. Preserve every failed run with first original compiler diagnostic and source hash; no `sorryAx`, new opaque hypotheses or proxy physics. Accept only exact original theorem name, source, fresh warning-as-error compilation, allowed-axiom report and child cache save, except documented nonfatal identical-cache contention if a separate identical-source run saved the cache.

**The operator bridge is DONE at its honest mathematical scope:** H4E3D4C4 is a kernel-qualified full actual physical graph-submodule equality `(U⊕U)Graph(H_ind)=Graph(H_hist)` under explicit source representation matching. H4G1B is a separately kernel-qualified concrete biconditional for the existence of a NONZERO *normalizable* eigenvector for each specified `eigval:ℂ` in the corresponding actual independent/historical physical Hilbert spaces, with true natural domains. [Accepted H4G1B run #40146023874](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40146023874), job `121027417875`, qualified cache `bfss-fcp-m4f9-h4g1b-actual-eigenpair-aa27b8f4-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`. H4G1B is **conditional and does not construct a single eigenvector**. Stop adding redundant H-transport lemmas.

**Actual source theorem to investigate:** the October 5 manuscript claims *infinitely many strictly positive normalizable eigenvectors of the relative SU2 physical Hamiltonian* with eigenvalues tending to infinity, even though the full unrestricted Hamiltonian may have continuous spectrum down to 0. **No positive full-H mass gap is claimed or follows**. No completed end-to-end Lean S1–S8 spectral theorem exists. Source reviews and numerically exact character/convex certificates are *ordinary mathematical evidence*, not replacement for missing source/physical operator/domain proofs.

## Ordered critical path and parallel mathematical research

### R0 — Freeze and crosswalk the authentic source (COMPLETE)

- Reuse exact H4G1B and H4E3D4C4 acceptance audits, frozen source dimensions (27 real bosons, 48 Majoranas, 16 charges), kinetic/form normalization `q(Ψ)=(1/16) Σ||QαΨ||²`, and the already source-qualified D2B17/D2B24–D2B28 charge/weighted-graph/weak-form/self-adjoint history.
- Distinguish manuscript closed form `q` from the historical `pairedSU2PhysicalHamiltonian` on actual paired physical Hilbert carrier and from source smooth `C_c∞` core. D2B28 proves actual historical H is the weak-form operator associated to the original paired physical source charge: `pairedSU2PhysicalHamiltonian_weakForm_iff`; this does NOT prove a new global Spin9 reducing-isotype theorem or the manuscript's full spectral statement.
- Explicitly classify any source-level accepted smooth generator covariance versus global Spin(9) action and closed-form covariance. Only the latter supplies isotypic projections preserving physical form domain.

### R1 — Actual physical Spin(9) group action and closed form symmetry (CRITICAL, OPEN)

**Goal:** the genuine Spin9 (not only SO9 or infinitesimal plane generator) acts strongly continuously by unitaries on the original paired physical gauge-invariant Fock-valued L² Hilbert space; the action commutes with original SU2 gauge representation and preserves exact closed sixteen-charge form norm. Construct/identify a true `Spin9 → Fock unitary` from original 16 real gamma/48 Majorana modules with coherent lift, then combine with spatial pullback on genuine Hilbert and physical gauge subspace. Show conjugation of all 16 source supercharges on a genuinely dense invariant core (including all cubic terms) and extend norm invariance to closure.

**Reuse:** accepted S3A/S3B gamma-plane covariance, S3G fermion-gauge commutation, S3L kinetic J1–J9/cubic K/R source identities. Read `BFSS_S3L_CUBIC_WEIGHTED_RESPONSE_SOURCE_GAP_AND_NEXT_PROOF_0_1_0.md` carefully: historic missing weighted cubic operator-response reindex/contraction and global/closed-domain extension are NOT discharged by generic commutator compilation. Prefer the exact original R1 fermion-index, R2 two-spatial-index and R3 gammaTwo coefficient links, each independently qualified, before final cubic free-spinor covariance. Avoid launching a monolithic global representation gate based on an unproved Lie-to-group integration.

**Accept/stop:** if global group law, lift, gauge commutation, physical domain or cubic covariance has a concrete counterexample/convention sign mismatch, preserve counterexample and stop spectral-sector promotion. A formal statement about an abstract replacement Fock representation does NOT qualify the original pinned Hilbert space.

### R2 — Source Spin9↓Spin8 branching and actual 48-Majorana stabilizer weights (IN PROGRESS, conditional)

**Goal S3:** prove for every B4 highest type `λ` and every D4 stabilizer constituent `ν`, integral AND half-integral lattice included, `ν₁≥λ₂`; derive source's character coefficient `m_ν=det(1[|t_i|≤L_j])` and independently establish `m_ν≠0⇒ν₁≥λ₂`. The determinant-to-bound step admits a short **equal-first-two-columns** proof: if `t₁≤L₂`, all `|t_i|≤t₁≤L₂<L₁`; every row of the j=1 and j=2 columns equals 1, so determinant zero. Need exact lattice-integrality to conclude the weak bound `ν₁≥λ₂` from `ν₁>λ₂−1`. This is a mathematically useful standalone finite determinant lemma independent of the actual B4→D4 character identity.

**Goal S4 weight input:** on the **original** real Spin9 spinor-label representation restricted to Spin8, each of 8 positive weights `ω_s=(ε1+s2 ε2+s3 ε3+s4 ε4)/2` has 3 color-adjoint creation modes. For the full 24-mode Clifford Fock module and actual SU2 Haar character projection, prove every first Spin8 torus-weight coordinate of F is at most **M=6**. Do NOT replace original gauge singlet by torus weight zero alone. Initial independent exact-integer cross-check `BFSS_ACTUAL_SU2_SINGLET_FOCK_M6_SOURCE_CHARACTER_CROSSCHECK_2026_10_24.py` recovers full Fock dimension 16,777,216, SU2-gauge-singlet dimension 366,080, and exactly one singlet first-weight-6 state; it presupposes original global group action and its character formula, not an actual Lean group construction. Audit `BFSS_COMPLETE_SU2_SINGLET_FOCK_SPIN9_DECOMPOSITION_AND_K18_WITNESS_0_1_0.md` for complete original gauge-singlet highest irrep decomposition rather than recomputing it.

**Falsify:** test B4/D4 sign/parity, `ν₄<0`, source gamma spin lift, fermion Fock vacuum weights, torus singlet versus true SU2 singlet, and whether actual spatial/fermionic stabilizer actions match the manuscript. A finite no-counterexample result is not a proof.

### R3 — True physical 16-dimensional transverse oscillator exclusion (OPEN)

**Goal S4:** on `Ψ∈Core∩Hphys_λ` only, use the FINITE-DIMENSIONAL Spin9 translate span to define evaluation on the fixed transverse slice; never evaluate arbitrary L² classes at a measure-zero slice. Prove this slice is K_u=Spin8-equivariant for each nonzero u and fixed longitudinal parameters, with the ACTUAL source 48-Majorana fermionic action; the nth Hermite projector commutes with stabilizer isotypic projections. Original transverse Hilbert dimension **16**; `h_r=-aΔ_z+r²|z|²` has exact levels `2√a(n+8)|u|` for `a>0`. Conclude `Π_n Φ=0` whenever `λ₂>m+6` and `n≤m`, for all smooth physical slices. The particular high-sector witness `λ=(15,15,1,0)` has λ₂=15 and excludes levels n=0..8 at M=6; this is **only arithmetic** before the true physical projector construction.

**Stop:** any nonzero legitimate physical smooth fiber with forbidden oscillator component falsifies the claimed exclusion; preserve explicit data and halt S5 promotion.

### R4 — EXACT original closed form coercivity and compactness (OPEN)

**Goal S5/S6:** keep the literal source `q=(1/16)Σ||QαΨ||²` and source `q=(1/2)G+∫V+⟨B⟩` on original smooth source-physical core, including original `f_abc=√2 ε_abc`, actual gamma/theta, and correct SU2 Haar weighting. Use fixed-color transverse potential `V≥|u|²|z|²`; record Jacobian=1 for fixed u and avoid invalid differentiation of u-dependent frames. For arbitrary color direction, gauge equivariance permits Haar averaging of `|Xn|`, with `A(X)≥|X|/2`. Former source-faithful improved analytic audits proved ordinary-math `||B(X)||≤(84√2/5)A(X)` by an exact 64-triangle rational-geometric certificate, at `a=49/100, m=8` giving positive retained gradient coefficient **1/100** and radial coefficient `(119-84√2)/5>0` for λ₂>14. **This is currently the strongest recorded adequate conditional threshold**, not the manuscript's older `m=50` illustrative bound and not an end-to-end Lean result.

**Mandatory recheck:** independently verify exact 45-vertex/64-cell determinant certificate and its analytic prerequisites and link to full ORIGINAL fermionic operator norm (do not confuse scalar `B` proxy). The pure Python reference is `BFSS_JOINT_B_SPHERICAL_M8_CERTIFICATE_0_1_0.py`; isolate the tiny rational certificate for potential future Lean verification only after verifying the source-to-fermion reduction. On the real smooth physical isotypic core derive
```text
q(Ψ) ≥ (1/100)||∇Ψ||²
    + ((119-84√2)/5) ∫ A(X)|Ψ(X)|²
    ≥ (1/100)||∇Ψ||²
    + ((119-84√2)/10) ∫ |X||Ψ(X)|²
```
with source normalization unchanged, conditional on R1–R3. Then extend to the ACTUAL **closed** physical restricted form domain via genuine form-core density, closed weak gradient and radial multiplication. Prove local Rellich + weighted radial tail compactness and `ker Hλ=0` for each nonzero sufficiently-high reducing sector. DO NOT promote compact resolvent on unrestricted H.

### R5 — Real nonzero, infinite physical sector and spectrum (OPEN)

**Goal S2/S7/S8:** establish actual globally reducing isotypic form subspaces, then an actual nonzero gauge/Spin9 fermionic highest vector in `F^SU2`, not merely an unspecialized Weyl symbol. Reuse previous exact SU2-singlet decomposition and source's gauge-invariant highest polynomial `P=(ζ·ζ)(η·η)-(ζ·η)^2`, highest weight (2,2,0,0). Existing *conditional* `λ₂>14` construction uses source-listed `μ=(3,3,1,0)`, `P^6` (degree 24) to obtain `λ=(15,15,1,0)`; alternatively P^7 and μ=(2,2,0,0) gives smaller-dimension sector λ=(16,16,0,0). Rigorously construct/inject physical cutoff wavepackets `χ_j(|x|)P^6v_μ` with disjoint radial supports as distinct states in **one** reducing physical sector. Then compact-resolvent nonnegative self-adjoint spectral theorem and zero-kernel furnish infinitely many strictly positive normalizable eigenstates *of the actual H_hist*; only then transport those existing eigenstates to independently normalized `H_ind` using accepted H4G1B.

**Stop:** no S8 eigenvalue existence if R1 (global action), R2 (true character/fermion weights), R3 (physical slices) or R4 (closed form) is unproved, even with hundreds of unrelated green operator roots. Never claim positive **full-H** mass gap.

## Execution order and reporting contract

1. **Now:** preserve this source-first plan and the small independent source-character M=6 diagnostic; inventory source D2B28 weak-form and S3L global Spin9 missing seam. Mark as complete only the small *conditional* arithmetic/character crosscheck. Independently stress the existing exact 64-cell certificate; preserve full real arithmetic and theorem scope.
2. **Next bounded research slice:** find a source-exact genuine Spin9/global-group obstruction or constructive path via original Fock Spin48, together with the missing cubic coefficient transport; separately formalize short generic prefix-determinant implication only if verified it is a useful dependency for a genuine source branching theorem. Avoid broad surrogate Lean gates.
3. **After constructive R1 and R2 interfaces:** small strict CI per original-source lemma (not generic schema-only theorem) with explicit original-pinned root, source/olean cache, axiom whitelist, raw compiler and negative audits; escalate genuine new mathematical failures, not throughput.
4. **Before any high-level source spectral statement:** independent adverse reviewer checks source S3→S4→S5, S2 and S7, actual physical domain and exact q/H identification, positivity/nonzeroness and provenance. A critical counterexample is positive scientific progress; preserve it with reproducible artifact.

**Ledger:** no new accepted spectral roots in this plan or character test. H4G1B remains 1/1 accepted concrete *conditional transfer* support root, principal-root ledger not silently increased. All prior reds, especially H4G1A reserved `λ` Gate #1 and H4E3D3 WHNF Gate #1/#2, remain red. Main, draft PR #25 and pinned upstream left unchanged.
