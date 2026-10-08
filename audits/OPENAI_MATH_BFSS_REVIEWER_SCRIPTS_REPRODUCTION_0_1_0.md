# BFSS independent-reviewer numerical scripts — independent rerun record 0.1.0

**Local review date:** 2026-10-07 (US Pacific)
**Disposition:** `THREE_EDITED_REVIEWER_SCRIPTS_EXECUTED_SUCCESSFULLY__NUMERICAL_CLAIMS_REPRODUCED__NO_THEOREM_CERTIFICATION`
**Source theorem:** pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, October 5, 2026 BFSS positive-eigenvalue manuscript.
**Program branch:** `research/openai-math-su2-concrete-potential`.

## Provenance and consent boundary

The owner supplied three attached Python scripts said to be edited copies from the independent Claude review. The reviewer reported changing hard-coded session paths to script-relative paths and ensuring `check_identity.py` saves `gam.npy` only when executed as a main script; the reviewer syntax-checked the edited copies but did not rerun them after editing. This rerun independently confirms that **the uploaded edited bytes** execute. It does not certify identity with the reviewer's earlier, unshared source bytes.

Exact SHA-256 of the received bytes:

| Script | SHA-256 |
|---|---|
| `check_identity.py` | `c1deed0d255cb78ab9812bd40dd72cda1615c125b3a962a43d8c55b0b33a667e` |
| `check2.py` | `93757201b2050ff62b34d558458e88d5a3cdf1b743d9a0d17b6a45b48a399131` |
| `check3.py` | `d79449caf00d1c906318cb15c8a3b54e8436768575c3f8e6c32c491158acc2c1` |

**Publication boundary:** Reviewer scripts were *not* copied into this public FCP repository. This report publishes only script hashes, rerun method and results. Obtain human owner's approval before public redistribution of script sources.

## Execution

- Python **3.13.5**
- NumPy **2.3.5**
- SymPy **1.14.0**
- Files stayed in one working directory; `check2.py` imports `check_identity.py`, triggering the identity checks again before the Fierz and norm calculations.
- Original uploaded Python files were executed without source modifications. For deterministic resource use: `OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 MKL_NUM_THREADS=1 PYTHONUNBUFFERED=1`.
- Commands: `python check_identity.py`, `python check2.py`, `python check3.py`.
- **All three processes exited with status 0**. Running `check_identity.py` as a script created the documented `gam.npy` intermediate file in the working directory; the other files were left unchanged.
- Log files are retained in the execution workspace but have *not* been pushed to FCP.

## Reproduced outputs and scope

### `check_identity.py`

1. Found nine symmetric, pairwise anticommuting real `16×16` matrices and asserted all `81` ordered Clifford relations (the script would stop on failed assertions).
2. Kinetic algebra: printed `sum_alpha A_alpha² = -8 Laplacian : max deviation 0`.
3. Five seeded random configurations: `(1/16) sum W² scalar` matched `V(x)` to displayed decimal precision, with bivector residual 0.
4. Five derivative/cross checks: first-order and scalar cross terms printed 0; maximum among printed values of `|(1/16)cross-B|` was about `1.2e-10`, using centered finite differences with step `1e-6`.
5. All five printed slice-potential comparisons agreed to displayed precision.

The bulk checks (other than explicit gamma assertions) **print residuals** rather than asserting universal identities.

### `check2.py`

1. Three seeded random configurations: Fierz residuals `8.53e-14`, `1.14e-13`, `8.53e-14`.
2. Small three-mode Jordan–Wigner norm-formula diagnostic: `6.277153921428043` vs. `6.277153921428042`.
3. Norm at configuration `x=(e1,0,0)`: `11.313708498984761`.
4. Randomized 300-start, 150-step local ascent estimate: `13.063941886551452`.
5. Orthogonal triad `x_a=e_a/sqrt(3)`: `13.06394529484362`.
6. First Spin(8) weight-coordinate bound calculation: `M=6.0` (a floating-point singular-value computation, not an independent exact representation-theoretic proof).

**Numerical caveat:** The sampled maximum is *not* a proven global upper bound on `C=sup_{|x|=1}‖B(x)‖`. The triad is a tested configuration and hence gives numerical lower-bound evidence for `C`. Therefore the reviewer's suggested explicit thresholds `m≥31`, `λ₂≥38` remain **unverified**. The manuscript needs only existence of finite `C`.

### `check3.py`

1. Compared B4 (Spin(9)) characters with summed D4 (Spin(8)) interlacing characters for **70** highest weights, integral and half-integral, at three seeded random torus points per weight; worst relative deviation: `5.46e-11`.
2. The printed `0` violating interlacing constituents is **true by construction**: `interlacing(lam)` enumerates `nu1` starting at `lam[1]`. The nontrivial numerical result is agreement of the character formulas, not a direct enumeration of all genuine representation constituents independent of the proposed rule.
3. Random orthogonal color substitution produced a numerical gauge-invariance residual `-1.676e-15 + 1.736e-15 i`; this is **one numerical test**, not a symbolic identity over all gauge transformations.
4. SymPy reported `P` annihilated by the defined **16** positive-root operators, and `P` at the specified unit ray equals 1.
5. The script prints `H₁ P/P=-2i`, `H₂ P/P=-2i`, `H₃=H₄=0`. The reviewer's phrase 'weight +2(ε₁+ε₂)' is compatible only with the chosen mapping between anti-Hermitian infinitesimal generators and formal weights (and positive-root convention). **The code does not explicitly prove the mapping**; preserve this as a sign-convention clarification rather than declaring a defect.

## Project Lead disposition

**Upgrade numerical provenance:** previously unprovided scripts are now available and have been rerun successfully, with no material mismatch in their stated numerical conclusions. This supports the independent review’s computational *diagnostics* and the construction-feasibility report. It does not raise the global manuscript to a machine-certified proof or independently reproduce its full spectral/operator theory.

**Remaining checks before claiming a stronger review:**

- Supply or archive the original reviewer-run scripts if bit-for-bit historical reproducibility matters; the provided files were explicitly edited.
- Clarify the Cartan/weight sign convention used by `check3.py` relative to the manuscript’s choice, if the high-weight construction is directly formalized.
- Obtain a proved **upper** bound on the fermion norm coefficient `C` if explicit numerical sector thresholds are to be stated.
- Test gauge/rotation transpose covariance separately; these scripts do **not** close that prior admitted review gap.

Continue with the independently documented **bounded real gamma(9) Lean feasibility gate** only after maintaining this separation. Do not start unbounded Clifford, gauge or full spectral theorem work in response to these scripts alone.

**Maxim:** Protect the quality threshold, not the opportunity.
