# BFSS S1V23 — Stage A L6G5H physical source prefix gate #1 red: strictly local-namespace validator false negative

**Date:** 2026-10-19 PDT. **Disposition:** `THREE_ORIGINAL_MODULES_STRICT_VALIDATED__FOURTH_LEAN_COMPILED__VALIDATOR_EXTERNAL_QUALIFIED_ROOT_MISMATCH__STAGE_A_CACHE_NOT_SAVED__NO_SOURCE_ERROR`.

## Primary job evidence
- [Historical original L6G5H source prefix strict gate #1, run #39313495815](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39313495815), job `118268895335`, outcome **failure** in the per-module strict audit step, not compilation.
- All exact original source blob hashes, original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, restored accepted G4M `.olean` and upstream OAI prerequisite build **passed**.
- L6G1 original source: **2** printed roots, compiled and validator reported `HISTORICAL_ORIGINAL_L6G5H_PREFIX_ROOTS_PASS`.
- L6G2: **5** roots, compiler and validator passed.
- L6G3: **8** roots, compiler and validator passed, including actual generated `_private.SU2BFSSPhysicalDomainL6G3OriginalChargeNormalOrderProbe.0.FCP.BFSSSU2PhysicalDomainL6G3.carNormalOrder`, no leaked `sorryAx`.
- L6G4A original `SU2BFSSPhysicalDomainL6G4AOriginalCoreCalculusProbe.lean` **compiled successfully** to `.olean`, printed all **5** exact kernel axioms with only `[propext, Classical.choice, Quot.sound]`. The source explicitly prints `#print axioms OAI.BFSSQuantum.AlgebraData.coordinateDerivative_multiplier` under local namespace `FCP.BFSSSU2PhysicalDomainL6G4A`; Lean correctly reports the external original name `OAI.BFSSQuantum.AlgebraData.coordinateDerivative_multiplier` instead of nesting it in local namespace. Four other roots `sourceD_P_comm`, `sourceD_D_comm`, `sourceP_P_comm`, `sourceD_positionPair_comm` were also printed with allowed axioms.
- The original validator incorrectly hardcoded `k=namespace+'.'+root`; Python asserted `('SU2BFSSPhysicalDomainL6G4AOriginalCoreCalculusProbe', 'OAI.BFSSQuantum.AlgebraData.coordinateDerivative_multiplier', [], ...)`. This is a **validator name-resolution bug**, not a false theorem or changed original math. No later L6G4B/L6G5A–H source compiled; no Stage A cache saved. Diagnostic artifact ID `12216539976`.

## Minimal strict repair

Treat a `#print axioms` item already containing a fully qualified namespace (with a `.`) as its **literal** expected qualified root. Otherwise prepend the local source namespace. Preserve unique literal/fullmatch private-name recognition, every exact root cardinality, rejection of any extra or missing printed roots, allowed axioms only `[propext, Classical.choice, Quot.sound]`, explicit `sorryAx`/compiler-error check, exact original source hashes, toolchain pins, accepted G4M cache restoration, and cache-save-on-complete-success only.

Preflight of all 13 original Stage A sources confirmed this is the **only dotted full external #print axioms item** in the 13 original source files. No change to upstream OAI or FCP mathematical proof files. Avoid unchanged rerun; fix validator, then run exactly its workflow-trigger path on the isolated branch.

## Negative knowledge for successors
A source `#print axioms` line may point either to a local theorem, a Lean-generated private theorem, **or to an explicitly qualified upstream OAI constant**. A strict validator that blindly prepends source namespace can falsely mark a successful original Lean proof red. Validate the *exact elaborated constant* and axiom set, not an artificially invented namespace. The existing L6G1–G4A compiler outputs cannot be treated as a full accepted L6G5H prefix cache. The historical `L6G6X.sourcePlusIGaugeCurve` quarter equality and S1V23 remain open.
