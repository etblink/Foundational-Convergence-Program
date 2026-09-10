# OpenAI Navier–Stokes 2026 — Global Parameter Inequality Ledger 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_LOAD_BEARING_ANALYTIC_FALSIFICATION_AUDIT
PHASE = GLOBAL_PARAMETER_CONSISTENCY_GATE
DATE = 2026-09-10
OPENAI_COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
GATE_VERDICT = REPRODUCED_NO_DEFECT_FOUND
JOINTLY_FEASIBLE_PARAMETER_SYSTEM = YES
CIRCULAR_CHOICE_ORDER_FOUND = NO
DERIVATIVE_ORDER_RESELECTION_OF_FINAL_FIELD = NO
```

## 1. Gate question

The node audits A1–A4 are not sufficient by themselves if their parameter inequalities cannot be satisfied by one construction. This gate therefore asks whether the choices can be linearly ordered so that every later requirement is imposed only on a still-free parameter and no later choice invalidates an earlier proved property.

## 2. Global dependency order reconstructed from the paper

A consistent choice order is:

```text
(1) universal analytic conventions and the target viscosity-1 scaling
(2) outgoing/profile parameters of Theorem 4.6
(3) finite profile modulation and exact five-moment restoration
(4) one final sufficiently large profile modulation integer N_profile
(5) freeze the resulting profile, cone margin, annulus, edge weight and reserved patches
(6) choose the finite primary/copy geometry thresholds required by the frozen profile
(7) fix the correction-cycle derivative-loss constant kappa_s = 10^-5
(8) initialize at sigma_0 = 1/5 and one geometric/band threshold
(9) iterate the SAME correction parameters, sigma_j = 1/5 + j/10
(10) derive the physical finite-stage sequences and their common positive q-domain
(11) from those already-fixed finite stages, recursively select ONE final cutoff schedule a_j
(12) form the final locally finite sums and endpoint/force extensions
```

The choice order is one-way. In particular:

- the A1 profile does not depend on A2 wave amplitudes;
- the A2 primary amplitudes and signed linearized coefficients depend on the frozen A1 cone, not conversely;
- A3 uses fixed `kappa_s`, fixed geometry and the incoming `sigma_j`; it does not reselect the A1 profile;
- A4 chooses the diagonal cutoff schedule only after the entire finite-stage family and its estimates are available;
- requested final derivative order and flatness power do not trigger a new profile, cycle or cutoff schedule.

## 3. Ledger

| parameter / datum | class | required inequalities / role | selected relative to | uniformity status |
|---|---|---|---|---|
| viscosity in core construction | fixed normalization | unit viscosity; later positive viscosity by exact scaling | first | fixed |
| `Md,Td,P_*,C,Tsh,Lambda` | profile large parameters | finite hierarchy in Theorem 4.6 | sequential | one-time |
| `lambda` | profile small positive | `lambda>0`, retained formal witness has `lambda<1/10` | after outer large data | one-time |
| `h` | similarity exponent | paper `0<h<1/100`; retained formal witness `h<=1/1000`, `2h<lambda` | after `lambda` | one-time |
| `j0,delta_*,sigma_*,epsilon_m,omega_fin,t1,kappa0` | profile small parameters | finite strict hierarchy and cone/matching tolerances | sequential | one-time |
| `N_profile` | large profile modulation frequency | exceeds finitely many lower bounds depending on already-fixed profile data | after all preceding profile data | one-time |
| strict cone margin | derived | positive compact minimum | after profile | fixed downstream |
| `B` | finite primary budget | actual final construction takes `B=0` | after profile | fixed |
| `N0` | geometric threshold | `geometricThreshold <= N0`; selected as `startingThreshold 0` | after profile/copy geometry | fixed |
| `firstBand` | derived band floor | `max 4 bandFloor`, hence `>=4` and `>=N0` | from `B,N0` | fixed |
| `qbig` | derived common physical scale | `Q(firstBand)>0` | from first band | fixed for all finite stages |
| `kappa_s` | universal correction loss | exactly `10^-5`, and `<=1/100000` | before iteration | fixed all stages |
| `sigma_j` | iteration accuracy | `sigma_0=1/5`, `sigma_{j+1}=sigma_j+1/10` | stage index | deterministic |
| residual harmonic band | stage datum | doubles with stage in formal recurrence | stage index | deterministic |
| derivative loss `l_m` | derived analytic cost | depends on derivative order `m`, not correction stage | after `m` is specified | no global reselection |
| residual loss `K_m` | derived analytic cost | depends on `m`, not finite residual stage | after `m` is specified | no global reselection |
| stage gains `g_j,rho_j` | derived | tend to `+infinity` | stage index | uniform construction |
| `a_j` | final cutoff schedule | positive, doubling, strictly increasing, reciprocal below `qbig` | after all raw finite-stage estimates | ONE sequence |
| comparison stage `J(m,N)` | proof-local | chosen late enough to dominate derivative/product losses | after final schedule fixed | may depend on requested test |
| final neighborhood `delta(m,N)` | proof-local | sufficiently small `q` | after `J` | may depend on requested test |

## 4. Worst-case compatibility checks

### G1 — `h` versus `lambda`

The profile construction and later formal initialization use a stronger retained relation `2h < lambda` together with `h<=1/1000` and `lambda<1/10`. This is visibly nonempty; e.g. the inequalities require no contradictory lower bound on `h` from A2–A4. Later wave/cycle stages consume the fixed positive `h`.

### G2 — fixed `kappa_s` versus every iteration stage

A3's numerical inequalities require only `sigma>=1/5` and `kappa_s<=10^-5`. Since

```text
sigma_j = 1/5 + j/10,
```

`σ_j` is never driven toward a forbidden lower boundary; all stagewise arithmetic margins weakly improve or retain their strict positivity. No stage requires shrinking `kappa_s` further.

### G3 — one geometric threshold versus all stages

The formal recurrence fixes `B,N0` and `CycleParameters` once. Labels/carriers remain the initializer's fixed choice while the residual harmonic budget grows deterministically. The actual final selection takes

```text
selectedBudget = 0,
selectedThreshold = startingThreshold 0,
geometricThreshold <= selectedThreshold,
selectedQbig = Q(firstBand(selectedBudget,selectedThreshold)) > 0.
```

Thus there is one closed initialization and one positive physical sublevel scale feeding every stage, rather than a sequence of shrinking independently selected geometries.

### G4 — physical common domain versus growing stage index

The physical realization uses the fixed `qbig` derived from the fixed first band. Native-scale lemmas exploit the antitonic dyadic scale to keep every later band inside this original domain. Increasing stage/band index shrinks `Q(n)` and therefore does not violate the fixed upper-domain restriction.

### G5 — diagonal schedule versus all derivative orders

The most dangerous apparent infinitary requirement is avoided by diagonalization. At schedule stage `j`, only finitely many derivative/test inequalities are imposed; `a_j` can therefore be enlarged finitely. Each fixed derivative order eventually enters the finite test set. The resulting one sequence controls every fixed order, while `J` and `delta` are allowed to depend on the final requested `(m,N)`.

No infinite supremum is demanded at a single finite schedule-selection step.

### G6 — blowup support versus cutoff schedule

The final cutoff schedule acts only on the annular correction sequence. The protected inner blowup core is outside those supports. Enlarging `a_j` changes activation in `q`, not the frozen spatial core/annulus separation, so the diagonalization cannot destroy the protected leading singular path.

## 5. Formal exact-choice corroboration

The pinned formalization exposes exact closed choices rather than only proving abstract pairwise compatibility.

`ActualCandidateConstruction` defines:

```text
selectedBudget := 0
selectedThreshold := ActualCarrierGeometry.startingThreshold 0
selectedCycle := cycle selectedBudget selectedThreshold
selectedQbig := qbig selectedBudget selectedThreshold
```

and proves

```text
geometricThreshold <= selectedThreshold
selectedQbig > 0.
```

The same file defines one constant parameter sequence

```text
parameterSequence B N0 := fun _ => fixedParameters B N0
```

for the entire correction recurrence.

`ActualCyclePreservation.state_runInvariant` proves the invariant at every `j` using that fixed geometry/parameter family and `sigma j`.

`MixedCandidateWitness.exists_candidate_witness_of_finite_stages` then takes the already-constructed physical finite-stage sequences and their `StageEstimates`, calls `E.exists_schedule` once, and uses the returned exact `a` both in the smooth activated sums and in `VanishingJointJets` for their nonlinear residual before deriving the final force and blowup consequences.

This is direct witness-level evidence that the formal parameter system is jointly inhabited, not merely pairwise satisfiable.

## 6. Gate verdict

```text
GLOBAL_PARAMETER_CONSISTENCY_GATE = REPRODUCED_NO_DEFECT_FOUND
ONE_COMMON_A1_PROFILE = YES
ONE_COMMON_A2_PRIMARY_GEOMETRY = YES
ONE_FIXED_A3_CORRECTION_PARAMETER_FAMILY = YES
ONE_POSITIVE_COMMON_PHYSICAL_DOMAIN = YES
ONE_A4_DIAGONAL_SCHEDULE = YES
ALL_FIXED_DERIVATIVE_ORDERS_EVENTUALLY_COVERED = YES
CIRCULAR_PARAMETER_DEPENDENCY = NOT_FOUND
JOINT_INFEASIBILITY = NOT_FOUND
```

The ledger establishes compatibility for the preregistered load-bearing spine. It does not independently recompute every numerical constant appearing in every auxiliary lemma of the 166-page proof.

## 7. FCP isolation

This gate has no authority to alter K9, any framework status, K1–K10, E1–E5, recurrence, empirical credit, physical canonicity, NFC, or the separate unforced Navier–Stokes problem.