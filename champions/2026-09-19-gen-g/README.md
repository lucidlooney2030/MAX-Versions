# Gen-G — Cylindrical Halbach dual-radial barrel / 12-coil 3φ

Outer magnet **drum** + inner magnet **hub** with an annular stator coil pack in the radial gap. Dual cylindrical air-gap surfaces + high tip speed on the outer ring — designed to beat Gen-E’s nested AFPM band.

## Magnet inventory (uses BOTH kits)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **12** | Outer drum, radial **INWARD** @ R_center ≈ **52 mm**, 30° steps |
| Ø20×5 | **4** | Inner hub, radial **OUTWARD** @ R_center ≈ **22 mm**, 90° steps |
| Ø5×5 | **24** | Outer drum OD Halbach / edge assists @ R ≈ **58.5 mm** |
| Ø5×5 | **24** | Inner hub OD Halbach assists @ R ≈ **28.5 mm** |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**. Outer drum OD **124 mm**, H **28 mm**. Inner hub rim ~Ø**61** (lip). Stator annulus ID **36** / OD **92** / H **30**.

### Polarity map

**Outer drum (gap face = −R):** alternate N-S around circumference (even indices N toward gap). Odd = S toward gap.

**Inner hub (gap face = +R):** alternate N-S so each inner N faces an outer S across the annular stator (attraction through coils). With 4 inner vs 12 outer, treat inner as 4-pole fundamental; outer 12-pole harmonic couples via 3φ winding.

**OD Halbach smalls (outer drum):** mid-gap smalls magnetized circumferential (Halbach loop); pole-edge smalls axial/radial reinforce. **Inner hub smalls:** circumferential Halbach on hub OD toward the four large poles.

**Assembly:** Glue outer drum larges first (inward face), then OD smalls. Inner hub larges outward, then OD smalls. Drop stator annulus over hub **before** seating outer drum. Radial gaps **1.0–1.5 mm** each side — dry-spin with bearings before epoxy. Dual cylindrical attraction is strong but less “clap” than dual AFPM if endbells/braces hold axial stack.

## Coils

- **12** radial bobbin formers (3φ × 4)
- Wire: **26 AWG** preferred (~80–140 t/coil) for lower R / higher current at hand-crank RPM
- Star 3φ: coils (0,3,6,9)=A, (1,4,7,10)=B, (2,5,8,11)=C — series per phase
- Spool: ~1 lb 26 AWG hobby spool covers full set at ~100 t

## Air gap

Target radial air gap **1.0–1.5 mm** on both inner and outer cylindrical faces (magnet face → coil former tip).

## Estimated EMF / power

B_gap Halbach-boosted ≈ **0.55–0.70 T** (dual surfaces). Tip speed advantage on Ø~100 mm outer face vs Gen-E’s R=58 axial.

| RPM | Est. phase RMS (26 AWG ~100 t, 4S) | Est. matched power |
|-----|-------------------------------------|--------------------|
| 200 | **~6–12 V** | **~4–9 W** |
| 300 | **~9–18 V** | **~7–14 W** |
| 1000 | **~30–60 V** | **~20–40 W** (thermal limited) |

**Claim vs Gen-E:** Gen-G aims **~4–9 W @200 RPM** — should **beat** Gen-E’s ~3–7 W band if dual radial gaps seat at ≤1.5 mm and Halbach OD assists land.

## Modular interface

| Spec | Value |
|------|-------|
| Shaft | Ø8 / bore Ø8.35 |
| Bearings | 608ZZ seats Ø21.85×7.2 (hub + optional endbell) |
| Hub | Ø30×10 |
| Endbell bolts | **6× M3 @ R=54** (barrel family; not Gen-E R=72) |
| Stator flange bolts | **6× M3 @ R=48** |
| M3 clear | Ø3.4–3.5; prefer heat-set inserts |

## Parts to print

| File | Qty | Notes |
|------|-----|-------|
| `rotor_outer_drum.stl` | 1 | Hub down; brim |
| `rotor_inner_hub.stl` | 1 | Hub down |
| `stator_annulus.stl` | 1 | Flange on bed |
| `coil_former.stl` | **12** | Flange on bed |
| `endbell_front.stl` / `endbell_rear.stl` | 1 each | |
| `shaft_collar.stl` | 2–4 | |

**Fit coupon:** magnet pockets (radial) + 608 press + stator ID/OD clearance before full glue-up.

## BOM

- 16× Ø20×5 + 48× Ø5×5 N52
- Ø8 shaft, 2–4× 608ZZ, M3 + heat-set inserts
- 26 AWG magnet wire (30 AWG alt OK, more turns / less current)
- Optional thin steel backing strips behind outer drum pockets

## Print / safety

**0.4 mm** default nozzle; 0.6 OK for endbells/drum if walls ≥1.2. PLA/PETG. Keep radial magnet glue jig; do not free-hand OD Halbach smalls near already-magnetted drum.
