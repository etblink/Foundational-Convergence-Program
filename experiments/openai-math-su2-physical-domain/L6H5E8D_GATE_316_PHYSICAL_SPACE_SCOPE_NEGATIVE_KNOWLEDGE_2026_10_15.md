# H5E8D — strict gate #316 negative knowledge and minimal source fix

**Date:** 2026-10-15 PDT. **Branch:** \`research/openai-math-su2-s3l-combined-rotation\`.
**Failed run:** [Original Source Spin Identity #316](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38857175358); GitHub job \`116831161303\`.
**Commit tested:** \`a65dc51cf55a265767cb71bccf767fd5d2e96291\`.

## Exact first causal failure

The entire H5E8C prerequisite chain passed. H5E8D's first two roots compiled
without \`sorryAx\` and printed only the approved axioms
\`propext\`, \`Classical.choice\`, \`Quot.sound\`:

1. \`actualOriginalColorGenerator_hasDerivAt\`
2. \`actualOriginalColorGenerator_maximalDomain_skew_inner\`

The first source error was
\`SU2BFSSPhysicalDomainL6H5E8DOriginalMaximalGaussSkewAndPhysicalKernelProbe.lean:110:14: error(lean.unknownIdentifier): Unknown identifier pairedGaugeData.physicalSpace\`
and it recurred at \`123:14\`. Subsequent unknown declarations at
\`125:10\`, \`134:14\`, \`135:14\`, \`137:8\` are downstream
of these rejected theorem statements. None is independent evidence of a mathematical
counterexample.

The accepted H5B file (\`SU2BFSSPhysicalDomainL6H5BOriginalDenseCoreGaussCandidateProbe.lean\`)
and accepted L6G7V file explicitly open \`FCP.BFSSSU2GaugeG4J\`
to access \`pairedGaugeData.physicalSpace\`, and use the exact physical
fixed-space definition of the original source GaugeData.

## Minimum experiment

Open \`FCP.BFSSSU2GaugeG4J\` in H5E8D. Do not modify:
- Theorems, exact physicalSpace, original SU2+ i conventions;
- Source Fock representation, inverse bosonic pullback;
- Previously accepted H5E8B/H5E8C lemmas;
- Strict all-four-root CI axiom allowlist.

**Strict falsifier:** the next workflow must compile H5E8D to \`.olean\`,
produce all four \`#print axioms\` roots with only approved axioms, and print
\`L6H5E8D_MAXIMAL_GAUSS_SKEW_PHYSICAL_ZERO_QUALIFIED\`.
Until then H5E8D as a whole is **not accepted**. Maximal domain skew
is compile-evidenced but remains in this failed strict gate; H5E8C
SmoothCore skew-symmetry remains fully accepted via #315.

No assertion of closedness, essential skew-adjointness, physical kernel converse
or BFSS spectral theorem.
