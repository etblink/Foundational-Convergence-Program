from itertools import combinations
import numpy as np

# Use J = iY, an integer real matrix. Every selected word has zero or
# two Y factors, so restoring Y contributes the exact sign (-1)^(nY/2).
P = {
    'I': np.eye(2, dtype=np.int64),
    'X': np.array([[0, 1], [1, 0]], dtype=np.int64),
    'Y': np.array([[0, 1], [-1, 0]], dtype=np.int64),
    'Z': np.diag(np.array([1, -1], dtype=np.int64)),
}
WORDS = ['IIIX', 'IIIZ', 'ZZYY', 'XZYY', 'YXXY',
         'YXZY', 'IYIY', 'YZIY', 'IXYY']
G = []
for word in WORDS:
    g = np.ones((1, 1), dtype=np.int64)
    for letter in word:
        g = np.kron(g, P[letter])
    G.append((-1)**(word.count('Y')//2) * g)
I = np.eye(16, dtype=np.int64)
Z = np.zeros((16, 16), dtype=np.int64)
for i, g in enumerate(G):
    assert np.array_equal(g.T, g)
    for j, h in enumerate(G):
        assert np.array_equal(g@h + h@g, 2*I if i == j else Z)
        assert np.trace(g.T@h) == (16 if i == j else 0)
pairs = list(combinations(range(9), 2))
V = {(j, k): G[j]@G[k] for j, k in pairs}
for pair, v in V.items():
    assert np.array_equal(v.T, -v)
    for other, w in V.items():
        assert np.trace(v.T@w) == (16 if pair == other else 0)
    for g in G:
        assert np.trace(g.T@v) == 0
# Dividing the coefficient of f_cab*x_l^b in the derivative contraction
# by f_cab leaves this sum. In dimension nine its value is 8*gamma_l.
for l in range(9):
    result = Z.copy()
    for j, k in pairs:
        if k == l:
            result += G[j]@V[j, k]
        if j == l:
            result -= G[k]@V[j, k]
    assert np.array_equal(result, 8*G[l])
print('real_symmetric_Cl9: PASS (integer arithmetic)')
print('transpose_vector_and_bivector_traces: PASS (integer arithmetic)')
print('cross_derivative_contraction: PASS (8 gamma_l; B coefficient i/2)')
print('scope: finite gamma identities only; not Theorem 1.1 or a Lean proof')
