# Gen-CC — nightly 2026-10-13 `gen-cc-dual-rotor-8p12c-bx-retrofit-r71`

Generated 2026-10-13 (ET, nightly run started ≈9:10 PM). All numbers from `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG @20 °C,
steel back-iron by the scorer's `--back-iron` image method). Full report: [SCORE.md](SCORE.md), field plot: [bz_midplane.png](bz_midplane.png),
air-core run: [aircore_score/SCORE.md](aircore_score/SCORE.md), extra geometry checks: [GEOM_CHECK.md](GEOM_CHECK.md).

## Design idea

Stator-only upgrade for an existing Gen-BX: the R71 rotors and Ø168 steel stay as they are; a new annular 12-bobbin stator with 6.3 mm copper (magnet gap 9.35 → 8.90 mm) and longer r52–90 bobbins (the open-centre stator now packs one size up) replaces the old one, together with a shorter gap sleeve, frame rods moved out to R93.5 and new bearing bridges. No new magnets or steel.

**Annular stator.** The stator is static and held only by the 4 frame rods outside the rotor OD, so its old solid centre carried nothing; it is now open (r < 46.95 mm, 4.0 mm inner rim), which is where the small parts print, and the temporary M4 brace rods pass straight through it.

## Honest numbers @ 200 RPM (scorer output only)

| Metric | Value |
|---|---|
| Matched-load power (3φ, V²/4R), **with steel** (`--back-iron`) | **7.404 W** (6.40 W with hot copper @60 °C) |
| Air-core what-if (same kit, no `--back-iron`) | 3.374 W (8.74 V rms/ph) |
| What-if: looser fill 0.60 wind (`--back-iron --fill 0.60`, only 361 t fit) | 6.842 W |
| Open-circuit voltage | **12.94 V rms/phase** (15.09 V line) |
| Phase resistance (20 °C) | **16.97 Ω** |
| Turns per coil | **391** (= scorer turns-fit at fill 0.65; do not raise) |
| Peak / mean-over-window Bz | 0.602 / 0.150 T |
| Matched / short-circuit current | 0.38 / 0.76 A per phase |
| Verdict | **PASS** (scorer) · geometry check **PASS** |

Topology **dual_rotor**, 8 poles, 12 coils × 1 stator, star 3φ, 4 coils in series per phase.
Copper total **380 m** of 26 AWG (12 coils × 31.7 m incl. 0.15 m leads) — inside the 386 m budget of one ~390 m spool.
Champion to beat: Gen-BX 7.304 W (same `--back-iron` mode) → this kit **BEATS** it (1.014×).

**Honesty limits:** the `--back-iron` number is the scorer's **optimistic upper bound** (first-order images of an infinite, unsaturated plate; the magnets
really sit on the steel). Finite disc size, saturation, eddy/hysteresis losses, AC copper loss are not modelled; ideal series connection, 20 °C copper.

## Magnet polarity / clocking

Rotor A pocket 0 (at the D-flat / rim notch): N toward the stator; alternate N/S around. Rotor B is the same print flipped to face A: its pocket 0 gets S. Every magnet faces an opposite pole across the gap (`rotor_b_offset_deg = 0`, `rotor_b_same_axis = true`; clocking factor 1.000). D-flat bore + rim notch = pocket 0; brace holes [45, 135, 225, 315]° and clamp holes are flip-symmetric. Magnets: 16× Ø20×5 N52 as 8 poles per rotor at R71. **No Ø5 assists in this kit** (all 48 Ø5×5 are spare, none fitted): scan t6: diametric Ø5 assists lower this 8p/12c layout, so all 48 Ø5 are left out.

## Flush magnet seat — measure your magnets

The magnet carrier is printed exactly as thick as the magnet (5.00 mm, through-pockets), so each Ø20 sits on the steel with its face **level with the carrier face** (as-built recess 0.00 mm). The magnet faces are 8.90 mm apart, at exactly the 0.50 mm magnet→wound-envelope minimum. **Measure every magnet with calipers before gluing.** If any is over 5.00 mm (or the printed carrier is thinner), it stands proud: then reprint `gap_sleeve.scad` longer by 2× the worst proud amount (edit `m2m`) so the 0.5 mm clearance is kept (the score drops ≈1 % per 0.05 mm). Put the 0.50 mm feeler shims between the **magnet faces** and the flanges at step 8.

## Steel back-iron (REQUIRED for the scored watts)

Buy / cut **2× Ø168 × 4.76 mm (3/16") mild-steel discs** (S235/A36/1008–1018 CRS), OD Ø168, centre hole Ø26; holes: M3 clamps at R30 ([0, 90, 180, 270]°) and R44 ([67.5, 112.5, 247.5, 292.5]°), Ø4.3 brace holes at R18, index notch at +X.
DXF: `print-packs/laser-cut/steel_backiron_disc.dxf` (from `steel_backiron_disc.scad`) — any laser-cut service (SendCutSend / OSHCut / local shop); zinc-plate or paint.
Magnets drop through the carrier pockets onto the steel and are epoxied to it.
**Same steel as Gen-BX** (Ø168, unchanged hole map).
Thickness check (`_build/steel_flux.py`, magpylib, not part of the scorer): ≈0.281 mWb per pole enters the steel; return flux ≈0.42 T spread over the
radial width, ≈1.48 T worst case in a one-magnet-wide band at 4.76 mm (3 mm would be ≈2.3 T, saturated — keep ≥4.76 mm).
Without the steel the scorer gives only **3.37 W** — the steel is not optional.

## Parts to print (`print-packs/parts/`; all on ONE plate in `print-packs/one-plate/`)

| File | Qty | Notes |
|---|---|---|
| `rotor_face_a.stl` | 1 | flat (magnet) face down, hub up; through pockets (= Gen-BX rotor A, reuse yours) |
| `rotor_face_b.stl` | 1 | identical pocket map (offset 0), flipped at assembly (= Gen-BX rotor B) |
| `stator_core.stl` | 1 | ANNULAR stator (open centre r<46.95), 12 through bays, brim on |
| `coil_former.stl` | **12** | bobbin base, flange down |
| `coil_lid.stl` | **12** | flange down; CA-glue onto the base hub before winding |
| `endbell_front.stl` / `endbell_rear.stl` | 1 / 1 | 608 bearing BRIDGES (28 mm bars on the 45/225° and 135/315° rods), flat face down, boss up |
| `frame_standoff.stl` | 4 | 29.5 mm tubes on the M3 frame rods (R93.5, outside the rotor) |
| `gap_sleeve.stl` | 1 | 8.90 mm shaft spacer between the hubs (sets the gap, takes the magnet pull) |
| `gap_spacer.stl` | 12 | 0.50 mm feeler shims |
| `shaft_collar.stl` | 4 | D-flat bore, M3 set screw on the flat |
| `fit_coupon.stl` + `fit_coupon_bay.stl` | 1 + 1 | print FIRST on their own: Ø20 through pocket, Ø5 pocket, 608 seat, D-bore, shim + a full-height bay slice |

One-plate: `print-packs/one-plate/one_plate_layout.stl` — bbox measured from the STL **408.0 × 408.0 mm** (≤ 410; Kobra 3 Max 420 bed),
53 bodies, min gap between separate parts 2.02 mm; preview `print-packs/one-plate/preview.png`.
PLA/PETG, 0.4 mm nozzle, 0.20 mm layers, brim on the stator and lids. Binary STL, mm.

**Bearing bridges / mounting:** the two bar bridges only carry the shaft (the magnet pull is taken by the gap sleeve between the hubs). No printed feet: stand the
machine in a cradle under the stator rim or run two frame rods long into a base board.

## Hardware BOM (non-printed)

- Steel: 2× Ø168 × 4.76 mm (3/16") mild-steel discs · 2× 608 bearings · Ø8 mm D-flat shaft ≥ 132 mm
- 4× M3 threaded rod ≈ 57 mm + nuts/washers (frame; each rod = stator + one standoff + one bridge)
- 16× M3×16 + nuts (steel clamp, 8 per rotor — already on your Gen-BX)
- 2× M3 heat-set inserts (radial, in each hub below the steel) + 2× M3×6 set screws onto the D-flat; 4× M3 set screws for the collars
- 4× M4 threaded rod ~150 mm + 16 nuts (TEMPORARY jack/brace rods) · 1.75 mm filament (bobbin pins) · epoxy + CA
- 380 m 26 AWG enamelled copper (0.45 mm OD) · 6× Schottky (e.g. SB560) for a 3φ bridge rectifier

## Retrofit path (Gen-BX owners)

Keep both Gen-BX rotors (magnets + Ø168 steel stay glued and bolted). New parts: annular stator, 12 bobbins + lids, gap sleeve (8.90 mm, was 9.35), the two bearing bridges (frame rods move from R91.5 to R93.5) and 4 standoffs. **Taking Gen-BX apart is the clap hazard in reverse:** thread the 4 temporary M4 jack rods (R18) first and raise rotor B off the old gap sleeve by turning the nuts — never pull it off by hand. Check every magnet is still bonded before re-assembly. The one-plate pack below includes the two rotors as well (for a fresh build); skip them if you are retrofitting.

## Winding

Bobbin window 6.30 × 15.20 mm → 14 layers, **391 turns** of 26 AWG at fill 0.65
(31.7 m per coil). Copper sector r 52–90 mm × 26.36°.
Wind **before** assembly; copper only between the 0.8 mm flanges, nothing proud. Magnet→wound envelope 0.50 mm
(as-built recess 0.00 mm; ≥0.5 PASS); clearance between neighbouring former footprints at r=52: 1.70 mm; stator web between bays ≥1.2 mm (GEOM_CHECK.md).

Wiring (3φ star, from the scorer phasors): `S0:A+ S1:B+ S2:C+ S3:A+ S4:B+ S5:C+ S6:A+ S7:B+ S8:C+ S9:A+ S10:B+ S11:C+` — same-letter coils in series per phase, '−' = swap that coil's leads.
Series vs parallel gives the same matched-load watts (it only moves V and R).

**Dense winding is required for the scored turns.** The scored turns assume a dense, layer-by-layer wind at fill 0.65 (insulated-wire area / window; the scorer cap). Use a winding jig on a drill/lathe with a turn counter, lay each layer side-by-side with light back-tension, and do not scramble-wind: a scramble wind only reaches ≈0.55–0.60 and then the window holds fewer turns (scorer what-if `--fill 0.60` is in the table above). Never wind more than the listed turns — the copper must stay below the flanges.

## Assembly order / safety

1. Print `fit_coupon.stl` + `fit_coupon_bay.stl` first: check Ø20 through-pocket fit, 608 seat, D-bore on your shaft.
2. Print the plate. Glue each lid onto its base hub, wind 391 t in 14 even layers, leads out through the lid slots.
3. Drop the wound bobbins into the stator bays (lid/tab side = +Z, lead-groove face), pin with 1.75 mm filament, epoxy. Wire per the map above.
4. Rotor A: (Gen-BX rotors) steel bolted to the carrier, magnets seated through the pockets onto the steel and epoxied.
   **Keep the two magnet rotors > 30 cm apart and away from steel tools** until step 6. Never slide a loose magnet across the steel toward a seated one — they snap together.
5. Shaft + rotor A + gap sleeve; slide the stator over the sleeve (it passes the open centre), frame rods + standoffs to the front bearing bridge (45/225° rods).
6. **Clap hazard — brace before seating the second magnet face:** steel-backed N52 across a 8.90 mm gap pulls very hard. Thread the 4 temporary
   M4 rods through rotor B / the open stator centre / rotor A (brace holes R18) with nuts on both sides, and lower rotor B onto the gap sleeve by turning the nuts. Never let it jump; keep fingers out of the gap.
7. Check the gap with the 0.50 mm shims, set hub set screws + collars, fit the rear bearing bridge (135/315° rods).
8. **Remove the temporary M4 rods and every shim before spinning.** Spin by hand first and listen for rubbing.
9. **Brim** the 0.8 mm bobbin flanges/lids, the stator (1.2 mm webs, 4.0 mm inner rim) when printing.

Re-score: `/workspace/generators/tools/physics_scorer/score_kit score /workspace/generators/2026-10-13/gen-cc-dual-rotor-8p12c-bx-retrofit-r71 --out /workspace/generators/2026-10-13/gen-cc-dual-rotor-8p12c-bx-retrofit-r71 --back-iron` (air-core: drop `--back-iron`, use another `--out`).
