# Gen-BH — nightly 2026-10-04 `gen-bh-dual-rotor-steelseat-4pole-doublestack`

Generated 2026-10-04 (ET). All numbers from `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG @20 °C,
steel back-iron by the scorer's `--back-iron` image method). Full report: [SCORE.md](SCORE.md), field plot:
[bz_midplane.png](bz_midplane.png), extra geometry checks: [GEOM_CHECK.md](GEOM_CHECK.md).

## Design idea

All 16 O20 magnets used as 8 double-height (10 mm) poles: 4-pole / 6-coil dual rotor on 3 mm steel, tall 9.9 mm copper; O5 assists left out because the scorer shows they do not help this pole layout.

## Honest numbers @ 200 RPM (scorer output only)

| Metric | Value |
|---|---|
| Matched-load power (3φ, V²/4R) | **1.843 W** (1.59 W with hot copper @60 °C) |
| Open-circuit voltage | **5.92 V rms/phase** (7.10 V line) |
| Phase resistance (20 °C) | **14.27 Ω** |
| Turns per coil | **571** (= scorer turns-fit at fill 0.60; do not raise) |
| Peak / mean-over-window Bz | 0.578 / 0.152 T |
| Matched / short-circuit current | 0.21 / 0.41 A per phase |
| Verdict | **PASS** (scorer) · geometry check **PASS** |

Topology **dual_rotor**, 4 poles, 6 coils × 1 stator, star 3φ, 2 coils in series per phase.
Copper total **320 m** of 26 AWG (6 coils × 53.3 m incl. 0.15 m leads) — fits the ~390 m spool.
Champion to beat was Gen-BE 1.684 W → this kit **BEATS** it (1.09×).

**Honesty limits:** the steel is modelled by first-order images (infinite, unsaturated plate) → upper bound. Here the magnets
really do sit on the steel (through-pockets), which is exactly the image-plane the scorer assumes (last night's kits had ~2.3 mm
of PLA between magnet and steel). Air-core, no eddy/AC loss, ideal series connection, 20 °C copper.

## Magnet polarity / clocking

Rotor A pocket 0 (at the D-flat / rim notch): N toward the stator; alternate N/S around. Rotor B is the same print, flipped to face A: its pocket 0 (at its notch, which lands on the same D-flat) gets S toward the stator, alternating. Result: every magnet faces an opposite pole directly across the gap (rotor_b_offset_deg = 0, rotor_b_same_axis = true).
Key: D-flat bore + rim index notch = pocket 0, and the steel disc's notch lines up with it. Brace holes at [0, 90, 180, 270]° (flip-symmetric);
steel-clamp M3 holes at [45, 135, 225, 315]° (R27) and [45, 135, 225, 315]° (R58), also flip-symmetric.
Magnets: 16x O20x5 N52 as **8 stacks of 2 (10 mm poles)**, 4 per rotor; **no O5 assists** (scored without them: same geometry with diametric O5 assists scores 1.72 W vs 1.84 W without — they hurt this 4-pole layout).

## O5 magnets

Not used in this kit (the rotor has no O5 pockets). The 48 × Ø5×5 stay in the box for other builds.
**Stacking:** each Ø20 pocket takes two Ø20×5 stacked N-on-S (they snap together as one 10 mm magnet). Check the stack's outer
face polarity with a compass/marked magnet before it goes in.

## Steel back-iron (REQUIRED for the scored watts)

Buy **2× mild-steel discs Ø126 × 3 mm** (S235/A36/1008–1018 CRS), centre hole Ø26, hole map =
`print-packs/laser-cut/steel_backiron_disc.dxf` (generated from `steel_backiron_disc.scad`, same holes as the rotor). Any online
laser-cut service (SendCutSend / OSHCut / local shop) cuts this directly from the DXF; zinc-plate or paint against rust.
Each disc sits on the hub side of its rotor carrier; magnets drop through the pockets onto the steel and are epoxied to it.
Clamp disc + carrier with 8× M3×12 + nuts per rotor.
Thickness: with ~0.23 mWb per pole (magpylib, at the magnet face) the average steel flux density is ≈0.76 T at 3 mm (locally higher right
behind the magnets) — 3 mm is the minimum; 4 mm also fits the hub (10 mm) and adds margin. Do **not** use 1.5 mm (≈1.3–1.5 T average, i.e. near saturation, so the image-method watts would not hold).
Without the steel discs (air-core what-if, same kit, no `--back-iron`) the scorer gives only **1.09 W** — the steel is not optional.

## Parts to print (`print-packs/parts/`; all on ONE plate in `print-packs/one-plate/`)

| File | Qty | Notes |
|---|---|---|
| `rotor_face_a.stl` | 1 | flat (magnet) face down, hub up; through pockets |
| `rotor_face_b.stl` | 1 | identical pocket map (offset 0), flipped at assembly |
| `stator_core.stl` | 1 | 6 through bays, bobbins flush both faces, frame holes between stations |
| `coil_former.stl` | **6** | bobbin base, flange down |
| `coil_lid.stl` | **6** | flange down; CA-glue onto hub before winding |
| `endbell_front.stl` / `endbell_rear.stl` | 1 / 1 | 608 boss; boss side needs supports |
| `frame_standoff.stl` | 12 | 32.6 mm tubes on the M3 frame rods (stator ↔ endbells, outside the rotor) |
| `gap_sleeve.stl` | 1 | 12.5 mm shaft spacer between the two rotors (sets the gap, takes the magnet pull) |
| `gap_spacer.stl` | 6 | 0.50 mm assembly feeler shims |
| `shaft_collar.stl` | 4 | D-flat bore, M3 set screw on the flat |
| `fit_coupon.stl` | 1 | print FIRST: O20/O5 through pockets, 608 seat, D-bore, bay slice |

One-plate: `print-packs/one-plate/one_plate_layout.stl`, bbox measured from the STL **408.5 × 409.0 mm**
(≤ 410; Kobra 3 Max 420 bed), preview `print-packs/one-plate/preview.png`. PLA/PETG, 0.4 mm nozzle, 0.20 mm layers
(0.6 mm nozzle is fine for endbells/standoffs). Binary STL, mm.

## Hardware BOM (non-printed)

- 2× steel discs (above) · 2× 608 bearings · Ø8 mm D-flat shaft ≥ 142 mm (stack 107 mm + collars)
- 6× M3 threaded rod ≈ 105 mm + nuts/washers (frame) · 16× M3×12 + nuts (steel clamp)
- 2× M3 heat-set inserts (radial, in each rotor hub) + 2× M3×6 set screws onto the D-flat; 4× M3 set screws for collars
- 4× M4 threaded rod ~150 mm + 16 nuts (TEMPORARY jack/brace rods for assembly) · 1.75 mm filament (bobbin pins) · epoxy + CA

## Winding

Bobbin window 9.90 × 15.30 mm → 22 layers, **571 turns** of 26 AWG at fill 0.60
(53.3 m per coil — use a drill/lathe winding jig and a turn counter). Copper sector r 22–62 mm × 50.35°.
Wind **before** assembly; nothing proud of the 0.8 mm flanges. Magnet→wound envelope 0.60 mm (as-built pocket recess 0.10 mm; ≥0.5 PASS).

Wiring (3φ star, from the scorer phasors): `S0:A+ S1:B+ S2:C+ S3:A+ S4:B+ S5:C+` — same-letter coils in series per phase, '−' = swap that coil's leads.

## Assembly order / safety

1. Print the fit coupon; check Ø20/Ø5 fit in the through-pockets, the 608 seat and the D-bore on your shaft; test-drop a wound bobbin in the bay slice.
2. Glue each lid onto its base hub, wind 571 t in 22 even layers, leads out through the lid slots.
3. Drop bobbins into the stator bays (lid/tab side = +Z, lead-groove face), pin with 1.75 mm filament, epoxy. Wire per the map above.
4. Rotor A: bolt the steel disc to the carrier, then seat magnets one at a time through the pockets onto the steel (polarity rule above), epoxy.
   **Keep the two magnet rotors far apart (> 30 cm) and away from steel tools** until step 6.
5. Shaft + rotor A + gap sleeve; slide the stator over the sleeve, frame rods + standoffs to the front endbell.
6. **Clap hazard — brace before seating the second magnet face:** thread the 4 temporary M4 rods through rotor B / stator / rotor A
   (brace holes R17.5) with nuts on both sides, and lower rotor B onto the gap sleeve by turning the nuts. Never let it jump.
7. Check the gap with the 0.50 mm shims, set hub set screws + collars, fit the rear endbell.
8. **Remove the temporary M4 rods and every shim before spinning.** Spin by hand first and listen for rubbing.
9. **Brim** the 0.8 mm bobbin flanges and the thin stator webs (1.2 mm between bays) when printing.

## Kit magnet / wire budget

16× Ø20×5 N52 (8 stacks of 2) + 320 m of 26 AWG (of ~390 m) + 2 steel discs.

Re-score: `/workspace/generators/tools/physics_scorer/score_kit score /workspace/generators/2026-10-04/gen-bh-dual-rotor-steelseat-4pole-doublestack --out /workspace/generators/2026-10-04/gen-bh-dual-rotor-steelseat-4pole-doublestack --back-iron`
