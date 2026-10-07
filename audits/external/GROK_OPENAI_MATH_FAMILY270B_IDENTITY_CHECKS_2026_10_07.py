"""Independent numerical checks for Family 270-B load-bearing identities.

These checks do not prove the manuscript. They verify finite algebraic identities
used in Lemma 2.1 and the elementary comparison used in Proposition 3.4.
"""

from __future__ import annotations

import numpy as np


def kron(*ops: np.ndarray) -> np.ndarray:
    out = np.array([[1.0 + 0.0j]])
    for op in ops:
        out = np.kron(out, op)
    return out


def euclidean_gammas() -> list[np.ndarray]:
    """Hermitian generators of a 16-dimensional Cl(9) module, {γi, γj} = 2 δij."""
    s1 = np.array([[0, 1], [1, 0]], dtype=complex)
    s2 = np.array([[0, -1j], [1j, 0]], dtype=complex)
    s3 = np.array([[1, 0], [0, -1]], dtype=complex)
    eye = np.eye(2, dtype=complex)
    gammas: list[np.ndarray] = []
    for k in range(1, 5):
        left = [s3] * (k - 1)
        right = [eye] * (4 - k)
        gammas.append(kron(*(left + [s1] + right)))
        gammas.append(kron(*(left + [s2] + right)))
    gammas.append(kron(s3, s3, s3, s3))
    return gammas


def gamma_ij(gammas: list[np.ndarray], i: int, j: int) -> np.ndarray:
    return 0.5 * (gammas[i] @ gammas[j] - gammas[j] @ gammas[i])


def check_clifford(gammas: list[np.ndarray]) -> None:
    n = len(gammas)
    eye = np.eye(gammas[0].shape[0], dtype=complex)
    for i in range(n):
        for j in range(n):
            anticommutator = gammas[i] @ gammas[j] + gammas[j] @ gammas[i]
            expected = 2 * eye if i == j else 0 * eye
            if not np.allclose(anticommutator, expected):
                raise AssertionError(f"Clifford relation failed at {(i, j)}")
        if not np.allclose(gammas[i], gammas[i].conj().T):
            raise AssertionError(f"gamma[{i}] is not Hermitian")
        hs = np.trace(gammas[i].conj().T @ gammas[i])
        if not np.allclose(hs, 16):
            raise AssertionError(f"HS norm failed at {i}: {hs}")


def check_bivector_traces(gammas: list[np.ndarray]) -> float:
    pairs = [(i, j) for i in range(9) for j in range(i + 1, 9)]
    max_err = 0.0
    for a, (i, j) in enumerate(pairs):
        left = gamma_ij(gammas, i, j)
        if not np.allclose(left, -left.conj().T):
            raise AssertionError(f"gamma[{i}{j}] is not skew-Hermitian")
        for b, (k, l) in enumerate(pairs):
            right = gamma_ij(gammas, k, l)
            trace = np.trace(left.conj().T @ right)
            expected = 16.0 if a == b else 0.0
            max_err = max(max_err, abs(trace - expected))
    if max_err > 1e-8:
        raise AssertionError(f"bivector HS identity failed, max error {max_err}")
    return max_err


def check_structure_constants() -> None:
    """With f_abc = sqrt(2) ε_abc and y^a_ij = f_abc x^b_i x^c_j,
    (1/2) sum_a sum_{j<k} (y^a_jk)^2 = sum_{a<b} |x^a ∧ x^b|^2.
    """
    rng = np.random.default_rng(270)
    for _ in range(20):
        xs = rng.normal(size=(3, 9))
        y = np.zeros((3, 9, 9))
        eps = np.zeros((3, 3, 3))
        for a in range(3):
            for b in range(3):
                for c in range(3):
                    eps[a, b, c] = (b - a) * (c - b) * (a - c) / 2  # Levi-Civita
        f = np.sqrt(2) * eps
        for a in range(3):
            for i in range(9):
                for j in range(9):
                    y[a, i, j] = sum(f[a, b, c] * xs[b, i] * xs[c, j] for b in range(3) for c in range(3))
        left = 0.0
        for a in range(3):
            for j in range(9):
                for k in range(j + 1, 9):
                    left += 0.5 * y[a, j, k] ** 2
        right = 0.0
        for a in range(3):
            for b in range(a + 1, 3):
                # |u ∧ v|^2 = |u|^2|v|^2 - (u·v)^2
                u, v = xs[a], xs[b]
                right += np.dot(u, u) * np.dot(v, v) - np.dot(u, v) ** 2
        if not np.allclose(left, right):
            raise AssertionError(f"structure-constant identity failed: {left} vs {right}")


def check_l1_l2() -> None:
    rng = np.random.default_rng(2)
    for _ in range(20):
        xa = rng.normal(size=(3, 9))
        full = np.sqrt(np.sum(xa**2))
        color_sum = np.sum(np.sqrt(np.sum(xa**2, axis=1)))
        if color_sum + 1e-12 < full:
            raise AssertionError("l1/l2 comparison failed")


def main() -> None:
    gammas = euclidean_gammas()
    check_clifford(gammas)
    err = check_bivector_traces(gammas)
    check_structure_constants()
    check_l1_l2()
    print("clifford_relations: PASS")
    print(f"bivector_HS_max_error: {err:.3e}")
    print("fabc_potential_identity: PASS")
    print("color_l1_ge_l2: PASS")
    print("scope: algebraic identities only; not a proof of Theorem 1.1")


if __name__ == "__main__":
    main()