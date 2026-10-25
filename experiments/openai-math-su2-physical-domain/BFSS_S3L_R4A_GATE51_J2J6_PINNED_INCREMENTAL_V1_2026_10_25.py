#!/usr/bin/env python3
"""Strict R4A import-ancestry Gate51: rebase the already accepted Gate50 proof-only source chain and compile only J2-J6 from the exact original R4A closure.

Choose unique canonical sources for every import. S3L3A and S3L3B each use
one pinned proof-only compatibility candidate, checking exact original bytes
and mathematical statement preservation before compiling canonical modules.

Strict checkpoint: no R4A/R4D root is accepted unless explicitly compiled.
Requires pinned original mathematics and a qualified parent source cache.
"""
import pathlib,re,subprocess,sys,shutil,time
from collections import defaultdict

TARGET="SU2BFSSPhysicalDomainS3L5K2R4AThreeIndexOriginalSourceSumTransportProbe"
SHA="ef803c1b5c62a819e568c5a645c5e622ec1a0d6f"
PREFIX="BFSS_S3L_R4A_GATE51_J2J6_STRICT_SOURCE_CHECKPOINT"
LIMIT=5
PATCH_STEM="SU2BFSSPhysicalDomainS3L3ASourcePositionDerivativeCommutatorProbe"
CANONICAL_S3L3A="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L3ASourcePositionDerivativeCommutatorProbe.lean"
COMPAT_S3L3A="experiments/openai-math-su2-physical-domain/recovery/S3L3AOriginalSourceProofOnlyDeprecationGate28V4.lean"
PIN_CANONICAL_S3L3A="aa47f20d0c14374659aee0bf24c6361e464386ad"
PIN_COMPAT_S3L3A="a1586fdcbadd829ac7d57cfb4f8c2dab7ae655c1"
OLD_PROOF="  simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply,\n    ContinuousLinearMap.smulRight_apply]"
NEW_PROOF="  simp only [add_apply, smul_apply,\n    ContinuousLinearMap.smulRight_apply]"
PATCH_STEM_B="SU2BFSSPhysicalDomainS3L3BSourceOperatorHeisenbergProbe"
CANONICAL_S3L3B="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L3BSourceOperatorHeisenbergProbe.lean"
COMPAT_S3L3B="experiments/openai-math-su2-physical-domain/recovery/S3L3BOriginalSourceIsolatedConditionSimpGate29V8.lean"
PIN_CANONICAL_S3L3B="19a7eb6a710fe6d4b531dc0eefba7ee27ed21dca"
PIN_COMPAT_S3L3B="77e1f88788981fa0a34134e5e0670be624d5ba61"
OLD_B_PROOF="  by_cases h : (i, A) = (k, B)\n  · have hr : (k, B) = (i, A) := h.symm\n    simp only [if_pos h, if_pos hr, Complex.ofReal_one, one_smul,\n      LinearMap.id_apply]\n  · have hn : (k, B) ≠ (i, A) := Ne.symm h\n    simp only [if_neg h, if_neg hn, Complex.ofReal_zero, zero_smul,\n      LinearMap.zero_apply]\n    -- Pointwise zero on the original test-function space is definitional.\n    rfl"
NEW_B_PROOF="  -- Isolate each conditional coefficient; do not install equalities in\n  -- opposite orientations in the same simplification context.\n  classical\n  by_cases h : (i, A) = (k, B)\n  · have hr : (k, B) = (i, A) := h.symm\n    have hc :\n        (if (k, B) = (i, A) then (1 : ℝ) else 0) = 1 := by\n      simp [hr]\n    have ho :\n        (if (i, A) = (k, B) then\n          (LinearMap.id : SmoothCore 2 →ₗ[ℂ] SmoothCore 2) else 0) =\n        LinearMap.id := by\n      simp [h]\n    rw [hc, ho]\n    simp only [Complex.ofReal_one, one_smul, LinearMap.id_apply]\n  · have hn : (k, B) ≠ (i, A) := Ne.symm h\n    have hc :\n        (if (k, B) = (i, A) then (1 : ℝ) else 0) = 0 := by\n      simp [hn]\n    have ho :\n        (if (i, A) = (k, B) then\n          (LinearMap.id : SmoothCore 2 →ₗ[ℂ] SmoothCore 2) else 0) =\n        0 := by\n      simp [h]\n    rw [hc, ho]\n    simp only [Complex.ofReal_zero, zero_smul, LinearMap.zero_apply]\n    rfl"
PATCH_STEM_C="SU2BFSSPhysicalDomainS3L3CSourceOrbitalPositionCommutatorProbe"
CANONICAL_S3L3C="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L3CSourceOrbitalPositionCommutatorProbe.lean"
COMPAT_S3L3C="experiments/openai-math-su2-physical-domain/recovery/S3L3COriginalSourceExplicitReverseInequalityGate31V12.lean"
PIN_CANONICAL_S3L3C="25b4c92b94b6d2e1f708eeb446ec5fda094400f1"
PIN_COMPAT_S3L3C="2c12dd05f737836456983548c7393088d23fec3b"
OLD_C_PROOF="  by_cases hkj : k = j\n  · subst k\n    simp [hij, hij.symm]\n  · by_cases hki : k = i\n    · subst k\n      simp [hij, hij.symm]\n    · simp [hkj, hki, Ne.symm hkj, Ne.symm hki]"
NEW_C_PROOF="  -- Source convention: the k=j and k=i branches have distinct\n  -- condition orientations; expose j ≠ i locally, not as a simp rewrite.\n  by_cases hkj : k = j\n  · subst k\n    simp [hij]\n  · by_cases hki : k = i\n    · subst k\n      have hji : j ≠ i := Ne.symm hij\n      simp [hij, hji]\n    · simp [hkj, hki, Ne.symm hkj, Ne.symm hki]"
CANONICAL_S3L3D="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L3DSourceMixedDerivativeCommutatorProbe.lean"
PIN_CANONICAL_S3L3D="dc3badcb9731872359d457dfd7c91cebb5aaff25"
PATCH_STEM_D="SU2BFSSPhysicalDomainS3L3DSourceMixedDerivativeCommutatorProbe"
COMPAT_S3L3D="experiments/openai-math-su2-physical-domain/recovery/S3L3DOriginalSourceUnnecessarySimpaGate32V14.lean"
PIN_COMPAT_S3L3D="c44c8b4f18e8ea7ef5b3b7b1a99b6df76a3f4298"
OLD_D_PROOF="  simpa only [vi, vj]"
NEW_D_PROOF="  simp only [vi, vj]"
PATCH_STEM_E="SU2BFSSPhysicalDomainS3L3ESourceOrbitalDerivativeCommutatorProbe"
CANONICAL_S3L3E="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L3ESourceOrbitalDerivativeCommutatorProbe.lean"
COMPAT_S3L3E="experiments/openai-math-su2-physical-domain/recovery/S3L3EOriginalSourceExplicitReverseInequalityGate33V15.lean"
PIN_CANONICAL_S3L3E="7e0bcefc0c950eb3e8dfb8cfb739d521c6520f80"
PIN_COMPAT_S3L3E="7d8f831b0bde76df665b85186708c2fc5124dedc"
OLD_E_PROOF="  by_cases hkj : k = j\n  · subst k\n    simp [hij, hij.symm]\n  · by_cases hki : k = i\n    · subst k\n      simp [hij, hij.symm]\n    · simp [hkj, hki, Ne.symm hkj, Ne.symm hki]"
NEW_E_PROOF="  -- Reuse the separately verified source orbital-position index split:\n  -- the reverse j = i condition needs its own local inequality.\n  by_cases hkj : k = j\n  · subst k\n    simp [hij]\n  · by_cases hki : k = i\n    · subst k\n      have hji : j ≠ i := Ne.symm hij\n      simp [hij, hji]\n    · simp [hkj, hki, Ne.symm hkj, Ne.symm hki]"
CANONICAL_S3L4B="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L4BOriginalSmoothCorePostcompCalculusProbe.lean"
PIN_CANONICAL_S3L4B="605a2e852916aa12abff59800281d7510f0f68ae"
PATCH_STEM_L4B="SU2BFSSPhysicalDomainS3L4BOriginalSmoothCorePostcompCalculusProbe"
COMPAT_S3L4B="experiments/openai-math-su2-physical-domain/recovery/S3L4BOriginalSourceDeprecatedCLMSimpGate34V17.lean"
PIN_COMPAT_S3L4B="4b384c4b4596a6cceb1e75cf3dcf0d8ef6de5b4a"
OLD_L4B_PROOF_ONE="  simp only [ContinuousLinearMap.sub_apply, ContinuousLinearMap.mul_apply]"
NEW_L4B_PROOF_ONE="  simp only [sub_apply, mul_apply_eq_comp]"
OLD_L4B_PROOF_TWO="  simp only [ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply]"
NEW_L4B_PROOF_TWO="  simp only [sum_apply, smul_apply]"
CANONICAL_S3L4C="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L4CSourceAlgebraDataFermionActionInterfaceProbe.lean"
PIN_CANONICAL_S3L4C="1fe7e6072206340d2cb59f1ff5ca662a400e29e8"
CANONICAL_S3E="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe.lean"
PIN_CANONICAL_S3E="2066ef5a07f55b20149b4aa9ac45488988719773"
PATCH_STEM_S3E="SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe"
COMPAT_S3E="experiments/openai-math-su2-physical-domain/recovery/S3EOriginalSourceDeprecatedIfBranchGate36V21.lean"
PIN_COMPAT_S3E="c335e3cc428eb5e2dc78ed17c2d9e5d3bb09c0d7"
OLD_S3E_PROOF="            · simp only [if_pos h]\n            · simp only [if_neg h, hz, Finset.sum_const_zero]"
NEW_S3E_PROOF="            · simp only [ite_eq_left h]\n            · simp only [ite_eq_right h, hz, Finset.sum_const_zero]"
CANONICAL_S3L4D="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L4DConcreteSourceFockSpinCovarianceProbe.lean"
PIN_CANONICAL_S3L4D="99f0c55b7d90f2a7c32c8689549c3cef13f0e5f6"
CANONICAL_S3L5A="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5ASourceChargeKineticMonomialProbe.lean"
PIN_CANONICAL_S3L5A="acec445f6ff7e807c98f3b3f4e00830234435748"
CANONICAL_S3L5B="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5BActualKineticMonomialCovarianceProbe.lean"
PIN_CANONICAL_S3L5B="2e096db47e42f05554723ae687bb4a771769d7f1"
CANONICAL_S3L5C="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5CSourceOrbitalFermionActionCommutationProbe.lean"
PIN_CANONICAL_S3L5C="5c101b62272bfb1da15fde065e445b1ab7fc0c14"
CANONICAL_S3L5D="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5DSourceOrbitalKineticMonomialProbe.lean"
PIN_CANONICAL_S3L5D="8d29d5018f55f46f65e2655cb5c082ead32f5dcb"
CANONICAL_S3L5F="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5FParametricCombinedKineticMonomialProbe.lean"
PIN_CANONICAL_S3L5F="bea9838c55fd7ab583620b33475bbcd9e9519a98"
CANONICAL_S3L5G="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5GConcreteCombinedKineticMonomialProbe.lean"
PIN_CANONICAL_S3L5G="854c2fc6717b209f189bbcaf0337f26431f3747c"
CANONICAL_S3L0="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L0SourceKineticSpinorCoefficientProbe.lean"
PIN_CANONICAL_S3L0="a9d76a5056570bc560811f3ceae1f57336a6372c"
CANONICAL_S3L5H="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5HFiniteSumAndCoefficientEntryProbe.lean"
PIN_CANONICAL_S3L5H="eb31ef5b5b4411d6a70a8cfc544d70478e508df0"
CANONICAL_S3L5I1="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5I1ExactTripleWeightedSumTransportProbe.lean"
PIN_CANONICAL_S3L5I1="9d3d7b51617d5edac61df68b4eaa8eeb72110531"
CANONICAL_S3L5I2A="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5I2ANamedKineticSourceSumProbe.lean"
PIN_CANONICAL_S3L5I2A="e53c9ef9aa6449ca14b3491020df7b957c306b17"
CANONICAL_S3L5I2B="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5I2BOriginalSourceKineticChargeBridgeProbe.lean"
PIN_CANONICAL_S3L5I2B="09b6db43c107f7c297c840eb6d654b454817dc55"
CANONICAL_S3L5I3="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5I3ActualPairedKineticChargeProbe.lean"
PIN_CANONICAL_S3L5I3="67276dbf96974a0709ba5ab6159fde48cdd8d60c"
CANONICAL_J1="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5J1SourceSpatialReindexAndGammaCoefficientProbe.lean"
PIN_J1="966d79fa3f033bbfadfbf3ff37a979168db6476e"
COMPAT_J1="experiments/openai-math-su2-physical-domain/recovery/S3L5J1OriginalSourceUnusedSimpArgsGate50V2.lean"
PIN_COMPAT_J1="1a685c513948809d0c24971bd9d964648ad79b2e"
OLD_J1_PROOF_A="    · subst k\n      simp [hij, Ne.symm hij]"
NEW_J1_PROOF_A="    · subst k\n      simp [hij]"
OLD_J1_PROOF_B="      · subst k\n        simp [hij, hki, Ne.symm hij]"
NEW_J1_PROOF_B="      · subst k\n        simp [hki]"
ALLOWED={"propext","Classical.choice","Quot.sound"}
def git(*argv):
    return subprocess.check_output(["git",*argv],text=True).strip()

def main():
    if len(sys.argv)!=3:
        raise ValueError("usage: script ORIGINAL_LEAN_ROOT LOG_DIR")
    math=pathlib.Path(sys.argv[1]).resolve()
    logs=pathlib.Path(sys.argv[2]).resolve()
    logs.mkdir(parents=True,exist_ok=True)
    canonical_patch=pathlib.Path(CANONICAL_S3L3A)
    compat_patch=pathlib.Path(COMPAT_S3L3A)
    for p,expectedsha in ((canonical_patch,PIN_CANONICAL_S3L3A),
                          (compat_patch,PIN_COMPAT_S3L3A)):
        assert git("rev-parse","HEAD:"+str(p))==expectedsha,("PATCH_GIT_SHA",p)
        assert git("hash-object","--no-filters",str(p))==expectedsha,("PATCH_WORKTREE_SHA",p)
    canonical_text=canonical_patch.read_text()
    recovered_text=compat_patch.read_text()
    assert canonical_text.count(OLD_PROOF)==1,"ORIGINAL_S3L3A_PATCH_ANCHOR_NOT_UNIQUE"
    assert recovered_text==canonical_text.replace(OLD_PROOF,NEW_PROOF),"S3L3A_PATCH_NOT_EXACT_PROOF_ONLY"
    (logs/"S3L3A-proof-only-source-provenance.txt").write_text(
      "CANONICAL "+str(canonical_patch)+" "+PIN_CANONICAL_S3L3A+"\n"
      "COMPAT "+str(compat_patch)+" "+PIN_COMPAT_S3L3A+"\n"
      "EXACT_DIFFERENCE deprecated add_apply/smul_apply names only\n")
    print(PREFIX+"_PROOF_ONLY_S3L3A_DECLARATION_IDENTICAL",flush=True)
    canonical_b=pathlib.Path(CANONICAL_S3L3B)
    compat_b=pathlib.Path(COMPAT_S3L3B)
    for p,expectedsha in ((canonical_b,PIN_CANONICAL_S3L3B),
                          (compat_b,PIN_COMPAT_S3L3B)):
        assert git("rev-parse","HEAD:"+str(p))==expectedsha,("S3L3B_PATCH_GIT_SHA",p)
        assert git("hash-object","--no-filters",str(p))==expectedsha,("S3L3B_PATCH_WORKTREE_SHA",p)
    canonical_b_text=canonical_b.read_text()
    compat_b_text=compat_b.read_text()
    assert canonical_b_text.count(OLD_B_PROOF)==1, "S3L3B_ORIGINAL_PROOF_ANCHOR_NOT_UNIQUE"
    expected_b_text=canonical_b_text.replace(OLD_B_PROOF,NEW_B_PROOF)
    assert compat_b_text==expected_b_text,"S3L3B_PATCH_CHANGED_ORIGINAL_STATEMENT_OR_EXTRA_SOURCE"
    (logs/"S3L3B-proof-only-source-provenance.txt").write_text(
        "CANONICAL "+str(canonical_b)+" "+PIN_CANONICAL_S3L3B+"\n"
        "COMPAT "+str(compat_b)+" "+PIN_COMPAT_S3L3B+"\n"
        "EXACT_DIFFERENCE original local conditional proof rewritten to isolated nondeprecated simp equations\n")
    print(PREFIX+"_PROOF_ONLY_S3L3B_DECLARATION_IDENTICAL",flush=True)
    canonical_c=pathlib.Path(CANONICAL_S3L3C)
    compat_c=pathlib.Path(COMPAT_S3L3C)
    for p,expectedsha in ((canonical_c,PIN_CANONICAL_S3L3C),
                          (compat_c,PIN_COMPAT_S3L3C)):
        assert git("rev-parse","HEAD:"+str(p))==expectedsha,("S3L3C_PATCH_GIT_SHA",p)
        assert git("hash-object","--no-filters",str(p))==expectedsha,("S3L3C_PATCH_WORKTREE_SHA",p)
    canonical_c_text=canonical_c.read_text()
    compat_c_text=compat_c.read_text()
    assert canonical_c_text.count(OLD_C_PROOF)==1,"S3L3C_PROOF_ANCHOR_NOT_UNIQUE"
    assert compat_c_text==canonical_c_text.replace(OLD_C_PROOF,NEW_C_PROOF),"S3L3C_CHANGED_ORIGINAL_THEOREM"
    (logs/"S3L3C-proof-only-source-provenance.txt").write_text(
        "CANONICAL "+str(canonical_c)+" "+PIN_CANONICAL_S3L3C+"\n"
        "COMPAT "+str(compat_c)+" "+PIN_COMPAT_S3L3C+"\n"
        "EXACT_DIFFERENCE replace only final S3L3C index proof with explicit reversed inequality\n")
    print(PREFIX+"_PROOF_ONLY_S3L3C_DECLARATION_IDENTICAL",flush=True)
    canonical_d=pathlib.Path(CANONICAL_S3L3D)
    assert git("rev-parse","HEAD:"+str(canonical_d))==PIN_CANONICAL_S3L3D,"S3L3D_ORIGINAL_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_d))==PIN_CANONICAL_S3L3D,"S3L3D_ORIGINAL_WORKTREE_CHANGED"
    print(PREFIX+"_S3L3D_IMMUTABLE_ORIGINAL_SOURCE",PIN_CANONICAL_S3L3D,flush=True)
    compat_d=pathlib.Path(COMPAT_S3L3D)
    assert git("rev-parse","HEAD:"+str(compat_d))==PIN_COMPAT_S3L3D,"S3L3D_PROOF_ONLY_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(compat_d))==PIN_COMPAT_S3L3D,"S3L3D_PROOF_ONLY_WORKTREE_CHANGED"
    canonical_d_text=canonical_d.read_text()
    compat_d_text=compat_d.read_text()
    assert canonical_d_text.count(OLD_D_PROOF)==1,"S3L3D_ORIGINAL_TACTIC_NOT_UNIQUE"
    assert compat_d_text==canonical_d_text.replace(OLD_D_PROOF,NEW_D_PROOF),"S3L3D_SOURCE_CHANGED_BEYOND_PROOF_TACTIC"
    (logs/"S3L3D-proof-only-source-provenance.txt").write_text(
        "CANONICAL "+str(canonical_d)+" "+PIN_CANONICAL_S3L3D+"\n"
        "COMPAT "+str(compat_d)+" "+PIN_COMPAT_S3L3D+"\n"
        "EXACT_DIFFERENCE only simpa only [vi, vj] → simp only [vi, vj]\n")
    print(PREFIX+"_PROOF_ONLY_S3L3D_DECLARATION_IDENTICAL",flush=True)
    canonical_e=pathlib.Path(CANONICAL_S3L3E)
    compat_e=pathlib.Path(COMPAT_S3L3E)
    for pp,expected in ((canonical_e,PIN_CANONICAL_S3L3E),
                        (compat_e,PIN_COMPAT_S3L3E)):
        assert git("rev-parse","HEAD:"+str(pp))==expected,("S3L3E_GIT_BLOB_NOT_PINNED",pp)
        assert git("hash-object","--no-filters",str(pp))==expected,("S3L3E_WORKTREE_NOT_PINNED",pp)
    orig_e=canonical_e.read_text()
    recovery_e=compat_e.read_text()
    assert orig_e.count(OLD_E_PROOF)==1,"S3L3E_ORIGINAL_PROOF_ANCHOR_NOT_UNIQUE"
    assert recovery_e==orig_e.replace(OLD_E_PROOF,NEW_E_PROOF),"S3L3E_MATH_OR_THEOREM_CHANGED"
    (logs/"S3L3E-proof-only-source-provenance.txt").write_text(
        "CANONICAL "+str(canonical_e)+" "+PIN_CANONICAL_S3L3E+"\n"
        "COMPAT "+str(compat_e)+" "+PIN_COMPAT_S3L3E+"\n"
        "EXACT_DIFFERENCE final spatial index branch proof only, mirrored qualified S3L3C\n")
    print(PREFIX+"_PROOF_ONLY_S3L3E_DECLARATION_IDENTICAL",flush=True)
    canonical_l4b=pathlib.Path(CANONICAL_S3L4B)
    assert git("rev-parse","HEAD:"+str(canonical_l4b))==PIN_CANONICAL_S3L4B,"S3L4B_ORIGINAL_GIT_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_l4b))==PIN_CANONICAL_S3L4B,"S3L4B_ORIGINAL_WORKTREE_CHANGED"
    print(PREFIX+"_S3L4B_IMMUTABLE_ORIGINAL_SOURCE",PIN_CANONICAL_S3L4B,flush=True)
    compat_l4b=pathlib.Path(COMPAT_S3L4B)
    assert git("rev-parse","HEAD:"+str(compat_l4b))==PIN_COMPAT_S3L4B,"S3L4B_COMPAT_GIT_CHANGED"
    assert git("hash-object","--no-filters",str(compat_l4b))==PIN_COMPAT_S3L4B,"S3L4B_COMPAT_WORKTREE_CHANGED"
    original_l4b=canonical_l4b.read_text()
    compatible_l4b=compat_l4b.read_text()
    assert original_l4b.count(OLD_L4B_PROOF_ONE)==1,"S3L4B_FIRST_PROOF_NOT_UNIQUE"
    assert original_l4b.count(OLD_L4B_PROOF_TWO)==1,"S3L4B_SECOND_PROOF_NOT_UNIQUE"
    assert compatible_l4b==original_l4b.replace(OLD_L4B_PROOF_ONE,NEW_L4B_PROOF_ONE).replace(
      OLD_L4B_PROOF_TWO,NEW_L4B_PROOF_TWO),"S3L4B_SOURCE_CHANGED_NOT_PROOF_ONLY"
    (logs/"S3L4B-proof-only-source-provenance.txt").write_text(
       "ORIGINAL "+str(canonical_l4b)+" "+PIN_CANONICAL_S3L4B+"\n"+
       "COMPAT "+str(compat_l4b)+" "+PIN_COMPAT_S3L4B+"\n"+
       "EXACT two simp-lemma API updates only; all theorem bodies and declarations preserved\n")
    print(PREFIX+"_PROOF_ONLY_S3L4B_DECLARATION_IDENTICAL",flush=True)
    canonical_l4c=pathlib.Path(CANONICAL_S3L4C)
    assert git("rev-parse","HEAD:"+str(canonical_l4c))==PIN_CANONICAL_S3L4C,"S3L4C_GIT_BLOB_NOT_SOURCE"
    assert git("hash-object","--no-filters",str(canonical_l4c))==PIN_CANONICAL_S3L4C,"S3L4C_WORKTREE_CHANGED"
    print(PREFIX+"_S3L4C_UNMODIFIED_ORIGINAL_SOURCE",PIN_CANONICAL_S3L4C,flush=True)
    canonical_s3e=pathlib.Path(CANONICAL_S3E)
    assert git("rev-parse","HEAD:"+str(canonical_s3e))==PIN_CANONICAL_S3E,"S3E_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_s3e))==PIN_CANONICAL_S3E,"S3E_WORKTREE_CHANGED"
    print(PREFIX+"_S3E_UNMODIFIED_ORIGINAL_SOURCE",PIN_CANONICAL_S3E,flush=True)
    compat_s3e=pathlib.Path(COMPAT_S3E)
    assert git("rev-parse","HEAD:"+str(compat_s3e))==PIN_COMPAT_S3E,"S3E_COMPAT_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(compat_s3e))==PIN_COMPAT_S3E,"S3E_COMPAT_WORKTREE_CHANGED"
    original_s3e=canonical_s3e.read_text()
    compatible_s3e=compat_s3e.read_text()
    assert original_s3e.count(OLD_S3E_PROOF)==1,"S3E_ORIGINAL_PROOF_NOT_UNIQUE"
    assert compatible_s3e==original_s3e.replace(OLD_S3E_PROOF,NEW_S3E_PROOF),"S3E_CHANGED_BEYOND_PROOF_API"
    (logs/"S3E-proof-only-source-provenance.txt").write_text(
        "ORIGINAL "+str(canonical_s3e)+" "+PIN_CANONICAL_S3E+"\n"+
        "COMPAT "+str(compat_s3e)+" "+PIN_COMPAT_S3E+"\n"+
        "EXACT change if_pos/if_neg to ite_eq_left/right proof API only\n")
    print(PREFIX+"_S3E_ORIGINAL_DECLARATION_IDENTICAL_PROOF_ONLY_COMPAT",PIN_COMPAT_S3E,flush=True)
    canonical_l4d=pathlib.Path(CANONICAL_S3L4D)
    assert git("rev-parse","HEAD:"+str(canonical_l4d))==PIN_CANONICAL_S3L4D,"S3L4D_ORIGINAL_GIT_SHA_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_l4d))==PIN_CANONICAL_S3L4D,"S3L4D_ORIGINAL_WORKTREE_CHANGED"
    print(PREFIX+"_S3L4D_UNMODIFIED_ORIGINAL_SOURCE",PIN_CANONICAL_S3L4D,flush=True)
    canonical_l5a=pathlib.Path(CANONICAL_S3L5A)
    assert git("rev-parse","HEAD:"+str(canonical_l5a))==PIN_CANONICAL_S3L5A,"S3L5A_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_l5a))==PIN_CANONICAL_S3L5A,"S3L5A_WORKTREE_CHANGED"
    print(PREFIX+"_S3L5A_IMMUTABLE_ORIGINAL_SOURCE",PIN_CANONICAL_S3L5A,flush=True)
    canonical_l5b=pathlib.Path(CANONICAL_S3L5B)
    assert git("rev-parse","HEAD:"+str(canonical_l5b))==PIN_CANONICAL_S3L5B,"S3L5B_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_l5b))==PIN_CANONICAL_S3L5B,"S3L5B_WORKTREE_CHANGED"
    print(PREFIX+"_S3L5B_UNMODIFIED_ORIGINAL_SOURCE",PIN_CANONICAL_S3L5B,flush=True)
    canonical_l5c=pathlib.Path(CANONICAL_S3L5C)
    assert git("rev-parse","HEAD:"+str(canonical_l5c))==PIN_CANONICAL_S3L5C,"S3L5C_ORIGINAL_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_l5c))==PIN_CANONICAL_S3L5C,"S3L5C_ORIGINAL_WORKTREE_CHANGED"
    print(PREFIX+"_S3L5C_UNMODIFIED_ORIGINAL_SOURCE",PIN_CANONICAL_S3L5C,flush=True)
    canonical_l5d=pathlib.Path(CANONICAL_S3L5D)
    assert git("rev-parse","HEAD:"+str(canonical_l5d))==PIN_CANONICAL_S3L5D,"S3L5D_ORIGINAL_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_l5d))==PIN_CANONICAL_S3L5D,"S3L5D_ORIGINAL_WORKTREE_CHANGED"
    print(PREFIX+"_S3L5D_IMMUTABLE_ORIGINAL_SOURCE",PIN_CANONICAL_S3L5D,flush=True)
    canonical_l5f=pathlib.Path(CANONICAL_S3L5F)
    assert git("rev-parse","HEAD:"+str(canonical_l5f))==PIN_CANONICAL_S3L5F,"S3L5F_ORIGINAL_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_l5f))==PIN_CANONICAL_S3L5F,"S3L5F_ORIGINAL_WORKTREE_CHANGED"
    print(PREFIX+"_S3L5F_IMMUTABLE_ORIGINAL_SOURCE",PIN_CANONICAL_S3L5F,flush=True)
    canonical_l5g=pathlib.Path(CANONICAL_S3L5G)
    assert git("rev-parse","HEAD:"+str(canonical_l5g))==PIN_CANONICAL_S3L5G,"S3L5G_ORIGINAL_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_l5g))==PIN_CANONICAL_S3L5G,"S3L5G_ORIGINAL_WORKTREE_CHANGED"
    print(PREFIX+"_S3L5G_IMMUTABLE_ORIGINAL_SOURCE",PIN_CANONICAL_S3L5G,flush=True)
    canonical_l0=pathlib.Path(CANONICAL_S3L0)
    assert git("rev-parse","HEAD:"+str(canonical_l0))==PIN_CANONICAL_S3L0,"S3L0_ORIGINAL_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_l0))==PIN_CANONICAL_S3L0,"S3L0_ORIGINAL_WORKTREE_CHANGED"
    print(PREFIX+"_S3L0_IMMUTABLE_ORIGINAL_SOURCE",PIN_CANONICAL_S3L0,flush=True)
    canonical_l5h=pathlib.Path(CANONICAL_S3L5H)
    assert git("rev-parse","HEAD:"+str(canonical_l5h))==PIN_CANONICAL_S3L5H,"S3L5H_ORIGINAL_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_l5h))==PIN_CANONICAL_S3L5H,"S3L5H_ORIGINAL_WORKTREE_CHANGED"
    print(PREFIX+"_S3L5H_IMMUTABLE_ORIGINAL_SOURCE",PIN_CANONICAL_S3L5H,flush=True)
    canonical_i1=pathlib.Path(CANONICAL_S3L5I1)
    assert git("rev-parse","HEAD:"+str(canonical_i1))==PIN_CANONICAL_S3L5I1,"S3L5I1_ORIGINAL_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_i1))==PIN_CANONICAL_S3L5I1,"S3L5I1_ORIGINAL_WORKTREE_CHANGED"
    print(PREFIX+"_S3L5I1_UNMODIFIED_ORIGINAL_SOURCE",PIN_CANONICAL_S3L5I1,flush=True)
    canonical_i2a=pathlib.Path(CANONICAL_S3L5I2A)
    assert git("rev-parse","HEAD:"+str(canonical_i2a))==PIN_CANONICAL_S3L5I2A,"S3L5I2A_ORIGINAL_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_i2a))==PIN_CANONICAL_S3L5I2A,"S3L5I2A_ORIGINAL_WORKTREE_CHANGED"
    print(PREFIX+"_S3L5I2A_IMMUTABLE_ORIGINAL_SOURCE",PIN_CANONICAL_S3L5I2A,flush=True)
    canonical_i2b=pathlib.Path(CANONICAL_S3L5I2B)
    assert git("rev-parse","HEAD:"+str(canonical_i2b))==PIN_CANONICAL_S3L5I2B,"S3L5I2B_ORIGINAL_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_i2b))==PIN_CANONICAL_S3L5I2B,"S3L5I2B_ORIGINAL_WORKTREE_CHANGED"
    print(PREFIX+"_S3L5I2B_UNMODIFIED_ORIGINAL_SOURCE",PIN_CANONICAL_S3L5I2B,flush=True)
    canonical_i3=pathlib.Path(CANONICAL_S3L5I3)
    assert git("rev-parse","HEAD:"+str(canonical_i3))==PIN_CANONICAL_S3L5I3,"S3L5I3_ORIGINAL_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_i3))==PIN_CANONICAL_S3L5I3,"S3L5I3_ORIGINAL_WORKTREE_CHANGED"
    print(PREFIX+"_S3L5I3_UNMODIFIED_ORIGINAL_SOURCE",PIN_CANONICAL_S3L5I3,flush=True)
    j1=pathlib.Path(CANONICAL_J1)
    assert git("rev-parse","HEAD:"+str(j1))==PIN_J1
    assert git("hash-object","--no-filters",str(j1))==PIN_J1
    compat_j1=pathlib.Path(COMPAT_J1)
    assert git("rev-parse","HEAD:"+str(compat_j1))==PIN_COMPAT_J1,"S3L5J1_RECOVERY_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(compat_j1))==PIN_COMPAT_J1,"S3L5J1_RECOVERY_WORKTREE_CHANGED"
    original_j1=j1.read_text()
    recovery_j1=compat_j1.read_text()
    assert original_j1.count(OLD_J1_PROOF_A)==1,"S3L5J1_FIRST_PROOF_ANCHOR_NONUNIQUE"
    assert original_j1.count(OLD_J1_PROOF_B)==1,"S3L5J1_SECOND_PROOF_ANCHOR_NONUNIQUE"
    expected_j1=original_j1.replace(OLD_J1_PROOF_A,NEW_J1_PROOF_A).replace(OLD_J1_PROOF_B,NEW_J1_PROOF_B)
    assert recovery_j1==expected_j1,"S3L5J1_RECOVERY_ALTERS_ORIGINAL_MATHEMATICAL_STATEMENT"
    (logs/"S3L5J1-exact-proof-only-provenance.txt").write_text(
        "ORIGINAL "+str(j1)+" "+PIN_J1+"\\n"
        "PROOF_ONLY "+str(compat_j1)+" "+PIN_COMPAT_J1+"\\n"
        "EXACT_DIFFERENCE two original simp argument lists only; three unused items removed; no theorem statement edits\\n")
    print(PREFIX+"_S3L5J1_EXACT_ORIGINAL_STATEMENT_PRESERVED",PIN_J1,PIN_COMPAT_J1,flush=True)
    paths=defaultdict(list)
    for p in pathlib.Path("experiments").rglob("*.lean"):
        paths[p.stem].append(p)
    if len(paths[TARGET])!=1:
        raise ValueError("target source missing or duplicated")
    p=paths[TARGET][0]
    assert git("rev-parse","HEAD:"+str(p))==SHA
    assert git("hash-object","--no-filters",str(p))==SHA
    order=[];mark={};data={};deps={};collisions=[]
    def canonical_source(stem):
        candidates=paths[stem]
        if len(candidates)==1:
            return candidates[0]
        # A recovery source is a distinct historical variant and must not
        # silently shadow the original non-recovery experiment source.
        originals=[p for p in candidates if "recovery" not in p.parts]
        if len(originals)!=1:
            raise ValueError("UNRESOLVED_DUPLICATE_ORIGINAL "+stem+" "+str(candidates))
        canonical=originals[0]
        def declaration_tail(path):
            src=path.read_text()
            n=src.find("\nnamespace ")
            if n<0:raise ValueError("DUPLICATE_SOURCE_WITHOUT_NAMESPACE "+str(path))
            return src[n:]
        declaration=declaration_tail(canonical)
        for alt in candidates:
            if alt==canonical:continue
            # Competing recovery proofs may deliberately use different Lean
            # tactics. They are not interchangeable with canonical code.
            # Record their divergence, but NEVER import/copy/use recovery.
            same=declaration_tail(alt)==declaration
            status=("SAME_DECLARATION_BODY" if same
                    else "DIFFERENT_DECLARATION_OR_PROOF_BODY")
            collisions.append((stem,str(canonical),git("rev-parse","HEAD:"+str(canonical)),
                               str(alt),git("rev-parse","HEAD:"+str(alt)),status))
            print(PREFIX+"_CANONICAL_NON_RECOVERY_SOURCE",stem,str(canonical),
                  "IGNORED_RECOVERY_VARIANT",str(alt),status,flush=True)
        return canonical
    def visit(stem):
        if mark.get(stem)==2:return
        if mark.get(stem)==1:raise ValueError("IMPORT_CYCLE "+stem)
        p=canonical_source(stem)
        mark[stem]=1
        src=p.read_text()
        h=git("hash-object","--no-filters",str(p))
        if h!=git("rev-parse","HEAD:"+str(p)):
            raise ValueError("SOURCE_MUTATION "+stem)
        ds=[x for m in re.findall(r"(?m)^import\s+([^\n]+)",src)
              for x in m.split() if not x.startswith("--")]
        data[stem]=(p,src,h);deps[stem]=ds
        for dep in ds:
            if dep in paths:visit(dep)
        mark[stem]=2;order.append(stem)
    visit(TARGET)
    (logs/"duplicate-source-provenance.txt").write_text(
        "\n".join(" | ".join(record) for record in collisions)+"\n")
    targetdir=math/".lake/build/lib/lean"
    missing=[n for n in order if not (targetdir/(n+".olean")).is_file()]
    (logs/"source-manifest.txt").write_text(
        "\n".join(n+" "+data[n][2]+(" REBUILD" if n in missing else " CACHED")
                  for n in order)+"\n")
    print(PREFIX+"_IMPORT_CLOSURE",len(order),"MISSING",len(missing),flush=True)
    for n in missing:print(PREFIX+"_MISSING",n,data[n][2],flush=True)
    if len(missing)>80:
        print(PREFIX+"_BOUNDED_STOP_TOO_MANY_MODULES",len(missing),flush=True)
        return 3
    batch=missing[:LIMIT]
    # Fail closed if the Gate50 cache is not the exact source-ordered parent.
    # A parent-cache miss must NOT silently rebuild old Gate28/S3L3B proofs.
    expected_remaining=["SU2BFSSPhysicalDomainS3L5J2ComplexGammaCoefficientProbe","SU2BFSSPhysicalDomainS3L5J3SourceSpinorDoubleSumTransportProbe","SU2BFSSPhysicalDomainS3L5J4SourceFermionSumCompositionProbe","SU2BFSSPhysicalDomainS3L5J5SourceKineticResponseSplitProbe","SU2BFSSPhysicalDomainS3L5J6SourceOrbitalFixedIndexReindexProbe","SU2BFSSPhysicalDomainS3L5J7OriginalFullResponseCoefficientTransportProbe","SU2BFSSPhysicalDomainS3L5J8PairedComplexResponseCoefficientContractionProbe","SU2BFSSPhysicalDomainS3L5J9ActualKineticFreeSpinorCovarianceProbe","SU2BFSSPhysicalDomainS3L5K1SourceCubicPositionPairProbe","SU2BFSSPhysicalDomainS3L5K2AOriginalFermionActionCovarianceProbe","SU2BFSSPhysicalDomainS3L5K2R1AOriginalFermionSpinorResponseTransportProbe","SU2BFSSPhysicalDomainS3L2SourceGammaTwoSpatialCovarianceProbe","SU2BFSSPhysicalDomainS3L5K3OriginalCubicGammaTwoCoefficientProbe","SU2BFSSPhysicalDomainS3L5K2R1BOriginalWeightedFermionResponseProbe","SU2BFSSPhysicalDomainS3L5K2R1COriginalGammaTwoSpinorCoefficientProbe","SU2BFSSPhysicalDomainS3L5K2R1DOriginalWeightedFermionCoefficientBridgeProbe","SU2BFSSPhysicalDomainS3L5K2R4AThreeIndexOriginalSourceSumTransportProbe"]
    if missing!=expected_remaining:
        print(PREFIX+"_PARENT_OR_IMPORT_CLOSURE_MISMATCH",
              "actual_missing",missing,"expected_missing",expected_remaining,flush=True)
        return 14
    if batch!=expected_remaining[:LIMIT]:
        print(PREFIX+"_BAD_FIRST_BATCH",batch,flush=True)
        return 14
    print(PREFIX+"_SELECTED_QUALIFIED_BATCH",",".join(batch),flush=True)
    assert data["SU2BFSSPhysicalDomainS3L3DSourceMixedDerivativeCommutatorProbe"][0]==canonical_d, "S3L3D_CANONICAL_GRAPH_MISMATCH"
    assert data[PATCH_STEM_E][0]==canonical_e,"S3L3E_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L4BOriginalSmoothCorePostcompCalculusProbe"][0]==canonical_l4b,"S3L4B_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L4CSourceAlgebraDataFermionActionInterfaceProbe"][0]==canonical_l4c,"S3L4C_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe"][0]==canonical_s3e,"S3E_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L4DConcreteSourceFockSpinCovarianceProbe"][0]==canonical_l4d,"S3L4D_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L5ASourceChargeKineticMonomialProbe"][0]==canonical_l5a,"S3L5A_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L5BActualKineticMonomialCovarianceProbe"][0]==canonical_l5b,"S3L5B_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L5CSourceOrbitalFermionActionCommutationProbe"][0]==canonical_l5c,"S3L5C_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L5DSourceOrbitalKineticMonomialProbe"][0]==canonical_l5d,"S3L5D_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L5FParametricCombinedKineticMonomialProbe"][0]==canonical_l5f,"S3L5F_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L5GConcreteCombinedKineticMonomialProbe"][0]==canonical_l5g,"S3L5G_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L0SourceKineticSpinorCoefficientProbe"][0]==canonical_l0,"S3L0_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L5HFiniteSumAndCoefficientEntryProbe"][0]==canonical_l5h,"S3L5H_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L5I1ExactTripleWeightedSumTransportProbe"][0]==canonical_i1,"S3L5I1_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L5I2ANamedKineticSourceSumProbe"][0]==canonical_i2a,"S3L5I2A_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L5I2BOriginalSourceKineticChargeBridgeProbe"][0]==canonical_i2b,"S3L5I2B_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L5I3ActualPairedKineticChargeProbe"][0]==canonical_i3,"S3L5I3_CANONICAL_GRAPH_MISMATCH"
    assert data["SU2BFSSPhysicalDomainS3L5J1SourceSpatialReindexAndGammaCoefficientProbe"][0]==j1,"S3L5J1_CANONICAL_GRAPH_MISMATCH"
    for n in order:
        p,src,_=data[n]
        if re.search(r"(?m)^[ \t]*(?:sorry|admit|axiom)(?:\s|$)|\bsorryAx\b",src):
            print(PREFIX+"_FORBIDDEN_SOURCE",n,flush=True);return 4
        if n==PATCH_STEM:
            if p!=canonical_patch:
                raise ValueError("S3L3A_CANONICAL_GRAPH_MISMATCH")
            shutil.copyfile(compat_patch,math/(n+".lean"))
            print(PREFIX+"_S3L3A_EXACT_PROOF_ONLY_COMPATIBILITY_REPLACEMENT",PIN_COMPAT_S3L3A,flush=True)
        elif n==PATCH_STEM_B:
            if p!=canonical_b:
                raise ValueError("S3L3B_CANONICAL_GRAPH_MISMATCH")
            shutil.copyfile(compat_b,math/(n+".lean"))
            print(PREFIX+"_S3L3B_EXACT_PROOF_ONLY_COMPATIBILITY_REPLACEMENT",PIN_COMPAT_S3L3B,flush=True)
        elif n==PATCH_STEM_C:
            if p!=canonical_c:
                raise ValueError("S3L3C_CANONICAL_GRAPH_MISMATCH")
            shutil.copyfile(compat_c,math/(n+".lean"))
            print(PREFIX+"_S3L3C_EXACT_PROOF_ONLY_COMPATIBILITY_REPLACEMENT",PIN_COMPAT_S3L3C,flush=True)
        elif n==PATCH_STEM_D:
            if p!=canonical_d:
                raise ValueError("S3L3D_CANONICAL_GRAPH_MISMATCH")
            shutil.copyfile(compat_d,math/(n+".lean"))
            print(PREFIX+"_S3L3D_EXACT_PROOF_ONLY_COMPATIBILITY_REPLACEMENT",PIN_COMPAT_S3L3D,flush=True)
        elif n==PATCH_STEM_E:
            if p!=canonical_e:
                raise ValueError("S3L3E_CANONICAL_GRAPH_MISMATCH")
            shutil.copyfile(compat_e,math/(n+".lean"))
            print(PREFIX+"_S3L3E_EXACT_PROOF_ONLY_COMPATIBILITY_REPLACEMENT",PIN_COMPAT_S3L3E,flush=True)
        elif n==PATCH_STEM_L4B:
            if p!=canonical_l4b:
                raise ValueError("S3L4B_CANONICAL_GRAPH_MISMATCH")
            shutil.copyfile(compat_l4b,math/(n+".lean"))
            print(PREFIX+"_S3L4B_EXACT_PROOF_ONLY_COMPATIBILITY_REPLACEMENT",PIN_COMPAT_S3L4B,flush=True)
        elif n==PATCH_STEM_S3E:
            if p!=canonical_s3e:
                raise ValueError("S3E_CANONICAL_GRAPH_MISMATCH")
            shutil.copyfile(compat_s3e,math/(n+".lean"))
            print(PREFIX+"_S3E_EXACT_PROOF_ONLY_COMPATIBILITY_REPLACEMENT",PIN_COMPAT_S3E,flush=True)
        elif n=="SU2BFSSPhysicalDomainS3L5J1SourceSpatialReindexAndGammaCoefficientProbe":
            assert p==j1,"S3L5J1_CANONICAL_SOURCE_PATH_MISMATCH"
            shutil.copyfile(compat_j1,math/(n+".lean"))
            print(PREFIX+"_S3L5J1_EXACT_PROOF_ONLY_COMPATIBILITY_REPLACEMENT",PIN_COMPAT_J1,flush=True)
        else:
            shutil.copyfile(p,math/(n+".lean"))
    start=time.monotonic()
    for n in order:
        if n not in batch:continue
        if time.monotonic()-start>520:
            print(PREFIX+"_TOTAL_RESOURCE_BOUND",n,flush=True);return 5
        for dep in deps[n]:
            if dep in paths and not (targetdir/(dep+".olean")).is_file():
                print(PREFIX+"_MISSING_DIRECT_IMPORT",n,dep,flush=True);return 6
        p,src,_=data[n]
        expected=re.findall(r"(?m)^#print axioms (\S+)",src)
        if not expected:
            print(PREFIX+"_MISSING_AXIOM_REPORT",n,flush=True);return 7
        # Keep all previously accepted predecessor modules at the original
        # 85-second bound; extend ONLY the newly measured genuine S3E frontier.
        is_s3e=(n=="SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe")
        timeout_sec=240 if is_s3e else 85
        cmd=["timeout","--signal=TERM","--kill-after=5s",str(timeout_sec)+"s","lake","env","lean",
             "-DwarningAsError=true","-o",str(targetdir/(n+".olean")),n+".lean"]
        print(PREFIX+"_COMPILE_BEGIN",n,"budget_seconds",timeout_sec,flush=True)
        module_started=time.monotonic()
        r=subprocess.run(cmd,cwd=math,text=True,stdout=subprocess.PIPE,
                         stderr=subprocess.STDOUT)
        elapsed=time.monotonic()-module_started
        (logs/(n+".log")).write_text(r.stdout)
        (logs/(n+".timing.txt")).write_text(
          "source="+n+"\nelapsed_seconds="+str(round(elapsed,3))+
          "\nbudget_seconds="+str(timeout_sec)+"\nexit="+str(r.returncode)+"\n")
        print(PREFIX+"_MEASURED_COMPILE_SECONDS",n,round(elapsed,3),"exit",r.returncode,flush=True)
        if r.returncode:
            kind="BOUNDED_TIMEOUT" if r.returncode==124 else "SOURCE_COMPILER_FAILURE"
            print(PREFIX+"_"+kind,n,"exit",r.returncode,flush=True)
            print(PREFIX+"_FIRST_LEAN_ERROR",n,"exit",r.returncode,flush=True)
            print(r.stdout[-11000:],flush=True);return 8
        reports=re.findall(r"'([^']+)' (?:depends on axioms: \[([^\]]*)\]|does not depend on any axioms)",r.stdout)
        actual=[name.rsplit(".",1)[-1] for name,_ in reports]
        if actual!=expected:
            print(PREFIX+"_REPORT_MISMATCH",n,expected,actual,flush=True);return 9
        for name,a in reports:
            axioms={x.strip() for x in a.split(",") if x.strip()}
            if not axioms<=ALLOWED:
                print(PREFIX+"_BAD_AXIOMS",name,axioms,flush=True);return 10
        pkgstatus=re.compile(r"warning: ([a-z0-9-]+): repository '([^']+)' has local changes")
        for line in r.stdout.splitlines():
            match=pkgstatus.fullmatch(line)
            if match and match.group(2).endswith("/upstream-math/lean/.lake/packages/"+match.group(1)):
                continue
            if "warning:" in line:
                print(PREFIX+"_UNAPPROVED_WARNING",n,line,flush=True);return 11
        if any(x in r.stdout for x in ("sorryAx","error:","unknownIdentifier")):
            print(PREFIX+"_UNAPPROVED_COMPILER_ERROR",n,flush=True);return 11
        if not (targetdir/(n+".olean")).is_file():
            print(PREFIX+"_NO_COMPILED_OBJECT",n,flush=True);return 12
        print(PREFIX+"_FRESH_QUALIFIED",n,"roots",len(actual),flush=True)
    if not all((targetdir/(n+".olean")).is_file() for n in batch):
        print(PREFIX+"_BATCH_OBJECT_MISSING",flush=True);return 13
    (logs/"qualified-batch.txt").write_text("\n".join(
        n+" "+data[n][2]+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L3A if n==PATCH_STEM else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L3B if n==PATCH_STEM_B else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L3C if n==PATCH_STEM_C else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L3D if n==PATCH_STEM_D else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L3E if n==PATCH_STEM_E else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L4B if n==PATCH_STEM_L4B else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3E if n==PATCH_STEM_S3E else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_J1 if n=="SU2BFSSPhysicalDomainS3L5J1SourceSpatialReindexAndGammaCoefficientProbe" else "")
        for n in batch)+"\n")
    if (targetdir/(TARGET+".olean")).is_file():
        print(PREFIX+"_R4A_ROOT_ACTUALLY_COMPILED",flush=True)
    else:
        print(PREFIX+"_INCREMENTAL_CHECKPOINT_ONLY_R4A_NOT_ACCEPTED",flush=True)
    print(PREFIX+"_PASS_NEW_COMPILED_MODULES",len(batch),flush=True)
    return 0

if __name__=="__main__":
    sys.exit(main())
