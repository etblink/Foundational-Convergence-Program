# OpenAI Navier–Stokes 2026 — A2 Oscillatory-Stress Falsification Ledger 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_LOAD_BEARING_ANALYTIC_FALSIFICATION_AUDIT
PHASE = PHASE_2_A2_OSCILLATORY_STRESS_REALIZATION
NODE = A2
PAPER_NODE = SECTION_7_WITH_PROPOSITIONS_7_5_7_6_AND_COROLLARY_7_8
STATUS = COMPLETE
DATE = 2026-09-10
VERDICT = REPRODUCED_NO_DEFECT_FOUND
OPENAI_LEAN_COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
OPENAI_LEAN_TREE = a503f07635f200c0f2f9c5361df1fa07f95c4741
```

## 1. Frozen A2 obligation

```text
DO_THE_OSCILLATORY_FIELDS_REALIZE_THE_REQUIRED_SIGNED_STRESS_AFTER_ALL_NONLINEAR_CROSS_TERMS_AND_CUTOFF_ERRORS_ARE_INCLUDED?
```

A2 separates three logically different tasks that must not be conflated:

1. construct a fixed leading oscillatory field whose covariance equals the positive-cone leading target;
2. linearize covariance around that fixed field to realize later stress increments of either sign;
3. replace the raw amplitudes by exact divergence-free curls while retaining every covariance and cutoff remainder at the correct order.

A clean verdict requires all three.

## 2. Phase/frame and denominator check

Section 7 first constructs two pulse directions corresponding to two signs. The strict leading-stress cone from the prepared profile is translated into the reference inequalities

```text
T_N < 0,
|T_K| < (u_*/A_c)(-T_N),
```

with `u_*>0` and `A_c>0`. Ignoring the small column errors, the two covariance directions are proportional to

```text
-A_c N - u_* K,
-A_c N + u_* K.
```

Writing the target as `T=T_N N+T_K K`, the reference positive coefficients obey

```text
h_+ y_+ = 1/2(-T_N/A_c - T_K/u_*),
h_- y_- = 1/2(-T_N/A_c + T_K/u_*).
```

Both are strictly positive exactly under the displayed cone inequality. This independently reconstructs the sign logic used in Proposition 7.5; positivity is not an arbitrary assumption.

The paper then uses uniform strict cone margin plus sufficiently large band scale `S_*` to absorb the `O(S_*^-1/2)` column perturbations. The same smallness choice also keeps the phase normal and the frame/left-inverse denominators uniformly away from zero. A notable strength of the construction is that one sufficiently small common `q_*` works for every fixed derivative order; derivative order changes polynomial degrees/constants but does not force repeated domain shrinkage.

No sign reversal or vanishing denominator was found in the reference solve.

## 3. Proposition 7.5 — leading covariance realization

Let `H=[C(b_+) | C(b_-)]` be the 2x2 covariance matrix of the two homogeneous pulses and let `T_{0,*}` be the order-zero target. Proposition 7.5 defines

```text
y = H^-1 T_{0,*},
a_sigma = sqrt(y_sigma),
W_0 = sqrt(epsilon) sum_sigma a_sigma b_sigma.
```

The disjoint auxiliary supports of the two signs eliminate their mutual covariance products. The angular frequency is a nonzero integer, so the angular mean of the squared cosine is exactly `1/2`. The slow partition is squared, and its partition-of-unity identity reconstructs the physical target after summing boxes/bands.

The independently checked algebra is:

```text
C(W_0)
 = epsilon sum_sigma a_sigma^2 C(b_sigma)
 = epsilon H y
 = epsilon T_{0,*}
```

locally, followed by the paper's physical rescaling and squared-partition sum. The scale identity in (7.30) converts this to the required physical leading stress.

### Edge/smoothness check

A possible failure is that `sqrt(y_sigma)` becomes nonsmooth where the stress vanishes at a shell edge. The paper proves two-sided weighted control of `y_sigma` by the flat shell factor and corresponding derivative bounds before taking the square root; the shell factor is flat enough that the square-root amplitude and every fixed derivative extend smoothly by zero. Thus the positive-cone solve is performed only where the coefficients are positive, while the resulting physical coefficient has a justified zero extension.

The pinned Lean construction mirrors this division of responsibility: `ActualSignedControl` derives the reference matrix, target, masks, determinant/lower bounds, and jet estimates from the same prepared primary family; its `exists_actual_signed_control` theorem explicitly states that no finished control record, target jet, fundamental jet, or copied request jet is an input.

## 4. Cross-label / support adversarial check

Another potential defect is hidden covariance between different labels or between the two sign families. The paper removes these by disjoint auxiliary rectangles and the separation lemma. The pinned implementation contains an actual `primary_cross_zero` theorem for distinct labels and uses it in the assembled covariance sum, rather than merely asserting that such products are negligible.

This is important: the target equality is exact at the leading covariance level, not an asymptotic statement relying on unquantified cancellation between overlapping copies.

## 5. Proposition 7.6 — arbitrary signed stress increments

Later corrections need a stress increment `Sigma` with no sign restriction. Re-taking square roots of a signed target would be invalid. Instead the paper freezes the positive leading amplitudes `a_sigma` from Proposition 7.5 and linearizes around them:

```text
d_Sigma = H^-1(Sigma/epsilon),
delta a_sigma = (d_Sigma)_sigma / (2 a_sigma),
L Sigma = sqrt(epsilon) sum_sigma delta a_sigma b_sigma.
```

Because `a_sigma` is the fixed strictly positive leading coefficient, `delta a_sigma` may have either sign. The differential of covariance gives

```text
B(W_0, L Sigma)
 = epsilon H(2 a dot delta a)
 = epsilon H d_Sigma
 = Sigma.
```

This independently reproduces the factor `2`, the denominator `2a_sigma`, and the absence of a sign restriction on `Sigma`.

The exact nonlinear covariance before curl correction is therefore

```text
C(W_0 + L Sigma)
 = C(W_0) + Sigma + C(L Sigma).
```

The quadratic remainder `C(L Sigma)` is explicitly retained; it is not discarded as part of the linearization.

The pinned `ActualSignedMeanBinding` implements the same principle: the signed coefficient is the requested covariance increment divided by the fixed positive primary amplitude associated with the selected matrix/target. It is not computed as a square root of the signed request.

## 6. Lemma 7.7 — exact divergence-free curl

The raw harmonic amplitude is orthogonal to the phase normal, which cancels only the leading high-frequency contribution to divergence. Differentiating the amplitude itself still produces divergence. The paper therefore constructs a vector potential

```text
C_m = i (n_Phi x t_m)/(k m |n_Phi|^2),
A_m = C_m exp(i k m Phi),
```

and takes its full cylindrical curl. The leading derivative of the exponential returns `t_m`; the remaining derivatives form a curl remainder `r_m` with the claimed improved exponent.

The divergence-free property follows from the full cylindrical `div curl = 0` identity, including the `R^-1` connection terms; the paper displays the cancellation explicitly. The additional curl remainder is therefore a real velocity contribution and must be retained in covariance and residual estimates.

The pinned Lean cluster includes `LocalizedCurlRealization` and actual signed/common dynamics that realize this full curl construction, not merely the leading orthogonality condition. It also carries zero-germ/support alternatives needed at localization boundaries.

No missing cylindrical connection term was identified in the paper's displayed `div curl` calculation.

## 7. Temporal cutoff remainder

Multiplying the pulse/potential by the temporal cutoff creates the explicit residual

```text
(1-psi) f_m + psi' t_m.
```

This is a high-risk location because a cutoff can invalidate an exact amplitude solve. The paper does not claim the cutoff preserves exact cancellation. Instead it proves Gaussian decay at both pulse ends and shows the cutoff residual is super-polynomially flat in the physical scale for every fixed derivative order. These residuals remain separate additive flat errors in subsequent correction stages.

Accordingly, the cutoff defect is controlled, not erased.

## 8. Corollary 7.8 — exact covariance of the actual velocities

Let

```text
U = W_0^as + E
```

be the already accumulated divergence-free wave field, where `E` includes previous corrections/curl remainders, and let the new divergence-free signed increment be

```text
V = L^as Sigma + R,
```

where `R` is its new curl remainder. The exact quadratic expansion is

```text
C(U+V)-C(U)
 = Sigma
 + B(E, L^as Sigma)
 + B(U,R)
 + C(V).
```

This is algebraically exhaustive. Indeed,

```text
B(U,V)+C(V)
 = B(W_0^as,L^as Sigma)
 + B(E,L^as Sigma)
 + B(U,R)
 + C(V),
```

and the first term is exactly `Sigma`.

Thus the three potentially dangerous leftovers are precisely:

1. interaction with previous corrections;
2. interaction with the new curl remainder;
3. square of the complete new velocity.

The paper gives explicit classes for all three and notes that taking radial divergence costs at most one additional `kappa_s`.

The pinned `SignedMeanGain.covariance_increment_split`, `SignedCrossDefectClass`, and `CrossBasedMeanComposition` encode the same full covariance increment and retain the finite-head/tail defect logic subsequently used in A3.

## 9. A2 adversarial checklist

| candidate failure mode | result |
|---|---|
| reference stress cone gives a negative squared amplitude | NOT_FOUND |
| 2x2 covariance matrix loses rank in the admitted regime | NOT_FOUND_AFTER_UNIFORM_CONE_PERTURBATION_CHECK |
| square root taken on arbitrary signed later stress | NOT_FOUND |
| factor 2 in covariance linearization missing | NOT_FOUND |
| quadratic `C(L Sigma)` discarded | NOT_FOUND |
| cross-label/sign covariance silently ignored | NOT_FOUND |
| raw phase orthogonality incorrectly treated as exact incompressibility | NOT_FOUND |
| cylindrical curl omits connection terms | NOT_FOUND |
| curl remainder omitted from later covariance | NOT_FOUND |
| temporal cutoff assumed to preserve exact source cancellation | NOT_FOUND |
| previous-correction × new-signed-wave term omitted | NOT_FOUND |
| new-curl × accumulated-wave term omitted | NOT_FOUND |
| full square of new divergence-free velocity omitted | NOT_FOUND |
| finished signed-control oracle supplied as an input | NOT_FOUND |

## 10. Residual qualification

This targeted A2 audit independently reproduces the key finite-dimensional covariance algebra, sign cone, signed linearization, exact curl mechanism, and actual-velocity covariance expansion. It does not independently rederive every coefficient-derivative bound in Lemmas 7.1–7.4 or every geometry estimate inherited from A1.

Therefore A2 is conditional on A1 ultimately surviving its own audit: if A1 later fails to supply the strict cone or uniform shear/frame bounds required here, A2 must be reopened as a concrete application even though its internal realization mechanism is sound.

## 11. A2 verdict

```text
A2_VERDICT = REPRODUCED_NO_DEFECT_FOUND
MATERIAL_ANALYTIC_DEFECT_FOUND = NO
SIGNED_STRESS_LINEARIZATION = REPRODUCED
LEADING_POSITIVE_CONE_SOLVE = REPRODUCED
CURL_INCOMPRESSIBILITY_MECHANISM = REPRODUCED
TEMPORAL_CUTOFF_DEFECT = RETAINED_AND_CONTROLLED
ACTUAL_VELOCITY_COVARIANCE_EXPANSION = REPRODUCED
OMITTED_SAME_ORDER_COVARIANCE_TERM = NONE_FOUND
A1_DEPENDENCY = OPEN_PENDING_A1_AUDIT
```

## 12. FCP isolation

```text
K9_CORPUS_EFFECT = NONE
FRAMEWORK_EFFECT = NONE
K1_K10_EFFECT = NONE
E1_E5_EFFECT = NONE
RECURRENCE_EFFECT = NONE
EMPIRICAL_EFFECT = NONE
NFC_SUPPORT = NONE
CURRENT_STATE_MUTATION = NONE
SOURCE_REGISTER_MUTATION = NONE
```

The next admissible phase under the preregistration is A1, the leading-profile construction audit.
