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
