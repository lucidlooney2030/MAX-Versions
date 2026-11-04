# Gen-DZ — nightly 2026-11-02 `gen-dz-dual-rotor-8p12c-r300-pedestal-frame-6seg-stator-24awg`

Generated 2026-11-02 (ET, nightly run started ≈9:09 PM). All numbers from `physics_scorer` (magpylib, N52 Br 1.43 T, N42 blocks Br 1.29 T as Cuboids, PLA = air, **24 AWG** (bare 0.5106 mm, insulated OD 0.55 mm, resistance from the bare diameter) @20 °C,
steel back-iron by the scorer's `--back-iron` image method). Full report: [SCORE.md](SCORE.md), field plot: [bz_midplane.png](bz_midplane.png),
air-core run: [aircore_score/SCORE.md](aircore_score/SCORE.md), extra geometry checks: [GEOM_CHECK.md](GEOM_CHECK.md).

## Design idea

A new frame — shaft vertical, the lower 608 in a pedestal screwed to a base board (rotor weight in pure compression), stator on 6 posts, a 3-arm top spider — replaces the printed bar bridges that cannot carry 10+ kg rotors, so the Gen-DW pole grows from R220 to R300 with a 6-segment split stator; at 200 RPM the larger radius raises surface speed while the bobbins keep a fixed ≈26 mm chord, so the 390 m spool still gives ≈10.9 Ω.

**Segmented rotor.** The 4.76 mm steel disc is the structural rotor. The PLA magnet carrier is 8 identical arcs per rotor (one pole each), joined on the steel by countersunk M3 bolts at the arc joints (each head clamps both neighbouring arcs), and the D-flat hub is a separate part bolted to the steel. Any arc or hub can be re-printed and swapped on its own (modular magnet carrier). The 8 arcs of one polarity share a plate with the frame small parts or the spider arms.

**SPLIT stator — 6 segments (the 2026-11-01 half-lap idea, now 6 × 60° so each segment fits the bed).** The Ø682 mm stator ring does not fit a 410 mm plate, so it is printed as **6 segments of 2 bays** — types **A, B** alternating around the ring (3 of each) — cut on the coil-station MID angles (15°, 75°, 135°, 195°, 255°, 315°), inside the 12°-wide part of the wide stator web between two bays, so no joint touches a bay, tab, lead groove or frame rod. Every joint is a **half-lap** (±6° either side of the joint line, 3.0 mm + 3.0 mm): type A carries the bottom half of the lap at both ends, type B the top half, so the assembled ring is flush on both faces (checked: the 6 segments re-assemble the ring with zero overlap; lap steps vs bays in GEOM_CHECK.md). Join each lap with **slow epoxy over the full lap face + 2 × 1.75 mm filament pins** (holes at R238 and R320) **+ 1 × M3×16 + nyloc at R336** (outside the rotor: nut/washer ≤ Ø7 keeps 2.5 mm from the spinning rim). Glue the ring up FLAT on a table / glass, all joints at once, faces flush, and let it cure before fitting bobbins. The stator is static (it only carries the coil reaction torque — a few N·m at 200 RPM) and sits on 6 posts (one per segment).

**Annular stator.** The stator is static and held only by the 6 frame rods / posts outside the rotor OD, so its old solid centre carried nothing; it is now open (r < 224.85 mm, 4.0 mm inner rim), which is where the small parts print, and the temporary M4 brace rods pass straight through it.

**Print-in-place bobbin bases.** To save plate space and handling, the 12 bobbin bases print inside their own stator bays with a 0.35 mm gap all round (the bay is the bobbin footprint + 0.35 mm; stator webs ≥1.2 mm). After printing, push each base out with your thumb from the flange side; a light pass with a deburring blade cleans any elephant-foot. `fit_coupon_bay.stl` is the same bay slice with one in-place base: **print it first** — if its base does not pop out cleanly on your printer/slicer (gap closed by over-extrusion or elephant-foot), print `print-packs/parts/coil_former.stl` × 12 separately on a second small plate instead (same part). Disable 'detect thin walls' bridging between the parts if your slicer merges the gap.

**Size / weight warning (honest):** this is a BIG machine — Ø660 mm steel discs at ≈12.8 kg each (≈26 kg of spinning steel), Ø682 mm stator, base board ≥ 742 mm square, rim speed ≈6.9 m/s at 200 RPM. Balance-check the rotors, guard the rim (a ring of plywood/cardboard round the board), keep hands and loose clothing away. The pedestal frame carries the weight in compression (board → pedestal → 608); the 8 mm shaft is fine at 200 RPM, but do not over-speed it. Laser-cut Ø660 × 4.76 mm discs are a normal part for online laser services (most take 3/16" mild steel well beyond this size); ask for flat (stress-relieved) stock — run-out must stay < 0.3 mm.

## Honest numbers @ 200 RPM (scorer output only)

| Metric | Value |
|---|---|
| Matched-load power (3φ, V²/4R), **with steel** (`--back-iron`) | **102.730 W** (88.77 W with hot copper @60 °C) |
| Air-core what-if (same kit, no `--back-iron`) | 48.920 W (26.70 V rms/ph) |
| What-if: DIAMETRIC Ø5 laid on their side (`--back-iron --set pole_o5_mode="lying"`) | 102.734 W |
| What-if: all 48 Ø5 left out (`--back-iron --set pole_o5_R_list=[]`) | 98.685 W |
| What-if: looser fill 0.60 wind (`--back-iron --fill 0.60`, only 144 t fit) | 95.017 W |
| Open-circuit voltage | **38.70 V rms/phase** (54.91 V line) |
| Phase resistance (20 °C) | **10.93 Ω** |
| Turns per coil | **156** (= scorer turns-fit at fill 0.65; do not raise) |
| Peak / mean-over-window Bz | 0.631 / 0.178 T |
| Matched / short-circuit current | 1.77 / 3.54 A per phase |
| Verdict | **PASS** (scorer) · geometry check **PASS** |

Topology **dual_rotor**, 8 poles, 12 coils × 1 stator, star 3φ, 4 coils in series per phase.
Copper total **390 m** of **24 AWG** (12 coils × 32.5 m incl. 0.15 m leads) — inside the ≈390 m budget of one spool of 24 AWG (assumption: one ≈390 m spool per gauge; Austin owns only 24 AWG and 30 AWG).

*Note: the scorer's SCORE.md header line still says "26 AWG copper" (fixed text in report.py); the resistance and wire OD it actually used are 24 AWG — see the Wire row of SCORE.md (bare 0.5106 mm) and `wire_awg` in parameters.scad.*
Champion to beat: Gen-DW 74.327 W (same `--back-iron` mode) → this kit **BEATS** it (1.382×). Versus the pushed GitHub champion before tonight, Gen-DW 74.327 W: **1.382×**.

**Honesty limits:** the `--back-iron` number is the scorer's **optimistic upper bound** (first-order images of an infinite, unsaturated plate; the magnets
really sit on the steel). Finite disc size, saturation, eddy/hysteresis losses, AC copper loss are not modelled; ideal series connection, 20 °C copper.

**Thermal / current limit:** the scorer's thermal note says keep continuous coil current ≲ 0.5 A in printed formers. At 200 RPM a matched load draws
1.77 A per phase — about 3.5× the 0.5 A guidance. For continuous running use a load of ≥ 66.5 Ω per phase (current 0.50 A): ≈49.85 W (Ohm's law on the scorer's Voc and R), or run matched only in short bursts / below ≈56 RPM and watch coil temperature.

## Magnet polarity / clocking

Rotor A arc over the steel index notch = pocket 0: N toward the stator (an N arc); alternate N/S around (N, S, N, S … arcs). Rotor B is built the same way and flipped to face A: its pocket 0 (over its notch, which lands on the same D-flat) gets S toward the stator (an S arc). Result: every magnet faces an opposite pole across the gap (`rotor_b_offset_deg = 0`, `rotor_b_same_axis = true`; scorer clocking factor 1.000). Key: the hub's D-flat bore, hub notch and steel notch all sit at +X; the hub ↔ steel bolt map (R22 at 0/90/180/270°) and the arc-clamp map are flip-symmetric (a rotor-B arc is the same print turned over), and because the arc map has the same 8-fold symmetry as the poles and is NOT 22.5°-periodic (13°/32° spacing), an arc can only ever sit with its Ø20 pocket on a pole angle. Magnets: 16× Ø20×5 N52 as 8 poles per rotor at R300. **Plus 16 of Austin's 20× N42 20×10×5 mm blocks** (4 spare), one per pole on the pole angle at R315.6 — OUTSIDE (at a larger radius than) the Ø20 disc — 20 mm side tangential, 10 mm side radial, **magnetised through the 5 mm thickness** (axial — check yours with a compass/another magnet before gluing; if your blocks are magnetised through 10 or 20 mm they cannot be used here). Each block has the **same polarity toward the stator as the Ø20 next to it**. **Keyhole pocket:** the disc and its block share ONE pocket (no PLA between them). Same polarity side by side, they PUSH each other apart onto the two far walls, which leaves 0.6 mm between disc edge and block face — exactly the positions the scorer models (`R_large` = 300, `block_R_list` = 315.6; the printed pocket centres are offset ±0.15 mm so the pushed-apart magnets land there). If a block ends up closer to its disc than that, the score only goes up (scan: ≈+1 % at 0.3 mm). The scorer models every block exactly (magpylib Cuboid, N42 Br 1.29 T). **48× Ø5×5 fitted as AXIAL POLE EXTENDERS (introduced 2026-10-26 with Gen-DJ) — 3 per pole per rotor, NOT between the poles:** **a pair flanking the narrow 10 mm N52 bar at its centre** (centres R259.548 at ±1.932° = ±8.75 mm beside the bar's centre line, square pockets aligned with the bar walls, 0.95 mm PLA web to the bar pocket) and one radially OUTSIDE the N42 block (the outermost magnet of the pole) at R324.25. Each Ø5 shows the **same pole to the stator as the Ø20 of its arc** (the arc's engraved N/S letter). They count whichever way yours are magnetised, because the 5.3 × 5.3 mm square through-pocket takes a Ø5×5 either way up: **AXIAL Ø5 (poles on the flat faces): stand it upright, flat face on the steel. DIAMETRIC Ø5 (poles across the diameter): lay it on its side, cylinder axis TANGENTIAL (parallel to the long sides of the bar), rolled so its N (or S) side faces the stator.** Test first: hang the Ø5 on a thread / use a compass — an axial one points along its axis, a diametric one across it. Scorer: upright axial cylinders (magpylib Cylinder, Br 1.43 T, exact for axial Ø5) → headline; lying diametric cylinders (`--set pole_o5_mode="lying"`, exact for diametric Ø5) → **102.734 W** (same within 0.00 %). Left out entirely the kit scores 98.685 W. Same polarity as their neighbours, the Ø5 are pushed outward onto their pocket walls — glue them one at a time and hold until the epoxy grabs. **Plus 16 of Austin's 20× N52 60×10×3 mm bars** (4 spare), one per pole on the pole angle, centre R259.4 — **RADIAL and INSIDE the Ø20** (the innermost magnet of each pole, running from R229.4 to R289.4, its outer end 0.6 mm from the disc edge) — **60 mm side RADIAL (along the pole axis), 10 mm side tangential**, **magnetised through the 3 mm thickness** (axial — check with a compass before gluing; a bar magnetised through 10 or 60 mm cannot be used here). Each bar has the **same polarity toward the stator as the Ø20 and block of its pole**. It sits in a 3.05 mm **blind** pocket cut from the stator face (bar face flush with the disc faces, on a 1.95 mm PLA floor over the steel); the pocket's outer end opens into the Ø20 pocket so no thin PLA sliver is left. Same polarity, the bar is pushed INWARD (toward the shaft) onto the inner pocket wall — exactly the position the scorer models (magpylib Cuboid, N52 Br 1.43 T). Spare: 4 N42 blocks and 4 N52 bars.

**Ø5×5 count rule:** the 48 Ø5×5 are counted in the headline only as real magnets in pockets that also suit **diametrically magnetised** Ø5 laid on their side (scorer lying-mode what-if **102.734 W** vs headline 102.730 W — the same within 0.00 %); axial Ø5 standing upright score the headline. If your Ø5 are neither (or you skip them), the kit scores **98.685 W** without any Ø5 (`--set pole_o5_R_list=[]`). Check each Ø5 with a compass before gluing.

## Flush magnet seat — measure your magnets

The magnet carrier is printed exactly as thick as the magnet (5.00 mm, through-pockets), so each Ø20 sits on the steel with its face **level with the carrier face** (as-built recess 0.00 mm). The magnet faces are 7.00 mm apart, at exactly the 0.50 mm magnet→wound-envelope minimum. **Measure every magnet with calipers before gluing.** If any is over 5.00 mm (or the printed carrier is thinner), it stands proud: then reprint `gap_sleeve.scad` longer by 2× the worst proud amount (edit `m2m`) so the 0.5 mm clearance is kept (the score drops ≈1 % per 0.05 mm). Put the 0.50 mm feeler shims between the **magnet faces** and the flanges at step 8.

## Steel back-iron (REQUIRED for the scored watts)

Buy / cut **2× Ø660 × 4.76 mm (3/16") mild-steel discs** (S235/A36/1008–1018 CRS), OD Ø660, centre hole Ø26; holes: hub clamp 4× M3 at R22 ([0, 90, 180, 270]°), 4× Ø4.3 brace holes at R18 ([45, 135, 225, 315]°), 16× M3 arc clamps at R300 ([13.0, 32.0, 58.0, 77.0, 103.0, 122.0, 148.0, 167.0, 193.0, 212.0, 238.0, 257.0, 283.0, 302.0, 328.0, 347.0]° = ±13° from every pole (same map as the Gen-DG/DH discs)), index notch at +X (= pocket 0).
DXF: `print-packs/laser-cut/steel_backiron_disc.dxf` (from `steel_backiron_disc.scad`) — any laser-cut service (SendCutSend / OSHCut / local shop); zinc-plate or paint.
Magnets drop through the carrier pockets onto the steel and are epoxied to it.
Steel: 2× Ø660 × 4.76 mm (3/16") mild-steel discs, clamp map hub M3 at R22 0/90/180/270°, 4× Ø4.3 brace holes R18 at 45/135/225/315°, 16 arc-clamp M3 at R300 ±13° from every pole, index notch at +X — cut from this kit's `steel_backiron_disc.dxf` (laser-cut service, or any shop that cuts 3/16" mild steel). Each disc weighs ≈12.8 kg. Lobed arcs: 2.4 mm PLA around each pocket; the epoxy-to-steel bond, not the PLA, holds the magnets. NEW discs (Ø660); no earlier disc fits. Gen-EA uses the SAME discs and arcs.
Thickness check (`_build/steel_flux.py`, magpylib, not part of the scorer): ≈0.684 mWb per pole enters the steel; return flux ≈0.23 T spread over the
radial width, ≈0.74 T worst case in a one-magnet-wide band at 4.76 mm (3 mm would be ≈1.2 T, saturated — keep ≥4.76 mm).
Without the steel the scorer gives only **48.92 W** — the steel is not optional.

## Parts to print (`print-packs/parts/`; 6 plates in `print-packs/multi-plate/` — the machine does NOT fit one plate; one-plate rotor-carrier MODULE in `print-packs/one-plate/`)

| File | Qty | Notes |
|---|---|---|
| `rotor_arc_n.stl` (magnet arc, variant N) | **8** | 4 per rotor: Ø20 + N42 keyhole + N52 bar blind pocket + 3× Ø5 SQUARE through pockets at the pole, engraved 'N'; stator face (countersinks, engraving) UP |
| `rotor_arc_s.stl` (magnet arc, variant S) | **8** | 4 per rotor: same shape, engraved 'S' |
| `rotor_hub.stl` | 2 | D-flat hub, Ø58 flange DOWN, tube up; bolts to the steel at R22 |
| `stator_segment_a_with_bases_in_place.stl` | **2** | split-stator segment type A (2 bays, its 2 bobbin BASES printed IN PLACE, 0.35 mm gap) — half-lap tongues on the bed side; brim on |
| `stator_segment_b_with_bases_in_place.stl` | **2** | segment type B — already turned over for printing (its half-lap tongues on the bed side, lead-groove face down; the 7 mm tab recesses and 0.9 mm lead grooves bridge); brim on. (`stator_segment_a.stl` / `stator_segment_b.stl` + `coil_former.stl` = the same parts separately; `stator_core.stl` = the assembled ring, reference only — it does NOT fit the bed) |
| `coil_lid.stl` | **12** | flange down; CA-glue onto the base hub before winding |
| `base_pedestal.stl` | 1 | **PEDESTAL FRAME (NEW):** lower 608 seat on a Ø50 × 25 mm tower with a Ø110 screw foot — carries the whole rotor weight in compression; foot down |
| `stator_post.stl` | 6 | 49.0 mm posts board → stator underside on the M3 frame rods (R336); top 12.26 mm slim (Ø9) beside the spinning rotor-A rim; captive M3 nut in the foot; foot down |
| `spider_hub.stl` | 1 | top 608 seat (Ø80 × 10 mm), 3 arms bolt on; printed seat-opening UP (flipped in the pack) |
| `spider_arm.stl` | 3 | 20 × 8 mm arms hub → frame rods at [45, 165, 285]°, flat |
| `top_standoff.stl` | 3 | 34.0 mm tubes (Ø9) stator top → spider arm on the 3 arm rods |
| `race_spacer.stl` | 2 | Ø11.5/8.3 × 1.5 mm inner-race spacers (collar ↔ 608) |
| `post_shim.stl` | 12 | 0.4 mm levelling washers under the stator at the posts (use as needed) |
| `gap_sleeve.stl` | 1 | 7.00 mm shaft spacer between the hubs (sets the gap, takes the magnet pull) |
| `gap_spacer.stl` | 12 | 0.50 mm feeler shims |
| `shaft_collar.stl` | 4 | D-flat bore, M3 set screw on the flat (lower: under the rotor-A hub on the pedestal bearing; upper: between the rotor-B hub and the spider bearing; 2 spare) |
| `fit_coupon.stl` + `fit_coupon_bay.stl` | 1 + 1 | print FIRST on their own: Ø20 through pocket, Ø5 SQUARE pocket pair (one upright + one lying Ø5 must both sit flush), N52 bar BLIND pocket, N42 block pocket, 608 seat, D-bore, shim + a full-height bay slice with one print-in-place base |

**A full machine does NOT fit one 410 mm plate** (Ø682 6-segment split stator, Ø660 rotors as 16 arcs, pedestal frame). It ships as **6 plates** in `print-packs/multi-plate/` (bbox measured from each layout STL, all ≤ 410 for the Kobra 3 Max 420 bed):

- **plate 1** `plate-1-stator-A-B-lids/` — 1× `stator_segment_a_with_bases_in_place` + 1× `stator_segment_b_with_bases_in_place` + 4× `coil_lid`: **400.6 × 386.6 mm**, 10 bodies, min gap between separate parts 3.68 mm (in-place bases 0.35 mm from their bays by design).
- **plate 2** `plate-2-stator-A-B-lids/` — 1× `stator_segment_a_with_bases_in_place` + 1× `stator_segment_b_with_bases_in_place` + 4× `coil_lid`: **400.6 × 386.6 mm**, 10 bodies, min gap between separate parts 3.68 mm (in-place bases 0.35 mm from their bays by design).
- **plate 3** `plate-3-stator-A-B-lids/` — 1× `stator_segment_a_with_bases_in_place` + 1× `stator_segment_b_with_bases_in_place` + 4× `coil_lid`: **400.6 × 386.6 mm**, 10 bodies, min gap between separate parts 3.68 mm (in-place bases 0.35 mm from their bays by design).
- **plate 4** `plate-4-arcs-N-pedestal-posts-hubs/` — 8× `rotor_arc_n` + 1× `base_pedestal` + 1× `spider_hub` + 2× `rotor_hub` + 6× `stator_post` + 4× `shaft_collar`: **388.0 × 398.0 mm**, 54 bodies, min gap between separate parts 3.46 mm.
- **plate 5** `plate-5-arcs-S-standoffs-small-parts/` — 8× `rotor_arc_s` + 12× `gap_spacer` + 12× `post_shim` + 1× `gap_sleeve` + 2× `race_spacer` + 3× `top_standoff`: **384.1 × 385.1 mm**, 54 bodies, min gap between separate parts 3.68 mm.
- **plate 6** `plate-6-spider-arms/` — 3× `spider_arm`: **332.0 × 70.0 mm**, 3 bodies, min gap between separate parts 5.00 mm.

**One-plate MODULE** `print-packs/one-plate/one_plate_layout.stl` — one complete rotor magnet carrier (4 N + 4 S arcs + 1 rotor hub) + 6 bobbin lids: **394.7 × 395.6 mm**, 38 bodies, min gap 3.84 mm (preview next to it). It is a swappable module, not a whole machine.

Previews next to each layout. Fit coupons: print first on their own from `print-packs/parts/`. If an in-place base fuses on your printer, print `coil_former.stl` × 12 separately and use `stator_segment_a.stl` / `stator_segment_b.stl` (B: turn it over in the slicer so its lap tongues face the bed).
PLA/PETG, 0.4 mm nozzle, 0.20 mm layers, brim on the stator and lids. Binary STL, mm.

**Pedestal frame (NEW tonight) / mounting:** the shaft stands VERTICAL. The lower 608 sits in `base_pedestal` screwed to a flat base board; the race spacer, lower collar and rotor-A hub stand on its inner race, and rotor B sits on the gap sleeve on rotor A, so the whole ≈26 kg rotor stack goes board → pedestal → bearing in pure compression (the magnet pull between the rotors is internal, taken by the gap sleeve). The stator stands on 6 `stator_post`s screwed to the same board; the top 608 in the 3-arm spider only locates the shaft sideways. This replaces the 2026-10-10…11-01 printed bar bridges, which sag ≫ 0.5 mm under rotors this heavy (see the 2026-11-01 review). Base board: flat ≥ 18 mm plywood/MDF, ≥ 742 × 742 mm, on a level bench.

## Hardware BOM (non-printed)

- Steel: 2× Ø660 × 4.76 mm (3/16") mild-steel discs · 2× 608RS bearings · Ø8 mm steel shaft ≥ 123 mm (Austin's 8 mm steel rod, cut to length, D-flat filed/ground 0.5 mm deep over the hub/collar length)
- 6× M3 threaded rod: 3 × ≈103 mm (arm rods: post + stator + top standoff + arm + nut) and 3 × ≈61 mm (post + stator + nut) + 6 captive M3 nuts in the post feet + nuts/washers
- Base board ≥ 18 mm plywood/MDF ≥ 742 mm square · 4 + 12 wood screws 4 × 20 mm (pedestal + posts) · 6× M3×16 + nyloc (spider arms → hub)
- 32× M3×16 **countersunk** (ISO 10642 / DIN 7991) + nyloc nuts (arc clamps, 16 per rotor) · 8× M3×16 countersunk + nyloc (hubs, 4 per rotor)
- 2× M3 heat-set inserts (radial, in each hub below the steel) + 2× M3×6 set screws onto the D-flat; 4× M3 set screws for the collars
- **Split-stator joints:** 6× M3×16 + nyloc nuts (≤ Ø7 washers) at R336 + 12 × 1.75 mm filament pins + slow-cure epoxy
- 4× M4 threaded rod ≈100 mm + 16 nuts (TEMPORARY jack/brace rods) · 1.75 mm filament (bobbin pins) · epoxy + CA
- 390 m 24 AWG enamelled copper (0.55 mm OD) — Austin's own spool · 6× Schottky (e.g. SB560) for a 3φ bridge rectifier

## Modular notes (Gen-DZ)

New rotors (Ø660 steel, arcs at R300), a new 6-segment split stator and the new pedestal frame. **Gen-EA is a drop-in alternative stator for these same rotors** (scramble-wind friendly, fill 0.60). **From a Gen-DW (or Gen-DT) build you re-use:** all 16 Ø20, 16 N42 blocks, 16 N52 bars and 48 Ø5 (pop them out of the old arcs), the 8 mm shaft, 608RS bearings, collars and the hub design; the 390 m of 24 AWG can be unwound and re-wound if the enamel is undamaged (otherwise a new spool). New: steel discs, arcs, 6-segment stator, pedestal frame + base board. Gen-DW owners: the pedestal frame idea (pedestal + posts + spider) also fixes the Gen-DW bridge-stiffness problem, but its parts here are sized for this kit. Swap stators/rotors with the 4 temporary M4 jack rods: raise rotor B on the nuts (clap hazard in reverse, never by hand), swap the part, lower rotor B, remove the rods.

## Winding

Bobbin window 4.40 × 13.00 mm → 8 layers, **156 turns** of 24 AWG at fill 0.65
(32.5 m per coil). Copper sector r 230–328 mm × 6.48°.
Wind **before** assembly; copper only between the 0.8 mm flanges, nothing proud. Magnet→wound envelope 0.50 mm
(as-built recess 0.00 mm; ≥0.5 PASS); clearance between neighbouring former footprints at r=230: 92.15 mm; stator web between bays ≥1.2 mm (GEOM_CHECK.md).

Wiring (3φ star, from the scorer phasors): `S0:A+ S1:B+ S2:C+ S3:A+ S4:B+ S5:C+ S6:A+ S7:B+ S8:C+ S9:A+ S10:B+ S11:C+` — same-letter coils in series per phase, '−' = swap that coil's leads.
Series vs parallel gives the same matched-load watts (it only moves V and R).

**Dense winding is required for the scored turns.** The scored turns assume a dense, layer-by-layer wind at fill 0.65 (insulated-wire area / window; the scorer cap). Use a winding jig on a drill/lathe with a turn counter, lay each layer side-by-side with light back-tension, and do not scramble-wind: a scramble wind only reaches ≈0.55–0.60 and then the window holds fewer turns (scorer what-if `--fill 0.60` is in the table above). Never wind more than the listed turns — the copper must stay below the flanges.

## Assembly order / safety

1. Print `fit_coupon.stl` + `fit_coupon_bay.stl` first: check Ø20 through-pocket fit, 608 seat, D-bore on your shaft, and that the in-place base pops out of the bay slice.
2. Print all 6 plates (the stator plates hold the 6 segments with their in-place bobbin bases + lids); push the 12 bobbin bases out of the stator bays. Glue each lid onto its base hub, wind 156 t in 8 even layers, leads out through the lid slots.
3. **Join the stator first:** lay the 6 segments A, B, A, B … flat on glass, slow epoxy on every lap face, press the 2 filament pins per joint home (trim flush), M3×16 + nyloc at R336 on each joint, check both faces are flush, let it cure. Then drop the wound bobbins into the stator bays (lid/tab side = +Z, lead-groove face), pin with 1.75 mm filament, epoxy. Wire per the map above.
4. Rotor A: bolt the hub to the steel (countersunk M3 from the flange side, nylocs behind, hub notch on the steel notch). Lay the 8 arcs on the steel (N, S, N, S … starting with an N arc over the notch on rotor A, an S arc on rotor B) and fit the 16 countersunk clamp bolts loosely, then tighten. Seat the magnets one at a time through the pockets onto the steel (polarity rule above) and epoxy: Ø20 discs first, then the N42 blocks into the SAME keyhole pocket as their disc (same polarity; the block is pushed AWAY from the disc onto the far wall by itself — lower it flat into the block end of the keyhole with a non-magnetic stick, keep it pressed flat on the steel — near its disc it will try to flip over — and hold it until the epoxy grabs), then the 16 N52 60×10×3 bars (one per pole, RADIAL, into the long blind pocket radially INSIDE the Ø20, same polarity as its pole: it is pushed INWARD toward the shaft onto the inner wall — lower it flat with a non-magnetic stick, keep it pressed flat, it tries to flip and jump onto the disc, hold until the epoxy grabs; these bars are strong, wear eye protection), then the 3 Ø5 per pole last, one at a time into their square pockets (axial ones upright, diametric ones on their side with the arc-letter pole up — compass-check every one), held with a non-magnetic pick until set.
   Seat ONE magnet at a time and let its epoxy grab before the next: the N42 blocks make each rotor much stronger than a disc-only rotor. **Keep the two magnet rotors > 30 cm apart and away from steel tools** until step 6. Never slide a loose magnet across the steel toward a seated one — they snap together.
5. **Frame (pedestal frame, shaft vertical):** press the lower 608 into `base_pedestal` (flush with its top) and the upper 608 into `spider_hub` from its open side; bolt the 3 `spider_arm`s onto the hub (2 × M3×16 + nyloc each). Press a captive M3 nut into each `stator_post` foot and thread its rod in.
   **Use the stator ring as the jig:** stand the 6 posts on their rods under the joined stator (one `post_shim` on each post top), stand it on the board, add the 3 `top_standoff`s + spider on the arm rods ([45, 165, 285]°) and finger-tight nuts, drop the shaft through the spider bearing, slide the pedestal onto the shaft end and let it sit on the board: the shaft is now plumb and centred. Screw the pedestal (4) and every post foot (2 each) to the board, then lift the spider and the stator off again.
6. **Rotor A:** race spacer on the pedestal bearing (inner race only), shaft in, lower collar onto the spacer, rotor A (magnets UP) onto the collar (hub D-flat on the shaft flat), lock the hub set screws. Gap sleeve onto the rotor-A hub. Lower the stator over the shaft onto the posts (it passes the open centre), nuts on the 3 plain rods.
   **Set the lower gap:** turn rotor A by hand and check the 0.50 mm feeler shims between the magnet faces and the stator underside next to every post. The posts are printed one 0.4 mm shim short: add a second shim where it is tight, remove the shim where it is loose, until the shim just slides everywhere (stator parallel to rotor A within ±0.1 mm).
7. **Clap hazard — brace before seating the second magnet face:** steel-backed N52 across a 7.00 mm gap pulls very hard. Thread the 4 temporary
   M4 rods (≈100 mm, short enough to stay above the pedestal) through rotor B / the open stator centre / rotor A (brace holes R18) with nuts on both sides, and lower rotor B (magnets DOWN) onto the gap sleeve by turning the nuts. Never let it jump; keep fingers out of the gap.
8. Upper collar + race spacer on top of the rotor-B hub, 3 top standoffs on the arm rods, spider over the shaft (upper 608 on the spacer), nuts on the arm rods. **Run-out check (Ø660 rotors, only 0.50 mm per side):** turn the rotors against a dial gauge or feeler at the arc rim — axial run-out must stay < 0.3 mm; shim the hub or re-seat the steel if not. Re-check the upper gap with the shims.
9. **Remove the temporary M4 rods and every shim before spinning.** Spin by hand first and listen for rubbing; drive from the top shaft stub (drill / motor coupling above the spider).
10. **Brim** (≤ 4 mm wide) the 0.8 mm bobbin flanges/lids, the stator segments (1.2 mm webs, 4.0 mm inner rim) and the spider arms when printing.

Re-score: `/workspace/generators/tools/physics_scorer/score_kit score /workspace/generators/2026-11-02/gen-dz-dual-rotor-8p12c-r300-pedestal-frame-6seg-stator-24awg --out /workspace/generators/2026-11-02/gen-dz-dual-rotor-8p12c-r300-pedestal-frame-6seg-stator-24awg --back-iron` (air-core: drop `--back-iron`, use another `--out`).
