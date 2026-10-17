# BFSS SU(2) — Project Lead checkpoint: original Gauss–physical equivalence completed; return to spectral obligations

**2026-10-16 PDT | research branch only | no merge, upstream edit, or manuscript certification.**
**Scope:** preserve the exact, checked advance from the Original Source Spin Identity #342–#358 series, its important negatives, and a falsification-oriented next research decision.

## 1. Source identity and reproducible evidence

- FCP research repository `etblink/Foundational-Convergence-Program`, branch `research/openai-math-su2-s3l-combined-rotation`, draft PR #25 **open, draft, base** `research/openai-math-su2-s3k-physical-spin-flow` (checked 2026-10-16). No main or upstream merge.
- Pinned original BFSS mathematical source: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`; unaltered. Lean 4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- **[Original Source Spin Identity #358](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38994451291)**, job `117283780996`, qualified source/workflow commit `68eb2b1d0d7405eb6728dbe98c92713f08885e3e`, marker `L6H5E8AA_ORIGINAL_SU2_GAUSS_PHYSICAL_IFF_QUALIFIED`. All THREE H5E8AA declarations `actualOriginalJointKernel_fixed_fullGauge`, `actualOriginalJointKernel_iff_fullGaugeFixed`, and `actualOriginalJointKernel_iff_physical` compiled and each has **exactly** `[propext, Classical.choice, Quot.sound]` as axioms (no `sorryAx`).
- **[Original Source Spin Identity #357](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38993269310)**, job `117280064382`, SHA `db95d1f6e52018a1bea94ae3feb2f0d4f5714b19`, marker `L6H5E8Z_ORIGINAL_COLOR_GENERATED_TOP_QUALIFIED`; both H5E8Z declarations permitted-axiom-only. The algebraic `Subgroup.closure` of literal original source positive-i Pauli gauge curves equals `⊤ : Subgroup (GaugeGroup 2)`, not just dense.
- **[Original Source Spin Identity #356](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38992065735)**, job `117276400016`, SHA `9b68f78812a1c27db742cb0b18a3e7a2789852c3`, marker `L6H5E8Y_ORIGINAL_SU2_EULER_FACTORIZATION_QUALIFIED`; exact three-curve Euler decomposition for **every actual** `g : GaugeGroup 2`, with original Pauli normalization, original +i sign, explicit real times and zero-entry-safe phases. All THREE declarations permitted-axiom-only.
- Earlier gated prerequisites H5E8Q quaternion form/unit norm #342, H5E8R source z diagonal #345, H5E8S y conjugation #348, H5E8T y rotation #349, H5E8U exact source ZYZ matrix/group product #350, H5E8V zero-safe amplitudes/phases #351, H5E8W source times/phases #354, H5E8X source ZYZ first-row equality #355, H5E8M generated joint-kernel iff fixedness #330, source G7V physical fixed-space identity. Follow pinned individual logs; do not promote unqualified runs or infer stronger conclusions.

### Precisely accepted mathematical theorem

In original namespace `FCP.BFSSSU2PhysicalDomainL6H5E8AA` and without density or other extra premises, for each actual `v : FullL2 2`:

```lean
(∀ c : ColorIndex 2,
  ∃ hdom : v ∈ actualOriginalColorGeneratorDomainSubmodule c,
    actualOriginalColorGeneratorLinear c ⟨v, hdom⟩ = 0) ↔
  v ∈ pairedGaugeData.physicalSpace
```

The right side is the *source original physical Hilbert subspace*. The left uses the full maximal strong-derivative domains of **all three** actual original color generators. The proof uses the actual bounded FullL2 SU(2) action (bosonic inverse-pullback and original 48-Majorana Fock representation), the accepted source one-parameter fixedness/kernel equivalence, and algebraic whole-group generation. It does not silently replace full generator domains with SmoothCore.

**Classification: GAUGE-THEORETIC MILESTONE KERNEL-QUALIFIED.** The result is not the spectral theorem, essential skew/self-adjointness of the original restricted color generators, all-supercharge covariance, global Spin(9) implementation, Hamiltonian-source-identity proof, or nonzero eigenvalue theorem.

## 2. Negative knowledge preserved

- #352: Lean `← sub_mul` does not match the normalized target `a*I + -(b*I)`; use an intermediate casted real subtraction, `push_cast` and `ring`. #353: first repair had an unmatched parenthesis in its complex cast; parser failure, not a mathematical counterexample. #354 strictly qualified corrected H5E8W.
- Do not reopen H5E8O infinitesimal spanning/density to prove full gauge generation: H5E8Y/Z give *exact finite product*, hence stronger.
- Do not infer equality of all maximal Gauss-generator **domains** with the smooth compact core or closure of an arbitrary operator merely from equality of their **joint kernels**.
- Do not relaunch monolithic S3L cubic assembly R4B/R4D as the next default gate. Prior R4D had maximum recursion and deterministic kernel timeout; K2C attempts document normalization/recursion bottlenecks. This gives no physical counterexample, but repeating nearly identical elaboration shapes lacks information value.
- Do not conflate the independent Lean-accepted D2B source closed charge-column/form machinery and source supercharge equality G4K9D with a formal identification of the pinned **2026 manuscript's exact Spin(9)-isotypic restricted spectral operator** until that interface is itself certified.

## 3. The next scientific boundary, based on the PINNED MANUSCRIPT

Inspected `etblink/math@adc7f124...:.../positive-eigenvalues-relative-su2-bfss.tex` itself:
- Lines ~110–133: the source `Core = [C_c^∞(R^27;F)]^SU(2)`, **all sixteen** literal `Q_α` (kinetic `-i`, cubic `+1/2 f x x γ^{ij} θ`), `q = (1/16)∑‖Q_α Ψ‖²`, and closed-form Hamiltonian choice. The accepted gauge-kernel iff physical theorem does **not** prove 16-Q symmetry, graph closability, or identification of an alternative scalar operator with this closed `H`.
- Lines ~236–318: exact `q = (1/2)‖∇Ψ‖² + ∫V|Ψ|² + ∫⟨Ψ,BΨ⟩` and original `V = ∑_{a<b}|x^a ∧ x^b|²`, `B = +(i/2) f x γ θθ`, including anti-commutator normalization and cross term. Existing source-bound finite checks support this; they are **not** a Lean end-to-end equality for the manuscript on the physical core.
- Lines ~327–410 (see already written source audits): global 48-Majorana `Spin(9)` action commuting with **source gauge**, all sixteen exact `Q_α` covariances, and form-norm/character projection reduction to real closed `H_λ`. These are separate from the now-closed `SU(2)` color problem.
- Lines ~731–803: original high-weight gauge-invariant polynomial `P(x)`, `Spin(9)` highest weight and infinitely many radial bump vectors in a single genuine physical isotypic sector; finite source checks pass but cannot by themselves finish the spectral theorem.

### Project Lead decision: source-realization/closed-form audit BEFORE another large Lean gate

1. **Next falsifiable interface:** can one identify (without any replacement representation or unproved domain equality) the literal 2026 manuscript's `q`/physical `Core` and closed `H` with the existing *qualified* source `G4K9D` full SmoothCore supercharge and `D2B` closed source physical charge-column/form/associated-operator declarations? Check the exact underlying source types, gauge group representation/intertwiner, normalization `1/16`, smooth-core density, and graph closure. The recent H5E8AA can supply **only** physical fixedness iff maximal Gauss kernel; it does not automatically supply the new operator/form identification.
2. If source objects differ, state **the smallest unproved intertwiner/domain equality** explicitly before launching CI. If a bounded, source-faithful theorem genuinely bridges them, implement it with a distinct axiom audit. Otherwise record the precise gap, rather than creating a trivial packaging green.
3. Independently adversarially check the original global `Spin(9)` action and high-weight isotype closed-form/oscillator confinement proof. Treat prior exact finite tests and analytic audits as valuable but distinct from an accepted end-to-end Lean proof or independent journal referee validation.
4. Do not assert positive point spectrum, compact resolvent on every sector, full Hamiltonian spectral theorem, global mass gap, or M-theory interpretation merely from accepted Gauss invariance.

### Relevant earlier durable research records

- `experiments/openai-math-su2-physical-domain/BFSS_SPECTRAL_SOURCE_FIRST_ROTATION_AND_SLICE_AUDIT_0_1_0.md`.
- `experiments/openai-math-su2-physical-domain/BFSS_ORIGINAL_ALL_SPINOR_GLOBAL_COVARIANCE_AND_FORM_BRIDGE_AUDIT_0_1_0.md`.
- `experiments/openai-math-su2-physical-domain/BFSS_HIGH_SPIN_CLOSED_DOMAIN_COMPACTNESS_AND_SPECTRAL_BOUNDARY_AUDIT_0_1_0.md`.
- `audits/OPENAI_MATH_BFSS_SU2_G4K9D_GATE_170_SOURCE_OPERATOR_AND_CORE_FORM_ACCEPTANCE_0_1_0.md`.
- `audits/OPENAI_MATH_BFSS_SU2_PHYSICAL_DOMAIN_GATES_84_88_CLOSED_FORM_COMPLETENESS_ACCEPTANCE_0_1_0.md`.
- `experiments/openai-math-su2-physical-domain/L6H5E8_SOURCE_PAULI_EULER_FACTORIZATION_PROOF_ROUTE_2026_10_16.md`.
- GitHub Issue #27, specifically the strict 355–358 qualification reports.

**Owner-directed governance:** truth before greens; preserve negative results and accepted compiled modules; no main/upstream merge, no PR base changes, no claims of future/asynchronous work. Do not manufacture another CI gate without a new mathematical obligation.
