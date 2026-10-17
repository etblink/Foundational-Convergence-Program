# BFSS SU(2) S3L accepted source-checkpoint 0.1.0

**State:** S3L0 AND S3L1 QUALIFIED; S3L2+ PROSPECTIVE / NOT ACCEPTED.  
**Scope:** source-defined concrete `pairedAlgebraData : AlgebraData 2` in pinned `openai/math`; not a full Spin(9) action or positive point spectrum theorem.  
**Pins:** OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.  
**PR:** #25, stacked draft over green S3K PR #24; unmerged. `main` remains untouched.

## Accepted by the pinned kernel

- **S3L0, coefficient test:** `FCP.BFSSSU2PhysicalDomainS3L0.pairedKineticSpinorCoefficient_exact`, green source gate **#3** https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38113962653 and rechecked in **#8** https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38114986199. For genuine source `J_ij := 1/2 gammaTwo_ij`, distinct i,j, and every k, the exact source matrix equation is
  ```
  gamma_k * J_ij.transpose - [J_ij, gamma_k] = -(J_ij * gamma_k).
  ```
  Here the bracket is the actual source S3B gamma commutator, not an assumed orbital operator identity. Its conditional i,j,k coefficient expression is proved against S3B.
- **S3L1, exact orbital smooth-core source:** `FCP.BFSSSU2PhysicalDomainS3L1.pairedSourceOrbitalPlaneGenerator_apply`, green **#8** https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38114986199. Define `L_ij` by the literal finite sum
  ```
  sum_A ((position i A).comp (coordinateDerivative j A)
        - (position j A).comp (coordinateDerivative i A))
  ```
  on `SmoothCore 2`. The accepted proof identifies its evaluation at x with
  ```
  sum_A (x_i^A * fderiv(f)(x)[e_(j,A)]
        - x_j^A * fderiv(f)(x)[e_(i,A)]).
  ```
  The position and derivative maps are the actual pinned upstream namespace functions; no replacement coordinate model. Since those endomorphisms preserve `SmoothCore 2`, so does `L_ij`.

Both passes required restored pinned dependency objects, exact accepted S3A/S3B source identity checks, actual Lean object generation, and `#print axioms` whose dependencies were confined to `propext`, `Classical.choice`, and `Quot.sound`. Neither pass included `sorryAx`.

The supplemental original BFSS Physical Domain Bridge **#213** also passed during the temporary cache-qualification PR-base window, reconfirming the S3K source modules. The parent base of PR #25 has been restored to S3K. The temporary full-workflow quarantine has been removed.

## Next decisive mathematical obligation: S3L2

The testable next result is a direct, source-defined **two-form covariance coefficient** for the cubic supercharge term. Starting from `gammaTwo_{kl} = (gamma_k gamma_l - gamma_l gamma_k)/2` and accepted S3B:
```
[J_ij, gammaTwo_(kl)] =
  (1/2) * ( [J_ij,gamma_k] gamma_l
          + gamma_k [J_ij,gamma_l]
          - [J_ij,gamma_l] gamma_k
          - gamma_l [J_ij,gamma_k] ).
```
This is ordinary noncommutative matrix algebra but must be proved on the exact original Clifford matrices and compared to the orbital product-rule contribution from the source `x_k^B x_l^C` coefficients. Reject an incorrect sign rather than redefining the supercharge.

Concurrently, use S3L1 to prove source commutators with **original** `position` and `coordinateDerivative` on the true compactly supported `SmoothCore 2`, including explicit product and second-derivative cancellation. Only then combine with accepted S3E and the literal source 16-charge expression to prove:
```
[(L_ij + K_ij), Q_alpha] f =
  -sum_beta (J_ij)_(alpha,beta) * Q_beta(f).
```
The sign and coefficients are **targets** to check directly against the original source `charge`; `K_ij` must use the literal source Fock generator postcomposed on the original test-function space. No theorem is accepted until the exact pinned Lean gate passes.

## What this does not prove

- An integrated joint `Spin(9)` action on the physical Hilbert space;
- preservation of the full closed supercharge **form domain** by finite-time spatial rotations;
- invariance of the natural closed D2B28 self-adjoint Hamiltonian domain or commutation with the Hamiltonian;
- highest-weight reduction, transverse oscillator exclusions, compact resolvent, or positive eigenvalues.

Those are separate, currently open scientific steps. The pinned manuscript's positive-point-spectrum theorem should be tested, not assumed. Preserve this negative knowledge and focus on the earliest load-bearing source-level claim.
