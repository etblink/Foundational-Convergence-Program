# OpenAI Navier–Stokes 2026 Load-Bearing Falsification Audit — A4 Infinite Iteration and All-Jet Flatness 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_LOAD_BEARING_ANALYTIC_FALSIFICATION_AUDIT
NODE = A4_INFINITE_ITERATION_AND_ALL_JET_FLATNESS
DATE = 2026-09-10
OPENAI_COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
PRIMARY_PAPER_TARGETS = LEMMA_5_4; PROPOSITION_9_9
PRIMARY_VERDICT = REPRODUCED_NO_DEFECT_FOUND
MATERIAL_ANALYTIC_DEFECT_FOUND = NO
UNRESOLVED_LOAD_BEARING_A4_RISK = NO
```

## 1. Independent obligation

A4 must justify one final presingular field from the infinite correction sequence, not a family of derivative-order-dependent fields. The required facts are:

1. one cutoff/diagonal schedule is selected once;
2. the resulting potential, direct-angular and pressure series are locally finite on `q>0`, hence smooth there;
3. correction tails tend to zero in every fixed derivative order strongly enough to pass all finite differential-polynomial identities to the final field;
4. the complete nonlinear Navier–Stokes residual is flat to arbitrary order as `q -> 0`;
5. endpoint jets exist away from the singular point and the residual admits the later smooth force extension;
6. the blowup mechanism survives the infinite corrections rather than being cancelled by the summation.

The principal adversarial risks are a quantifier reversal (`choose a schedule after m,N`), uncontrolled nonlinear products in the residual difference, illegitimate termwise differentiation of a nonconvergent series, accumulation of the stagewise flat error, and correction leakage into the protected blowup core.

## 2. Paper reconstruction

### 2.1 Finite-stage growth has increasing gain and stage-independent derivative loss

Lemma 9.8 supplies, for every fixed Cartesian derivative order `m`, estimates of the form

```text
|Z_j|_m + |Delta u_j|_m
  <= C_{j,m} q^(g_j-l_m) (1+|log q|)^(P_{j,m}),
```

with `g_j = h*j/10 -> +infinity` and `l_m` independent of `j`. It also supplies finite-stage residual bounds with a residual gain tending to infinity and a derivative loss independent of the stage. This separation is essential: fixed derivative costs may grow with `m`, but they do not erase the stage gain as `j -> infinity`.

The physical derivative conversion is explicit; one admissible loss is

```text
l_m = 2A + (m+1)(1 + 3h/2),
```

so no hidden stage-dependent derivative loss appears in the diagonal limit.

### 2.2 Lemma 5.4 selects one schedule, not one schedule per test

The diagonal lemma constructs integers `a_j` recursively with

```text
0 < a_j,
2 a_j <= a_{j+1},
a_j -> infinity.
```

At stage `j`, only finitely many constraints are imposed: finitely many derivative orders, components, and optional tests. The next `a_j` is then taken large enough to satisfy all of those finite constraints simultaneously. Because derivative order `m` is included once `j` is sufficiently large, the single recursively selected schedule eventually controls every fixed derivative order.

This is the correct quantifier order:

```text
exists one schedule a_j;
for every m,N;
choose a sufficiently late finite comparison stage J=J(m,N);
then choose a sufficiently small q-neighborhood.
```

It is not:

```text
for every m,N choose a new schedule.
```

### 2.3 Local finiteness removes the termwise-differentiation hazard

The realized fields use cutoffs `chi(a_j q)`. Since `a_j` grows at least geometrically, at any point with fixed `q>0` only finitely many activated correction terms are nonzero in a neighborhood. Thus the infinite expression is a locally finite smooth sum on the presingular domain. Smoothness and differentiation there do not require exchanging differentiation with a conditionally convergent infinite series.

The same mechanism applies jointly to the potential, direct angular component, and pressure.

### 2.4 Tail comparison is strong enough in arbitrary fixed jets

The diagonal lemma proves a tail estimate of the form

```text
|U - U^[J]|_m
  <= 2^(-J) q^(g_{J+1}/2 - l'_m)
```

in the sufficiently small `q` region associated with stage `J`, for every fixed `m`. Since `g_j -> infinity`, for any requested power `N` and derivative order `m`, a finite `J` makes the tail exponent exceed `N` plus the finite derivative/product losses.

### 2.5 The nonlinear residual difference is expanded exactly

The critical comparison is not linearized. For velocity error `e` and pressure error `pi`, the difference is expanded as

```text
R(v+e,p+pi)-R(v,p)
 = dt e - Delta e + grad pi
   + (v·grad)e + (e·grad)v + (e·grad)e.
```

The quadratic self-interaction of the tail is explicitly present. Product estimates require only finitely many additional derivatives at each requested output order. The stage-independent loss plus diverging gain therefore controls every term.

### 2.6 Stagewise flat remainders are not naively summed

A potentially fatal but absent maneuver would be to sum infinitely many constants attached to errors that are individually `O(q^N)`. Instead, the final residual is compared to one sufficiently late finite stage. The finite-stage residual consists of an improving principal term plus a fixed-stage all-orders-flat remainder. The tail difference between the final field and that finite stage is then separately made smaller than the requested power. No unjustified infinite sum of flat-error constants is required.

### 2.7 Proposition 9.9 produces arbitrary residual flatness

For the final locally finite fields

```text
A = A0 + sum_j chi(a_j q) A_j,
B e_theta = B0 e_theta + sum_j chi(a_j q) B_j,
p_loc = p0 + sum_j chi(a_j q) p_j,
u_loc = curl A + B e_theta,
```

Proposition 9.9 obtains, for every derivative order `m` and every requested power `N`, a neighborhood of `q=0` on which

```text
|R(u_loc,p_loc)|_m = O(q^N).
```

This is the all-jet flatness needed by the endpoint/force-extension machinery.

### 2.8 Endpoint smoothness away from the singular point

At any endpoint spatial point away from the origin, the geometry supplies a positive lower bound for the relevant endpoint root / similarity scale. Because the cutoff thresholds shrink to zero, only finitely many corrections remain active near that point. Hence one-sided endpoint jets are obtained from finite smooth expressions locally. The formal construction separately packages these away extensions before creating the smooth global force.

### 2.9 Blowup survives because the correction support avoids the protected core

The blowup path is chosen with fixed `X_in` strictly inside the untouched inner region. All annular correction fields vanish there. Therefore the leading singular term remains

```text
u_theta(sqrt(2 X_in tau),0,0,1-tau)
  = tau^(-A) (e0 + O(tau^(2h))),
```

with `e0>0`. The infinite correction sum does not need to be estimated against the leading blowup on this path; it is identically absent there by support.

This is stronger and safer than a small-error dominance argument.

## 3. Adversarial checks

### Check A4-1 — schedule depends on derivative order

Attempted failure: all-jet flatness is obtained only by selecting a different subsequence/cutoff schedule for each `(m,N)`.

Result: no. Lemma 5.4 chooses one recursively increasing schedule while adding only finitely many new obligations at each stage. Later `(m,N)` choices affect only the comparison stage and neighborhood, not the schedule.

### Check A4-2 — derivative loss outruns correction gain

Attempted failure: physical/cartesian differentiation introduces a stage-dependent exponent loss, so `g_j -> infinity` does not imply jet convergence.

Result: no. The derived loss is a function of derivative order but independent of correction stage. Thus for every fixed `m`, the increasing `g_j` eventually dominates it.

### Check A4-3 — quadratic tail term omitted

Attempted failure: residual transfer controls only the linear difference and drops `(e·grad)e`.

Result: no. The nonlinear residual difference includes the tail self-interaction explicitly; the polynomial/differential-product transfer bounds it together with the two mixed transport terms.

### Check A4-4 — termwise differentiation unjustified

Attempted failure: smoothness is inferred by differentiating a merely pointwise infinite sum.

Result: no. The activated sum is locally finite wherever `q>0`; there are literally finitely many active summands in a neighborhood of each presingular point.

### Check A4-5 — infinitely many flat errors accumulated

Attempted failure: constants in fixed-stage flat errors are summed over infinitely many stages.

Result: no. The final residual is compared with one finite stage; only that stage's flat error is used, while the tail is controlled independently.

### Check A4-6 — corrections erase the singular leading term

Attempted failure: infinitely many small corrections accumulate on the blowup path and cancel the leading singularity.

Result: no. The protected blowup path lies in a core disjoint from all annular correction supports. The correction contribution is zero there.

## 4. Pinned-Lean instantiation

The pinned repository formalizes both the generic diagonal lemma and its actual Navier–Stokes instantiation.

`GenericRealization.Properties` records one selected schedule with:

```text
positive a_j;
doubling;
strict monotonicity;
a_j -> infinity;
locally finite support of the activated stages;
smooth realized sums;
finite-stage approximation rates;
an explicit tail bound.
```

`GenericRealization.exists_realization` constructs that one schedule from the raw stage bounds and a finite family of tests presented at each stage. `Properties.flat_residual` then proves an arbitrary `q^N` bound for each requested jet of a finite differential polynomial while retaining the same schedule.

`GenericTupleRealization.exists_angular_realization` applies the simultaneous construction to the physical velocity, pressure and stress tuple and derives solenoidality/tangency rather than assuming them.

`GenericTupleRealization.Result.flat_residual_of_raw_bounds` explicitly states that the realization and schedule are those already selected by `exists_realization`; neither the residual nor support of the unknown final infinite sum is an input assumption.

Most importantly, `MixedCandidateWitness.exists_candidate_witness_of_finite_stages` is the actual theorem-level bridge. From the actual finite-stage `StageEstimates` and support/endpoint data it obtains one `a`, records a `SelectedSchedule`, forms the literal potential/direct/pressure sums from that exact `a`, derives endpoint extensions, constructs the force, proves the candidate properties and consequences, proves Sobolev blowup, and binds the force endpoint jets. There is no second schedule selection between flatness and blowup.

The actual `SelectedSchedule` contains both:

```text
MixedDiagonalSchedule.ThreeSmoothSums a ...
JointResidualLimits.VanishingJointJets (MixedDiagonalResidual.residual ... a ...)
```

so final-field smoothness and residual flatness are properties of the same selected activated sums.

The actual blowup input is also tied to that same schedule through `MixedAxisPreservation.local_initialized_final_origin_blowup`.

## 5. Quantifier ledger

| item | quantifier / dependency |
|---|---|
| profile and finite-stage construction | fixed before diagonal schedule |
| stage gain `g_j` | fixed sequence, tends to `+infinity` |
| derivative loss `l_m` | depends on `m`, not on stage `j` |
| residual loss `K_m` | depends on `m`, not on finite stage `J` |
| cutoff schedule `a_j` | one recursively selected sequence |
| obligations imposed when choosing `a_j` | finite at each `j` |
| requested output jet `m` and flatness power `N` | arbitrary after schedule is fixed |
| comparison stage `J` | may depend on `m,N` |
| final small neighborhood `delta` | may depend on `m,N,J` |
| final field | fixed; does not depend on `m,N` |

No quantifier reversal was found.

## 6. Verdict

```text
A4_PRIMARY_VERDICT = REPRODUCED_NO_DEFECT_FOUND
ONE_GLOBAL_DIAGONAL_SCHEDULE = REPRODUCED
LOCAL_FINITE_SMOOTH_SUMMATION = REPRODUCED
FIXED_ORDER_JET_TAIL_CONTROL = REPRODUCED
NONLINEAR_RESIDUAL_TRANSFER = REPRODUCED
ALL_JET_RESIDUAL_FLATNESS = REPRODUCED
ENDPOINT_AWAY_EXTENSION = REPRODUCED
BLOWUP_SURVIVAL_UNDER_FINAL_SUM = REPRODUCED
QUANTIFIER_REVERSAL = NOT_FOUND
```

This verdict is limited to the preregistered load-bearing summation/flatness spine. It is not a line-by-line independent rederivation of every finite-stage estimate feeding the diagonal lemma; A3 separately attacked the finite-stage residual-improvement junction.

## 7. FCP isolation

No K9, framework, K1–K10, E1–E5, recurrence, empirical, physical-canonicity, NFC, or unforced-Navier–Stokes consequence is authorized by this node verdict.