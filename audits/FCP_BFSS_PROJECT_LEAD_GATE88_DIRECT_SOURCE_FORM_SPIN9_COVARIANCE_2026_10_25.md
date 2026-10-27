# FCP BFSS — Gate88 source-exact finite B-field covariance and form-first Spin(9) proof strategy

**Date:** October 25, 2026 Pacific / October 26 UTC.  
**Verdict:** exact finite source-tensor diagnostic **PASS**; source-conditional **ordinary mathematical form-invariance route** established; **zero new Lean theorem roots**, global physical Spin(9) lift and associated closed form equivalence remain **unqualified by end-to-end Lean**.

## 1. Live independent evidence

- Exact GitHub Actions [run #40275662240](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40275662240), job `121417753936`, completed/success, not just queued or superficially green. Runner output:
  ```text
  GATE88_ORIGINAL_MATH_AND_RESEARCH_SCRIPT_BYTE_PINS_PASS
  WORKFLOW_PREFLIGHT_SELF_TEST_PASS
  WORKFLOW_SOURCE_PREFLIGHT_PASS gate=88 ...
  SOURCE_GAMMA_CAR_REPRESENTATIVE_9x16_EXACT_PASS
  ORIGINAL_B_TENSOR_SKEW_REAL_27_COORDINATE_BLOCKS_PASS
  SPATIAL_COVARIANCE_LIE_AND_EXACT_QUARTER_TURNS_PASS 972
  GAUGE_COVARIANCE_LIE_AND_EXACT_QUARTER_TURNS_PASS 81
  SPATIAL_GAUGE_LABEL_GENERATORS_COMMUTE_PASS 108
  BOUNDARY: no global Spin48 action, quadratic-form domain or spectral theorem certified
  GATE88_SOURCE_FERMION_TENSOR_EXACT_FINITE_CHECK_PASS_NO_LEAN_THEOREM
  ```
- [Exact source-fidelity Python script](../experiments/openai-math-su2-physical-domain/BFSS_ORIGINAL_FERMION_FIELD_DIRECT_SPIN9_FORM_COVARIANCE_EXACT_CHECK_2026_10_25.py) Git blob `155e982b15fffa195f0e6e561982ee4015bdce9a`, pinned and run in CI with `numpy==2.3.4`. It uses exact signed 64-bit integer matrix calculations, no numerical tolerances, no enormous Fock matrices.
- [Gate88 workflow](../.github/workflows/bfss-form-spin9-b-tensor-exact-gate88.yml) commit `6b722ff4d3cc68097e4827db978a4071f3bb7439`; source-pinned checkout of original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` verifies `Core.lean` Git blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, `DeformedCharge.lean` blob `c27c913c44090100f0c714e3eb34e25205f4d2d3`, original `Core.charge`, `Core.coreForm`, and `DeformedCharge.averaged_core_energy` declaration presence. Workflow YAML syntax/self-tests also pass.
- This **is not** strict Lean theorem acceptance: no candidate `.olean`, `#print axioms`, or a new formal root. Scoped original S3L Gate51–82 sequence remains **77 accepted roots**; Gate87 is red; all-time principal counts are distinct.

## 2. Why the target mathematical claim is materially smaller

The original manuscript defines on the actual SU2-fixed compact smooth core `C`

```text
Q_alpha = -i gamma^i[alpha,beta] theta^a_beta partial_(ia)
     + (1/2)f_abc x_i^b x_j^c gamma^{ij}[alpha,beta] theta^a_beta,
q(f) = (1/16) sum_alpha ||Q_alpha f||².
```

The pinned Lean source's `AlgebraData.averaged_core_energy` already gives a *form expansion* of the normalized sixteen-charge norm into kinetic, bosonic and fermionic terms in the exact source setup, and the qualified FCP `S2C` imports source `G4K9D.sourceUnconditionalCoreForm_equal` as the undeformed `h=1,m=0` bridge. Thus the original-paper scalar differential expression is, by ordinary source CAR/gamma algebra on C,

```text
q(f) = (1/2) ||grad f||²
     + integral V(x)||f(x)||² dx
     + integral <f(x), B(x)f(x)> dx,
V(x)=sum_(a<b)|x^a wedge x^b|²,
B(x)=(i/2)*sqrt(2)*epsilon_abc*x_i^a*gamma^i_(beta delta)*
                theta^b_beta*theta^c_delta.
```

There is substantial previous source-specific exact arithmetic supporting the *explicit identification of the source Lean remainder* with B, notably `BFSS_FORM_AND_HIGH_WEIGHT_EXACT_CHECK_0_1_0.py` (62,208 exact fermionic coefficient comparisons). **But the exact typed identity of `M.deformedFermionField 1 0` with this manuscript's B is not hereby certified as a new Lean theorem**. This is a named formal source-discharge obligation, not an assumption to bury.

**Key change in proof architecture:** the spectral existence argument needs `q(D_g f)=q(f)` and a source-faithful closed form, not separately `D_g Q_alpha D_g^-1 = sum_beta S^{-1}[alpha,beta] Q_beta` for every component. One can prove form invariance via the three *much smaller* scalar/tensor terms while leaving R4O/E3B/E3C original full cubic charge covariance unproved in Lean. The full supercharge covariance remains relevant to other BFSS representation/supersymmetry questions, not a mandatory intermediary for reducing H.

## 3. Direct algebraic fermionic tensor proof, exact signs

Use the ORIGINAL source `SpinIndex=Fin16`, three Pauli-normalized colors, 48 real CAR generators and gamma matrices with `gamma_i^T=gamma_i` and `{gamma_i,gamma_j}=2delta_ij`.

Define for each original coordinate basis `x_i^a` the real **48×48 antisymmetric** tensor
```text
T_(a,i)[(b,beta),(c,delta)] =
                 epsilon(a,b,c)*gamma_i[beta,delta].
```
Then `B(x)=i sqrt(2)/2 * sum_(a,i) x_i^a theta^T T_(a,i) theta`, with the understood ordered CAR bilinear. For a global spatial rotation R in SO9 with matching spinor matrix S in SO16 satisfying `S gamma_i S^T = sum_j R_(j,i) gamma_j`, let L=I3 tensor S on real Fock generator labels. Direct orthogonality and original epsilon invariance yield
```text
T_(R x)= L T_x L^T.
```
At any two-plane `r<s`, with `J_rs[r,s]=-1`, `J_rs[s,r]=+1`, the source-consistent real spinor infinitesimal generator is **K=-gamma_r gamma_s/2**, and the required source tensor infinitesimal equation is
```text
T_(J_rs x) = [I3 tensor K, T_x].
```
For the exact positive-quarter-turn `R_rs` on the nine spatial coordinates, its matching real spinor action is
```text
S_rs = (I16 - gamma_r gamma_s)/sqrt(2).
```
Multiplying away both `1/sqrt(2)` factors gives a completely integer identity for ALL 27 source coordinate tensors:
```text
2*T_(R_rs x) = [I3 tensor (I16-gamma_r gamma_s)]
                * T_x *
                [I3 tensor (I16-gamma_r gamma_s)]^T.
```
The 972 exact spatial cases verify BOTH this and the doubled infinitesimal equation entrywise over 48×48 matrices, without numerical round-off.

**Preserved initial negative diagnostic:** An early local checker temporarily used the opposite sign `(I+gamma_r gamma_s)/sqrt(2)` and failed at spatial plane (0,1), coordinate (0,0), max integer discrepancy 4. Correcting the spinor quarter turn to the original source's `S=(I-gamma_r gamma_s)/sqrt(2)` made **all** source plane checks pass. The error belonged to the candidate diagnostic, **not** to the original BFSS coefficient tensor. Reproduce this sign convention in future source bridges; do not cite the initially red checker as a mathematical counterexample.

For any gauge SO3 color rotation O acting as `O tensor I16` on labels, original epsilon invariance similarly gives
```text
T_(O x) = (O tensor I16) T_x (O tensor I16)^T.
```
The 81 exact gauge-color cases test three plane generators and their exact quarter turns on all 27 coordinate tensors. The two label actions commute: `[O tensor I16, I3 tensor S]=0`; 108 generator-pair checks pass.

The script used the **existing source-registered exact real symmetric Cl9 gamma words**, not an arbitrary substitute for the original CAR or numerical sampling. General validity for any chosen admissible source gamma realization follows algebraically from the Clifford relations and the standard spinor implementation, not merely from one basis's finite test. The test alone does **not construct** the full global `Spin9→Spin48` lift.

## 4. Source-conditional form invariance and its actual group/domain obligations

Assume the genuine global combined spatial/Fock action, defined in the original source, is
```text
(D_g f)(x) = U_g f(R_g^-1 x),
U_g theta U_g^-1 = (I3 tensor S_g) theta,
S_g gamma(v) S_g^T = gamma(R_g v).
```
The product-lift `Spin9 × SU2 → Spin48` of the commuting original 48-real label representation yields commuting gauge and spatial actions **as ordinary covering-group mathematics**, provided the exact sign/action dictionary is discharged in the actual source representation.

On `C_c^infty(R27;F)`, direct gamma-tensor covariance yields `U_g B(y) U_g^-1 = B(R_g y)`. Therefore the fermionic field energy is invariant under D_g by a change of Lebesgue variables. Separately:
- `V(x)=sum_(a<b)|x^a∧x^b|²` is invariant under SO9 because it is made of spatial Euclidean wedges.
- `||grad f||²` is invariant under the orthogonal R_g and constant unitary U_g, with no x-dependent derivative terms.
- The spatial action commutes with the original gauge group and maps the actual gauge-invariant compact smooth core C onto itself.

Using the **original source core-form identity**, these facts imply `q(D_g f)=q(f)` on the genuine physical core. No all-sixteen cubic-charge covariance is used. This is an ordinary-mathematics proof **conditional on the source's exact group implementation and explicit B identification**; not a Lean-certified statement for the giant source typed operator.

Form closure is standard and source-faithful: the original simultaneous charge operator on dense C is closable by symmetry of each Q; `q=||Q f||²/16` closes in its graph norm, with the physical H defined by the associated nonnegative form. If D_g preserves C and q on C, it is an isometry in the form norm and extends to the closure. Strong continuity on C follows from source smooth compact functions and finite-dimensional continuous group matrices, and follows on the completed form domain by isometric density. The compact-group character projector P_lambda is a bounded form-norm operator, maps C to C via smooth compact-group integration and common compact support, and therefore P_lambda C is a true q_lambda-form core. Variational uniqueness for `(H+1)^-1` then gives source physical resolvent commutation with the full Spin9 action and with each P_lambda.

**No false premise promotion:** constructing the global original unitary U_g and discharging B-source matching are actual named obligations in Lean. Ordinary covering-group analysis alone is not proof that the present source Lean modules define such a global action or establish these type-specific identifications. The result is **a shorter dependency graph**, not unconditional spectrum proof.

## 5. Priority and acceptance handoff

| Workstream | Evidence state | Next bounded original-source obligation |
|---|---|---|
| H4G1B independent-to-historical eigenpair equivalence | accepted conditional original-hypothesis transfer | no new duplicate packaging |
| S2C source normalized core lower bound | historically accepted, source `averaged_core_energy` imported | identify exact original fermion remainder B as a typed concrete operator |
| Gate88 explicit 48-label B covariance | exact finite PASS; no Lean theorem | source-level finite spin bivector and B identification lemma |
| Global `Spin9×SU2→Spin48` action on actual 48-Majorana F | ordinary covering-group construction; partial actual finite-plane Lean | qualify real original source group action, source signs, smooth physical core action |
| Closed form q invariance, P_lambda reduction | conditional ordinary theorem, not newly kernel-certified | transport qualified B and spatial kinetic/wedge invariant identities to actual form closure |
| Spin9→Spin8 oscillator and lambda2>14 sectors | strong prior ordinary/source evidence, 64-cell exact rational check | independent original physical closed-form and isotype completion |

**Decision:** Do NOT try Gate89 as another proof-only `exact`/`simpa` variation of original sixfold source cubic charge. The high-value route is a *source-form* B tensor interface, whose tiny 48-label component was checked in Gate88, followed by global group/action and form-closure bridges. A new Lean gate is justified only if its proof target is an independently source-faithful, low-normalization-load declaration with exact hypotheses and real accepted ancestry. Source explicit signs, unmodified physical Hilbert domain, frozen original math, and permitted Lean axioms `{propext, Classical.choice, Quot.sound}` stay mandatory.

**Final scientific boundary:** no unconditional positive normalizable eigenpair existence, no full-H positive mass gap, no accepted new Lean roots, and no modifications to canonical FCP main, original `etblink/math`, or draft PR #25.


## Corrective addendum — actual assembled gamma representation (2026-10-27)

The Gate88 workflow remains independently green for its *own* 9×16 real Clifford representative; **the words used in that finite test are not entrywise the accepted `pairedAlgebraData.gamma`**. Gate88 used `IIIX IIIZ ZZYY XZYY YXXY YXZY IYIY YZIY IXYY`, whereas accepted `SU2RealGammaProbe.gamma` in the actual concrete/paired `AlgebraData 2` is `JIIJ JIJX JXJZ JZJZ JJIZ JJXX JJZX XIII ZIII`. In the 2026-10-27 [source-exact follow-up #40475067910](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40475067910), parsing the *true Lean signed-permutation source* confirmed that zero of the nine gamma matrices equals its same-index Gate88 gamma, even up to sign. The full 81 Clifford pairs, 36 original-source gamma-plane covariance checks, and independently cross-checked 36 Pfaffians all passed for the correct source matrices.

This **corrects only Gate88's source-fidelity characterization**, not the general Clifford-form covariance formula or its accepted CI record. Gate88 is not an original paired-source gamma **entrywise** certificate. The complete new [scoped source-gamma/Spin9 center audit](./FCP_BFSS_ACTUAL_SOURCE_GAMMA_SPIN9_CENTER_ORIENTATION_2026_10_27.md) preserves exact literal proof boundaries, qualified central parity inference, and the absent global Spin9 lift. +0 Lean roots.
