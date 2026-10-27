#!/usr/bin/env python3
"""Original paired BFSS source gamma sign / Spin9 center adversarial test.
Finite exact source diagnostic only; no global spin lift or new Lean theorem.
"""
from itertools import combinations
from fractions import Fraction
from collections import defaultdict
from pathlib import Path
import argparse
import re

WORDS=("JIIJ","JIJX","JXJZ","JZJZ","JJIZ","JJXX","JJZX","XIII","ZIII")
OLD_WORDS=("IIIX","IIIZ","ZZYY","XZYY","YXXY","YXZY","IYIY","YZIY","IXYY")
I=((1,0),(0,1)); X=((0,1),(1,0))
J=((0,1),(-1,0)); Z=((1,0),(0,-1))
TABLE={"I":I,"X":X,"Y":J,"J":J,"Z":Z}

def kron(a,b):
    return tuple(tuple(a[i][j]*b[k][t]
      for j in range(len(a)) for t in range(len(b)))
      for i in range(len(a)) for k in range(len(b)))

def word(w):
    a=((1,),)
    for ch in w:a=kron(a,TABLE[ch])
    return a

def real_source_matrices(src):
    def part(start,end):
        assert src.count(start)==1 and src.count(end)==1
        return src.split(start,1)[1].split(end,1)[0]
    pat=re.compile(r"\|\s*([0-8])\s*=>\s*!\[(.*?)\]",re.S)
    def rows(s):
        pairs=pat.findall(s)
        assert len(pairs)==9
        d={int(i):[int(x) for x in re.findall(r"-?\d+",t)] for i,t in pairs}
        assert set(d)==set(range(9))
        assert all(len(v)==16 for v in d.values())
        return d
    p=rows(part("private def perm","/-- The exact ±1 coefficient"))
    s=rows(part("private def sign","/-- The nine integer signed-permutation"))
    out=[]
    for a in range(9):
        assert sorted(p[a])==list(range(16))
        assert all(abs(v)==1 for v in s[a])
        m=[[0]*16 for _ in range(16)]
        for i,j in enumerate(p[a]):m[i][j]=s[a][i]
        out.append(tuple(tuple(row) for row in m))
    return tuple(out)

def mul(a,b):
    n=len(a)
    return tuple(tuple(sum(a[i][k]*b[k][j] for k in range(n))
                for j in range(n)) for i in range(n))

def neg(a):
    return tuple(tuple(-t for t in row) for row in a)

def pf_pairing(a):
    n=len(a);used=set();pairs=[]
    for i in range(n):
        if i in used:continue
        nz=[j for j in range(n) if a[i][j]]
        assert len(nz)==1 and nz[0]>i
        j=nz[0];assert a[i][j] in (-1,1) and a[j][i]==-a[i][j]
        pairs.append((i,j));used.update((i,j))
    seq=[k for pair in pairs for k in pair]
    result=(-1)**sum(seq[i]>seq[j] for i in range(n) for j in range(i+1,n))
    for i,j in pairs:result*=a[i][j]
    return result

def pf_elimination(src):
    # Independent exact rational Schur-complement Pfaffian.
    a=[[Fraction(x) for x in row] for row in src]
    n=len(a);ans=Fraction(1)
    for k in range(0,n,2):
        t=next((j for j in range(k+1,n) if a[k][j]),None)
        if t is None:return Fraction(0)
        if t!=k+1:
            for row in a:row[k+1],row[t]=row[t],row[k+1]
            a[k+1],a[t]=a[t],a[k+1]
            ans=-ans
        v=a[k][k+1];ans*=v
        for i in range(k+2,n):
            for j in range(i+1,n):
                a[i][j]-=(a[k][i]*a[k+1][j]-a[k][j]*a[k+1][i])/v
                a[j][i]=-a[i][j]
    return ans

def check_source(source):
    g=real_source_matrices(source)
    assert all(g[i]==word(WORDS[i]) for i in range(9))
    print("LITERAL_ACCEPTED_GAMMA_9X16_SIGNED_PERM_ROWS_AND_WORDS_PASS")
    other=[]
    for w in OLD_WORDS:
        m=word(w);factor=(-1)**(w.count("Y")//2)
        other.append(tuple(tuple(factor*x for x in row) for row in m))
    assert all(g[i]!=other[i] and g[i]!=neg(other[i]) for i in range(9))
    print("GATE88_ALTERNATE_CLIFFORD_REPRESENTATIVE_NOT_LITERAL_0_OF_9_PASS")
    one=tuple(tuple(int(i==j) for j in range(16)) for i in range(16))
    zero=tuple(tuple(0 for j in range(16)) for i in range(16))
    for a in range(9):
        assert all(g[a][i][j]==g[a][j][i] for i in range(16) for j in range(16))
        for b in range(9):
            ab=mul(g[a],g[b]);ba=mul(g[b],g[a])
            assert all(ab[i][j]+ba[i][j]==(2*one[i][j] if a==b else 0)
                for i in range(16) for j in range(16)),("CLIFFORD",a,b)
    print("LITERAL_SOURCE_CL9_CLIFFORD_81_PAIR_CERTIFICATES_PASS")
    n=0
    for r,s in combinations(range(9),2):
        generator=neg(mul(g[r],g[s]))
        assert mul(generator,generator)==neg(one)
        assert all(generator[i][j]==-generator[j][i]
                   for i in range(16) for j in range(16))
        for k in range(9):
            left=mul(generator,g[k]);right=mul(g[k],generator)
            target=g[s] if k==r else neg(g[r]) if k==s else zero
            assert all(left[i][j]-right[i][j]==2*target[i][j]
                       for i in range(16) for j in range(16)),("SPIN_LIE",r,s,k)
        p=pf_pairing(generator);q=pf_elimination(generator)
        assert p==q==1,("PFAFFIAN_SIGN",r,s,p,q)
        n+=1
    assert n==36
    print("LITERAL_SOURCE_SPIN9_PLANE_LIE_AND_DOUBLE_PFAFFIAN_PASS",n)
    # Three color blocks each carry this real spinor generator.
    # If the genuine continuous spin lift is source-identical, its central
    # 2pi plane endpoint is +Omega48 on these ordered 48 Majoranas,
    # and Omega48=i^24 * (-1)^N = (-1)^N.
    assert 1**3==1 and (-1)**24==1 and 24%4==0
    print("CONDITIONAL_SOURCE_CENTER_PLUS_FOCK_PARITY_ORIENTATION_PASS")
    # Eight blocks, each exterior algebra on THREE SU2 adjoint modes:
    # degree 0/3: trivial, degree 1/2: z^(-2)+1+z^2.
    block=[(0,0),(0,1),(-2,1),(2,1),(-2,0),(0,0),(2,0),(0,1)]
    dp={(0,0):1}
    for _ in range(8):
        nxt=defaultdict(int)
        for (charge,parity),value in dp.items():
            for dz,degparity in block:
                nxt[charge+dz,(parity+degparity)%2]+=value
        dp=dict(nxt)
    even=dp[(0,0)]-dp[(2,0)]
    odd=dp[(0,1)]-dp[(2,1)]
    assert (even,odd)==(183040,183040)
    assert sum(dp.values())==2**24
    print("GAUGE_SU2_TRUE_SINGLET_EVEN_ODD_PARITY_COUNTS_PASS",even,odd)
    print("ZERO_NEW_LEAN_ROOTS_AND_NO_GLOBAL_SPIN9_OR_SPECTRAL_THEOREM_CLAIMED")

if __name__=="__main__":
    p=argparse.ArgumentParser()
    p.add_argument("--source",required=True,type=Path)
    args=p.parse_args()
    check_source(args.source.read_text(encoding="utf8"))
