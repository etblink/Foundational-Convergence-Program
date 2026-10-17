# S3L — Combined spatial and fermionic rotations on the original SU(2) BFSS source model

**Status:** SCIENTIFIC TARGET FROZEN; S3L SOURCE PROOFS NOT YET QUALIFIED  
**Basis:** research S3K commit `89d69e4b35eb4e9b3e936f7d9057897250de1f5b`, BFSS Physical Domain Bridge **#212 GREEN**  
**Repository authority:** canonical FCP `main` unchanged; work limited to this isolated research branch  
**Source pins:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`

## 1. Actual advancement at S3K

The pinned kernel compiled, and the strict axiom gate accepted these source-defined propositions, with no `sorryAx` or novel axioms:

- S3K0: `sourceSpinFockIsometry_apply`, `sourceSpinFullL2CLM_apply`, `sourceSpinFullL2CLM_norm_le`.
- S3K1: `sourceSpinFullL2CLM_comm_fiber`, `sourceSpinFullL2CLM_comm_boson`, `sourceSpinFullL2CLM_mem_physical`.

These apply to the **literal** paired 48-Majorana / 24-mode `Fermion 2`, `FullL2 2`, and `pairedGaugeData.physicalSpace` rather than an invented substitute. S3K proves an **internal fermionic** unitary rotation is compatible with SU(2) gauge constraints. It does **not** say this fermionic-only transformation commutes with the BFSS Hamiltonian. Its single-plane group property and finite-time theta covariance are separate statements; the stalled S3J3 weighted-Majorana elaboration is not a dependency of S3K.

## 2. Primary source and proof identity

The pinned manuscript is `openai/math/preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, especially `lem:rotations`. The genuine Hamiltonian is the self-adjoint normalized physical charge-square operator specialized in accepted D2B28, with its natural domain. Its physical rotation claim requires a **combined** action on bosonic coordinates and fermionic Fock states, acting simultaneously on the source supercharge column.

Accepted source facts:

1. S3B: for a genuine source real spin-plane generator `J_{ij}`, `[J_{ij}, gamma_k] = -gamma_j` at `k=i`, `+gamma_i` at `k=j`, and zero on transverse `k` (distinct `i,j`).
2. S3E: for the actual bounded Fock generator `K_{ij}`, `[K_{ij}, theta_beta^a] = sum_eta (J_{ij})_{eta,beta} theta_eta^a`.
3. S3H-S3K: the genuine bounded fermionic exponential preserves the Fock norm and the physical Gauss-law subspace.

**Scientific next hypothesis (not yet Lean accepted):** Let `L_{ij}` be the genuine skew orbital differential generator on the source `SmoothCore 2`, acting as

```text
L_ij f(x) = sum_a (x_i^a * partial_(j,a) f(x) - x_j^a * partial_(i,a) f(x)).
```

The infinitesimal **combined** action should satisfy, for the actual source `M = pairedAlgebraData` and all `alpha` and `f` in the original smooth invariant core,

```text
[(L_ij + K_ij), Q_alpha] f
  = - sum_beta (J_ij)_(alpha,beta) (Q_beta f)
```

with the commutator's sign verified directly against the definitions of `charge`, `coordinateDerivative`, `position`, `gammaTwo`, and the pullback convention in the source. Here `K_ij` acts pointwise on fermions, and `L_ij` on the 27 bosonic variables. The same identity must hold for the full cubic potential term, not just the kinetic term. Treat the displayed equation as a **target**, never as already proved or an assumed lemma.

For the kinetic term, the expected cancellation is explicit. The accepted `[K,theta]` term produces the matrix coefficient `gamma_k J^T = -gamma_k J`. The coordinate-derivative variation under the orbital generator contributes `-[J,gamma_k]`. Their sum is `-J gamma_k`, the required rotation of the source charge's free spinor index. Check this calculation in the compiler's actual index/coefficient convention before extending it to the potential.

## 3. Bounded proof sequence, with stop conditions

**S3L-A (source-faithful orbital geometry):** Construct the bosonic plane rotation on `Boson 2` with the required orthogonality, measure-preservation, strong continuity, and exact color-gauge commutation. Prefer existing finite-dimensional isometry/rotation APIs and existing source operators. No auxiliary physical Hilbert space or surrogate `GaugeData`.

**S3L-B (genuine smooth-core supercharge covariance):** Establish the exact differential identities for the orbital action, and the full original `Q_alpha` covariance using accepted S3B/S3E source identities. Check the sign and normalization in the cubic term independently. Avoid a detour into proving the old generic weighted-Majorana finite-time lemma if the core covariance can be derived more directly.

**S3L-C (physical closed-form symmetry):** Show that the simultaneous bosonic pullback and genuine S3H fermionic flow (with correctly matched signs) preserve the *original* invariant core and the exact 16-charge form `q = (1/16) sum_alpha ||Q_alpha f||^2`. Transfer via the source's closed-form graph and form norm, rather than claiming self-adjointness from a formal commutator.

**S3L-D (Hamiltonian and spectral reduction):** Only after the previous proof gates qualify, prove commutation with the *genuine* D2B28 closed self-adjoint Hamiltonian including preservation of its **operator domain**; then assess whether a bona fide connected Spin(9) group representation and sector projections can be constructed. This is still not compact resolvent, the branching/oscillator exclusion, or positive point spectrum.

**One decisive gate per substantive mathematical result.** Cache the accepted S3K objects when possible, compile fresh S3L files against the pinned environment, record exact kernel axioms, and keep `main`/upstream untouched.

## 4. Adversarial falsifiers / negative knowledge

- **False shortcut:** Fermionic-only gauge invariance implies `[H,K]=0`. It does not; the actual Hamiltonian couples fermions to bosonic spatial derivatives/coordinates.
- **False shortcut:** An infinitesimal identity alone proves full connected Spin(9) symmetry, global group lifts, form-domain invariance, or energy-sector reduction. These each need additional proofs.
- **False shortcut:** The abstract `AlgebraData N` construction automatically identifies the paper's arbitrary Clifford module. FCP has an explicitly paired concrete representation; keep any equivalence theorem separate.
- **Fatal signal:** Any failed gamma/charge sign, coefficient, color/spatial contraction, or fermion-generator normalization must be handled as substantive mathematical evidence, not absorbed by changing the theorem statement.
- **Efficiency signal:** If the mathematically essential statement is settled but Lean cannot elaborate large finite sums, separate finite-dimensional algebra from the literal source specialization and avoid repeated unproductive compiler retries.
- **Scientific priority:** The highest-stakes unresolved manuscript steps remain rotation-type reduction, orthogonal interlacing, transverse oscillator exclusion, sector compactness, and final spectral inference. Formalize only steps that genuinely support or challenge those claims.

## 5. Acceptance discipline

All prospective S3L lemmas start **UNCOMPILED / NOT CLAIMED**. Accept only with the exact pinned compiler, importable Lean object, successful axiom check, and source-identity verification; cite the successful run/commit. Preserve S3K gate #212 as a separate immutable scientific checkpoint. Keep PRs draft and unmerged unless the owner explicitly approves.
