# Gen-BG — nightly 2026-10-04 `gen-bg-dual-rotor-steelseat-9coil-tallcopper`

Generated 2026-10-04 (ET). All numbers from `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG @20 °C,
steel back-iron by the scorer's `--back-iron` image method). Full report: [SCORE.md](SCORE.md), field plot:
[bz_midplane.png](bz_midplane.png), extra geometry checks: [GEOM_CHECK.md](GEOM_CHECK.md).

## Design idea

8-pole / 9-coil dual rotor (best winding factor 0.945) pushed out to RL 46 with 9.9 mm tall copper on steel-seated magnets; 3 smaller coils per phase and less wire (257 m) than 6-coil.

## Honest numbers @ 200 RPM (scorer output only)

| Metric | Value |
|---|---|
| Matched-load power (3φ, V²/4R) | **3.176 W** (2.74 W with hot copper @60 °C) |
| Open-circuit voltage | **6.97 V rms/phase** (11.98 V line) |
| Phase resistance (20 °C) | **11.47 Ω** |
| Turns per coil | **364** (= scorer turns-fit at fill 0.60; do not raise) |
| Peak / mean-over-window Bz | 0.472 / 0.193 T |
| Matched / short-circuit current | 0.30 / 0.61 A per phase |
| Verdict | **PASS** (scorer) · geometry check **PASS** |

Topology **dual_rotor**, 8 poles, 9 coils × 1 stator, star 3φ, 3 coils in series per phase.
Copper total **257 m** of 26 AWG (9 coils × 28.6 m incl. 0.15 m leads) — fits the ~390 m spool.
Champion to beat was Gen-BE 1.684 W → this kit **BEATS** it (1.89×).

**Honesty limits:** the steel is modelled by first-order images (infinite, unsaturated plate) → upper bound. Here the magnets
really do sit on the steel (through-pockets), which is exactly the image-plane the scorer assumes (last night's kits had ~2.3 mm
of PLA between magnet and steel). Air-core, no eddy/AC loss, ideal series connection, 20 °C copper.

## Magnet polarity / clocking

Rotor A pocket 0 (at the D-flat / rim notch): N toward the stator; alternate N/S around. Rotor B is the same print, flipped to face A: its pocket 0 (at its notch, which lands on the same D-flat) gets S toward the stator, alternating. Result: every magnet faces an opposite pole directly across the gap (rotor_b_offset_deg = 0, rotor_b_same_axis = true).
Key: D-flat bore + rim index notch = pocket 0, and the steel disc's notch lines up with it. Brace holes at [45, 135, 225, 315]° (flip-symmetric);
steel-clamp M3 holes at [0, 90, 180, 270]° (R27) and [0, 90, 180, 270]° (R59), also flip-symmetric.
Magnets: 16x O20x5 N52 (8 per rotor) + 48x O5x5 N52 **diametric** assists (24 per rotor, 3 radii between poles).

## ⚠️ O5 assist magnets — DIAMETRIC only

The 48 × Ø5×5 assists **must be diametrically magnetised** (magnetisation across the diameter) and glued with the
magnetisation **tangential** (along the circumference), direction per the arrows on `preview.png` (scorer signs {'A': -1, 'B': 1}).
Axially magnetised Ø5 discs do **not** form a Halbach assist and are **not counted** by the scorer; if you only have axial Ø5,
leave the pockets empty and expect ≈3.04 W (scorer, same kit, `--halbach none`). Glue each one (CA/epoxy) before the
second rotor approaches — a loose diametric magnet will spin in its pocket to align with the big magnets' field.

## Steel back-iron (REQUIRED for the scored watts)

Buy **2× mild-steel discs Ø135 × 3 mm** (S235/A36/1008–1018 CRS), centre hole Ø26, hole map =
`print-packs/laser-cut/steel_backiron_disc.dxf` (generated from `steel_backiron_disc.scad`, same holes as the rotor). Any online
laser-cut service (SendCutSend / OSHCut / local shop) cuts this directly from the DXF; zinc-plate or paint against rust.
Each disc sits on the hub side of its rotor carrier; magnets drop through the pockets onto the steel and are epoxied to it.
Clamp disc + carrier with 8× M3×12 + nuts per rotor.
Thickness: with ~0.21 mWb per pole (magpylib, at the magnet face) the average steel flux density is ≈0.64 T at 3 mm (locally higher right
behind the magnets) — 3 mm is the minimum; 4 mm also fits the hub (10 mm) and adds margin. Do **not** use 1.5 mm (≈1.3–1.5 T average, i.e. near saturation, so the image-method watts would not hold).
Without the steel discs (air-core what-if, same kit, no `--back-iron`) the scorer gives only **1.53 W** — the steel is not optional.

## Parts to print (`print-packs/parts/`; all on ONE plate in `print-packs/one-plate/`)

| File | Qty | Notes |
|---|---|---|
| `rotor_face_a.stl` | 1 | flat (magnet) face down, hub up; through pockets |
| `rotor_face_b.stl` | 1 | identical pocket map (offset 0), flipped at assembly |
| `stator_core.stl` | 1 | 9 through bays, bobbins flush both faces, frame holes between stations |
| `coil_former.stl` | **9** | bobbin base, flange down |
| `coil_lid.stl` | **9** | flange down; CA-glue onto hub before winding |
| `endbell_front.stl` / `endbell_rear.stl` | 1 / 1 | 608 boss; boss side needs supports |
| `frame_standoff.stl` | 18 | 27.6 mm tubes on the M3 frame rods (stator ↔ endbells, outside the rotor) |
| `gap_sleeve.stl` | 1 | 12.5 mm shaft spacer between the two rotors (sets the gap, takes the magnet pull) |
| `gap_spacer.stl` | 9 | 0.50 mm assembly feeler shims |
| `shaft_collar.stl` | 4 | D-flat bore, M3 set screw on the flat |
| `fit_coupon.stl` | 1 | print FIRST: O20/O5 through pockets, 608 seat, D-bore, bay slice |

One-plate: `print-packs/one-plate/one_plate_layout.stl`, bbox measured from the STL **409.0 × 409.0 mm**
(≤ 410; Kobra 3 Max 420 bed), preview `print-packs/one-plate/preview.png`. PLA/PETG, 0.4 mm nozzle, 0.20 mm layers
(0.6 mm nozzle is fine for endbells/standoffs). Binary STL, mm.

## Hardware BOM (non-printed)

- 2× steel discs (above) · 2× 608 bearings · Ø8 mm D-flat shaft ≥ 132 mm (stack 97 mm + collars)
- 9× M3 threaded rod ≈ 95 mm + nuts/washers (frame) · 16× M3×12 + nuts (steel clamp)
- 2× M3 heat-set inserts (radial, in each rotor hub) + 2× M3×6 set screws onto the D-flat; 4× M3 set screws for collars
- 4× M4 threaded rod ~150 mm + 16 nuts (TEMPORARY jack/brace rods for assembly) · 1.75 mm filament (bobbin pins) · epoxy + CA

## Winding

Bobbin window 9.90 × 9.75 mm → 22 layers, **364 turns** of 26 AWG at fill 0.60
(28.6 m per coil — use a drill/lathe winding jig and a turn counter). Copper sector r 30–62 mm × 32.93°.
Wind **before** assembly; nothing proud of the 0.8 mm flanges. Magnet→wound envelope 0.60 mm (as-built pocket recess 0.10 mm; ≥0.5 PASS).

Wiring (3φ star, from the scorer phasors): `S0:A+ S1:A- S2:B- S3:B+ S4:B- S5:C- S6:C+ S7:C- S8:A-` — same-letter coils in series per phase, '−' = swap that coil's leads.

## Assembly order / safety

1. Print the fit coupon; check Ø20/Ø5 fit in the through-pockets, the 608 seat and the D-bore on your shaft; test-drop a wound bobbin in the bay slice.
2. Glue each lid onto its base hub, wind 364 t in 22 even layers, leads out through the lid slots.
3. Drop bobbins into the stator bays (lid/tab side = +Z, lead-groove face), pin with 1.75 mm filament, epoxy. Wire per the map above.
4. Rotor A: bolt the steel disc to the carrier, then seat magnets one at a time through the pockets onto the steel (polarity rule above), epoxy.
   **Keep the two magnet rotors far apart (> 30 cm) and away from steel tools** until step 6.
5. Shaft + rotor A + gap sleeve; slide the stator over the sleeve, frame rods + standoffs to the front endbell.
6. **Clap hazard — brace before seating the second magnet face:** thread the 4 temporary M4 rods through rotor B / stator / rotor A
   (brace holes R18) with nuts on both sides, and lower rotor B onto the gap sleeve by turning the nuts. Never let it jump.
7. Check the gap with the 0.50 mm shims, set hub set screws + collars, fit the rear endbell.
8. **Remove the temporary M4 rods and every shim before spinning.** Spin by hand first and listen for rubbing.
9. **Brim** the 0.8 mm bobbin flanges and the thin stator webs (1.2 mm between bays) when printing.

## Kit magnet / wire budget

16× Ø20×5 N52 + 48× Ø5×5 N52 (diametric) + 257 m of 26 AWG (of ~390 m) + 2 steel discs.

Re-score: `/workspace/generators/tools/physics_scorer/score_kit score /workspace/generators/2026-10-04/gen-bg-dual-rotor-steelseat-9coil-tallcopper --out /workspace/generators/2026-10-04/gen-bg-dual-rotor-steelseat-9coil-tallcopper --back-iron`
