# L6G7 — source-faithful finite-time color covariance route

**2026-10-13 PT. Status: mathematical proof architecture, NOT a Lean qualification.**
The next uncertainty is whether the exponential of the literal source fermionic color current equals the constructed original Fock gauge action along the genuine positive-i SU(2) curve. A tangent match at zero alone cannot establish that equality.

## Exact source objects and accepted inputs

Fix a color c and spin s. Use the original objects, with B the output color and A the input:

- J = `sourceFiberFermionColorGenerator pairedAlgebraData c` (L6G6K/L).
- V(t) = `sourceFermionColorFlow c t` = exp(t J) (L6G6Z).
- g(t) = `sourcePlusIGaugeCurve c t` = exp(+it T_c), genuinely in `GaugeGroup 2` (L6G6X).
- R(t)[B,A] = `pairedAlgebraData.adjointCoefficient (g(t)) A B` (G3A).
- C[B,A] = `pairedAlgebraData.structureConstant B A c` (L6G6U/X).
- theta_A = `pairedAlgebraData.theta s A`; use the qualified `pairedAlgebraData_theta` bridge when applying S1B.

L6G6L and first-two-index antisymmetry give [J,theta_A] = sum_B C[B,A] theta_B. L6G6X gives R'(0)=C; G3A gives R(gh)=R(g)R(h) and R(1)=I. Z gives the actual bounded exponential flow, its group law, derivative and common-vacuum invariance. S1B gives uniqueness up to a scalar ONLY after the candidate's full same-theta covariance is supplied.

Pinned primary source remains etblink/math at adc7f1241b42e322a6451854ab7e4b4c146bf78a, Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. `OAI/MathematicalPhysics/BFSS/Core.lean` defines the actual Fock space and theta fields; the existing qualified G3A, L6G6L/X/Z and S1B files supply the interfaces above.

## 2026-10-13 Project Lead follow-up after Astra #166/#167

Astra's two L6G7A retries are independently confirmed RED from their original workflow logs. [#166](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38523066636), job `115716997732`, fails at concrete `sourceFiberEnd_comm_apply` **use** with recursion depth, even though its own proof and both generic helpers are axiom-clean. [#167](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38524090268), job `115720237358`, fails in the pre-analytic source-vector bridge at line 147, and again at the final derivative equality line 212. In both runs the native sign and adjoint-coefficient derivative retain allowed-axiom kernel checks; the pointwise derivative theorem does **not**. The local analytic instance crossing is not a necessary condition for failure. Stop the ad hoc L6G7A source-operator application tactic family.

**Actual next candidate:** `SU2BFSSPhysicalDomainL6G7BOriginalPlusIGaugeCurveGroupLawProbe.lean`, authored at [`e80f0c67`](https://github.com/etblink/Foundational-Convergence-Program/commit/e80f0c67c40a24921b62f072af1d53ebc195a756), and strict staged qualification added by [`81b71dd5`](https://github.com/etblink/Foundational-Convergence-Program/commit/81b71dd52de8505efe1b03791f1fda9666c84519). It first proves `sourcePlusIColorMatrix c (s+t)=sourcePlusIColorMatrix c s*sourcePlusIColorMatrix c t` using the same complex-scaled exponential/group pattern already accepted in L6G6Z, lifts the identity to the *genuine source determinant-one* `sourcePlusIGaugeCurve`, then invokes qualified G3A `adjointCoefficient_mul` and `adjointCoefficient_one` to obtain the all-time native color composition and zero laws. No Fock operator application and no unqualified L6G7A premise occur in its import chain. Its original source statements, signs, parameter order and fixed Mathlib/upstream pins are unchanged.

The formerly auto-run red L6G7A qualification stage is deliberately PAUSED in the research workflow; the source file, proofs, and permanent failure ledger remain present. This is **not** a claim that L6G7A passed. [Original Source Spin Identity #169](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38525957596) is pending at this note, and L6G7B is **UNQUALIFIED** until the actual pinned Lean module compilation and four-root strict axiom audit finish. Any red should be diagnosed from its FIRST causal error. If green, derive `R'(t)=C R(t)` with G3A composition and L6G6X's exact derivative, without revisiting the redundant L6G7A derivative wrapper.

## #169 L6G7B first red — exact matrix norm import interface

[Original Source Spin Identity #169](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38525957596), job `115728212115`, source candidate `e80f0c67c40a24921b62f072af1d53ebc195a756` finished RED only at L6G7B. Accepted native earlier stages recompiled successfully. The first error `L6G7B...lean:35:4` was inability to synthesize `SeminormedRing SourceColorEnd` for `NormedAlgebra ℚ SourceColorEnd := .restrictScalars ℚ ℂ ...`; then `NormedSpace.exp_add_of_commute` received an unresolved abstract multiplication type at line 61. This is an **upstream proof environment** error, not a contradiction of the matrix group law or an SU(2) sign issue. The identity-at-zero fourth root was axiom-clean; the other three roots inherited `sorryAx` and are NOT qualified. The actual pinned two-by-two source determinant proof in L6G6X solves exactly this matrix norm instance by `open scoped Matrix.Norms.L2Operator`, and uses precisely `.restrictScalars ℚ ℂ (Matrix (Fin 2) (Fin 2) ℂ)`.

[Targeted fix `51f50ad4`](https://github.com/etblink/Foundational-Convergence-Program/commit/51f50ad4e20acffa24ea59c868323738abd5d13a) adds that SAME accepted scope in L6G7B, without changing theorem statements, scalar cast, `+i` convention, source pin, or axiom audit. [Gate #170](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38527740908) started and was **unqualified as of this historical note**. Its *actual* first Lean error and all four source roots must be independently checked before promotion.

**Negative knowledge:** inherited source Matrix/Exponential import does not imply the specialized operator norm scope is active. Reuse the precise qualified scoped norm from the source's own matrix exponential proof instead of inventing matrix normed-ring instances or mistaking dependent exponential errors for mathematical defects.

## Gate #170 GREEN — first finite-time original color result qualified; next all-time derivative

[Original Source Spin Identity #170](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38527740908), job `115732001643`, source [`51f50ad4`](https://github.com/etblink/Foundational-Convergence-Program/commit/51f50ad4e20acffa24ea59c868323738abd5d13a): **SUCCESS**. The full L6G7B Lean `.olean` was produced and its complete four-root strict audit emitted `L6G7B_ACTUAL_SOURCE_SU2_GROUP_AND_ALL_TIME_COLOR_COMPOSITION_QUALIFIED` with only `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`. Therefore the original +i `sourcePlusIGaugeCurve` is now proven an additive-to-multiplicative one-parameter subgroup of the **real source `GaugeGroup 2`**, and original `pairedAlgebraData.adjointCoefficient` has its exact all-time `R(s+t)=R(s)R(t)` composition and `R(0)=I`. Unlike L6G7A, this is not a wrapper under an unqualified source operator, and it does not establish Fock covariance.

The exact red-to-green failure mechanism was merely missing `open scoped Matrix.Norms.L2Operator`: the pinned `L6G6X` source matrix exponential proof already used the same scope and rational scalar `NormedAlgebra`. Gate #169 lacked `SeminormedRing SourceColorEnd`, but #170 succeeded with no change to physical definitions, signs, or axioms. Preserve this source-aligned norm selection for any color-matrix exponential code.

Next candidate: [L6G7C source `72ebed39`](https://github.com/etblink/Foundational-Convergence-Program/commit/72ebed39675e6b78b63940091ef7c3891e06ddd4), strict CI [`8f3f8697`](https://github.com/etblink/Foundational-Convergence-Program/commit/8f3f86979127feb51a3f43abe5c01dbf53af7dbc). It takes a scalar output/input coefficient `R(u)[B,A]`, differentiates `R(h+t)=R(h)R(t)` with `HasDerivAt.fun_sum` and the qualified L6G6X derivative `R'(0)=C`, transports the shifted real derivative through `h=u-t`, then assembles every entry into the literal 3×3 `adjointColorMatrix` using pinned `hasDerivAt_pi` as in accepted L6G6Y. Intended source-level theorem is exactly `R'_c(t)=C_c R_c(t)`. [Original Source Spin Identity #172](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38528770902) was **pending**, not adjudicated when this note was created. No L6G7C result is accepted before exact compiler and two-root no-`sorryAx` audit. First check any red for finite-sum calculus/type elaboration; no reason to reopen L6G7A's source-Fock application boundary.

Following an L6G7C green, next obligatory mathematics is the bounded-operator-valued evolution of `B_A(t)=Σ_B R(t)[B,A] theta_B`, then the conserved conjugate `V(-t) B_A(t) V(t)`, then S1B/vacuum uniqueness. Neither those identities nor full Gauss/spectral implications follow merely from the native 3×3 color derivative.

## Gate #172 red — translation basepoint mismatch, not color evolution

[Original Source Spin Identity #172](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38528770902), job `115737385463`, source `72ebed39675e6b78b63940091ef7c3891e06ddd4`, completed **RED** solely at L6G7C. Accepted L6G7B group law recompiled GREEN. First and only Lean error at L6G7C line 75: `hshift.comp t ((hasDerivAt_id' t).sub_const t)` expected `HasDerivAt ... (t-t)`, but `hshift` was explicitly typed at zero. The preceding original-source finite-sum derivative `hsum` and rewriting to `hshift` compiled without error. Both public L6G7C theorems nevertheless printed `sorryAx` and **are NOT qualified**; the mathematical all-time ODE is still open. This is not a failed source-color sign or matrix identity.

**Bounded response:** [`9c6e8bf7`](https://github.com/etblink/Foundational-Convergence-Program/commit/9c6e8bf7768e4e5b9f16196d143bd6e2cb2b1540) inserts a new explicitly typed outer derivative `hshift_at` at `t-t`, proving it by `simpa only [sub_self] using hshift`, then applies the same chain rule to `u ↦ u-t`. It does not change the actual source color matrix, `+i` curve, derivative coefficients, index orientation, or any accepted module. [Original Source Spin Identity #173](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38530473878) was **queued**, unqualified when this note was authored. Audit both L6G7C roots, no `sorryAx`, and the exact printed all-time matrix theorem before promotion.

**General lesson for successors:** `HasDerivAt.comp` expects the outer theorem at the *syntactic image of the inner function's basepoint*; rewrite `t-t=0` into the exact required outer-derivative basepoint BEFORE composing. Avoid changing the mathematics or invoking excessive simplification when a real-variable calculus transport has this interface-only failure.

## #173 red — implicit subtraction function incorrectly inferred in chain rule

[Original Source Spin Identity #173](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38530473878), job `115740880934`, source commit `9c6e8bf7768e4e5b9f16196d143bd6e2cb2b1540`, completed RED only at the new L6G7C proof. The exact earlier original SU(2) source group law L6G7B passed again. `hshift_at` (outer scalar derivative at `t-t`) had compiled, thus correcting #172's earlier basepoint mismatch, but line 86 `hshift_at.comp t ((hasDerivAt_id' t).sub_const t)` failed: Lean expected `HasDerivAt (HSub.hSub t) ... t`, i.e. the inferred partially applied subtraction function `t - ·`, whereas the supplied derivative was of `· - t`. As a consequence the outer goal was unsolved. No other first causal Lean errors. Both L6G7C public roots carried `sorryAx` and remained UNQUALIFIED; L6G7B stays accepted.

The correction [`5ad0ac12`](https://github.com/etblink/Foundational-Convergence-Program/commit/5ad0ac122d39a5a90d9b19395f7937d08bfea60b) replaces the ambiguous `.comp` invocation with an explicitly typed `hinner : HasDerivAt (fun u : ℝ => u - t) 1 t`, `hpoint : 0 = (fun u => u-t) t`, and `hshift.scomp_of_eq t hinner hpoint`. This uses Mathlib's real-to-real vector-space chain rule with explicit basepoint equality; `Function.comp_def`, `sub_add_cancel`, `one_smul` simplify the result. The two original all-time theorem statements, original source signs, existing qualified L6G7B and G3A, and CI audit are unchanged.

[Original Source Spin Identity #174](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38531556989) was queued at the time of this note. Its exact compiler log and both public-root axiom printouts must be checked before qualification. If it fails, read the first error and avoid another guessed partial subtraction rewrite; the evidence shows an elaborator choice of wrong operand order, not a failed matrix derivative.

## 1. Scalar/matrix evolution, independently of Fock elaboration

First prove g(t+h)=g(h)g(t) using the same-generator exponential addition law and lift the matrix equality with subtype extensionality. The two factors commute because they are exponentials of scalar multiples of the same matrix. This is an additional theorem obligation, not supplied automatically by subgroup membership.

Then G3A's exact multiplication rule yields

R(t+h)[B,A] = sum_D R(h)[B,D] R(t)[D,A].

Differentiate with respect to h at zero, using the already accepted native scalar derivative and finite-sum calculus:

R'(t)[B,A] = sum_D C[B,D] R(t)[D,A].

Thus R'=CR and R(0)=I for the actual source coefficients at EVERY real t. This step is finite color-matrix calculus and can be qualified without any new Fock operator expansion. Preserve the output/input orientation and the positive-i sign.

## 2. Conserved conjugated theta, avoiding a separate coupled ODE theorem

Define B_A(t)=sum_B R(t)[B,A] theta_B. The scalar law and the accepted source commutators imply

B_A'(t) = [J,B_A(t)].

This needs an explicit finite-sum and real-to-complex scalar transport proof in the bounded-operator space. It is not established by writing the formula.

Now set F_A(t)=V(-t) B_A(t) V(t). Bounded exponential calculus gives V'(t)=V(t)J=JV(t), the negative-time derivative, and V(-t)V(t)=I. The product rule gives

F_A'(t) = V(-t) (-J B_A(t) + B_A'(t) + B_A(t)J) V(t) = 0.

A derivative-zero constancy theorem on the real line gives F_A(t)=F_A(0)=theta_A. Multiplying by V(t) then yields exactly

V(t) theta_A = B_A(t) V(t),

or on each actual Fock vector v,

V(t)(theta_A v) = sum_B R(t)[B,A] theta_B(V(t)v).

Prove the exponential/conjugation calculus generically over a complete normed operator space before source specialization; explicitly audit the specialization. No finite-dimensional enumeration of the 2^24 Fock coordinates is needed mathematically. The argument uses all-time differential identities, not uniqueness inferred from a single derivative at zero.

## 3. From covariance to the true gauge action

Construct the complex linear equivalence associated to V(t), with inverse V(-t), using Z's group/zero laws. Apply S1B to the now-proved same-theta covariance for g(t), obtaining V(t)v=z F(g(t))v, where F is the original G4B gauge action.

Evaluate at the SAME source vacuum Omega. Z and G4B/S give V(t)Omega=Omega and F(g(t))Omega=Omega. With independently qualified Omega nonzero, (z-1)Omega=0 implies z=1. Do not import the unqualified L6G6T module merely for a vacuum lemma: use an accepted source result or qualify the small nonzero-vacuum proof separately.

Only then differentiate the established action equality to identify the fermionic gauge generator. The orbital derivative, combined physical Gauss constraint, complete original charge-square assembly and analytic/spectral conclusions retain their own obligations.

## Priority and stop rule

L6G7A's pointwise derivative-at-zero wrapper is useful but is NOT a logical prerequisite for this route: L6G6L/X/Z already supply the source commutator, native tangent and exponential facts. If that wrapper keeps failing at a concrete instance-conversion boundary, preserve the failure and advance the independently necessary all-time color-coefficient law. Do not let repeated cosmetic attempts on a redundant wrapper indefinitely delay finite-time covariance.

This record is a checked mathematical dependency plan. None of its unimplemented bridges is promoted to kernel-qualified status, and no full gauge or spectral result follows until those bridges pass their own evidence standards.
