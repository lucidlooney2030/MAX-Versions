# Gen-D — Radial-flux outrunner (inner rotor) / 12-coil

Inner drum rotor with **12× Ø20×5** radial poles facing an outer slotted stator, plus **4× Ø20×5** end-face axial assists and **48× Ø5×5** inter-pole Halbach fillers. Distinct from night-0 dual AFPM (Gen-A/B) and flat 16-pole disk (Gen-C). Designed for Anycubic Kobra 3 Max Combo, 1.75 mm filament, default **0.4 mm** nozzle (0.6 OK for endbells/stator shell).

## Magnet inventory (uses BOTH kits)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 NdFeB (N52) | **12** | Radial OD poles @ **R_center = 50 mm**, 30° steps; magnetization **outward / inward** alternating (N out, S out, …) |
| Ø20×5 | **4** | End-face axial assists @ **R = 30 mm**, 90° steps +45° offset; face **+Z** (toward optional steel washer / endbell return) |
| Ø5×5 | **48** | 4 per inter-pole gap × 12 gaps @ **R = 54 mm**; circumferential Halbach steer + axial reinforce |

Pockets: large **Ø20.3 × 5.2**; small **Ø5.3 × ~5.35** deep (radial). Floor / rim wall ≥1.6 mm outside pockets. Drum OD **116 mm**, height **26 mm**.

### Polarity map

**Radial larges** (magnetization along +R = “face toward stator”):

| Index | Angle | Face toward stator (outward) |
|-------|-------|------------------------------|
| 0 | 0° | **N** |
| 1 | 30° | S |
| 2 | 60° | N |
| … | … | alternate |
| 11 | 330° | S |

**Small Halbach fillers** (on bisector after each large, k=0..3 across ~13 mm arc @ R=54):

| k | Role | Magnetization |
|---|------|----------------|
| 0 (leading) | Circumferential steer | Tangential toward neighboring **N** large |
| 1 | Mixed / axial reinforce | Mostly **axial +Z** into gap plane |
| 2 | Axial reinforce | **Axial +Z** |
| 3 (trailing) | Circumferential steer | Tangential opposite to leading (Halbach loop) |

**End assists (4):** all **N toward +Z** (or alternate N/S if pairing a steel end return — start with all N for simpler flux).

**Glue / forces:** Seat radial larges first with a non-magnetic pusher from the ID side of the rim. Small magnets jump hard — fill one gap at a time behind a soft barrier. End assists last. Radial outrunner has **less axial clap risk** than dual AFPM, but rim magnets still pinch fingers at the air gap.

## Coils

- **12** radial bobbins in outer stator slots (print `coil_former.stl` ×12)
- Wire: **26 AWG** preferred (higher I, easier wind for radial slots); alt **30 AWG** for higher V
- Target: **~80–120 turns/coil** (26 AWG) or **~180–250 turns** (30 AWG)
- Interconnect: **star 3φ** — coils (0,4,8)=A, (1,5,9)=B, (2,6,10)=C; remaining three can series-parallel as 2S2P per phase if winding 12 as 4/phase
- Spool assumption: ~**1 lb / ~200–300 m** class hobby spool of chosen AWG for the full machine

## Air gap

Rotor OD **116 mm** → stator ID **120 mm** → radial air gap **~2 mm** (magnet face sits proud of pocket floor by glue thickness; aim **1.0–1.5 mm** magnet-to-tooth after seating). Closer gap raises B and cogging.

## Estimated EMF / power (order-of-magnitude, not FEA)

Assumptions: N52, B_gap ≈ **0.4–0.5 T** with Halbach fillers (+10–20% vs large-only); 12-pole electrical freq f = 6 × RPM/60.

| RPM | Est. phase RMS (26 AWG ~100 t, 4S) | Notes |
|-----|-------------------------------------|-------|
| 200 | **~3–6 V** | Hand crank |
| 300 | **~5–9 V** | |
| 1000 | **~15–30 V** | Drill / freewheel |

Power @200 RPM matched: roughly **2–5 W**. Competitive with Gen-A if winding fill is good; usually behind dual-gap Gen-B because single radial gap.

## Parts to print

| File | Qty | Orientation / notes |
|------|-----|---------------------|
| `rotor_drum.stl` | 1 | Hub down; brim; **pause** optional for end-assist magnets |
| `stator_shell.stl` | 1 | Flange on bed; 0.4 or **0.6** nozzle OK |
| `coil_former.stl` | 12 | Flange on bed |
| `endbell_front.stl` | 1 | Feet on bed |
| `endbell_rear.stl` | 1 | Feet on bed |
| `shaft_collar.stl` | 2–3 | As needed |

**Fit coupon first:** radial Ø20.3 pocket coupon + Ø5.3 + 608 press (Ø21.85) before committing the drum.

## BOM (non-printed)

- 16× Ø20×5 + 48× Ø5×5 NdFeB
- Optional steel washer Ø70 × 2–3 mm under end assists
- Ø8 shaft, 2× 608ZZ, M3 bolts + heat-set inserts, M4 braces optional
- 26 AWG (or 30 AWG) magnet wire

## Print / safety

Default **0.4 mm** nozzle; **0.6** fine for stator shell / endbells. Walls ≥0.8 mm. Warn: Halbach assembly forces on the rim; keep fingers clear of the 1–2 mm air gap once magnets are live.
