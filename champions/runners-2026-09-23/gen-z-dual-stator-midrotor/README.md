# Gen-Z — Dual-stator mid-rotor Halbach sandwich / wound-aware

**#2 night 2026-09-23 ET.** ONE mid rotor with magnets on **BOTH faces** (full 16×Ø20 + 48×Ø5 kit) between TWO wound pancake stators; outer endbells as flux returns.

**Wound gate: PASS** — see night [WOUND_ENVELOPE.md](../WOUND_ENVELOPE.md).

## Coil count choice

Chose **9 coils × 115 t per stator** (18 total) over 12×90: more turns per phase group, similar copper (~228 m vs ~216 m for 12×90), larger sector span for the copper window. Documented in `parameters.scad`.

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm**; ~1 lb ≈ 390 m |
| Turns | **115** / pancake | 18×115×~0.11 m ≈ **228 m** |
| fill | **0.70** | |
| layers_per_face | **2** | |
| `wind_build_axial` | **0.63 mm** | |
| `wind_build_radial` | **0.882 mm** | |
| `former_web` / `flange_t` | **1.9 / 0.70** | |
| `former_bare_h` | **3.3 mm** | |
| `coil_envelope_h` | **4.56 mm** | |
| `run_clear` | **0.65 mm** | magnet → wound each gap |
| `gap_spacer_h` | **1.28 mm** | |
| `m2m` (per gap) | **5.86 mm** | envelope-based |
| magnet→wound | **0.65 mm** | **PASS** both stator faces |

## Magnet inventory (full kit on ONE mid rotor)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Mid rotor +Z @ R=52 |
| Ø20×5 | **8** | Mid rotor −Z @ R=52, +22.5° |
| Ø5×5 | **24** | +Z Halbach @ R={40,52,64} |
| Ø5×5 | **24** | −Z Halbach (+22.5°) |

Pockets Ø20.3×5.2 / Ø5.3×5.2. Mid carrier thick **12 mm** (dual 5.2 + web).

### Polarity
Each face: alternate N-S with N toward its stator. Halbach smalls reinforce circumferential flux.

### ⚠️ MID-ROTOR CLAP WARNING
Mid-rotor attracts **both** stator stacks (and endbells if steel-backed). Brace with **M4 rods @ R≈68** before approaching either wound stator. Wind all 18 formers first.

## Stack

```
endbell front (flux return)
stator A wound face → run_clear 0.65 → mid rotor +Z magnets
mid rotor body
mid rotor −Z magnets → run_clear 0.65 → stator B wound face
endbell rear (flux return)
```

## Estimated EMF / power

Dual-gap mid-rotor; each stator sees one Halbach-reinforced face. Est. B ≈ 0.55–0.80 T.

| RPM | Est. combined RMS | Est. matched power |
|-----|-------------------|--------------------|
| 120 | ~5–11 V | ~3–7 W |
| **200** | **~11–22 V** | **~8–17 W** |
| 300 | ~17–33 V | ~14–28 W |
| 500–1000 | ~28–70 V | ~22–55 W (thermal) |

## Modular interface

Gen-E family: Ø8 shaft / 608 bearings / 6×M3 @ R=72 / heat-set inserts / 4×M4 brace @ R≈68.

## Parts to print

| File | Qty | Notes |
|------|-----|-------|
| `rotor_mid.stl` | 1 | Dual-face magnets |
| `stator_core.stl` | **2** | Wound-sized bays + back web |
| `coil_former.stl` | **18** | Wind before assembly |
| `gap_spacer.stl` | **18** | |
| `endbell_front.stl` | 1 | |
| `endbell_rear.stl` | 1 | |
| `shaft_collar.stl` | 2–4 | |
| `fit_coupon.stl` | 1 | Print first |

Primary plate + note dups in `print-packs/one-plate/PLATE.md` (18 formers won't all fit with dual stator + mid rotor).

## BOM / print

16+48 N52, Ø8 shaft, 608ZZ, M3, M4 brace, 26 AWG ~1 lb. 0.4 mm nozzle. **MID-ROTOR CLAP.**
