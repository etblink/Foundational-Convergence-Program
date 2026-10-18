"""Run from the FCP checkout to reproduce the exact source Cl(9) grade test.
No numpy, floats, Fock matrices, or replacement gamma definitions.
"""
from pathlib import Path
from hashlib import sha1
from itertools import combinations
import re
src=Path(__file__).resolve().parents[1]/"openai-math-su2-concrete-potential"
pin={"SU2RealGammaProbe.lean":"5ec0fcb039fb5c1367f72b2bd0f8c05fcd936587",
"SU2BFSSFullAlgebraDataProbe.lean":"fe3e0b21bb60d74b54c9faf7c066db9b02939405",
"SU2BFSSG1APairedThetaProbe.lean":"4f8fbf05a35c1d625746931b7ff0361b7ffc2ec4"}
files={}
for name,expected in pin.items():
 data=(src/name).read_bytes()
 assert sha1(b"blob "+str(len(data)).encode()+b"\0"+data).hexdigest()==expected
 files[name]=data.decode("utf8")
assert "gamma := FCP.BFSSGamma9.gamma" in files["SU2BFSSFullAlgebraDataProbe.lean"]
assert "gamma := concreteAlgebraData.gamma" in files["SU2BFSSG1APairedThetaProbe.lean"]
s=files["SU2RealGammaProbe.lean"]
def block(a,b):
 x=s[s.index(a):s.index(b,s.index(a)+len(a))]
 rows=[None]*9
 for i,val in re.findall(r"\|\s*(\d+)\s*=>\s*!\[([\s\S]*?)\]",x):
  rows[int(i)]=tuple(map(int,re.findall(r"-?\d+",val)))
 assert all(row is not None and len(row)==16 for row in rows)
 return rows
perms=block("private def perm","/-- The exact ±1")
signs=block("private def sign","/-- The nine integer")
assert all(sorted(p)==list(range(16)) for p in perms)
assert all(set(v)<= {-1,1} for v in signs)
id16=(tuple(range(16)),(1,)*16)
def mul(a,b):
 ap,sg=a;bp,tg=b
 return (tuple(bp[ap[i]] for i in range(16)),
         tuple(sg[i]*tg[ap[i]] for i in range(16)))
def trace(a):
 p,v=a;return sum(v[i] for i in range(16) if p[i]==i)
gam=list(zip(perms,signs))
sets=[()]+[(i,) for i in range(9)]+list(combinations(range(9),4))
assert len(sets)==136
basis=[]
for inds in sets:
 q=id16
 for i in inds:q=mul(q,gam[i])
 basis.append(q)
for p,v in basis:
 for i in range(16): assert p[p[i]]==i and v[i]==v[p[i]]
for i,A in enumerate(basis):
 for j,B in enumerate(basis):
  assert trace(mul(A,B))==(16 if i==j else 0),(i,j)
for j,A in enumerate(basis):
 lam=9 if j==0 else (-7 if j<10 else 1)
 F=[[0]*16 for _ in range(16)]
 for gi in gam:
  p,v=mul(mul(gi,A),gi)
  for i in range(16):F[i][p[i]]+=v[i]
 p,v=A
 for i in range(16):
  for k in range(16):
   assert F[i][k]==(lam*v[i] if p[i]==k else 0),(j,i,k)
print("PASS 136 symmetric gamma-grade basis elements")
print("PASS 18,496 exact trace-Gram entries; 34,816 sandwich entries")
print("Phi eigenvalues by grade: zero=9, one=-7, four=+1")
print("NOT a Lean certification or a full BFSS spectral proof")
