# BFSS SU(2): manuscript–source physical supercharge and Hamiltonian interface audit

**2026-10-16 PDT | Project Lead | Research branch only | Source-bound investigation; NOT a new Lean acceptance or a manuscript spectral endorsement.**

## Question and outcome

**Question:** After exact original SU(2) source Gauss ↔ physical space qualification [#358](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38994451291), what specifically remains to identify the *independently formulated* 2026 positive-eigenvalue manuscript's (H) with the BFSS source's concrete closed physical charge Hamiltonian?

**Status:** `EXACT_PINNED_SOURCE_FORMULAS_AGREE__SOURCE_PHYSICAL_GRAPH_INTERFACE_ISOLATED_PROSPECTIVE__EXISTING_SELFADJOINT_SOURCE_OPERATOR_RECOGNIZED__INDEPENDENT_MANUSCRIPT_CLIFFORD_GAUGE_INTERTWINER_AND_SPIN9_SPECTRAL_REDUCTION_OPEN`.

A priori it would be a serious error to assume the manuscript's abstract irreducible 48-Majorana Clifford module, its normalized `Spin(48)` gauge/spatial lift and its choice of closed form are automatically **definitionally equal** to a fixed Lean `Fermion 2` and `pairedGaugeData`. The formulas and dimensions match; the canonical domain/representation identification must be either constructed or clearly retained as an unresolved bridge.

## 1. Actual pinned primary-source data, inspected afresh

**Original mathematical manuscript:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`,
`preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`.

- Lines 98–111: abstract irreducible complex Clifford/Fock module `F`, normalized `sqrt(2)*theta`, SU2 gauge lift `V_h` and the invariant Hilbert space `[L²(R27;F)]^SU2`; `Core=[C_c^∞(R27;F)]^SU2`.
- Lines 113–133: (Q_α=-i γ^i_{αβ}θ^a_β∂_{ia}+(1/2) f_{abc}x_i^b x_j^c γ^{ij}_{αβ}θ^a_β), the **literal coefficient `1/16`** in (q=(1/16)sum_α ‖Q_αΨ‖²), and (H) as the nonnegative self-adjoint operator associated to the closure of this form.
- Lines 236–318: expanded original core form (q=(1/2)‖∇Ψ‖²+∫V|Ψ|²+∫〈Ψ,BΨ〉), (V=sum_{a<b}|x^a∧x^b|²), (B=(+i/2)f_{abc}x_i^a γ^i_{βδ} θ^b_β θ^c_δ). Important: do not introduce a sign reversal, drop the fermion color generator, or infer this expansion from mere source-graph equality.
- Lines 327–410 and 731–803: independently load-bearing **global `Spin(9)`** all-spinor action, form-norm isotypic reduction, branching/slice/oscillator confinement, and nonzero high-weight physical sectors. None follows from SU2 source-color generation by itself.

**Pinned source Lean files** under `etblink/math@adc7f124.../lean/OAI/MathematicalPhysics/BFSS/`:

1. `Core.lean`: `FullL2 N := Lp (Fermion N) 2 volume`; `Fermion 2 := EuclideanSpace ℂ (Fin (2^(8*colorDim 2)))` with 48 original theta labels; `SmoothCore N := TestFunction ...`. `AlgebraData.charge α` (lines 93–100) includes original `-Complex.I` kinetic and `1/2` structure-constant `gammaTwo` cubic coefficient **over all 9×9 spatial/color sums**; `chargeVector` (107–108), `coreForm=(1/16) Σ‖charge‖²` (110–111), `fullCoreGraph` (318–319) and its genuine closure `fullClosedGraph` (321–322).
2. `GaugeCore.lean`: `GaugeData` is the literal six-field boson/fermion unitary gauge construction, `physicalSpace = ⋂_g ker(bosonPullback g − fiberAction g)` (39–40), and **`invariantCore = physicalSpace.comap coreToL2`** (52–53). Lemma `invariantCore_equivariant` (55–73) upgrades L2 equality of smooth continuous representatives to pointwise equivariance, so a purely-measure-theoretic a.e.-representative gap is not silently assumed.
3. `ClosedProfiles.lean`: `deformedChargeVector h m`, `deformedCoreGraph h m`, and `deformedClosedGraph h m` (75–82); `GaugeData.deformedModelGraphMap` and **physical** `deformedModelGraph h m = topologicalClosure (range map on invariantCore)` (226–232). The restricted physical graph is not the unrestricted full graph; do not confuse their domains.

**FCP preaccepted/source-specific modules**, exact file and theorem signatures inspected:

- `SU2BFSSFullAlgebraDataProbe.lean`: actual `concreteAlgebraData : AlgebraData 2` with original normalized Pauli, real `Cl(9)` gamma and original CAR `thetaCandidate`.
- `SU2BFSSG4JExactGaugeDataAssemblyProbe.lean`: actual `pairedGaugeData : pairedAlgebraData.GaugeData`; `boson := bosonGauge`, `fermion := fermionGaugeUnitaryHom` with original adjoint/continuity fields.
- `SU2BFSSG4K9DSourcePotentialMultiplierProbe.lean`: `sourceUnconditionalCoreCharge_equal M α f` proves **original `M.deformedCoreCharge 1 0 α f = M.charge α f` on full SmoothCore**; `sourceUnconditionalCoreForm_equal M f` similarly proves exact `h=1,m=0` core form equality. [Accepted gate #170](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38011995220) documented in `audits/OPENAI_MATH_BFSS_SU2_G4K9D_GATE_170_SOURCE_OPERATOR_AND_CORE_FORM_ACCEPTANCE_0_1_0.md`.
- `SU2BFSSPhysicalDomainD2B12OriginalPhysicalChargeLinearPMapProbe.lean`: actual original source *restricted* closed physical graph, not a maximal free differential operator.
- `SU2BFSSPhysicalDomainD2B14ExactClosedChargeQuadraticEnergyProbe.lean`: closed-domain `1/16` form on physical charge domain, equals original `M.coreForm` on original invariant smooth core and `M.deformedCoreEnergy 1 0`.
- `SU2BFSSPhysicalDomainD2B22ExactHilbertEnergyFormTransportProbe.lean` and `D2B25WeightedFormDomainExactnessProbe.lean`: exact Hilbert-output norm square `1/16` and complete weighted physical form graph; older accepted-qualification documentation available for #83/#88.
- **Important audit correction:** `SU2BFSSPhysicalDomainD2B26WeakFormAssociatedOperatorProbe.lean`, `D2B27NormalizedHamiltonianSelfAdjointProbe.lean` and `D2B28ConcretePairedSU2HamiltonianProbe.lean` ALREADY EXIST. D2B27 defines `sourcePhysicalNormalizedHamiltonian M G := (1/16)*T†T`, its natural domain, self-adjointness and weak-form identifying property; D2B28 specializes to **actual pairedAlgebraData/pairedGaugeData** and states concrete `pairedSU2PhysicalHamiltonian_selfAdjoint`, closedness, domain density and weak-form iff. The existence of these files is **NOT** an independent gate-success check; review their pinned CI and axiom audit before using them as new qualified dependencies. Do not repeatedly re-prove an already existing abstract associated-operator theorem.
- `L6H5E8AAOriginalSU2JointGaussKernelPhysicalIffProbe.lean` qualified at strict #358: original actual `v : FullL2 2` is in `pairedGaugeData.physicalSpace` iff it has zero image under every maximal source color Gauss generator, with precise domain witnesses. This permits a *new characterization* of `pairedGaugeData.invariantCore` via `coreToL2 f`, **not** identification of it with the entire maximal Gauss domain.

## 2. Smallest EXACT new source graph statements (prospective Lean)

Created on research branch:
`SU2BFSSPhysicalDomainL6H5E8ABOriginalMasslessPhysicalChargeGraphBridgeProbe.lean`.

Six separately printable definitions/theorems have **NOT** been Lean-qualified. Their intended proof architecture uses existing **literal source** objects:

1. `M.deformedChargeVector 1 0 = M.chargeVector`: pointwise equality of the 16 source original charges from qualified G4K9D.
2. `M.deformedCoreGraph 1 0 = M.fullCoreGraph`: equality of unrestricted graph ranges, without a new graph hypothesis.
3. `M.deformedClosedGraph 1 0 = M.fullClosedGraph`: equality follows from the *same* closure operation in the pinned source.
4. `f ∈ pairedGaugeData.invariantCore ↔ (∀ c, ∃ hdom : coreToL2 f ∈ original source maximal Gauss domain c, generator c = 0)`: direct specialization of accepted H5E8AA and literal GaugeCore definition.
5. `original_source_physicalCoreGraph M G`: graph of original `chargeVector` restricted to original `G.invariantCore`.
6. `G.deformedModelGraph 1 0 = (original_source_physicalCoreGraph M G).topologicalClosure`: equality of two definitions of the *physical* graph under G4K9D charge equality.

These are useful exact source realization identities; **none by itself proves the 2026 preprint's abstract Clifford/gauge module is unitarily intertwined with the concrete source module**. A CI success would not establish the independent paper's high-isotype spectral argument.

## 3. Provenance and CI preflight — why no impulsive gate

At current S3L branch:
- `.github/workflows/bfss-l6g1-original-spin-identity.yml` compiles **H5E8AA**, but does NOT stage `SU2BFSSG4K9D...` or D2B26/27/28.
- `.github/workflows/openai-math-su2-physical-domain.yml` imports the **G4K9D** warm cached object and D2B26/27/28 modules, but does **NOT** stage H5E8AA. Its push/PR triggering branch scopes differ from S3L.
- No local `lake`/`lean` binaries are available in this Project Lead environment.
- Consequently this new AB source file is **prospective**; neither compiler success, six-root axiom clean status nor an accepted `.olean` is claimed. Do not just append it to the old L6G1 workflow expecting foreign `.olean` to exist; that risks a red for infrastructure rather than mathematics.

**Required next proof-engineering gate**: make a bounded pin-checking joint dependency/staging plan for G4K9D AND H5E8AA under one GitHub Actions job. It must check exact Lean, original source and Mathlib SHAs, accepted object provenance/cache scope, then compile the AB module with source-exact `#print axioms` and reject `sorryAx`/unknown axioms. If the job cannot stage both caches safely, preserve the proof as unaccepted and investigate source-identification science instead of re-running ineffective gates. Running S3L/physical PR base retargeting is NOT authorized.

## 4. Next truth-bearing unresolved bridge

**First unresolved mathematical identification:** The preprint's complex irreducible 48-Majorana Clifford representation `F` and its *specific continuous lift* `V_h : SU2 → U(F)` must be shown unitarily equivalent/intertwining to the fixed original `pairedAlgebraData.theta` plus `pairedGaugeData.fermion` actions, with the same `γ^i`, `γ^{ij}`, color normalization, and `+i` gauge sign. Irreducible Clifford uniqueness suggests an intertwiner abstractly but does not supply a kernel-checked source realization, a canonical choice, nor conjugation orientation automatically. With an intertwiner, one must show it maps the manuscript invariant smooth core onto the source `GaugeData.invariantCore`, transports every `Q_α`, and hence their 16-component closed graph and associated normalized Hamiltonian (including DOMAIN, not just formal differential expressions).

The second independent spectral burden is global `Spin(9)` lift covariance, closed form and Peter–Weyl/isotypic operator reduction, general branching and confinement, and nonzero infinite-dimensional sectors. Existing FCP ordinary mathematical audits and finite scripts test portions; none should be advertised as accepted end-to-end Lean proof or global BFSS gap.

**Decision:** Do not manufacture a generic self-adjointness green or revisit already diagnosed R4B/R4D monolithic elaboration. Prioritize a **falsifiable comparison of Clifford/gauge realizations and exact physical graph transport**, then a source-bound spectral audit. No changes to FCP main, PR #25 base/status, the pinned `etblink/math` fork or upstream `openai/math`.

## Source control

All changes limited to the named research branch. H5E8AA accepted; H5E8AB prospective. This is NOT source manuscript endorsement or proof of positive eigenvalues.
