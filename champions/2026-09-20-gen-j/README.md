# Gen-J — Dual-stator sandwich AFPM / 9+9 coil 3φ

Single magnet **rotor disk** with **both faces** harvested by **two stator coil packs** (sandwich). Uses the full magnet kit on one rotor: 8× Ø20 on +Z + 8× Ø20 on −Z, plus 24× Ø5 Halbach per face. Designed to beat Gen-G by harvesting **two axial gaps** at magnet-to-former ~2.5–3.5 mm (tighter than Gen-E dual-rotor magnet-magnet ~7 mm) with **double copper**.

## Magnet inventory (uses BOTH kits)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | +Z face @ R=52 mm, 45° steps |
| Ø20×5 | **8** | −Z face @ R=52 mm, offset **+22.5°** vs +Z |
| Ø5×5 | **24** | +Z Halbach triplets @ R={40,52,64} on inter-pole bisectors |
| Ø5×5 | **24** | −Z Halbach triplets (same radii, +22.5° offset) |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**. Carrier OD **148 mm**, thick **12 mm** (dual pockets + ~1.6 mm web). Hub Ø30×10.

### Polarity map

**+Z face:** alternate N-S around circumference (even indices N toward +Z stator).  
**−Z face:** alternate N-S with magnets presenting **N toward −Z stator** on even indices of that face (independent harvest loops).  
**Halbach smalls:** circumferential / radial assist on each bisector triplet — mid small circumferential, edge smalls reinforce pole tips.  
**Assembly:** Glue one face completely (large then smalls), dry-fit both stators with gap spacers, then glue the second face. Single rotor = **lower clap** than dual-rotor AFPM; still brace both stators before final magnet seating.

## Coils

- **9 coils per stator × 2 = 18 formers** (3φ × 3 per stator) — 12+12 preferred but one-plate packing on 410×410 forced **9+9**; each former is wider (34° span) so copper per coil rises (~120–160 t 26 AWG) and total copper still exceeds Gen-G’s 12 bobbins
- Wire: **26 AWG** preferred (~100–140 t/coil); spool ~1 lb / ~300–400 m covers full set at ~140 t (wider formers)
- Each stator star 3φ independently, then series/parallel phases across the two packs for voltage/current trade
- Copper story vs Gen-G: ~1.5× formers vs Gen-G + dual axial faces + tighter magnet-to-coil gaps → max-watt justification

## Air gap

Target **magnet face → former** axial gap **2.5–3.5 mm** each side (use printed `gap_spacer` ×2 + former stack). Not magnet-to-magnet.

## Estimated EMF / power

B_gap Halbach-boosted ≈ **0.50–0.70 T** per face. Dual surfaces + more copper vs Gen-G single annular pack.

| RPM | Est. combined pack RMS (26 AWG ~110 t) | Est. matched power |
|-----|----------------------------------------|--------------------|
| 200 | **~8–16 V** (series packs) | **~5–11 W** |
| 300 | **~12–24 V** | **~9–18 W** |
| 1000 | **~40–80 V** | **~25–50 W** (thermal limited) |

**Claim vs Gen-G:** Gen-J aims **~5–11 W @200 RPM** — should **beat** Gen-G’s ~4–9 W if both gaps seat ≤3.5 mm and all 18 coils are wound (wider windows).

## Modular interface

| Spec | Value |
|------|-------|
| Shaft | Ø8 / bore Ø8.35 |
| Bearings | 608ZZ seats Ø21.85×7.2 |
| Hub | Ø30×10 |
| Endbell / stator bolts | **6× M3 @ R=72** (Gen-E family) |
| Brace | **4× M4 @ R≈68** |
| M3 clear | Ø3.4–3.5; prefer heat-set inserts |

## Parts to print

| File | Qty | Notes |
|------|-----|-------|
| `rotor_sandwich.stl` | 1 | Magnet faces; brim |
| `stator_core.stl` | **2** | Coil bays up |
| `coil_former.stl` | **18** | Flange on bed |
| `gap_spacer.stl` | **12** (6/side) | Air-gap pads @ bolt circle |
| `endbell_front.stl` / `endbell_rear.stl` | 1 each | |
| `shaft_collar.stl` | 2–4 | |

**Fit coupon:** dual-face magnet pockets + 608 press + spacer stack height before full glue-up.

## BOM

- 16× Ø20×5 + 48× Ø5×5 N52
- Ø8 shaft, 2–4× 608ZZ, M3 + heat-set inserts, 4× M4 brace rod
- 26 AWG magnet wire (~1 lb assumed)
- Optional thin steel backing rings behind each magnet face (bought)

## Print / safety

**0.4 mm** default nozzle. PLA/PETG. Single rotor lowers clap vs dual AFPM, but **brace both stators** before seating the second magnet face. Keep Halbach smalls jigged — do not free-hand near already-magnetted face.
