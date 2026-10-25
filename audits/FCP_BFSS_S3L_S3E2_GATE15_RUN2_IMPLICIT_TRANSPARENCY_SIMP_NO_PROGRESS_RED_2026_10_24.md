# BFSS S3E2 Gate #15 run #2 — TWO scalar selector `simp` no-progress failures at Lean implicit transparency, red

**October 24 Pacific / October 25 UTC 2026.** **STRICT RED, 0/3 new roots**, no accepted S3E2 source coefficient contraction, no child cache.

## Original source/compiler evidence

[Run #40156182510](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40156182510), job `121058001931`, workflow source SHA `0e58c2f600f556c5dcf95aeb24e8a817926b611d`, **completed/failure**. Immutable original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original and repaired source S3E2 hashes, exactly three proof-only diff checks, full accepted Gate13 qualified 117-path ancestor cache restoration and original S3C/S3D/S3E1 import object checks ALL PASSED.

V2 proof-only source `experiments/openai-math-su2-physical-domain/recovery/SU2BFSSPhysicalDomainS3E2SameColorActualGammaCoefficientContractionProbe.lean`, Git blob `6f875bd79654815de82ff4967058e7ee730f336e` (original theorem statement unchanged). Real `lake env lean -DwarningAsError=true` produced:

```text
SU2BFSSPhysicalDomainS3E2SameColorActualGammaCoefficientContractionProbe.lean:38:2:
  error: `simp` made no progress
  Note: The target expression is not type-correct under the `implicit`
  transparency level; Full error: function expected J α

SU2BFSSPhysicalDomainS3E2SameColorActualGammaCoefficientContractionProbe.lean:37:23:
  error: This simp argument is unused: smul_zero
  Hint: simp only [smul_ite]

SU2BFSSPhysicalDomainS3E2SameColorActualGammaCoefficientContractionProbe.lean:58:6:
  error: `simp` made no progress
  Note: target not type-correct under `implicit` transparency;
  Full error: function expected J x

SU2BFSSPhysicalDomainS3E2SameColorActualGammaCoefficientContractionProbe.lean:57:27:
  error: This simp argument is unused: smul_zero
  Hint: simp only [smul_ite]
```

No new compiler diagnostic occurs in final coefficient proof separately; all three `#print axioms` reports contain `sorryAx` owing to the two unfinished source delta contractions, therefore **0/3 accepted**, qualified S3E2 cache save skipped.

Original diagnostic artifact `bfss-s3l-s3e2-selector-gate15-40156182510`, ID **12584720914**, uploaded SHA256 `7ad0c78f70e7df57bbb6ddfbf1c65afdbc55ae65bc611e4aa4d4175fe1bfb062`. The eleven preceding `warning:` lines were pre-Lean Lake auxiliary package-status reports and NOT proof warnings. Do not disable simp linter/Lean warnings to force a green. Qualify this as **genuine Lean term-elaboration and tactic-normalization failure**, not missing original source parents, not a counterexample to source Majorana CAR, and not a proved gamma contraction.

## Distinguish earlier reds, preserve ancestry

[Gate14 #40155625059](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40155625059) had three original tactic failures (selector sum residual twice and `rw [sub_smul]` failed). [Gate15 run #1 #40156145858](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40156145858) was RED **before Lean** from double Python source-diff newline-escape defect. Its workflow scanner error repaired before run #2. Keep those failure classes separate.

The accepted original genuine Fermion 2 same-color raw CAR commutator [Gate13](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40155001241) remains a **new mathematical theorem**. Gates7/8/9/11 historically requalified 28 source declarations (not 28 new roots).

## Better V3 tactic: per-term actual Kronecker normalization

Avoid the fail-prone `simp only [smul_ite,smul_zero]; simp` sequence entirely. For each fixed outer spin index α or β prove pointwise equality of the actual original weighted selector

```text
((J α β : ℝ) : ℂ) • (if β=γ then pairedTheta α A else 0)
 = if β=γ then ((J α γ : ℝ) : ℂ) • pairedTheta α A else 0
```

using explicit `by_cases h : β=γ`; in true branch substitute `β=γ` (source type/index equality), in false branch use `simp [h]`. Reassemble using `Finset.sum_congr`, then simplify `∑ β, if β=γ then a else 0` with no nonconstant matrix coefficient in the sum. Same method for α-selector after proven `Finset.sum_comm`. The final V2 explicit typed `sub_smul` has no independent new compiler error and can be kept. All theorem statements and original CAR source operator are unchanged. New V3 source must be pinned and compiled strict before acceptance; no unproved root promotion.

**Open** global Spin(9) full source cubic covariance, physical closed quadratic-form reduction, high-sector spectral compactness and actual positive normalizable BFSS eigenvector existence. Original math/main/PR25 unchanged. Issue29 open.
