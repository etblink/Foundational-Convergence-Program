# OpenAI Navier–Stokes 2026 Human Correspondence and Analytic-Risk Audit 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_HUMAN_CORRESPONDENCE_AUDIT
DATE = 2026-09-10
AUDIT_STATUS = COMPLETE
OVERALL_VERDICT = NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND
TARGET_AND_ENDGAME_CORRESPONDENCE = SUPPORTED_BY_TARGETED_HUMAN_AUDIT
FULL_166_PAGE_INDEPENDENT_HUMAN_PROOF_REDERIVATION = NO
PRIOR_INDEPENDENT_FORMAL_REPRODUCIBILITY = PASS
GLOBAL_MATHEMATICAL_CONSENSUS = NOT_ESTABLISHED
CLAY_RECOGNITION = NOT_ESTABLISHED
UNFORCED_3D_NAVIER_STOKES_BLOWUP = NOT_ESTABLISHED
K9_CORPUS_EFFECT = NONE
FRAMEWORK_EFFECT = NONE
K1_K10_EFFECT = NONE
E1_E5_EFFECT = NONE
RECURRENCE_EFFECT = NONE
EMPIRICAL_EFFECT = NONE
```

## 1. Scope and evidentiary meaning

This audit follows the independently reproduced Lean-kernel PASS already recorded in
`audits/OPENAI_NAVIER_STOKES_2026_REPRODUCIBILITY_AUDIT_RESULT_0_1_0.md`.

The question here is narrower than a new full proof and broader than a build check:

> Do the formal target, differential operators, force/support construction, energy/exclusion endgame, blowup witness, viscosity scaling, and periodicization visibly correspond to the mathematical assertions used by the paper to claim Fefferman alternatives (C) and (D)?

The answer at this bounded scope is **yes: no material correspondence defect was found**.

This does **not** mean that an independent expert has line-by-line rederived every analytic estimate, finite-dimensional parameter choice, oscillatory correction, moment argument, convergence bound, or smooth-extension theorem in the 166-page paper. Those deep interior proof obligations are machine-checked in the pinned Lean artifact, but a complete independent human mathematical rederivation remains outside this audit.

## 2. Frozen identities

```text
FCP_BASE = 23cd1e5840816919c3db3244af48bb8e558e85d3
OPENAI_REPOSITORY = openai/NavierStokesAndEuler
OPENAI_COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
OPENAI_TREE = a503f07635f200c0f2f9c5361df1fa07f95c4741
PRIOR_FCP_REPLAY_RUN = 34532064891
```

Primary informal theorem source:

- OpenAI, *Finite Time Blowup for Navier–Stokes* (2026), especially Theorem 1.1, Sections 3 and 10, and Corollary 10.6.

Official target source:

- Charles L. Fefferman, *Existence and Smoothness of the Navier–Stokes Equation*, Clay Mathematics Institute Millennium problem statement, including the appended pressure-periodicity erratum.

## 3. Correspondence matrix

| Lane | Question | Verdict | Controlling observations |
|---|---|---|---|
| H1 | Clay-target correspondence | `NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND` | Formal C/D targets retain arbitrary positive viscosity, admissible data/forcing, exact PDE, global smoothness, whole-space bounded energy for C, periodicity for D, and pressure periodicity from the Clay erratum. |
| H2 | Differential-operator semantics | `NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND` | Lean uses the classical temporal derivative, spatial Fréchet derivative, advection, divergence, pressure gradient, and componentwise spatial Laplacian with the same sign convention as the paper. Smoothness hypotheses apply wherever the PDE is used. |
| H3 | Force/support bridge | `NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND` | The actual candidate reaches a globally smooth force with compact spacetime support strictly inside positive time; the force is not merely postulated. |
| H4 | Energy/exclusion bridge | `NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND` | The candidate gets one uniform finite-energy bound; a hypothetical global bounded-energy competitor is reduced to the whole-space uniqueness theorem, which assumes no pressure-growth/support bound on the competitor. |
| H5 | Blowup bridge | `NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND` | Paper's published off-axis azimuthal path and Lean's origin-axis axial path are compatible consequences of the same inner profile; the Lean origin path is derived from the paper's positive axis offset rather than assumed. |
| H6 | Viscosity scaling | `NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND` | Lean implements the same spatial/amplitude scaling as paper (10.22), preserving singular time one and transporting support, energy, PDE, and exclusion. |
| H7 | Periodicization | `NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND` | Lean constructs the actual lattice sum, local finiteness, support separation, exact preservation of the nonlinear PDE, periodic pressure, blowup, and global-solution exclusion. |
| H8 | Formal trust boundary | `NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND` | Prior independent replay established no executable solution-side `sorry`/`admit`, no project-defined solution axiom, the declared three-axiom ceiling, and Lean default-kernel acceptance. |

## 4. H1 — official Clay target versus comparator target

### 4.1 Whole-space alternative C

Fefferman's alternative (C) permits a nonzero smooth externally applied force. For each fixed `ν > 0`, it asks for smooth divergence-free initial data satisfying rapid spatial decay and a smooth force satisfying rapid space-time derivative decay, such that no global smooth solution exists with uniformly bounded kinetic energy.

The OpenAI comparator theorem has exactly the needed existential/negative shape:

```text
for every ν > 0,
there exist u₀ and f satisfying the initial-data and force-decay conditions
such that there do not exist v,p satisfying the whole-space global-solution structure.
```

The construction chooses `u₀ = 0`, which is an admissible special case and satisfies every required decay condition.

### 4.2 Periodic alternative D

The periodic target likewise permits forcing. The comparator requires:

- smooth divergence-free periodic initial velocity;
- smooth spatially periodic force with arbitrary polynomial time-derivative decay;
- globally smooth velocity and pressure;
- periodic velocity;
- periodic pressure.

The final item follows the erratum appended to Fefferman's Clay statement, which makes pressure periodicity explicit.

No energy bound is added to alternative D's global competitor class.

### 4.3 Safe representational strengthenings

Three comparator details are stronger/more explicit than the typography of Fefferman's statement but do not weaken the claimed counterexample:

1. **Fréchet-tensor decay rather than coordinate-by-coordinate notation.** The formal force/initial-data structures bound norms of full iterated Fréchet derivatives. The actual witnesses are smooth and compactly supported (or periodic with compact time support), so they satisfy these stronger bounds and hence the coordinate bounds required by Clay.
2. **Explicit `MemLp` in the whole-space competitor.** Fefferman's kinetic-energy integral is mathematically a finite integral. Lean's ordinary integral is totalized outside integrability, so the explicit `MemLp` condition prevents a nonintegrable function from satisfying the numerical inequality through a junk integral value. It formalizes, rather than narrows away, the intended finite-energy class.
3. **Boundary-time PDE via `derivWithin`.** Fefferman writes the PDE for `t ≥ 0`. Comparator uses the right/within derivative at `t = 0` and ordinary interior derivatives for `t > 0`; the smooth half-space solution class makes this the appropriate boundary encoding. The R³ exclusion adapter itself only needs the interior equation.

Verdict: **no material target mismatch found**.

## 5. H2 — differential-operator semantics

The base Lean problem statement works on `Space = EuclideanSpace ℝ (Fin 3)` with time as the first spacetime coordinate. Its residual is

```text
temporalDerivative u
+ advection u
- spatialLaplacian u
+ pressureGradient p
```

at viscosity one, and the R³ statement inserts `-ν spatialLaplacian` for general viscosity. This is equivalent to

```text
∂ₜu + (u·∇)u - νΔu + ∇p = f.
```

The spatial derivative is an actual Fréchet derivative of the spatial slice; divergence is its trace/coordinate sum; advection applies that derivative to the velocity vector; pressure gradient uses coordinate basis directions; and the Laplacian sums second spatial directional derivatives.

Lean's `fderiv` is totalized to zero at nondifferentiability points, which would be dangerous if used without regularity. Here the candidate and competitor structures supply `ContDiffOn ℝ ∞` on the relevant spacetime domains, and all PDE uses in the R³ proof are at interior positive times. Thus the derivatives at those points are genuine derivatives rather than junk values.

Verdict: **no material differential-semantics defect found**.

## 6. H3 — actual force, endpoint extension, and support

The paper's endgame requires the singular presolution's momentum residual to become one globally smooth externally applied force.

The Lean development has both a general extension mechanism and an unconditional selected construction:

- `CandidateFromLimits.force` is an explicit smooth Taylor–Borel extension of the traced actual residual. It proves equality with the activated residual on `0 ≤ t < 1`, smoothness through the endpoint, and future time cutoff.
- `ActualCandidateAssembly.selected_witness` is not conditional on an external force-existence axiom. It is obtained from the finite-stage certificate, selected schedule, endpoint inputs, support estimates, and actual field sequences.
- `R3/ActualCandidate.of_localized_fields` takes that same selected witness, spatially localizes the fields, applies the smooth positive-time force cutoff, and establishes the full R³ candidate.
- `R3/PositiveTimeForce` uses a cutoff equal to one on the late-time interval and with support contained in `[1/16, 21/16]`; combined with fixed compact spatial support it yields compact topological support entirely inside `t > 0`.

Compact spacetime support is stronger than Fefferman's rapid-decay requirement.

Verdict: **no material force/support bridge defect found**.

## 7. H4 — energy and whole-space exclusion

### 7.1 Candidate energy

`R3/ActualCandidate` invokes the compact-energy theorem on the exact localized candidate and exact smooth compactly supported force, producing one `UniformFiniteEnergy` bound for the full interval `0 ≤ t < 1`.

This corresponds to paper Lemma 10.4 and is not inferred merely from pointwise compact support at each time.

### 7.2 Hypothetical competitor

`R3FiniteEnergyComparison.GlobalSolutionRn` retains:

- global smooth velocity and pressure on future time;
- zero initial velocity;
- divergence free;
- the same forced PDE;
- square integrability at every time;
- one global kinetic-energy bound.

It imposes **no compact support, periodicity, derivative-growth, spatial-decay, or pressure-growth assumption** on the competitor.

### 7.3 Pressure and uniqueness

`R3/WholeSpaceUniqueness.classical_uniqueness_on_Icc` compares the compact reference solution to an arbitrary smooth uniformly finite-energy competitor on each closed interval `[0,T]`. The pressure-flux estimate is derived from the actual equation through the pressure-recovery/commutator machinery; it is not an assumption on the competitor's pressure.

The resulting equality on every shorter interval forces any hypothetical global bounded-energy solution to agree with the singular candidate for `t < 1`, producing the contradiction.

This tracks the delicate point emphasized in paper Lemma 10.5.

Verdict: **no material energy/exclusion defect found**.

## 8. H5 — blowup witness and the axis/off-axis question

This lane produced the most important apparent discrepancy and was examined separately.

### 8.1 Published paper path

The paper's displayed proof uses a fixed `X_in > 0` and

```text
x_τ = (sqrt(2 X_in τ), 0, 0),
t = 1 - τ,
```

for which the azimuthal component satisfies

```text
u_θ(x_τ,1-τ) = τ^(-A) (e₀ + O(τ^(2h))) → +∞.
```

The points converge to the origin.

### 8.2 Lean's axis/origin path

The Lean development also proves a stronger, simpler route. In `NaturalCore` it establishes exactly

```text
coreVelocity(t,0) = ((1-t)^(-A) * j) e_z
```

with `j > 0`, and therefore the norm tends to infinity as `t → 1-`.

This is not an unexplained replacement of the paper's witness. The paper's own axis construction chooses

```text
U_* = 4η + j₀,
0 < j₀ ≤ .05,
```

and its leading physical axial velocity is

```text
u_z^(0) = q^(-A) U(X,η).
```

At the physical origin on the axis, `X = 0`, `η = 0`, `q = 1-t`; hence the prescribed axis datum gives precisely the same `j₀(1-t)^(-A)` axial scaling used by Lean.

The paper chooses the off-axis azimuthal path for its published Theorem 1.1 endgame, whereas Lean exploits the positive axial offset that is already part of the same profile construction. These are compatible blowup witnesses.

### 8.3 L∞ meaning

Lean's `SpeedUnboundedAtOne` is pointwise unbounded speed in every left neighborhood of time one. For each `t < 1` the candidate's spatial slice is smooth and supported in one compact set, so its supremum/essential-supremum cannot remain bounded while actual point values become arbitrarily large. Thus the predicate supports the paper's `limsup ||u(t)||_L∞ = ∞` conclusion.

Verdict: **the apparent path mismatch is resolved; no material blowup-correspondence defect found**.

## 9. H6 — arbitrary positive viscosity

Paper equation (10.22) defines

```text
u_ν(x,t) = sqrt(ν) u(x/sqrt(ν),t)
p_ν(x,t) = ν p(x/sqrt(ν),t)
f_ν(x,t) = sqrt(ν) f(x/sqrt(ν),t).
```

`R3/ViscosityScaling.lean` implements the same transformation through

```text
scaledVelocity ν = rescale (sqrt ν) (sqrt ν)^(-1)
scaledPressure ν = rescale ν (sqrt ν)^(-1).
```

Its lemmas explicitly transform temporal derivative, spatial derivative, divergence, advection, pressure gradient, and Laplacian. `rescale_residual` proves the viscosity coefficient becomes `a² μ`; taking `a = sqrt ν` and `μ = 1` gives viscosity `ν`.

The candidate-scaling theorem simultaneously transports:

- smoothness;
- compact support;
- positive-time force support;
- zero initial data;
- divergence;
- exact PDE;
- the uniform energy bound;
- unbounded speed.

The inverse normalization maps any hypothetical global solution at viscosity `ν` back to a forbidden viscosity-one global solution. Time is never rescaled, so the singular time stays exactly one.

Verdict: **no material viscosity-scaling defect found**.

## 10. H7 — periodic alternative D

The paper compresses the already-constructed R³ fields into the interior of the unit fundamental cube, delays/rescales time while preserving singular time one, and sums integer spatial translates. Because the translated supports are disjoint, the nonlinear advection term does not create cross terms.

The Lean implementation makes each part explicit:

- `PeriodicLocalization.periodize` is the actual infinite lattice sum.
- `SupportedInCube` and local-lattice-box lemmas prove the family is locally finite.
- `contDiff_periodize` proves smoothness of the lattice sum from finite local sums.
- `periodize_eventuallyEq_translate` proves that near any point the periodized field agrees with one translated copy when support lies strictly inside the fundamental cube.
- `PeriodizePDE.navier_stokes_periodize` then transfers the full viscosity-dependent residual locally, including advection.
- `unitSpatialPeriodsOn_periodize` proves exact unit periods.
- `PeriodicPaperSupport.speedUnbounded_periodize` preserves the blowup witness.
- `PeriodicPaperTheorem` periodizes velocity, pressure, and force together, retains pressure periodicity, and excludes every global smooth periodic competitor by periodic uniqueness.

This matches the mathematical logic of paper Corollary 10.6, including the pressure-periodicity erratum.

Verdict: **no material periodicization defect found**.

## 11. H8 — formal trust boundary

The prior independent FCP replay remains controlling for executable proof trust:

```text
FULL_NAVIER_STOKES_BUILD = PASS (9580 jobs)
SOLUTION_SIDE_EXECUTABLE_SORRY_OR_ADMIT = NONE_FOUND_BY_GATE
PROJECT_DEFINED_AXIOM_IN_NAVIERSTOKES_TREE = NONE_FOUND_BY_GATE
EXPORTED_R3_AXIOMS = [propext, Classical.choice, Quot.sound]
EXPORTED_PERIODIC_AXIOMS = [propext, Classical.choice, Quot.sound]
SORRYAX_IN_EXPORTED_THEOREMS = NONE
COMPARATOR_STATEMENT_REPLAY = PASS
LEAN_DEFAULT_KERNEL_ACCEPTANCE = PASS
```

The `sorry` declarations in `ComparatorChallenges/NavierStokes.lean` are intentionally incomplete challenge declarations. The submitted `ComparatorSolution` imports independent definitions/adapters, not the challenge module, and Comparator checks the exported solution against the challenge statement at runtime.

Verdict: **no material trust-boundary defect found**.

## 12. Residual risk register

### RISK-1 — full human rederivation of interior analytic construction

```text
STATUS = OUT_OF_SCOPE_FOR_TARGETED_AUDIT
SEVERITY_IF_A_DEFECT_EXISTS = HIGH
EVIDENCE_MITIGATION = INDEPENDENT_LEAN_KERNEL_REPLAY_PASS
```

The proof's deepest work lies before the endgame: natural-profile construction, moment repairs, cone inequalities, oscillatory covariance, scale selection, diagonal summation, endpoint jet estimates, and residual extension. This audit traced representative dependencies and verified that the final selected witness discharges its inputs, but it did not manually reproduce every inequality or every analytic lemma.

This is the principal remaining distinction between **independent formal verification** and **independent expert human proof verification**.

### RISK-2 — equivalence between formal mathematical objects and intended continuum-fluid interpretation

```text
STATUS = OUT_OF_SCOPE_FOR_TARGETED_AUDIT
```

At the level relevant to the Clay mathematical statement, the objects and PDE operators correspond correctly. Broader claims about physical realizability of the engineered external force or interpretation as a naturally occurring fluid singularity are not part of alternatives (C)/(D) and receive no FCP physical or empirical credit.

### RISK-3 — external mathematical acceptance

```text
STATUS = OUT_OF_SCOPE_FOR_TARGETED_AUDIT
```

No survey of independent mathematicians, referees, journals, or Clay adjudication was performed. This audit cannot promote the result to global consensus or official prize resolution.

## 13. Final adjudication

```text
H1_CLAY_TARGET = NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND
H2_DIFFERENTIAL_SEMANTICS = NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND
H3_FORCE_SUPPORT = NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND
H4_ENERGY_EXCLUSION = NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND
H5_BLOWUP = NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND
H6_VISCOSITY = NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND
H7_PERIODICIZATION = NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND
H8_FORMAL_TRUST_BOUNDARY = NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND

OVERALL = NO_MATERIAL_CORRESPONDENCE_DEFECT_FOUND
TARGET_AND_ENDGAME_CORRESPONDENCE = SUPPORTED_BY_TARGETED_HUMAN_AUDIT
FULL_INDEPENDENT_HUMAN_PROOF_VERIFICATION = NOT_ESTABLISHED
```

The strongest justified FCP statement after this operation is therefore:

> At the pinned OpenAI source state, FCP independently reproduced Lean-kernel verification of the C/D formal certificate and, in a separate targeted human audit, found no material mismatch between the official Clay alternatives, the formal target, and the proof's decisive force/support, energy/uniqueness, blowup, viscosity, and periodicization endgame bridges.

No stronger claim is authorized by this record.
