# BFSS real symmetric Gamma(9) — exact construction feasibility 0.1.0

**Date:** 2026-10-07
**Disposition:** \`EXPLICIT_EXACT_GAMMA9_REPRESENTATION_FOUND__LEAN_PROOF_NOT_YET_SUBMITTED\`
**Authoritative external type:** \`OAI.BFSSQuantum.AlgebraData.gamma\` and its \`gamma_symmetric\`, \`gamma_clifford\` fields in \`openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a:lean/OAI/MathematicalPhysics/BFSS/Core.lean\`.
**Effects boundary:** FCP research documentation only; no new Lean CI proof gate, no FCP main or OpenAI upstream mutation.

## Scientific outcome

A *small exact* 16×16 construction exists in four real Pauli tensor factors. It avoids any need to construct 2²⁴-by-2²⁴ fermionic matrices merely to instantiate the nine real gamma matrices.

Let the following **integer** 2×2 matrices act on a two-dimensional real vector space:

\`\`\`
I = [[1,0],[0,1]]
X = [[0,1],[1,0]]
Z = [[1,0],[0,-1]]
J = [[0,1],[-1,0]]
\`\`\`

These obey \`X²=Z²=I\`, \`J²=-I\`, and each two distinct nonidentity members of \`{X,Z,J}\` anticommute. Also \`I,X,Z\` are symmetric and \`J\` is skew-symmetric.

For a four-letter word \`ABCD\`, write \`[ABCD]=A⊗B⊗C⊗D\`. Define \`G : Fin 9 → Mat16(ℝ)\` by:

\`\`\`
G0 = [JIIJ]
G1 = [JIJX]
G2 = [JXJZ]
G3 = [JZJZ]
G4 = [JJIZ]
G5 = [JJXX]
G6 = [JJZX]
G7 = [XIII]
G8 = [ZIII]
\`\`\`

The first seven also have the 8×8 block representation \`Gk=[[0,Tk],[-Tk,0]]\` where the seven skew 8×8 signed tensor matrices \`Tk\` are \`IIJ,IJX,XJZ,ZJZ,JIZ,JXX,JZX\`; \`G7=[[0,I₈],[I₈,0]]\`, \`G8=diag(I₈,-I₈)\`.

### Exact certificate

- Every four-letter gamma word contains an **even** number of \`J\` factors. It is therefore symmetric and squares to the identity.
- For any distinct gamma words, the number of positions with two *different nonidentity* Pauli letters is odd. Hence the matrices anticommute.
- Thus **for all** \`i,j : Fin 9\`, \`G i * G j + G j * G i = (if i=j then 2 else 0) • 1\`; **for all** \`i\`, \`(G i).IsSymm\`.

This is an algebraic all-index proof outline, not numerical sampling. In addition, a direct exact **integer** 16×16 Kronecker-matrix multiplication check evaluated all **81/81** ordered anticommutators and all nine symmetry checks, with zero discrepancies. This independent finite verification was run in the Project Lead's analysis environment; it is not a Lean kernel certificate. A short independently executable stdlib-only verifier is supplied below.

## Reproduction script (Python 3, standard library only)

\`\`\`python
I=((1,0),(0,1))
X=((0,1),(1,0))
Z=((1,0),(0,-1))
J=((0,1),(-1,0))
letters={"I":I,"X":X,"Z":Z,"J":J}
words=("JIIJ","JIJX","JXJZ","JZJZ","JJIZ","JJXX","JJZX","XIII","ZIII")

def kron(a,b):
    return tuple(tuple(v*w for v in ra for w in rb)
                 for ra in a for rb in b)
def tensor(word):
    m=((1,),)
    for ch in word:
        m=kron(m,letters[ch])
    return m
def dot(a,b):
    bt=tuple(zip(*b))
    return tuple(tuple(sum(x*y for x,y in zip(ra,cb)) for cb in bt)
                 for ra in a)
def transpose(a):
    return tuple(zip(*a))
def add(a,b):
    return tuple(tuple(x+y for x,y in zip(ra,rb))
                 for ra,rb in zip(a,b))
def ident(n):
    return tuple(tuple(int(i==j) for j in range(n)) for i in range(n))
def scalar(n,a):
    return tuple(tuple(n*x for x in row) for row in a)
g=tuple(tensor(w) for w in words)
zero=scalar(0,ident(16))
assert len(g)==9 and all(len(a)==16 for a in g)
assert all(transpose(a)==a for a in g)
assert all(
    add(dot(a,b),dot(b,a))==(scalar(2,ident(16)) if i==j else zero)
    for i,a in enumerate(g) for j,b in enumerate(g)
)
print("EXACT_GAMMA9_PASS: 9 real-symmetric 16x16 matrices; 81/81 Clifford relations")
\`\`\`

## Lean execution feasibility

**Go for one bounded constructive Lean experiment**, not a full BFSS \`AlgebraData 2\` instance. The target is a theorem witnessing precisely:

\`\`\`lean
∃ gamma : OAI.BFSSQuantum.SpaceIndex → OAI.BFSSQuantum.GammaMatrix,
  (∀ i, (gamma i).IsSymm) ∧
  (∀ i j, gamma i * gamma j + gamma j * gamma i =
    (if i = j then 2 else 0) • (1 : OAI.BFSSQuantum.GammaMatrix))
\`\`\`

The recommended Lean proof design is to use \`Matrix.kronecker\`, a finite index equivalence between four binary digits and \`Fin 16\`, and the elementary local identities of \`I,X,Z,J\`. For performance, prefer composing algebraic tensor-word proofs rather than expanding 81×256 matrix entry subgoals. As a backup, perform decidable rational finite-matrix checks and transport the resulting identities to ℝ via an explicit ring homomorphism; no kernel-unsafe shortcut, \`sorry\`, or external proof oracle is acceptable.

**Important implementation challenge:** \`Matrix.kronecker\` naturally indexes the tensor product by nested products \`Fin 2 × ...\`, whereas the pinned \`GammaMatrix\` uses \`Fin 16\`. The reindexing map and its preservation of multiplication, identity and transpose must be proved or sourced; **do not quietly replace the upstream gamma type**.

**Stop rule:** Commit exactly one scoped candidate and CI workflow sufficient to compile the actual pinned upstream field signature and print the axiom report. If the interface or proof performance is prohibitive, document that obstacle and stop to reassess. The fermionic \`theta\` representation and \`theta_irreducible\`, gauge group action, and spectral theorem are out of scope. A successful gamma witness would only discharge two additional fields of \`AlgebraData 2\`.

## Program decision

The favorable first source-review report supports attempting this reusable exact construction. It does **not** prove the manuscript's positive-eigenvalue theorem. The reviewer's claimed numerical threshold for spectral confinement is **not independently established**. Keep any public upstream contribution discussion gated on genuinely useful, upstream-scoped, separately verified artifacts and explicit owner permission.
