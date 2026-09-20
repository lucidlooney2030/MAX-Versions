# Wound-coil envelope audit — 2026-09-20 (ET)

Assumptions: 26 AWG OD≈0.45 mm; 30 AWG OD≈0.30 mm; pancake axial build ≈ layers×OD×fill0.7 on both faces; PASS requires explicit `wind_build`/`wound_h`/`coil_envelope` **and** ≥0.5–1.0 mm magnet↔**wound** face clearance.

| Gen | Night | Verdict | Gap / stack (as specified) | Bare former stack | Est. wound note @ stated AWG/turns | Why |
|-----|-------|---------|----------------------------|-------------------|--------------------------------------|-----|
| **A** dual-6coil AFPM | 09-17 | **FAIL** | M2M ~7 mm (“coil+clearance”) | H=6.4 mm (flange1.2+core4+flange1.2) | 30 AWG ~400 t; residual **0.3 mm/side** to bare flange — below 0.5 mm even before face build | No wound budget; M2M ≈ bare stack; <0.5 mm running clearance |
| **B** dual-12coil AFPM | 09-17 | **FAIL** | M2M ~7 mm | H=5.6 mm | 30 AWG ~250 t → ~0.7 mm/side to **bare** flange; no named envelope; copper face-build eats margin | No `wind_build`/`coil_envelope`; gap is bare-former based |
| **C** hybrid return | 09-17 | **FAIL** | Mag→steel ~3–4 mm “plus former” | H=5.6 mm (Gen-B former) | 30 AWG ~200–250 t; single-sided stack does not budget wound H | Gap language treats former STL, not wound pack |
| **D** radial outrunner | 09-18 | **FAIL** | Mag→tooth ~1.0–1.5 mm; rotor OD116 / stator ID120 | Bobbin flanges ~8 mm wide in slot_w=14; body_d=14 in slot_depth=16 | 26 AWG ~100 t → ~5 mm-class copper cross-section; slot spare ~1.5 mm circ. total | Slots hug bare bobbin; no radial wound allowance / no envelope param |
| **E** nested dual-ring | 09-18 | **FAIL** | M2M ~7 mm | H=7.5 mm (`wind_h=4.5` is **cavity**, not envelope) | 30 AWG ~350 t; **bare former already > M2M** | Interference even unwound; `wind_h` ≠ wound budget |
| **F** spoke-flux | 09-18 | **FAIL** | Mag→return ~3–5 mm “plus former” | H=15.2 mm bobbin | 26 AWG ~100–140 t; window cuts sized to bare former | No wound envelope; gap ignores copper proud of flanges |
| **G** Halbach barrel | 09-19 | **FAIL** | **Explicit** “magnet face → coil former tip” 1.0–1.5 mm | Bobbin body_w=11 in slot_w=12; body_d=16 in depth=18 | 26 AWG ~100 t; annular clearances from bare stator ID/OD | Magnet-to-**bare-former**; slots hug bare OD |
| **H** unequal 10+6 | 09-19 | **FAIL** | M2M ~7 mm | H=7.0 mm | 30 AWG ~320 t; **0.0 mm** residual to bare flanges | M2M = former thickness only |
| **I** claw Lundell | 09-19 | **FAIL** | Mag→stator ~2–3 mm; stator→claw ~1.5–2.5 | H=6.8 mm on core_t=5 seat | 26 AWG ~110 t; former taller than stated mag–stator gap | Stack sized to bare seats, not wound H |
| **J** dual-stator sandwich | 09-20 | **FAIL** | **Explicit** “magnet face → former” 2.5–3.5 mm + gap_spacer | H=5.2 mm | 26 AWG ~120–160 t; spacers reference bare stack | Magnet-to-bare-former by README; no `coil_envelope` |
| **K** outer-bias barrel | 09-20 | **FAIL** | Radial 1.0–1.5 mm both faces (Gen-G pattern) | Same bobbin family as G, taller H | 26 AWG ~110 t | Same bare-former / tight-slot failure as Gen-G |
| **L** vernier AFPM | 09-20 | **FAIL** | M2M ~7 mm / mag→former 2.5–3.5 mm | H=5.4 mm | 26 AWG ~80–120 t; ~0.8 mm/side to bare only | No wound budget; magnet-to-former language |

**Summary: 12 / 12 FAIL.** No design PASSes. Champions and print-packs for Gen-A–L withdrawn.

