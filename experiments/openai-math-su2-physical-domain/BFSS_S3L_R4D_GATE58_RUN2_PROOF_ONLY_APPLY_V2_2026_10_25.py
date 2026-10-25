#!/usr/bin/env python3
"""Strict Gate58 Run2: source-exact R4D alternative proof-only tactic apply of R4A split; retain unchanged original theorem, original Gate57/Gate23 ancestry, strict Lean and axioms.

Choose unique canonical sources for every import. S3L3A and S3L3B each use
one pinned proof-only compatibility candidate, checking exact original bytes
and mathematical statement preservation before compiling canonical modules.

Strict checkpoint: no R4A/R4D root is accepted unless explicitly compiled.
Requires pinned original mathematics and a qualified parent source cache.
"""
import pathlib,re,subprocess,sys,shutil,time
from collections import defaultdict

TARGET="SU2BFSSPhysicalDomainS3L5K2R4DNamedSourceAssemblyProbe"
SHA="1a56b2055ff4ed3c1a227bce3910e974876c5774"
PREFIX="BFSS_S3L_R4D_GATE58_RUN2_PROOF_ONLY_APPLY_STRICT"
LIMIT=50
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
CANONICAL_J6="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5J6SourceOrbitalFixedIndexReindexProbe.lean"
PIN_CANONICAL_J6="d506f062532b4afb80928422a87465071fe27f97"
COMPAT_J6="experiments/openai-math-su2-physical-domain/recovery/S3L5J6OriginalSourceUnusedSimpArgsGate51V3.lean"
PIN_COMPAT_J6="9451626dea032bb99a8f66f9954d493896feef3f"
OLD_J6_PROOF_A="      simp [hkj, hki, hij, LinearMap.comp_apply]"
NEW_J6_PROOF_A="      simp [hki, hij, LinearMap.comp_apply]"
OLD_J6_PROOF_B="      simp [hkj, hki, LinearMap.comp_apply]"
NEW_J6_PROOF_B="      simp [hkj, hki]"
CANONICAL_J8="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5J8PairedComplexResponseCoefficientContractionProbe.lean"
PIN_CANONICAL_J8="525165460c0126c303f8950c3f5223682612012e"
COMPAT_J8="experiments/openai-math-su2-physical-domain/recovery/S3L5J8OriginalSourceUnusedSimpArgGate52V2.lean"
PIN_COMPAT_J8="8d0ebd6ee6d00d3ff279915a2c2bef871dd5016b"
OLD_J8_PROOF="    · simp [hki, hkj, kineticWeight, mul_neg]"
NEW_J8_PROOF="    · simp [hkj, kineticWeight, mul_neg]"
CANONICAL_S3L2="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L2SourceGammaTwoSpatialCovarianceProbe.lean"
PIN_CANONICAL_S3L2="b9d2912e4112d11db3746f80f1f5d9744b27cd32"
COMPAT_S3L2="experiments/openai-math-su2-physical-domain/recovery/S3L2OriginalSourceUnusedSimpArgsGate53V2.lean"
PIN_COMPAT_S3L2="f79d5435456c14acdf7f26dc3c51a32855892380"
OLD_S3L2_PROOF="  simp only [mul_smul_comm, smul_mul_assoc, mul_sub, sub_mul,\n    mul_add, add_mul, smul_sub, smul_add, Matrix.mul_assoc]"
NEW_S3L2_PROOF="  simp only [mul_smul_comm, smul_mul_assoc, mul_sub, sub_mul,\n    smul_sub, smul_add, Matrix.mul_assoc]"
CANONICAL_R3A="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5K2R3AOriginalGammaTwoSpatialReindexProbe.lean"
PIN_CANONICAL_R3A="102727a91ead388a25b383c8b6f52ea74877e4e0"
COMPAT_R3A="experiments/openai-math-su2-physical-domain/recovery/S3L5K2R3AOriginalSourceProofOnlyLean4341Gate55V4.lean"
PIN_COMPAT_R3A="240bf427b77527bc872fab9c1688d8e02ba90b37"
OLD_R3A_A="simpa only [sourceGammaVariation, if_neg hij, if_pos rfl,"
NEW_R3A_A="simpa only [sourceGammaVariation, ite_eq_right hij, ite_eq_left rfl,"
OLD_R3A_B="simp [sourceGammaVariation, AlgebraData.gammaTwo, hij, Ne.symm hij]"
NEW_R3A_B="simp [sourceGammaVariation, AlgebraData.gammaTwo, Ne.symm hij]"
OLD_R3A_C="simp only [smul_add, smul_sub, sub_eq_add_neg]"
NEW_R3A_C="simp only [smul_add, sub_eq_add_neg]"
CANONICAL_R2B="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5K2R2BOrderedSourcePositionPairReindexProbe.lean"
PIN_CANONICAL_R2B="782169f64bb96d80f844379e30edf7b294f5a3e5"
COMPAT_R2B="experiments/openai-math-su2-physical-domain/recovery/S3L5K2R2BOriginalSourceProofOnlyLean4341Gate56V1.lean"
PIN_COMPAT_R2B="acb3f90e3e49fd9c64cc27bec78c359adfcf8f28"
R2B_PROOF_CHANGES=[
 ("simp only [if_neg hkj, if_pos hki]", "simp only [ite_eq_right hkj, ite_eq_left hki]"),
 ("simp only [if_neg hkj, if_neg hki]", "simp only [ite_eq_right hkj, ite_eq_right hki]"),
 ("simp only [if_neg hlj, if_pos hli]", "simp only [ite_eq_right hlj, ite_eq_left hli]"),
 ("simp only [if_neg hlj, if_neg hli]", "simp only [ite_eq_right hlj, ite_eq_right hli]"),
 ("simp only [ite_eq_right hkj, ite_eq_right hki]\n      apply LinearMap.ext\n      intro f\n      simp [LinearMap.comp_apply]",
  "simp only [ite_eq_right hkj, ite_eq_right hki]\n      apply LinearMap.ext\n      intro f\n      simp"),
 ("simp only [ite_eq_right hlj, ite_eq_right hli]\n      apply LinearMap.ext\n      intro f\n      simp [LinearMap.comp_apply]",
  "simp only [ite_eq_right hlj, ite_eq_right hli]\n      apply LinearMap.ext\n      intro f\n      simp")
]
CANONICAL_R4D="experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5K2R4DNamedSourceAssemblyProbe.lean"
PIN_CANONICAL_R4D="1a56b2055ff4ed3c1a227bce3910e974876c5774"
COMPAT_R4D="experiments/openai-math-su2-physical-domain/recovery/S3L5K2R4DOriginalNamedAssemblyProofOnlyApplyGate58Run2V2.lean"
PIN_COMPAT_R4D="3798db5dc3e54b3e254b11736c1701aeaaae66da"
OLD_R4D_PROOF="      exact sourceThreeSum_weightedResponse_split\n        (fun k l γ =>\n          (((originalCubicStructureWeight A B C *\n            pairedAlgebraData.gammaTwo k l α γ : ℝ) : ℂ)))\n        (fun k l γ =>\n          (sourceCubicFermionVariation i j γ A).comp\n            ((position (N := 2) k B).comp (position (N := 2) l C)))\n        (fun k l γ =>\n          (pairedAlgebraData.fermionAction γ A).comp\n            ((sourcePositionVariation i j k B).comp\n              (position (N := 2) l C)) +\n          (pairedAlgebraData.fermionAction γ A).comp\n            ((position (N := 2) k B).comp\n              (sourcePositionVariation i j l C)))\n"
NEW_R4D_PROOF="      apply sourceThreeSum_weightedResponse_split\n"
ALLOWED={"propext","Classical.choice","Quot.sound"}
def git(*argv):
    return subprocess.check_output(["git",*argv],text=True).strip()

def mask_lean_comments_and_strings(source):
    """Mask Lean line/block comments and string literals, preserving newlines."""
    result=[]; i=0; depth=0; line=False; quoted=False; escaped=False
    while i<len(source):
        c=source[i]
        pair=source[i:i+2]
        if line:
            if c=="\n":
                line=False
                result.append("\n")
            else:
                result.append(" ")
            i+=1;continue
        if depth:
            if pair=="/-":
                depth+=1;result.extend("  ");i+=2;continue
            if pair=="-/":
                depth-=1;result.extend("  ");i+=2;continue
            result.append("\n" if c=="\n" else " ");i+=1;continue
        if quoted:
            if escaped:escaped=False
            elif c=="\\":escaped=True
            elif c=='"':quoted=False
            result.append("\n" if c=="\n" else " ");i+=1;continue
        if pair=="--":
            line=True;result.extend("  ");i+=2;continue
        if pair=="/-":
            depth=1;result.extend("  ");i+=2;continue
        if c=='"':
            quoted=True;result.append(" ");i+=1;continue
        result.append(c);i+=1
    if depth or quoted:
        raise ValueError("UNTERMINATED_LEAN_BLOCK_COMMENT_OR_STRING")
    return "".join(result)

def has_forbidden_lean_declaration(source):
    code=mask_lean_comments_and_strings(source)
    return re.search(r"(?m)^[ \t]*(?:sorry|admit|axiom)(?:\s|$)|\bsorryAx\b",code) is not None

def verify_comment_scanner():
    good=[
        "/-!\naxiom audit. R2C original source\n-/\ntheorem t : True := by trivial",
        "/- parent /- nested axiom bad -/ sorry -/\ntheorem t : True := by trivial",
        "-- axiom broken\ntheorem t : True := by trivial",
        'def innocent := "sorryAx axiom admit"\ntheorem t : True := by trivial',
        'theorem t : True := by\n  /- sorry -/ trivial',
        '-- ordinary\naxiomatic',
    ]
    bad=["axiom invented : False", "theorem bad : True := by\n  sorry",
         "theorem bad : True := by\n  admit", "theorem bad : True := by\n  exact sorryAx",
         "/- comment -/\naxiom after : False", "-- comment\n  sorry"]
    assert all(not has_forbidden_lean_declaration(t) for t in good),"COMMENT_SCANNER_GOOD_REJECTED"
    assert all(has_forbidden_lean_declaration(t) for t in bad),"COMMENT_SCANNER_BAD_ACCEPTED"
    try:
        mask_lean_comments_and_strings("/- open comment")
    except ValueError:
        pass
    else:
        raise AssertionError("COMMENT_SCANNER_UNTERMINATED_ACCEPTED")

def main():
    verify_comment_scanner()
    print(PREFIX+"_COMMENT_SAFE_SOURCE_SCANNER_SELFTEST_PASS",flush=True)
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
    original_j6_path=pathlib.Path(CANONICAL_J6)
    recovery_j6_path=pathlib.Path(COMPAT_J6)
    assert git("rev-parse","HEAD:"+str(original_j6_path))==PIN_CANONICAL_J6,"J6_ORIGINAL_SOURCE_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(original_j6_path))==PIN_CANONICAL_J6,"J6_ORIGINAL_SOURCE_WORKTREE_CHANGED"
    assert git("rev-parse","HEAD:"+str(recovery_j6_path))==PIN_COMPAT_J6,"J6_PROOF_ONLY_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(recovery_j6_path))==PIN_COMPAT_J6,"J6_PROOF_ONLY_WORKTREE_CHANGED"
    original_j6=original_j6_path.read_text()
    recovered_j6=recovery_j6_path.read_text()
    assert original_j6.count(OLD_J6_PROOF_A)==1,"J6_FIRST_PROOF_ANCHOR_NONUNIQUE"
    assert original_j6.count(OLD_J6_PROOF_B)==1,"J6_SECOND_PROOF_ANCHOR_NONUNIQUE"
    expected_j6=original_j6.replace(OLD_J6_PROOF_A,NEW_J6_PROOF_A).replace(OLD_J6_PROOF_B,NEW_J6_PROOF_B)
    assert recovered_j6==expected_j6,"J6_RECOVERY_ALTERS_SOURCE_BEYOND_TWO_UNUSED_SIMP_ARGS"
    (logs/"S3L5J6-exact-proof-only-provenance.txt").write_text(
        "ORIGINAL "+str(original_j6_path)+" "+PIN_CANONICAL_J6+"\n"
        "PROOF_ONLY "+str(recovery_j6_path)+" "+PIN_COMPAT_J6+"\n"
        "EXACT_DIFFERENCE two unused-simp argument removals only; theorem statements preserved\n")
    print(PREFIX+"_J6_EXACT_ORIGINAL_STATEMENTS_PRESERVED",PIN_CANONICAL_J6,PIN_COMPAT_J6,flush=True)
    canonical_j8=pathlib.Path(CANONICAL_J8)
    compat_j8=pathlib.Path(COMPAT_J8)
    assert git("rev-parse","HEAD:"+str(canonical_j8))==PIN_CANONICAL_J8
    assert git("hash-object","--no-filters",str(canonical_j8))==PIN_CANONICAL_J8
    assert git("rev-parse","HEAD:"+str(compat_j8))==PIN_COMPAT_J8
    assert git("hash-object","--no-filters",str(compat_j8))==PIN_COMPAT_J8
    old_j8=canonical_j8.read_text()
    new_j8=compat_j8.read_text()
    assert old_j8.count(OLD_J8_PROOF)==1
    assert new_j8==old_j8.replace(OLD_J8_PROOF,NEW_J8_PROOF),"J8_SOURCE_NOT_PROOF_ONLY"
    (logs/"S3L5J8-exact-proof-only-provenance.txt").write_text("original "+PIN_CANONICAL_J8+"\nproof-only "+PIN_COMPAT_J8+"\n")
    print(PREFIX+"_J8_EXACT_DECLARATION_PRESERVED",PIN_CANONICAL_J8,PIN_COMPAT_J8,flush=True)
    canonical_s3l2=pathlib.Path(CANONICAL_S3L2)
    compat_s3l2=pathlib.Path(COMPAT_S3L2)
    assert git("rev-parse","HEAD:"+str(canonical_s3l2))==PIN_CANONICAL_S3L2,"S3L2_ORIGINAL_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_s3l2))==PIN_CANONICAL_S3L2,"S3L2_ORIGINAL_WORKTREE_CHANGED"
    assert git("rev-parse","HEAD:"+str(compat_s3l2))==PIN_COMPAT_S3L2,"S3L2_PROOF_ONLY_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(compat_s3l2))==PIN_COMPAT_S3L2,"S3L2_PROOF_ONLY_WORKTREE_CHANGED"
    original_s3l2=canonical_s3l2.read_text()
    recovered_s3l2=compat_s3l2.read_text()
    assert original_s3l2.count(OLD_S3L2_PROOF)==1,"S3L2_PROOF_ANCHOR_NOT_UNIQUE"
    assert recovered_s3l2==original_s3l2.replace(OLD_S3L2_PROOF,NEW_S3L2_PROOF),"S3L2_RECOVERY_NOT_EXACT_PROOF_ONLY"
    (logs/"S3L2-exact-proof-only-provenance.txt").write_text(
        "ORIGINAL "+str(canonical_s3l2)+" "+PIN_CANONICAL_S3L2+"\n"
        "PROOF_ONLY "+str(compat_s3l2)+" "+PIN_COMPAT_S3L2+"\n"
        "DIFF exactly two unused simp lemma arguments; all theorem declarations bytewise identical\n")
    print(PREFIX+"_S3L2_EXACT_SOURCE_PROOF_ONLY_VERIFIED",PIN_CANONICAL_S3L2,PIN_COMPAT_S3L2,flush=True)
    canonical_r3a=pathlib.Path(CANONICAL_R3A)
    compat_r3a=pathlib.Path(COMPAT_R3A)
    assert git("rev-parse","HEAD:"+str(canonical_r3a))==PIN_CANONICAL_R3A,"R3A_CANONICAL_SOURCE_CHANGED"
    assert git("hash-object","--no-filters",str(canonical_r3a))==PIN_CANONICAL_R3A,"R3A_CANONICAL_WORKTREE_CHANGED"
    assert git("rev-parse","HEAD:"+str(compat_r3a))==PIN_COMPAT_R3A,"R3A_PROOF_ONLY_GIT_BLOB_CHANGED"
    assert git("hash-object","--no-filters",str(compat_r3a))==PIN_COMPAT_R3A,"R3A_PROOF_ONLY_WORKTREE_CHANGED"
    original_r3a=canonical_r3a.read_text()
    recovered_r3a=compat_r3a.read_text()
    assert original_r3a.count(OLD_R3A_A)==2,"R3A_DEPRECATED_IF_ANCHORS_NOT_TWO"
    assert original_r3a.count(OLD_R3A_B)==2,"R3A_UNUSED_HIJ_ANCHORS_NOT_TWO"
    assert original_r3a.count(OLD_R3A_C)==1,"R3A_UNUSED_SMUL_SUB_ANCHOR_NOT_ONE"
    expected_r3a=original_r3a.replace(OLD_R3A_A,NEW_R3A_A).replace(OLD_R3A_B,NEW_R3A_B).replace(OLD_R3A_C,NEW_R3A_C)
    assert recovered_r3a==expected_r3a,"R3A_PROOF_ONLY_ALTERS_ORIGINAL_MATHEMATICAL_SOURCE"
    (logs/"R3A-exact-original-source-proof-only.txt").write_text(
        "ORIGINAL "+str(canonical_r3a)+" "+PIN_CANONICAL_R3A+"\n"
        "PROOF_ONLY "+str(compat_r3a)+" "+PIN_COMPAT_R3A+"\n"
        "ONLY CHANGES: two deprecated if lemmas per branch, two unused hij, one unused smul_sub; original declarations unchanged\n")
    print(PREFIX+"_R3A_EXACT_ORIGINAL_PROOF_ONLY_SOURCE_VERIFIED",PIN_CANONICAL_R3A,PIN_COMPAT_R3A,flush=True)
    canonical_r2b=pathlib.Path(CANONICAL_R2B)
    compat_r2b=pathlib.Path(COMPAT_R2B)
    for p,hash_pin in ((canonical_r2b,PIN_CANONICAL_R2B),(compat_r2b,PIN_COMPAT_R2B)):
        assert git("rev-parse","HEAD:"+str(p))==hash_pin,"R2B_GIT_BLOB_CHANGED"
        assert git("hash-object","--no-filters",str(p))==hash_pin,"R2B_WORKTREE_CHANGED"
    original_r2b=canonical_r2b.read_text()
    expected_r2b=original_r2b
    for old,new in R2B_PROOF_CHANGES:
        assert expected_r2b.count(old)==1,"R2B_PROOF_REPLACEMENT_MISSING_OR_NOT_UNIQUE"
        expected_r2b=expected_r2b.replace(old,new)
    assert compat_r2b.read_text()==expected_r2b,"R2B_PROOF_ONLY_ALTERS_ORIGINAL_MATHEMATICAL_SOURCE"
    (logs/"R2B-exact-original-source-proof-only.txt").write_text(
        "ORIGINAL "+str(canonical_r2b)+" "+PIN_CANONICAL_R2B+"\n"
        "PROOF_ONLY "+str(compat_r2b)+" "+PIN_COMPAT_R2B+"\n"
        "Six EXACT proof substitutions; original three theorem statements unchanged\n")
    print(PREFIX+"_R2B_EXACT_SOURCE_PROOF_ONLY_VERIFIED",PIN_CANONICAL_R2B,PIN_COMPAT_R2B,flush=True)
    canonical_r4d=pathlib.Path(CANONICAL_R4D)
    compat_r4d=pathlib.Path(COMPAT_R4D)
    for p,expected_hash in ((canonical_r4d,PIN_CANONICAL_R4D),(compat_r4d,PIN_COMPAT_R4D)):
        assert git("rev-parse","HEAD:"+str(p))==expected_hash,"R4D_PROOF_ONLY_GIT_BLOB_CHANGED"
        assert git("hash-object","--no-filters",str(p))==expected_hash,"R4D_PROOF_ONLY_WORKTREE_CHANGED"
    canonical_r4d_text=canonical_r4d.read_text()
    alternate_r4d_text=compat_r4d.read_text()
    assert canonical_r4d_text.count(OLD_R4D_PROOF)==1,"R4D_ORIGINAL_PROOF_ANCHOR_NOT_UNIQUE"
    assert alternate_r4d_text==canonical_r4d_text.replace(OLD_R4D_PROOF,NEW_R4D_PROOF),"R4D_PROOF_ONLY_ALTERS_ORIGINAL_MATHEMATICS"
    (logs/"R4D-exact-original-proof-only-experiment.txt").write_text(
        "ORIGINAL "+str(canonical_r4d)+" "+PIN_CANONICAL_R4D+"\n"+
        "PROOF_ONLY "+str(compat_r4d)+" "+PIN_COMPAT_R4D+"\n"+
        "One local proof tactic change; R4D theorem statement byte-identical\n")
    print(PREFIX+"_ORIGINAL_R4D_PROPOSITION_BYTE_IDENTICAL_PROOF_ONLY_VERIFIED",flush=True)
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
    # Compare the FULL exact original R4D dependency closure as sets, not
    # chronological import order. Qualified ancestor verification is exact:
    # Gate54 carries 40 original source objects; Gate23 carries 0 of those.
    # R4D adds the original R2/R3 position-response and R4C1/C2 interfaces.
    qualified_gate54_ancestors=["SU2BFSSPhysicalDomainS3L1SourceOrbitalSmoothCoreProbe","SU2BFSSPhysicalDomainS3L3ASourcePositionDerivativeCommutatorProbe","SU2BFSSPhysicalDomainS3L3BSourceOperatorHeisenbergProbe","SU2BFSSPhysicalDomainS3L3CSourceOrbitalPositionCommutatorProbe","SU2BFSSPhysicalDomainS3L3DSourceMixedDerivativeCommutatorProbe","SU2BFSSPhysicalDomainS3L3ESourceOrbitalDerivativeCommutatorProbe","SU2BFSSPhysicalDomainS3L4BOriginalSmoothCorePostcompCalculusProbe","SU2BFSSPhysicalDomainS3L4CSourceAlgebraDataFermionActionInterfaceProbe","SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe","SU2BFSSPhysicalDomainS3L4DConcreteSourceFockSpinCovarianceProbe","SU2BFSSPhysicalDomainS3L5ASourceChargeKineticMonomialProbe","SU2BFSSPhysicalDomainS3L5BActualKineticMonomialCovarianceProbe","SU2BFSSPhysicalDomainS3L5CSourceOrbitalFermionActionCommutationProbe","SU2BFSSPhysicalDomainS3L5DSourceOrbitalKineticMonomialProbe","SU2BFSSPhysicalDomainS3L5FParametricCombinedKineticMonomialProbe","SU2BFSSPhysicalDomainS3L5GConcreteCombinedKineticMonomialProbe","SU2BFSSPhysicalDomainS3L0SourceKineticSpinorCoefficientProbe","SU2BFSSPhysicalDomainS3L5HFiniteSumAndCoefficientEntryProbe","SU2BFSSPhysicalDomainS3L5I1ExactTripleWeightedSumTransportProbe","SU2BFSSPhysicalDomainS3L5I2ANamedKineticSourceSumProbe","SU2BFSSPhysicalDomainS3L5I2BOriginalSourceKineticChargeBridgeProbe","SU2BFSSPhysicalDomainS3L5I3ActualPairedKineticChargeProbe","SU2BFSSPhysicalDomainS3L5J1SourceSpatialReindexAndGammaCoefficientProbe","SU2BFSSPhysicalDomainS3L5J2ComplexGammaCoefficientProbe","SU2BFSSPhysicalDomainS3L5J3SourceSpinorDoubleSumTransportProbe","SU2BFSSPhysicalDomainS3L5J4SourceFermionSumCompositionProbe","SU2BFSSPhysicalDomainS3L5J5SourceKineticResponseSplitProbe","SU2BFSSPhysicalDomainS3L5J6SourceOrbitalFixedIndexReindexProbe","SU2BFSSPhysicalDomainS3L5J7OriginalFullResponseCoefficientTransportProbe","SU2BFSSPhysicalDomainS3L5J8PairedComplexResponseCoefficientContractionProbe","SU2BFSSPhysicalDomainS3L5J9ActualKineticFreeSpinorCovarianceProbe","SU2BFSSPhysicalDomainS3L5K1SourceCubicPositionPairProbe","SU2BFSSPhysicalDomainS3L5K2AOriginalFermionActionCovarianceProbe","SU2BFSSPhysicalDomainS3L5K2R1AOriginalFermionSpinorResponseTransportProbe","SU2BFSSPhysicalDomainS3L2SourceGammaTwoSpatialCovarianceProbe","SU2BFSSPhysicalDomainS3L5K3OriginalCubicGammaTwoCoefficientProbe","SU2BFSSPhysicalDomainS3L5K2R1BOriginalWeightedFermionResponseProbe","SU2BFSSPhysicalDomainS3L5K2R1COriginalGammaTwoSpinorCoefficientProbe","SU2BFSSPhysicalDomainS3L5K2R1DOriginalWeightedFermionCoefficientBridgeProbe","SU2BFSSPhysicalDomainS3L5K2R4AThreeIndexOriginalSourceSumTransportProbe"]
    expected_r4d_new=["SU2BFSSPhysicalDomainS3L5K2R2AOriginalDoubleSpatialSumReindexProbe","SU2BFSSPhysicalDomainS3L5K2R2BOrderedSourcePositionPairReindexProbe","SU2BFSSPhysicalDomainS3L5K2R2COriginalPositionVariationReindexProbe","SU2BFSSPhysicalDomainS3L5K2R2DOriginalPairedFermionPositionReindexProbe","SU2BFSSPhysicalDomainS3L5K2R3AOriginalGammaTwoSpatialReindexProbe","SU2BFSSPhysicalDomainS3L5K2R3BOriginalWeightedGammaTwoSpatialEntryProbe","SU2BFSSPhysicalDomainS3L5K2R3COriginalWeightedPositionResponseProbe","SU2BFSSPhysicalDomainS3L5K2R4C1FixedColorFermionSumProbe","SU2BFSSPhysicalDomainS3L5K2R4C2FixedColorSpatialSumProbe","SU2BFSSPhysicalDomainS3L5K2R4DNamedSourceAssemblyProbe"]
    assert len(qualified_gate54_ancestors)==40,"BAD_QUALIFIED_ANCESTRY_SIZE"
    assert len(expected_r4d_new)==10,"BAD_R4D_MODULE_LIST"
    assert len(order)==126,"ORIGINAL_R4D_IMPORT_CLOSURE_CHANGED"
    assert len(set(order))==126,"ORIGINAL_R4D_DUPLICATE_CLOSURE"
    assert len(set(qualified_gate54_ancestors+expected_r4d_new))==50,"R4D_EXPECTED_SOURCE_DUPLICATE"
    # Source-exact success requires the literal original R4D declaration
    # compiled with its qualified ancestors. Gate57 may have R4A if its
    # ancestry derives from Gate54, or omit R4A if derived from Gate23.
    # Accept exactly those two direct-cache shapes, or the fully qualified
    # Gate23 50-module source-rebuild. NO generic cache or skipped import.
    previous_gate56_new = {
        "SU2BFSSPhysicalDomainS3L5K2R4C1FixedColorFermionSumProbe",
        "SU2BFSSPhysicalDomainS3L5K2R3AOriginalGammaTwoSpatialReindexProbe",
        "SU2BFSSPhysicalDomainS3L5K2R3BOriginalWeightedGammaTwoSpatialEntryProbe",
        "SU2BFSSPhysicalDomainS3L5K2R2AOriginalDoubleSpatialSumReindexProbe",
        "SU2BFSSPhysicalDomainS3L5K2R2BOrderedSourcePositionPairReindexProbe",
    }
    previous_gate57_new = {
        "SU2BFSSPhysicalDomainS3L5K2R2COriginalPositionVariationReindexProbe",
        "SU2BFSSPhysicalDomainS3L5K2R2DOriginalPairedFermionPositionReindexProbe",
        "SU2BFSSPhysicalDomainS3L5K2R3COriginalWeightedPositionResponseProbe",
        "SU2BFSSPhysicalDomainS3L5K2R4C2FixedColorSpatialSumProbe",
    }
    original_r4a="SU2BFSSPhysicalDomainS3L5K2R4AThreeIndexOriginalSourceSumTransportProbe"
    exact_gate57_ancestors=set(qualified_gate54_ancestors).union(previous_gate56_new,previous_gate57_new)
    exact_gate57_no_r4a=exact_gate57_ancestors-{original_r4a}
    assert len(exact_gate57_no_r4a)==48,"QUALIFIED_GATE57_ANCESTOR_SIZE_CHANGED"
    assert len(exact_gate57_ancestors)==49,"QUALIFIED_GATE57_PLUS_R4A_SIZE_CHANGED"
    if missing==[TARGET]:
        batch=missing
        print(PREFIX+"_DIRECT_GATE57_ALREADY_HAS_R4A_TARGET_ONLY",flush=True)
    elif missing==[original_r4a,TARGET]:
        batch=missing
        print(PREFIX+"_DIRECT_GATE57_REQUALIFY_R4A_THEN_R4D",flush=True)
    elif len(missing)==50 and set(missing)==set(qualified_gate54_ancestors+expected_r4d_new):
        batch=missing[:LIMIT]
        print(PREFIX+"_STRICT_GATE23_REBUILD_49_PREVIOUSLY_ACCEPTED_PLUS_NEW_R4D",flush=True)
    else:
        print(PREFIX+"_QUALIFIED_ORIGINAL_R4D_CLOSURE_MISMATCH",
              "actual_missing",missing,
              "allowed_gate57_direct",[TARGET],
              "allowed_gate57_r4a",[original_r4a,TARGET],
              "allowed_gate23",qualified_gate54_ancestors+expected_r4d_new,flush=True)
        return 14
    assert len(batch) in (1,2,50),"BAD_R4D_BATCH_SIZE"
    assert batch[-1]==TARGET,"ORIGINAL_R4D_MUST_END_QUALIFICATION"
    assert batch.count(TARGET)==1,"ORIGINAL_R4D_MISSING_OR_DUPLICATED"
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
        if has_forbidden_lean_declaration(src):
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
        elif n=="SU2BFSSPhysicalDomainS3L5J6SourceOrbitalFixedIndexReindexProbe":
            assert p==original_j6_path,"S3L5J6_CANONICAL_SOURCE_PATH_MISMATCH"
            shutil.copyfile(recovery_j6_path,math/(n+".lean"))
            print(PREFIX+"_S3L5J6_EXACT_PROOF_ONLY_COMPATIBILITY_REPLACEMENT",PIN_COMPAT_J6,flush=True)
        elif n=="SU2BFSSPhysicalDomainS3L5J8PairedComplexResponseCoefficientContractionProbe":
            assert p==canonical_j8,"J8_CANONICAL_SOURCE_MISMATCH"
            shutil.copyfile(compat_j8,math/(n+".lean"))
            print(PREFIX+"_J8_EXACT_PROOF_ONLY_COMPATIBILITY",PIN_COMPAT_J8,flush=True)
        elif n=="SU2BFSSPhysicalDomainS3L2SourceGammaTwoSpatialCovarianceProbe":
            assert p==canonical_s3l2,"S3L2_CANONICAL_SOURCE_PATH_MISMATCH"
            shutil.copyfile(compat_s3l2,math/(n+".lean"))
            print(PREFIX+"_S3L2_EXACT_PROOF_ONLY_COMPATIBILITY",PIN_COMPAT_S3L2,flush=True)
        elif n=="SU2BFSSPhysicalDomainS3L5K2R3AOriginalGammaTwoSpatialReindexProbe":
            assert p==canonical_r3a,"R3A_ORIGINAL_SOURCE_MISMATCH"
            shutil.copyfile(compat_r3a,math/(n+".lean"))
            print(PREFIX+"_R3A_EXACT_PROOF_ONLY_COMPATIBILITY",PIN_COMPAT_R3A,flush=True)
        elif n=="SU2BFSSPhysicalDomainS3L5K2R2BOrderedSourcePositionPairReindexProbe":
            assert p==canonical_r2b,"R2B_ORIGINAL_SOURCE_MISMATCH"
            shutil.copyfile(compat_r2b,math/(n+".lean"))
            print(PREFIX+"_R2B_EXACT_PROOF_ONLY_COMPATIBILITY",PIN_COMPAT_R2B,flush=True)
        elif n==TARGET:
            assert p==canonical_r4d,"R4D_ORIGINAL_TARGET_CANONICAL_PATH_MISMATCH"
            shutil.copyfile(compat_r4d,math/(n+".lean"))
            print(PREFIX+"_ORIGINAL_R4D_PROOF_ONLY_ALT_APPLY_STAGED",PIN_COMPAT_R4D,flush=True)
        else:
            shutil.copyfile(p,math/(n+".lean"))
    # Strict deterministic preflight scans actual *effective* Lean files after
    # byte-verified proof-only patches and BEFORE any expensive recompilation.
    # It catches known Lean 4.34.1 deprecated conditional simp lemmas; it
    # never replaces compiler elaboration or warning-as-error verification.
    for n in batch:
        code=mask_lean_comments_and_strings((math/(n+".lean")).read_text())
        deprecated=re.search(r"\b(?:if_neg|if_pos)\b",code)
        if deprecated:
            print(PREFIX+"_EARLY_DEPRECATED_LEAN_PROOF_TACTIC",n,
                  deprecated.group(0),flush=True)
            return 16
    print(PREFIX+"_ALL_EFFECTIVE_SOURCE_DEPRECATED_IF_LEMMAS_PREFLIGHT_PASS",len(batch),flush=True)
    start=time.monotonic()
    for n in order:
        if n not in batch:continue
        if time.monotonic()-start>1200:
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
        timeout_sec=240 if is_s3e else (180 if n==TARGET else 85)
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
        n+" "+data[n][2]+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L3A if n==PATCH_STEM else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L3B if n==PATCH_STEM_B else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L3C if n==PATCH_STEM_C else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L3D if n==PATCH_STEM_D else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L3E if n==PATCH_STEM_E else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L4B if n==PATCH_STEM_L4B else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3E if n==PATCH_STEM_S3E else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_J1 if n=="SU2BFSSPhysicalDomainS3L5J1SourceSpatialReindexAndGammaCoefficientProbe" else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_J6 if n=="SU2BFSSPhysicalDomainS3L5J6SourceOrbitalFixedIndexReindexProbe" else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_J8 if n=="SU2BFSSPhysicalDomainS3L5J8PairedComplexResponseCoefficientContractionProbe" else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_S3L2 if n=="SU2BFSSPhysicalDomainS3L2SourceGammaTwoSpatialCovarianceProbe" else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_R3A if n=="SU2BFSSPhysicalDomainS3L5K2R3AOriginalGammaTwoSpatialReindexProbe" else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_R2B if n=="SU2BFSSPhysicalDomainS3L5K2R2BOrderedSourcePositionPairReindexProbe" else "")+(" PROOF_ONLY_COMPAT "+PIN_COMPAT_R4D if n==TARGET else "")
        for n in batch)+"\n")
    if not (targetdir/(TARGET+".olean")).is_file():
        print(PREFIX+"_ORIGINAL_R4D_ASSEMBLY_NOT_COMPILED",flush=True)
        return 15
    print(PREFIX+"_ORIGINAL_R4D_NAMED_FIXED_COLOR_CUBIC_RESPONSE_STRICTLY_COMPILED",flush=True)
    print(PREFIX+"_PASS_NEW_COMPILED_MODULES",len(batch),flush=True)
    return 0

if __name__=="__main__":
    sys.exit(main())
