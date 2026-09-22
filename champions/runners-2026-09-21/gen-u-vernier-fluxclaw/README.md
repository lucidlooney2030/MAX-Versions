# Gen-U — Vernier + flux-claw AFPM / wound-aware 12-coil

**Distinct topology** (night 2026-09-21 ET): **16-pole** vernier rotor (all 16×Ø20) + **48×Ø5** claw/edge flux assists + optional **mild-steel washer** return registers. Tuned for **120–300 RPM** band.

**Wound gate: PASS** — magnet↔wound **0.85 mm**.

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | OD **0.45 mm** |
| Turns | **140** / pancake | 12×140×~0.12 m ≈ **202 m** (fits ~1 lb) |
| fill | **0.70** | |
| layers_per_face | **2** | |
| `wind_build_axial` | **0.63 mm** | |
| `wind_build_radial` | **0.945 mm** | |
| `former_web` / `flange_t` | **2.6 / 0.9** | |
| `former_bare_h` | **4.4 mm** | |
| `coil_envelope_h` | **5.66 mm** | |
| `run_clear` | **0.85 mm** | prefer ≥0.85 |
| `gap_spacer_h` | **1.48 mm** | |
| magnet→wound | **0.85 mm** | **PASS** (single-rotor AFPM) |

## Magnet / claw map

| Item | Qty | Role |
|------|-----|------|
| Ø20×5 | **16** | Vernier poles @ R=50, 22.5° |
| Ø5×5 | **48** | Claw rings @ R={36,50,64} ×16 |
| Mild steel washer Ø25×1 (optional) | **8** | Back-face return registers |

Polarity: alternate N-S around 16 poles. Claw smalls reinforce edges (Halbach-like tangential assists). Steel washers in printed registers behind rotor (BOM optional).

## Coils

- **12** vernier pancakes (slot/pole 12/16)
- 26 AWG × 140 t; larger radial window (id 22–od 58)

## Estimated EMF / power

High pole count favors low RPM. B_gap with claw assist ≈ **0.45–0.65 T** (single face). More turns compensate.

| RPM | Est. matched power |
|-----|--------------------|
| 120 | ~3–7 W |
| **200** | **~5.5–12 W** |
| 300 | ~9–18 W |
| 500–1000 | ~15–35 W |

Strong low-RPM runner; typically below Gen-P dual-gap tip unless steel return proves higher B.

## Modular interface

Shaft Ø8 / bore 8.35; 608ZZ; **6× M3 @ R=72**; heat-set inserts; fit coupon required.

## Parts to print

| File | Qty |
|------|-----|
| `rotor_vernier.stl` | 1 |
| `stator_core.stl` | 1 |
| `coil_former.stl` | **12** |
| `claw_flux_pad.stl` | **8** |
| `gap_spacer.stl` | **12** |
| `endbell_front/rear.stl` | 1 each |
| `shaft_collar.stl` | 2–4 |
| `fit_coupon.stl` | 1 |

One-plate: `print-packs/one-plate/` — **YES** full kit fits.

## BOM

16×Ø20×5 + 48×Ø5×5; optional 8× mild-steel washers Ø25×1; Ø8 shaft; 608ZZ; M3; **26 AWG** ~1 lb.

## Print notes

0.4 mm nozzle; PETG/ABS; wind formers before assembly. No dual-rotor clap (single magnet plane) — still keep fingers clear when seating rotor to wound stator.
