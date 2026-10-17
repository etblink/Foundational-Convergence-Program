"""Source-exact BFSS fermionic B-norm: sharp C=16 sqrt(2/3).
Run: python3 BFSS_SHARP_FERMION_LINEAR_NORM_CHECK_0_1_0.py
Requires NumPy. Uses SVD on a 48x48 label matrix, NEVER a 2**24 Fock matrix.
Numerical regression supports; the adjacent memo proves the sharp bound.
"""
import numpy as np
from numpy.linalg import eigvalsh, norm, svd

PAULI = {
    "I": np.eye(2, dtype=int),
    "X": np.array([[0, 1], [1, 0]], dtype=int),
    "Y": np.array([[0, 1], [-1, 0]], dtype=int),
    "Z": np.diag([1, -1]),
}
WORDS = ["IIIX", "IIIZ", "ZZYY", "XZYY", "YXXY",
         "YXZY", "IYIY", "YZIY", "IXYY"]
G = []
for word in WORDS:
    a = np.ones((1, 1), dtype=int)
    for char in word:
        a = np.kron(a, PAULI[char])
    G.append((-1)**(word.count("Y")//2)*a)
G = np.stack(G)
I = np.eye(16, dtype=int)
Z = np.zeros((16, 16), dtype=int)
for i in range(9):
    assert np.array_equal(G[i].T, G[i])
    for j in range(9):
        assert np.array_equal(G[i]@G[j]+G[j]@G[i],
                              2*I if i==j else Z)

def K_of_x(x):
    """x[a,i]; B=(i/2) sum_(A<B) K_AB Gamma_A Gamma_B."""
    out = np.zeros((48,48),dtype=float)
    for a in range(3):
        b, c = (a+1)%3, (a+2)%3
        block = np.sqrt(2) * np.einsum("i,ijk->jk",x[a],G)
        out[16*b:16*(b+1),16*c:16*(c+1)] = block
        out[16*c:16*(c+1),16*b:16*(b+1)] = -block.T
    assert np.max(np.abs(out+out.T))<1e-12
    return out

def A_of_t(t):
    a,b,c=t
    return np.sqrt(2)*np.array([[0,c,b],[c,0,a],[b,a,0.]])

def full_B_norm(x):
    # Standard CAR normal form gives ||B||=Tr|K|/4.
    return svd(K_of_x(x),compute_uv=False).sum()/4

def reduced_B_norm(x):
    # Singular values of the 9x3 real bosonic configuration.
    t=svd(x,compute_uv=False)
    return 8*eigvalsh(A_of_t(t))[-1]

sharp=16*np.sqrt(2/3)
for t in [
    np.array([1.,0.,0.]),
    np.array([0.,.6,.8]),
    np.ones(3)/np.sqrt(3),
    np.array([.7,.4,np.sqrt(.35)]),
    np.array([.5,.5,np.sqrt(.5)]),
]:
    x=np.array([t[a]*np.eye(9)[a] for a in range(3)])
    K=K_of_x(x)
    A=A_of_t(t)
    # Every eigenvalue of A and its opposite appears eight times in iK.
    full=np.sort(np.linalg.eigvalsh(1j*K))
    reduced=np.sort(np.r_[np.tile(eigvalsh(A),8),
                          np.tile(-eigvalsh(A),8)])
    assert np.max(abs(full-reduced))<1e-9
    assert abs(full_B_norm(x)-8*eigvalsh(A)[-1])<1e-9
    assert full_B_norm(x)<=sharp*norm(x)+1e-9
print("PASS five canonical configurations: full 48-label spectrum vs 3x3 reduction")
for seed in range(30):
    x=np.random.default_rng(seed).normal(size=(3,9))
    x/=norm(x)
    assert abs(full_B_norm(x)-reduced_B_norm(x))<1e-9
    assert full_B_norm(x)<=sharp+1e-9
print("PASS 30 arbitrary normalized original x configurations")
x=np.eye(9)[:3]/np.sqrt(3)
assert abs(full_B_norm(x)-sharp)<1e-9
assert 40/3-sharp>0
assert 39/3-sharp<0
assert 2*19>31+6 and 2*18<=31+6
print(f"SHARP C={sharp:.12f}; m_min=31, lambda_2>37, uniform k=19")
print("Proof requires the CAR normal form and the 3x3 Rayleigh bound;")
print("this numerical script alone is NOT a spectral theorem or Lean certificate.")
