#!/usr/bin/env python3
"""Exact original-source BFSS Pauli/Fock B-tensor Spin(9) and SU2 gauge check.

Finite certificate only: Cl9 signed-permutation source gamma, original
three-color epsilon, 48 real Majorana generator labels. Does NOT construct
a continuous source Spin9 -> Spin48 lift, act on actual Fock Hilbert space,
prove full supercharge covariance, or establish a spectral theorem.

The literal source gamma parser is imported from the earlier verified Gate.
Integer numpy matrices ensure zero tolerance, no floating point arguments.
"""
import argparse
from itertools import combinations, permutations
from pathlib import Path
import numpy as np
from bfss_actual_source_gamma_spin9_center_exact_2026_10_27 import real_source_matrices

def epsilon(a,b,c):
    if len({a,b,c})<3:
        return 0
    return 1 if (a,b,c) in {(0,1,2),(1,2,0),(2,0,1)} else -1

def test_literal_source(gamma_source):
    gamma=np.array(real_source_matrices(gamma_source),dtype=np.int64)
    assert gamma.shape==(9,16,16)
    z48=np.zeros((48,48),dtype=np.int64)
    i3=np.eye(3,dtype=np.int64)
    i16=np.eye(16,dtype=np.int64)
    e=np.zeros((3,3,3),dtype=np.int64)
    for a,b,c in permutations(range(3)):
        e[a,b,c]=epsilon(a,b,c)
    # T_(a,i)[(b,beta),(c,delta)] =
    #     epsilon_(a,b,c) * gamma_i[beta,delta].
    # This is the ACTUAL S4B36 paired source B-field coefficient tensor.
    t={(a,i):np.kron(e[a],gamma[i]) for a in range(3) for i in range(9)}
    for z in t.values():
        assert np.array_equal(z,-z.T)
        assert np.any(z)
    print("ACTUAL_48_LABEL_PAIRED_B_FIELD_EPSILON_GAMMA_SOURCE_TENSORS_PASS 27")

    jp={};kp={};spatial=0
    for r,s in combinations(range(9),2):
        J=np.zeros((9,9),dtype=np.int64)
        J[r,s]=-1;J[s,r]=1
        k2=-gamma[r]@gamma[s]  # twice the ACTUAL spinor Lie generator
        assert np.array_equal(k2,-k2.T)
        assert np.array_equal(k2@k2,-i16)
        jp[r,s]=J;kp[r,s]=k2
        lift2=np.kron(i3,k2)
        numerator=np.kron(i3,i16+k2)
        R=np.eye(9,dtype=np.int64)
        R[r,r]=R[s,s]=0;R[r,s]=-1;R[s,r]=1
        for a in range(3):
            for i in range(9):
                Jt=sum((int(J[j,i])*t[a,j] for j in range(9)),z48.copy())
                assert np.array_equal(lift2@t[a,i]-t[a,i]@lift2,2*Jt),(
                    "SOURCE_SPATIAL_B_LIE",r,s,a,i)
                Rt=sum((int(R[j,i])*t[a,j] for j in range(9)),z48.copy())
                assert np.array_equal(numerator@t[a,i]@numerator.T,2*Rt),(
                    "SOURCE_SPATIAL_B_QUARTER",r,s,a,i)
                spatial+=1
    assert spatial==972
    # Adversarial sign falsifier: the opposite source rotation lift fails.
    bad=np.kron(i3,i16+gamma[0]@gamma[1])
    j=jp[0,1];r,s=0,1
    R=np.eye(9,dtype=np.int64)
    R[r,r]=R[s,s]=0;R[r,s]=-1;R[s,r]=1
    target=2*sum((int(R[k,0])*t[0,k] for k in range(9)),z48.copy())
    wrong=bad@t[0,0]@bad.T
    assert not np.array_equal(wrong,target)
    assert int(np.max(np.abs(wrong-target)))==4
    print("SOURCE_SPINOR_QUARTER_TURN_REVERSED_SIGN_FALSIFIED_DIFF_4")

    # All 36 source spinor generators satisfy the full so(9) bracket,
    # not only their action on each of the 9 gamma matrices.
    bracket_count=0
    for a in jp:
        for b in jp:
            CJ=jp[a]@jp[b]-jp[b]@jp[a]
            K=sum((int(CJ[s,r])*kp[r,s] for r,s in kp),
                  np.zeros((16,16),dtype=np.int64))
            assert np.array_equal(kp[a]@kp[b]-kp[b]@kp[a],2*K),(
                "SOURCE_SPIN9_LIE_BRACKET",a,b)
            bracket_count+=1
    assert bracket_count==1296
    print("SOURCE_LITERAL_SPINOR_SO9_LIE_BRACKETS_PASS",bracket_count)

    gauge=0;commute=0
    for r,s in combinations(range(3),2):
        J=np.zeros((3,3),dtype=np.int64)
        J[r,s]=-1;J[s,r]=1
        lift=np.kron(J,i16)
        R=np.eye(3,dtype=np.int64)
        R[r,r]=R[s,s]=0;R[r,s]=-1;R[s,r]=1
        labelR=np.kron(R,i16)
        for p,q in kp:
            lk=np.kron(i3,kp[p,q])
            assert np.array_equal(lift@lk,lk@lift),(
                "SOURCE_SPATIAL_GAUGE_LABEL_COMMUTATOR",r,s,p,q)
            commute+=1
        for a in range(3):
            for i in range(9):
                Jt=sum((int(J[c,a])*t[c,i] for c in range(3)),z48.copy())
                assert np.array_equal(lift@t[a,i]-t[a,i]@lift,Jt),(
                    "SOURCE_GAUGE_B_LIE",r,s,a,i)
                Rt=sum((int(R[c,a])*t[c,i] for c in range(3)),z48.copy())
                assert np.array_equal(labelR@t[a,i]@labelR.T,Rt),(
                    "SOURCE_GAUGE_B_QUARTER",r,s,a,i)
                gauge+=1
    assert gauge==81 and commute==108
    print("ACTUAL_SOURCE_SPATIAL_B_LIE_AND_QUARTER_TURNS_PASS",spatial)
    print("ACTUAL_SOURCE_GAUGE_B_LIE_AND_QUARTER_TURNS_PASS",gauge)
    print("ACTUAL_SOURCE_SPATIAL_GAUGE_GENERATOR_COMMUTATION_PASS",commute)
    print("ZERO_NEW_LEAN_ROOTS_GLOBAL_SPIN9_LIFT_AND_SPECTRAL_SECTORS_UNPROVED")

if __name__=="__main__":
    parser=argparse.ArgumentParser()
    parser.add_argument("--gamma-source",type=Path,required=True)
    args=parser.parse_args()
    test_literal_source(args.gamma_source.read_text(encoding="utf-8"))
