"""Exact algebraic regression for original BFSS SU(2) coupling dilation.

No external dependencies. D_s f(x)=s^(27/2) f(s*x), g=t^3, s=1/t.
For the original Q_g=A+gW: D_s Q_g D_s^-1=s^-1 A+g*s^2 W.
On the gauge smooth core H_g=(1/16)sum Q_g^2.
"""
from fractions import Fraction as F

for t in [F(1,5),F(1,2),F(1),F(2),F(3),F(5),F(11,3)]:
    g=t**3
    s=1/t
    qfactor=t
    hfactor=t**2
    # Kinetic and quadratic x^2 supercharge coefficients.
    assert 1/s==qfactor
    assert g*s*s==qfactor
    # Hessian, quartic bosonic and linear fermionic H coefficients.
    assert 1/(s*s)==hfactor
    assert g*g*s**4==hfactor
    assert g*s==hfactor
    # L2 normalization of D_s on R^27 via change of variables.
    assert (s**27)*(s**-27)==1
    print("PASS: g=",g,"s=",s,"Q-factor=",qfactor,"H-factor=",hfactor)
print("All seven rational-cube coupling tests passed exactly.")
print("This is a scalar-algebra regression; the memo supplies the operator and form-domain argument.")
