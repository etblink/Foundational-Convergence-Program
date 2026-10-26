#!/usr/bin/env python3
"""Original BFSS fermion B-field tensor: *exact* direct Spin(9) form covariance.

FCP mathematical source: etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a
  manuscript positive-eigenvalues-relative-su2-bfss.tex, eq:form and eq:supercharges
  Lean: OAI.MathematicalPhysics.BFSS.Core / DeformedCharge (averaged_core_energy).

B(x) = (i/2)*sqrt(2)*epsilon[a,b,c]*x[i,a]*gamma[i,beta,delta]*
       theta[beta,b]*theta[delta,c].
A_X[(b,beta),(c,delta)] = epsilon[a,b,c]*x[i,a]*gamma[i,beta,delta]
is a 48-by-48 REAL SKEW tensor. We check all 27 coordinate tensors under
all 36 Spin(9) spatial plane generators and exact quarter turns, plus
all 3 SO(3) color generators and exact quarter turns, including the
commutation of their 48-label actions.

No 2^24 Fock matrices; 972 + 81 source coordinate cases, each with TWO
exact 48x48 matrix identities (Lie and finite quarter turn).
The integral scalar/fermion-core-form invariance follows by a separate
ordinary-mathematics argument under the true global source Spin(48)
lift. This script does not construct that lift or prove a Lean theorem.

Important historical negative: S=(I-gamma_r gamma_s)/sqrt(2),
NOT (I+gamma_r gamma_s)/sqrt(2), for the original rotation
J[r,s]=-1, J[s,r]=+1. A wrong sign fails already at plane (0,1).
"""
from itertools import combinations

import numpy as np


def real_gammas():
    pauli = {
        "I": np.eye(2, dtype=np.int64),
        "X": np.array([[0, 1], [1, 0]], dtype=np.int64),
        "Y": np.array([[0, 1], [-1, 0]], dtype=np.int64),
        "Z": np.diag([1, -1]).astype(np.int64),
    }
    words = (
        "IIIX", "IIIZ", "ZZYY", "XZYY", "YXXY",
        "YXZY", "IYIY", "YZIY", "IXYY",
    )
    out = []
    for word in words:
        product = np.ones((1, 1), dtype=np.int64)
        for letter in word:
            product = np.kron(product, pauli[letter])
        out.append((-1) ** (word.count("Y") // 2) * product)
    gamma = np.stack(out)
    identity = np.eye(16, dtype=np.int64)
    zero = np.zeros((16, 16), dtype=np.int64)
    for i in range(9):
        assert np.array_equal(gamma[i], gamma[i].T)
        for j in range(9):
            assert np.array_equal(
                gamma[i] @ gamma[j] + gamma[j] @ gamma[i],
                2 * identity if i == j else zero,
            )
    return gamma


def epsilon(a, b, c):
    if len({a, b, c}) < 3:
        return 0
    return 1 if (a, b, c) in ((0, 1, 2), (1, 2, 0), (2, 0, 1)) else -1


def source_tensors(gamma):
    out = {}
    for a in range(3):
        for i in range(9):
            tensor = np.zeros((48, 48), dtype=np.int64)
            for b in range(3):
                for c in range(3):
                    tensor[b*16:(b+1)*16, c*16:(c+1)*16] = (
                        epsilon(a, b, c) * gamma[i]
                    )
            assert np.array_equal(tensor.T, -tensor)
            out[a, i] = tensor
    return out


def main():
    gamma = real_gammas()
    tensors = source_tensors(gamma)
    id16 = np.eye(16, dtype=np.int64)
    id3 = np.eye(3, dtype=np.int64)
    zero48 = np.zeros((48, 48), dtype=np.int64)

    spatial = 0
    for r, s in combinations(range(9), 2):
        # Spinor generator is K=-gamma[r]gamma[s]/2;
        # integer K2=2*K. The quarter turn is (I+K2)/sqrt(2).
        k2 = -gamma[r] @ gamma[s]
        lift2 = np.kron(id3, k2)
        numerator = np.kron(id3, id16 + k2)
        rot = np.eye(9, dtype=np.int64)
        rot[r, r] = rot[s, s] = 0
        rot[r, s], rot[s, r] = -1, 1

        for a in range(3):
            for i in range(9):
                jx = sum(
                    (rot_entry * tensors[a, k]
                     for k, rot_entry in (
                         (r, -int(i == s)), (s, int(i == r))
                     )),
                    zero48.copy(),
                )
                # The Lie generator J e_r=e_s, J e_s=-e_r.
                assert np.array_equal(
                    2 * jx,
                    lift2 @ tensors[a, i] - tensors[a, i] @ lift2,
                ), ("spatial-lie", r, s, a, i)

                rotated = sum(
                    (rot[k, i] * tensors[a, k] for k in range(9)),
                    zero48.copy(),
                )
                assert np.array_equal(
                    2 * rotated,
                    numerator @ tensors[a, i] @ numerator.T,
                ), ("spatial-quarter-turn", r, s, a, i)
                spatial += 1

    gauge = 0
    for r, s in combinations(range(3), 2):
        generator = np.zeros((3, 3), dtype=np.int64)
        generator[r, s], generator[s, r] = -1, 1
        label_generator = np.kron(generator, id16)
        rot = id3.copy()
        rot[r, r] = rot[s, s] = 0
        rot[r, s], rot[s, r] = -1, 1
        label_rot = np.kron(rot, id16)

        # Spatial spinor action and color action commute on the labels.
        for p, q in combinations(range(9), 2):
            spin2 = np.kron(id3, -gamma[p] @ gamma[q])
            assert np.array_equal(
                label_generator @ spin2, spin2 @ label_generator
            ), ("commuting-label-actions", r, s, p, q)

        for a in range(3):
            for i in range(9):
                infinitesimal = sum(
                    (generator[k, a] * tensors[k, i] for k in range(3)),
                    zero48.copy(),
                )
                assert np.array_equal(
                    infinitesimal,
                    label_generator @ tensors[a, i]
                    - tensors[a, i] @ label_generator,
                ), ("gauge-lie", r, s, a, i)

                rotated = sum(
                    (rot[k, a] * tensors[k, i] for k in range(3)),
                    zero48.copy(),
                )
                assert np.array_equal(
                    rotated,
                    label_rot @ tensors[a, i] @ label_rot.T,
                ), ("gauge-quarter-turn", r, s, a, i)
                gauge += 1

    assert spatial == 36*27 and gauge == 3*27
    print("SOURCE_GAMMA_CAR_REPRESENTATIVE_9x16_EXACT_PASS")
    print("ORIGINAL_B_TENSOR_SKEW_REAL_27_COORDINATE_BLOCKS_PASS")
    print(f"SPATIAL_COVARIANCE_LIE_AND_EXACT_QUARTER_TURNS_PASS {spatial}")
    print(f"GAUGE_COVARIANCE_LIE_AND_EXACT_QUARTER_TURNS_PASS {gauge}")
    print("SPATIAL_GAUGE_LABEL_GENERATORS_COMMUTE_PASS 108")
    print("BOUNDARY: no global Spin48 action, quadratic-form domain or spectral theorem certified")


if __name__ == "__main__":
    main()
