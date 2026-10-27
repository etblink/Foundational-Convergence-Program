# FCP BFSS — original Spin(48) projection: kernel-first mathematical analysis

**Date:** 2026-10-27 (Pacific). **Status:** SOURCE-BOUND MATHEMATICAL RESEARCH NOTE; **not** a new Lean-accepted theorem, CI gate, or physical-spectrum result. **New strictly accepted theorem roots:** 0.

**Project Lead decision:** Investigate the exact kernel of the already qualified *original* Clifford Spin(48) real-vector action before attempting the covering, universal Spin(9) lift, or physical form invariance. Preserve every obligation separately. This note is a bounded analysis in the existing research branch only; original \`etblink/math\`, canonical FCP \`main\`, and draft PR #25 are unchanged.

## 1. Immutable object, pins, and existing qualifications

- Original mathematics: \`etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a\`; Lean **4.34.1**; Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`.
- Research branch at investigation start: \`research/openai-math-su2-s1v52-global-lift-scoping-20261019\`, HEAD \`25339bb9f9a8f4cca3e519878d7c21d8da3ed1eb\`.
- Source label space: \`FCP.BFSSS1V0.Source48Label = Fin 24 × Fin 2\`, \`Source48Vector = Source48Label → ℝ\`, exact source Euclidean quadratic \`source48Quadratic\`. Its 48 labels are *not* to be silently flattened in an assumed color-major order; the original paired Fock source equivalence has its own mode order.
- \`S1V30\`: original degree-one \`CliffordAlgebra.ι Q\` injectivity, strictly qualified in its recorded October 19 gate.
- \`F20B\`: source PBW **real-linear** basis \`originalSourceCliffordPBWBasis : Module.Basis (Finset Source48Label) ℝ (CliffordAlgebra Q)\`; source blob \`6e4c78fd31f9781267659313a8a0edfedd65e9ad\`. **Important:** \`CliffordAlgebra.equivExterior\` here is a linear equivalence, **not** an algebra homomorphism.
- \`S1V31–S1V35\`: Clifford-conjugation-defined action, real linearity, original quadratic-form preservation and real linear group hom, with separate historical strict acceptances.
- \`S1V47\`: actual original real determinant character is identically \(+1\), strictly qualified as four roots in its October 19 recorded gate; source blob \`10015d67ef402692a83e4e8a1ca172225cfaf575\`.
- \`F20F\`: actual original \`spinGroup source48Quadratic\` is a topological group in the finite-coordinate PBW topology; continuity of inverse is genuinely qualified.
- \`F21A\`: \`originalSourceCliffordGenerator_closedEmbedding\` and \`originalSourceSpin48VectorAction_joint_continuous\`, strict green [Actions #40484231446](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40484231446), source blob \`87f554d93022d9dd3cc779947699ba0a599fae9b\`, both with exactly \`propext\`, \`Classical.choice\`, \`Quot.sound\`; no \`sorryAx\`.
- \`S1S\`: source \`sourceSpinPair a b ha hb\` explicitly constructs a **genuine** Mathlib \`spinGroup Q\` element from two source real unit vectors; this is more relevant to surjectivity than unrelated assumed covering actions.

**What is already established:** a continuous group representation on the original 48-real vector space preserving Q and determinant +1 (from separately source-qualified ingredients). **What is not established:** source-exact SO(48) codomain packaging, kernel, full image, a local two-sheeted covering, global Spin(9) lift, Fock/gauge intertwiner, closed physical-form invariance, sector coercivity, or positive normalizable eigenstate existence.

## 2. Kernel theorem — complete mathematical argument, formal bridge still open

Write \(V=\mathbb R^{48}\) with the *actual source labels*, \(C=\mathrm{Cl}(V,Q)\), and \(e_j=\iota_Q(\delta_j)\), where \(\delta_j\) is the original unit-coordinate vector. For the positive source Q, \(e_j^2=1\) and \(e_i e_j=-e_j e_i\) for \(i\ne j\).

**Precise source-targeted candidate:**
\[
\ker\bigl(s\mapsto(v\mapsto\mathrm{sourceSpin48VectorAction}(s,v))\bigr)
=\{1,-1\}\subset\mathrm{spinGroup}(Q).
\]
This is a **candidate statement**, not presently a qualified Lean declaration.

### Step K1: kernel means commuting with original generators

For \(s\) with source vector action equal to the identity, the accepted S1V31 Clifford generator identity gives
\(\iota_Q(v)=s\,\iota_Q(v)\,s^{-1}\).
Since the true Spin element is a genuine unit, this is equivalent to
\(s e_j=e_j s\) for every **original source coordinate** \(j\).

### Step K2: even PBW commutant is scalar

Spin membership implies even Clifford parity (true pinned \`spinGroup.mem_even\`). Fix any total ordering of the finite *actual source label set* and use the ordered Clifford monomials \(e_I\), indexed by finite subsets \(I\). The standard PBW fact identifies their coefficients uniquely, and even parity excludes odd-cardinality \(I\).

For **even** \(k=|I|\), moving \(e_j\) through \(e_I\) has:

- \(j\notin I\): \(e_j e_I=e_I e_j\).
- \(j\in I\): \(e_j e_I=-e_I e_j\); equivalently \([e_j,e_I]=\pm2e_{I\setminus\{j\}}\).

For any fixed \(j\), the map \(I\mapsto I\setminus\{j\}\) is injective on subsets containing \(j\), so the commutator's PBW coefficients cannot cancel between different such \(I\). Since \(2\ne0\) in \(\mathbb R\), commuting with \(e_j\) forces *every* even coefficient indexed by \(I\ni j\) to vanish. Vary \(j\) over all 48 actual labels: every nonempty even \(I\) contains some \(j\). Consequently \(s=c1_C\) for one \(c\in\mathbb R\).

**Formalization warning:** It is NOT valid to use the existing \`F20B\` linear \`equivExterior\` as though it were multiplicative. A kernel Lean proof must supply the separate ordered-monomial multiplication/grade rule and the precise correspondence between these \(e_I\) and F20B's basis coordinate functionals. An unproved transport here would be an anti-smuggling violation.

### Step K3: scalar Spin unitarity restricts to two signs

The pinned Spin carrier lies in the Clifford unitary submonoid, hence \(\operatorname{star}(s)s=1\). For real scalar \(s=c1_C\), Clifford star fixes \(c\), giving \(c^2=1\). Over \(\mathbb R\), \(c=\pm1\). The existing S1V47 scalar-faithfulness check supplies an accepted source-specific route for the needed algebra-map injectivity; do not introduce a generic assumption that the algebra is faithful without discharge.

### Step K4: the two signs are genuinely in the source group

The identity is in \`spinGroup Q\`. Choose an actual source coordinate unit vector \(u\) (Q(u)=1). \`S1S.sourceSpinPair u (-u)\` belongs to the **actual original** \`spinGroup Q\`, with Clifford value \(\iota(u)\iota(-u)=-\iota(u)^2=-1\). The injective subtype inclusion identifies the negative unit as a genuine Spin element. Both scalar signs conjugate every Clifford generator trivially.

**K1–K4 verdict:** A transparent mathematical kernel argument is available under the standard Clifford ordered-monomial PBW multiplication rule. This rule and its source-specific F20B coordinate identification are the **first formal discharge**; until then the whole kernel statement is *mathematically supported, formally unqualified*. No new root is counted.

## 3. Independent limited algebraic negative control

An independent exact integer monomial-sign calculation (conducted locally, NOT a GitHub CI certificate) enumerated every even Clifford basis subset for \(n=2,4,6,8,10\), checked left and right multiplication by all \(e_j\) with \(e_j^2=+1\), and found only the empty subset commuting with all generators:

| \(n\) | Even basis monomials examined | Simultaneous commuting even monomials |
|---:|---:|---:|
| 2 | 2 | 1 (scalar) |
| 4 | 8 | 1 (scalar) |
| 6 | 32 | 1 (scalar) |
| 8 | 128 | 1 (scalar) |
| 10 | 512 | 1 (scalar) |

**Limit:** These are exhaustive small-dimensional checks, NOT a \(2^{47}\)-state computation, NOT 48-dimensional kernel certification, and NOT a Lean theorem. The general proof is K2's injectivity argument, whose PBW interface still requires source-exact formal qualification.

This small calculation targets a mathematical mechanism rather than disguising a generic numerical success as source certification.

## 4. Surjectivity: precise source-specific route, not currently proved

The projection target must be the **original** Q-preserving determinant-\(+1\) group, using S1V34/S1V35/S1V47; no surrogate SO action is allowed.

For a real source unit vector \(u\), Clifford conjugation by \(\iota(u)\) gives
\(\iota(u)\iota(v)\iota(u)=\iota(2\langle u,v\rangle u-v)\), i.e. the **negative** of the hyperplane reflection \(r_u(v)=v-2\langle u,v\rangle u\). Two unit vectors give
\(\mathrm{Ad}(\iota(u)\iota(w))=r_u\circ r_w\)
because the two minus signs cancel. Existing \`S1S\`, \`S1T\`, \`S1V1\`, and \`S1V3\` source rotor work is relevant, but its precise acceptance and all-vector interface must be verified before reuse.

Cartan–Dieudonné gives a product of reflections for every orthogonal map. An element of determinant \(+1\) has an **even** reflection factorization (reflection determinants are \(-1\)); normalize each reflecting vector by positive source Q to a real source unit vector, then group reflections into pairs and use genuine source Spin pair elements. This would prove surjectivity.

**Important sign/convention negative control:** Some external Clifford/Pin lemmas assume \(Q=-q\) when \(q\) is Euclidean and ask for a square-root of \(-Q(v)^{-1}\). That assumption is *not* automatically true for the actual positive source \`source48Quadratic\`. Do NOT apply those abstract surjectivity lemmas to this Q without checking conventions. The direct even-pair rotor method above is the properly source-adapted approach.

**Open Lean work:** a normalized reflection-pair source action, even-reflection generation at the source Q and 48-label types, and a genuinely constructed map into the original SO group. No global surjectivity accepted.

## 5. Topological covering: bounded proof architecture

Even **after** continuity, kernel and surjectivity, the local covering conclusion needs a topology argument. One mathematically viable route avoids pretending that a generic continuous group hom with finite kernel is automatically a covering:

1. Establish a bounded even-reflection factorization of SO(48) (Cartan–Dieudonné permits at most 48 real reflections).
2. By surjectivity and the exact two-sign kernel, every actual Spin element becomes a word of at most 24 source unit-vector pairs, plus at most one unit pair representing \(-1\). Pad shorter expressions by pairs \((u,u)\), which multiply to \(+1\).
3. A fixed-length product from 25 copies of \(S^{47}\times S^{47}\) is then a continuous **surjection** onto the actual source Spin carrier. The original F20B/F20C/F20D/F20F finite-coordinate topology and Clifford multiplication continuity support this route. Since its parameter space is compact, the exact source Spin group is compact.
4. A continuous surjective group hom from that compact group onto Hausdorff SO(48) is a quotient map and hence open. Its kernel \(\{\pm1\}\) is discrete and finite in the inherited Hausdorff topology.
5. Choose an identity neighborhood whose two kernel translates are disjoint. Openness of the projection supplies an evenly covered target neighborhood, hence an actual two-sheeted covering.

This is an **argument plan**, not a completed source Lean formalization. The bounded-word parameterization and target topology are genuine separately named premises. In particular, compactness/open mapping must not be assumed from F21A continuity alone.

## 6. Source-order and scientific boundaries

The earlier exact finite \`pairedLabelEquiv\` source-order gate [#40478381697](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40478381697) is a useful restriction on any subsequent global Spin(9) lift. The kernel proof is invariant under a **proved permutation** of label coordinates; nevertheless, downstream 16-spinor × three-color gamma, CAR, B(x), and SU2 gauge actions must be transported through the literal original label equivalence. Passing abstract Clifford identities in a convenient order does not qualify the source-identification bridge.

The source-actual finite Spin(9) Lie/covariance checks [#40476717798](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40476717798) are **0 new Lean roots** and not a global continuous Spin(9) homomorphism.

No kernel/image/covering conclusion, source global Spin(9) action, closed physical q-form invariance, high-sector coercivity, or positive normalizable eigenstate existence is presently accepted from this note.

## 7. Next bounded execution gate and stop rules

**KERNEL-PBW-1 (next mathematical test):** Source-exact *even PBW commutant scalar* lemma at \(C=\mathrm{Cl}(\mathrm{source48Quadratic})\). Before any expensive strict CI gate:
- Inspect pinned \`CliffordAlgebra.equivExterior\` and F20B's exact basis transport to establish which ordered source monomials its functionals select; **do not** treat the linear map as multiplicative.
- Prove the signed generator/ordered-even-monomial commutator at the fixed original \`Source48Label\` type, with no arbitrary dimensioned replacement.
- Show coefficient extraction forces all nonempty even coefficients zero. Specialize to a Spin element in the true kernel and use S1V47 scalar faithfulness and actual Spin unitarity.
- Construct the negative source sign via \`S1S.sourceSpinPair u (-u)\`; then state a precise two-sign kernel theorem.
- Only if those pieces have source-correct types and bounded proof interfaces, introduce a new strict Lean gate with pinned original source, compiler, imports, exact root statements, axiom whitelist, and qualified ancestry.

**Falsifiers:** an actual PBW coefficient/order discrepancy, an algebra-map faithfulness failure, the source Spin group excluding the claimed negative central unit, or an inconsistent conjugation sign. Such an outcome narrows or refutes the proposed proof; do not weaken the target or hide the discrepancy in a chosen abstract cover.

**Stop rule:** no blanket increase of Lean heartbeats, no giant \`simp\` expansion of \`Finset Source48Label\`, no repeated uninformative red gates. Preserve the first failure and switch to a small typed equality.

**Track B remains independent:** challenge the source's Spin(9)→Spin(8) restriction, exact transverse oscillator low-level exclusion, and uniform closed *gauge-physical* high-type coercivity estimate. A coherent counterexample here is more important than a successful projection gate.

**Accounting at this note:** S4 separately accepted root family = **63**; F21A newly accepted roots = **2**; **this operation adds 0**. No global physical eigenstate theorem is admitted.
