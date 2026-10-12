> **Project Lead proof reduction (2026-10-12):** The proposed L6-A generalized Fierz kernel gate has been refined to a strictly smaller rank-one completeness lemma: 2(sum_i gamma_i*(w w^T)*gamma_i - w w^T)=||w||² I - sum_p(w^T gamma_p w) gamma_p. Exact source-specific 34,816-entry checking passed. An elementary gamma anticommutator calculation then implies the previous 313,344-entry generalized Fierz identity without new concrete gammaTwo computation. See BFSS_SOURCE_RANK_ONE_COMPLETENESS_AND_FIERZ_IMPLICATION_L6A_AUDIT_0_1_0.md. Preserve the proof dependencies; this new finite check is NOT Lean-certified.

# BFSS Project Lead — original signed-permutation source gamma certificate and bounded Lean discharge plan

> **Superseding kernel evidence:** [L6G2 #4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38296484114) qualifies the all-real-spinor ROW Fierz identity for `FCP.BFSSGamma9.gamma`, the unchanged gamma definition installed in the paired data. G1 reuses the upstream spin identity; G2 proves homogeneity and orientation. See `L6G2_ORIGINAL_ALL_SPINOR_ROW_FIERZ_ACCEPTED_CHECKPOINT_0_1_0.md`. The finite gamma coefficient obligation is resolved; CAR/Gauss normal ordering and domains remain separate. The earlier reduction and candidate plans are historical, not instructions to rebuild a basis or numerical kernel certificate.

**2026-10-12 | Research-branch source-algebra checkpoint 0.1.0**. Verdict: EXACT_PINNED_SOURCE_GAMMA_CHECK_PASS; 20,736 source gamma Clifford entries and 313,344 generalized Fierz entries; no new Lean theorem or CI qualification; frozen caches respected.

## The mathematical finding

Prior independent tests of the full original all-spinor supersymmetry/Gauss identity used a separate but mathematically equivalent 9D real gamma-word representation. A possible source-fidelity weakness was that the chosen 9 matrices had not been compared ENTRY-BY-ENTRY against the *actual* accepted pinned Lean gamma data. We closed that gap directly against the repository itself.

Three exact accepted FCP source blobs are frozen into the accompanying fail-closed Python regression:

- experiments/openai-math-su2-concrete-potential/SU2RealGammaProbe.lean, blob 5ec0fcb039fb5c1367f72b2bd0f8c05fcd936587
- experiments/openai-math-su2-concrete-potential/SU2BFSSFullAlgebraDataProbe.lean, blob fe3e0b21bb60d74b54c9faf7c066db9b02939405
- experiments/openai-math-su2-concrete-potential/SU2BFSSG1APairedThetaProbe.lean, blob 4f8fbf05a35c1d625746931b7ff0361b7ffc2ec4

The exact source definitions state \`concreteAlgebraData.gamma := FCP.BFSSGamma9.gamma\` and \`pairedAlgebraData.gamma := concreteAlgebraData.gamma\`. \`SU2RealGammaProbe.lean\` constructs the gamma matrices by private finite arrays \`perm\` and \`sign\`. Every row contains one signed permutation entry; the file has already accepted kernel theorems for gamma symmetry and gamma anticommutation.

The companion Python checker reads **these three source files at runtime**, fails closed if their Git blob digests differ, extracts the *actual* private signed permutations, rebuilds the nine integer gamma matrices, checks the 20,736 nine-by-nine matrix anticommutation entries, then checks the all-real-spinor Fierz identity at 136 polarization inputs (16 basis spinors and 120 basis-pair sums), all nine spatial p and all 16x16 spinor coefficient indices. **313,344 exact Fierz entries pass**. Independent integer arithmetic in a separate language/V8 run against the **same GitHub-fetched canonical source** also passed before this commit. This closes the source-representation mismatch risk; it does NOT constitute a Lean theorem.

Precisely, for \`w:R16\`, \`v_p=w^T gamma_p w\`, the source coefficient identity is

\`sum_i [(w^T gamma_i)_r (w^T gammaTwo_i,p)_s + (w^T gamma_i)_s (w^T gammaTwo_i,p)_r] = |w|² gamma_p[r,s] - delta_r,s v_p\`.

Every term is quadratic in w. A quadratic form over a characteristic-zero field vanishing on each of 16 \`e_alpha\` and each \`e_alpha+e_beta\` vanishes identically by polarization (diagonal and each off-diagonal coefficient separately). The source-specific result thus extends from the 136 verified inputs to **all** real w, modulo only the ordinary mathematical validity of this finite exact computation.

## Exact consequence and important limitations

The preceding ordinary-mathematical audit \`BFSS_FULL_SPINOR_GAUSS_SQUARE_AND_MINIMAL_CLOSED_FORM_BRIDGE_AUDIT_0_1_0.md\` separately derived original CAR normal ordering and the full expression

\`Q(w)^2 = |w|² H0 + sum_(c,p)(w^T gamma_p w)x_p^c G_c\`

on the full original smooth core (G_c includes both boson and fermion gauge terms). **That second algebraic transport is NOT proved by the source gamma entry certificate**. The latter only discharges its finite matrix coefficient identity, which is one important load-bearing component. Likewise, the 256-fold positive-energy multiplicity conclusion needs the true physical operator closure/essential self-adjointness; it does not follow from the finite checker alone.

Existing accepted Lean proofs S3L0–S3L5K3 are NOT a proof of this new Fierz identity. Existing stalled R4B/R4D modules are unrelated and should NOT be recompiled merely because this source-specific certificate passed.

## Bounded next Lean target: source finite Fierz, not a monolithic source charge

**L6-A, finite-source kernel gate (one mathematical obligation):**

For the *literal* \`pairedAlgebraData.gamma\` and \`pairedAlgebraData.gammaTwo\`:

\`forall p:SpaceIndex, w:SpinIndex->Real, r s:SpinIndex,\`
\`sum_i [(sum_alpha w_alpha gamma_i[alpha,r])*(sum_beta w_beta gammaTwo_i,p[beta,s]) + (r<->s)] = (sum_alpha w_alpha²)*gamma_p[r,s] - (if r=s then sum_(alpha,beta)w_alpha gamma_p[alpha,beta]w_beta else 0)\`.

This theorem is the FIRST acceptable end-to-end target. No new axioms, no \`sorry\`, no \`native_decide\`, and \`#print axioms\` must list only the conventional Lean kernel axioms (propext, Classical.choice, Quot.sound) as applicable. Do not substitute an arbitrary second gamma system. Transport the accepted integer signed-permutation facts to real only after isolating sparse row arithmetic.

**Implementation trap discovered in actual source:** \`SU2RealGammaProbe.lean\` declares its signed-permutation helpers \`private\`. A new module cannot assume their names are stable public APIs. Either (A) prove the source Fierz coefficient theorem via **public gamma and Clifford interfaces** and a valid 9D Fierz derivation, or (B) establish a source-preserving, **finite entry certificate** in a controlled new module by unfolding \`FCP.BFSSGamma9.gamma\` with verified acceptable elaborator cost. Do not duplicate an independent nine-gamma definition and claim it discharges the genuine paired source. Do not casually edit the already frozen \`SU2RealGammaProbe.lean\`; that would invalidate accepted source blob/cache identities.

**Bounded strategy:** separate the literal gamma entry check (9*16*16, per basis/pair coefficients) from the ordinary real quadratic-polarization lemma and, separately again, the CAR normal-ordering theorem. Use *one* cached, pinned qualification run for the first finite kernel lemma after source-preserving compilation strategy is decided. Preserve every accepted cache layer by exact source hashes. Do not increase elaborator timeouts blindly. If the finite source identity cannot be compiled without violating source freeze, keep it as external evidence rather than falsely marking it kernel-certified.

**Only after L6-A acceptance**, introduce the source Gauss-square normal-order theorem, with explicit original f=sqrt2 epsilon and theta CAR. The core/ESA and Spin9 spectral claims remain later independent gates. Do not impose the entire spectral theorem on the finite gamma gate.

## Governance and user intent

Project objective is the correct BFSS mathematics and exact source-driven spectral scope, not green workflows per se. All modifications are confined to the active FCP research branch. FCP main and pinned etblink/math / openai/math are untouched. Draft PR #25 is not merged. No new CI was launched for this checkpoint. This is a substantive source alignment and a small kernel-facing mathematical obligation, rather than another proof of known unrelated finite-sum algebra.
