from pathlib import Path

path = Path("SOURCE_REGISTER.md")
text = path.read_text(encoding="utf-8")
marker = "SRC-OPENAI-NS-2026-PAPER"
if marker in text:
    print("OpenAI Navier-Stokes registration already present; no change.")
    raise SystemExit(0)

addition = r'''

### OpenAI Navier–Stokes 2026 — separately authorized source and formal-reproducibility record

These records postdate the active K9 closed-corpus freeze. They are canonical FCP source/provenance entries but are **not admissible evidence inside that frozen K9 run**. Registration records an independently reproduced formal certificate at the pinned state; it does not imply independent human proof review, global mathematical consensus, Clay recognition, framework admission, K1–K10 credit, E1–E5 credit, recurrence credit, empirical credit, or physical canonicity.

| Source ID | Framework / role | Authority | Location | Status | Notes |
|---|---|---|---|---|---|
| `SRC-OPENAI-NS-2026-PAPER` | Generic mathematics / nonlinear PDE theorem source; no FCP framework assignment | OpenAI, *Finite Time Blowup for Navier–Stokes* (2026) | OpenAI paper released 2026-09-08; canonical FCP assessment `audits/OPENAI_NAVIER_STOKES_2026_SOURCE_ASSESSMENT_0_1_0.md` | `SOURCE_BOUND` | Forced 3D incompressible Navier–Stokes result only. Smooth compactly supported forcing is essential; this entry does not assert blowup for the unforced 3D Cauchy problem. `K9_CLOSED_CORPUS_EFFECT=NONE`; `CONVERGENCE_CREDIT=NONE`; `EMPIRICAL_CREDIT=NONE`. |
| `SRC-OPENAI-NS-2026-LEAN` | Formal certificate / independent reproducibility provenance for the preceding theorem source | OpenAI `NavierStokesAndEuler` Lean 4 repository; independently replayed by FCP | repo `openai/NavierStokesAndEuler`; commit `f9e8bc5b38b6e212696e8a30e3e91517af887bbd`; tree `a503f07635f200c0f2f9c5361df1fa07f95c4741`; FCP CI run `34532064891`; result `audits/OPENAI_NAVIER_STOKES_2026_REPRODUCIBILITY_AUDIT_RESULT_0_1_0.md` | `SOURCE_BOUND` | `INDEPENDENT_FORMAL_REPRODUCIBILITY=PASS`: exact checkout, proof-hole gate, 9,580-job Navier–Stokes build, comparator-solution recompilation, pinned Landrun/Comparator builds, and Comparator replay of Clay alternatives C/D all passed. Exported theorems depend only on `propext`, `Classical.choice`, and `Quot.sound`; Lean default kernel accepted the solution. This is not independent human proof review or Clay recognition. |
'''

path.write_text(text.rstrip("\n") + addition + "\n", encoding="utf-8", newline="\n")
print("Appended OpenAI Navier-Stokes source-register section.")
