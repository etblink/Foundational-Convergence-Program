# OpenAI Navier–Stokes 2026 Load-Bearing Falsification Audit — A1 Leading-Profile Construction 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_LOAD_BEARING_ANALYTIC_FALSIFICATION_AUDIT
NODE = A1_LEADING_PROFILE_CONSTRUCTION
DATE = 2026-09-10
OPENAI_COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
PRIMARY_PAPER_TARGET = THEOREM_4_6
PRIMARY_VERDICT = REPRODUCED_NO_DEFECT_FOUND
MATERIAL_ANALYTIC_DEFECT_FOUND = NO
UNRESOLVED_LOAD_BEARING_A1_RISK = NO
```

## 1. Independent obligation

A1 must produce one fixed leading singular profile, before the later oscillatory correction scheme is invoked, such that the same profile simultaneously has:

1. regular axis data and positive azimuthal profile;
2. exact radial pressure balance and the leading tangential residual identities;
3. one nonempty annular stress support with strict admissible-cone margin through both radial collars;
4. a smooth flat edge weight controlling all fixed profile derivatives;
5. the required five cumulative integral / matching identities, hence the exact heat exterior;
6. two disjoint untouched radial intervals reserved for later positive-order and mean corrections;
7. a nonempty common choice of all small/large parameters establishing the preceding properties simultaneously.

A failure of any item would propagate directly into A2 and A3 because the primary amplitudes, shear geometry, fixed stress direction, support and later inverse operators are all constructed from this profile.

## 2. Paper reconstruction

### 2.1 Theorem 4.6 is a simultaneous existence theorem

The theorem asserts fixed

```text
0 < h < 1/100
lambda > 0
C > 1
0 < Xa < Xb
```

and profiles `E,U,Pi` satisfying all six listed conclusions on one construction. In particular, its strict cone inequalities are uniform on the closed annulus, its stress is zero outside the annulus and nonzero in its interior, the edge weight is flat, the cumulative integrals match the prescribed exterior, and the two later-correction intervals are retained unchanged.

### 2.2 Choice order is explicit and acyclic

In the proof, the outer/axis parameters are fixed before the finite-frequency shear realization. The paper records the hierarchy

```text
0 < C^-1 << Tsh^-1 << Lambda^-1 << sigma_* << delta_* << j0
  << epsilon_m << h << lambda << P_*^-1 << Md^-1 << 1,
0 < omega_fin << t1 << kappa0 << C^-1.
```

The second line continues the first. Derived values include

```text
Td = exp(Md) + 10,
P_* > exp(Td),
XR = 110 (C P_*)^10.
```

After all profile functions and widths are fixed, the radial modulation frequency `N` is chosen last and sufficiently large. Therefore later large-`N` requirements cannot feed back into the already-fixed smallness order.

The key adversarial consistency point is the paper's explicit statement that every lower bound encountered for `N` is finite and depends only on already fixed data; hence one finite integer satisfies them simultaneously.

### 2.3 Large shear modification does not destroy the integrated data

The periodic shear is realized at frequency `N` by

```text
E_N = E_0 exp(A(X,eta,N log X)/N),
U_N = U_0 + B(X,eta,N log X)/N.
```

The chain rule makes the shear itself follow the prescribed loop up to `O(1/N)`, while the profile values and five cumulative integrals change only by `O(1/N)` on the fixed interval. This is the crucial separation: a derivative can carry the large frequency `N`, while the primitive modification remains `O(1/N)`.

The cone map `Psi` has fixed positive margins `mu_L,mu_R`; for sufficiently large `N`, the `O(1/N)` perturbations stay inside those margins.

### 2.4 Exact moment restoration is not an assumed inverse

The remaining five cumulative defects are restored by two `U`-bumps and three `E`-bumps. The linearization is block diagonal. The two `U` weights have distinct powers `0,-lambda`; the three `E` weights have distinct powers `1/2,-1/2-lambda,-3/2-lambda`. Since `lambda>0`, each list is pairwise distinct. Lemma 4.7 then proves invertibility of the corresponding moment matrices from ordered disjoint nonnegative bump supports.

The actual system has the form

```text
B(eta)c + Q_eta(c,c) = d_N(eta),
```

with `d_N = O(1/N)`. The quantitative fixed-point estimate in Lemma 4.7 gives a smooth small solution once `N` exceeds a finite bound involving the already-fixed inverse and bilinear norms. Therefore the nonlinear restoration is not replaced by a linear surrogate.

### 2.5 Positivity and cone margin survive restoration

The correction coefficients are `O(1/N)`, so `E_f` remains positive and the shear/stress coordinates move by `O(1/N)`. Increasing the same final `N` if necessary leaves the repaired triples in the same compact cone neighborhood. The proof obtains a positive residual margin, not merely non-strict inequalities.

### 2.6 Exact exterior and reserved intervals survive

All modulation and restoration changes are compactly supported before `Y1`. Once the five cumulative integrals are restored exactly, Lemma 4.4 propagates equality with the original joined profile beyond that radius, so pressure, radial velocity, stress coordinates and the heat exterior are literally restored. The two later radial intervals are chosen outside the used repair patches and remain unchanged.

## 3. Adversarial checks

### Check A1-1 — common-parameter feasibility

Attempted failure: `h` must be both smaller and larger than incompatible quantities, or a later bound on `N` changes a previously fixed quantity.

Result: no contradiction found. The choices are sequential. Every `<<` relation can be satisfied recursively because only finitely many constraints are imposed at each stage, and `N` is chosen after the continuous parameters. The theorem requires only fixed finite derivative orders during the parameter-selection step; after choices are fixed, every other fixed derivative order has a finite bound rather than imposing a new smallness choice retroactively.

### Check A1-2 — five-row singularity

Attempted failure: the moment matrix degenerates for the chosen `lambda`.

Result: no. The relevant power lists are pairwise distinct for every `lambda>0`, exactly the hypothesis used by the finite-dimensional moment lemma.

### Check A1-3 — cone lost during exact repair

Attempted failure: exact moment restoration can push the stress outside the strict cone.

Result: no. The pre-repair stress has a compact positive `Psi` margin and the exact correction is `O(1/N)` in the needed finite norms. The proof chooses the same final `N` large enough to keep the repaired profile inside a strictly positive fraction of that margin.

### Check A1-4 — hidden circularity with A2

Attempted failure: the profile's stress cone is certified only after choosing the later wave amplitudes whose existence already requires the cone.

Result: no. The profile theorem and finite modulation close first. The cone is a property of the profile-derived stress. A2 then consumes that fixed cone-certified target to construct positive primary amplitudes and later signed corrections.

### Check A1-5 — exterior/matching leakage

Attempted failure: localized cone repair changes a cumulative integral and therefore silently changes the exterior heat solution.

Result: no. The five cumulative defects are restored exactly before the final profile is frozen, and the matching lemma then makes the exterior data agree exactly beyond the repair interval.

## 4. Pinned-Lean correspondence

The formal dependency spine independently reflects the same direction of construction:

```text
PreparedOutgoing.exists_prepared
  -> NominalConeAssembly.exists_nominal_cone
  -> ModulatedProfileAssembly.exists_of_certificate
  -> FinalSlowBase.profileData_nonempty
  -> FinalSlowBase.actualProfile
  -> BaseWitnessClosure.actual_base_compatible
  -> ActualInitialization.initial_invariant
```

`FinalSlowBase.profileData_nonempty` constructs a `ProfileData` witness by first obtaining an actual nominal-cone certificate and then a modulation witness whose `FullTrueCone` property is proved. It does not take a later wave field or target amplitude as a premise.

`BaseWitnessClosure` then exposes one literal retained profile. Among the properties proved for that same object are:

```text
0 < h <= 1/1000,
2h < lambda,
0 < lambda < 1/10,
positive/nonempty active annulus,
OutgoingProfile.Specification,
NominalConeAssembly.Certificate,
LeadingStressWeights.FullTrueCone,
same axis-pressure datum after modulation,
smooth finite base coefficients and identities,
closed initialized cycle invariant.
```

This is stronger than merely having mutually unrelated existential certificates: the downstream initialization is definitionally tied to the same selected profile.

## 5. Parameter ledger for A1

| quantity/class | role | choice order / constraint |
|---|---|---|
| `Md` | large outer parameter | fixed early, large |
| `Td` | derived waiting scale | `exp(Md)+10` |
| `P_*` | large exterior/profile scale | chosen after `Td`, `P_*>exp(Td)` |
| `lambda` | positive exterior exponent | small after large outer data |
| `h` | similarity anisotropy | positive, `h << lambda`, theorem `h<1/100`; formal retained witness has `h<=1/1000` and `2h<lambda` |
| `j0,delta_*,sigma_*,epsilon_m` | axis/matching tolerances | sequentially small before final modulation |
| `Lambda,Tsh,C` | large joining/normalization quantities | fixed before final `N`; exact hierarchy in paper |
| `omega_fin,t1,kappa0` | final transition widths | sequentially small after the first hierarchy |
| `N` | radial modulation frequency | final large integer; one finite value satisfies all finite lower bounds |
| cone margin | derived positive minimum | compact minimum after fixed profile/shear loop |
| edge weight | derived from fixed collars | independent of physical `q` and later bands |

No backward dependency from `N`, physical `q`, A2 wave frequencies, or later correction stage indices into the profile choices was found.

## 6. Verdict

```text
A1_PRIMARY_VERDICT = REPRODUCED_NO_DEFECT_FOUND
COMMON_PROFILE_PARAMETER_CHOICE = REPRODUCED
FIVE_MOMENT_RESTORATION = REPRODUCED
STRICT_STRESS_CONE = REPRODUCED
AXIS_AND_EXTERIOR_MATCHING = REPRODUCED
EDGE_FLATNESS_AND_FIXED_DERIVATIVE_REGULARITY = REPRODUCED
RESERVED_LATER_CORRECTION_INTERVALS = REPRODUCED
HIDDEN_A1_A2_CIRCULARITY = NOT_FOUND
```

This is a targeted independent reconstruction of the load-bearing A1 spine, not a line-by-line re-proof of Appendices A–C. Within the frozen falsification scope, no material analytic defect or unresolved A1 load-bearing dependency was found.

## 7. FCP isolation

No K9, framework, K1–K10, E1–E5, recurrence, empirical, physical-canonicity, NFC, or unforced-Navier–Stokes consequence is authorized by this node verdict.