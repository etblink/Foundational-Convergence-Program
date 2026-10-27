#!/usr/bin/env python3
"""Paired BFSS source Fock-order 48-Majorana reindex, exact integer check.

Input source labels:
 spinPairEquiv : SpinIndex ≃ (Fin8 × Fin2)
 colorModeEquiv : (Fin8 × ColorIndex2) ≃ Fin24
 pairedLabelEquiv : (SpinIndex × ColorIndex2) ≃ (Fin24 × Fin2)
For alpha=2*j+q and a=0,1,2, original flattened Fock index is
2*(3*j+a)+q.  The convenient color-major label is 16*a+alpha.

The matrix P is only a CHANGE OF BASIS; this gate does not construct a
global Spin9/Spin48 homomorphism or a physical Fock unitary action.
"""
import argparse
from itertools import combinations,permutations
from pathlib import Path
import numpy as np
from bfss_actual_source_gamma_spin9_center_exact_2026_10_27 import real_source_matrices

def eps(a,b,c):
    if len({a,b,c})<3:return 0
    return 1 if (a,b,c) in {(0,1,2),(1,2,0),(2,0,1)} else -1

def main(gamma_source,theta_source):
    # Fail closed if paired labels are not the original accepted definitions.
    for text in ("noncomputable def spinPairEquiv", "noncomputable def colorModeEquiv",
                 "noncomputable def pairedLabelEquiv", "finProdFinEquiv",
                 "colorModeEquiv ((spinPairEquiv p.1).1, p.2), (spinPairEquiv p.1).2",
                 "majoranaCandidate (pairedLabelEquiv (α,A))"):
        assert text in theta_source,("ORIGINAL_PAIRED_LABEL_DECLARATION_CHANGED",text)
    assert theta_source.count("noncomputable def pairedLabelEquiv")==1
    gam=np.asarray(real_source_matrices(gamma_source),dtype=np.int64)
    eye16=np.eye(16,dtype=np.int64)
    eye3=np.eye(3,dtype=np.int64)
    eye48=np.eye(48,dtype=np.int64)
    zero48=np.zeros((48,48),dtype=np.int64)
    P=np.zeros((48,48),dtype=np.int64)
    labels=set()
    fixed=0
    for alpha in range(16):
        for a in range(3):
            j,q=divmod(alpha,2)
            mode=3*j+a
            native=2*mode+q
            grouped=16*a+alpha
            labels.add((mode,q))
            assert 0<=native<48
            P[native,grouped]=1
            fixed+=int(native==grouped)
    assert len(labels)==48
    assert np.array_equal(P@P.T,eye48) and np.array_equal(P.T@P,eye48)
    assert not np.array_equal(P,eye48)
    assert P[2,16]==1  # alpha=0,color=1 -> (mode=1,real=0)
    assert P[16,2]==0
    print("ORIGINAL_G1A_PAIRED_LABEL_FOCK_MODE_MAJOR_PERMUTATION_PASS 48")
    print("NATIVE_FOCK_BASIS_VS_COLOR_MAJOR_DIFFER",48-fixed)

    epsilon=np.zeros((3,3,3),dtype=np.int64)
    for a,b,c in permutations(range(3)):
        epsilon[a,b,c]=eps(a,b,c)
    before={(a,i):np.kron(epsilon[a],gam[i])
            for a in range(3) for i in range(9)}
    after={(a,i):P@before[a,i]@P.T
           for a in range(3) for i in range(9)}
    assert all(np.array_equal(mat,-mat.T) for mat in after.values())
    # A naive interpretation treating the original Fock basis as
    # color-major is a deliberately false source identification.
    mismatches=sum(not np.array_equal(before[k],after[k]) for k in before)
    assert mismatches>0
    print("UNTRANSPORTED_COLOR_MAJOR_B_FIELD_SOURCE_IDENTITY_FALSIFIED",mismatches)

    brackets={}
    source_spin={}
    spatial=0
    for r,s in combinations(range(9),2):
        A=np.zeros((9,9),dtype=np.int64)
        A[r,s]=-1;A[s,r]=1
        K=-gam[r]@gam[s] # 2x spinor generator; skew with square=-I16
        assert np.array_equal(K@K,-eye16)
        spin=P@np.kron(eye3,K)@P.T
        lift=P@np.kron(eye3,eye16+K)@P.T
        assert np.array_equal(spin@spin,-eye48)
        source_spin[r,s]=spin
        brackets[r,s]=A
        rot=np.eye(9,dtype=np.int64)
        rot[r,r]=0;rot[s,s]=0;rot[r,s]=-1;rot[s,r]=1
        for a in range(3):
            for i in range(9):
                d=sum((int(A[k,i])*after[a,k] for k in range(9)),zero48.copy())
                assert np.array_equal(spin@after[a,i]-after[a,i]@spin,2*d),(
                    "ORIGINAL_FOCK_MODE_SPIN9_B_TENSOR_LIE",r,s,a,i)
                rd=sum((int(rot[k,i])*after[a,k] for k in range(9)),zero48.copy())
                assert np.array_equal(lift@after[a,i]@lift.T,2*rd),(
                    "ORIGINAL_FOCK_MODE_SPIN9_B_QUARTER",r,s,a,i)
                spatial+=1
    assert spatial==972
    count=0
    for a in source_spin:
        for b in source_spin:
            CJ=brackets[a]@brackets[b]-brackets[b]@brackets[a]
            Ksum=sum((int(CJ[s,r])*source_spin[r,s] for r,s in source_spin),zero48.copy())
            assert np.array_equal(source_spin[a]@source_spin[b]-
                                  source_spin[b]@source_spin[a],2*Ksum),(
                    "ORIGINAL_FOCK_SOURCE_SO9_BRACKET",a,b)
            count+=1
    assert count==1296

    gauge=0;commute=0
    for r,s in combinations(range(3),2):
        A=np.zeros((3,3),dtype=np.int64)
        A[r,s]=-1;A[s,r]=1
        G=P@np.kron(A,eye16)@P.T
        R=np.eye(3,dtype=np.int64)
        R[r,r]=0;R[s,s]=0;R[r,s]=-1;R[s,r]=1
        unit=P@np.kron(R,eye16)@P.T
        for sr in source_spin.values():
            assert np.array_equal(G@sr,sr@G),("ORIGINAL_MODE_GAUGE_SPIN_COMMUTE",r,s)
            commute+=1
        for a in range(3):
            for i in range(9):
                expected=sum((int(A[c,a])*after[c,i] for c in range(3)),
                             zero48.copy())
                assert np.array_equal(G@after[a,i]-after[a,i]@G,expected),(
                    "ORIGINAL_MODE_GAUGE_B_LIE",r,s,a,i)
                rotated=sum((int(R[c,a])*after[c,i] for c in range(3)),
                            zero48.copy())
                assert np.array_equal(unit@after[a,i]@unit.T,rotated),(
                    "ORIGINAL_MODE_GAUGE_B_QUARTER",r,s,a,i)
                gauge+=1
    assert gauge==81 and commute==108

    # 2pi projected SO48 action is +I48, but the original generator
    # spinor/source-label action has -I48 at the nontrivial Spin9 center.
    for s in source_spin.values():
        assert np.array_equal(s@s,-eye48)
    print("ORIGINAL_MODE_SOURCE_SPIN9_CENTER_LABEL_MINUS_IDENTITY_PASS 36")
    print("ORIGINAL_MODE_PAIRED_B_SPATIAL_COVARIANCE_PASS",spatial)
    print("ORIGINAL_MODE_PAIRED_SO9_BRACKETS_PASS",count)
    print("ORIGINAL_MODE_PAIRED_B_GAUGE_COVARIANCE_PASS",gauge)
    print("ORIGINAL_MODE_GAUGE_SPIN_GENERATORS_COMMUTE_PASS",commute)
    print("ZERO_NEW_LEAN_ROOTS_NO_CONTINUOUS_SPIN9_LIFT_OR_SPECTRAL_THEOREM")

if __name__=="__main__":
    p=argparse.ArgumentParser()
    p.add_argument("--gamma-source",type=Path,required=True)
    p.add_argument("--theta-source",type=Path,required=True)
    a=p.parse_args()
    main(a.gamma_source.read_text(encoding="utf-8"),
         a.theta_source.read_text(encoding="utf-8"))
