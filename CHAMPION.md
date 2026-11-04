# Current champion — MAX-Versions

**As of 2026-11-02-night (completed 2026-11-03 ET): Gen-DZ dual-rotor 8-pole / 12-coil — the Gen-DW radial-strip pole (N52 60×10×3 bar RADIAL inside the Ø20×5 N52 disc + N42 20×10×5 block outside + 3 Ø5×5 pole extenders) grown to R300 on a 6-segment split narrow-bobbin 24 AWG stator (bobbins r230–328, 156 t) with 2× Ø660 × 4.76 mm steel discs, carried on a new vertical-shaft PEDESTAL frame.**

Path: [`champions/2026-11-02-gen-dz-dual-rotor-8p12c-r300-pedestal-frame-6seg-stator-24awg/`](champions/2026-11-02-gen-dz-dual-rotor-8p12c-r300-pedestal-frame-6seg-stator-24awg/)  
Print pack: [`print-packs/gen-dz-dual-rotor-8p12c-r300-pedestal-frame-6seg-stator-24awg/`](print-packs/gen-dz-dual-rotor-8p12c-r300-pedestal-frame-6seg-stator-24awg/) (six-plate from-scratch pack in `multi-plate/` + one-plate rotor-carrier module 394.7 × 395.6 mm + parts + `laser-cut/steel_backiron_disc.dxf` (NEW Ø660 discs))

Honest numbers from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, N42 Br 1.29 T, 24 AWG bare 0.5106 mm / OD 0.55 mm @20 °C, `--back-iron` image method = optimistic upper bound; same mode as Gen-DW; scorer unchanged — Gen-DW re-scored 74.327 W on 2026-11-02):

| Metric @ 200 RPM | Gen-DZ (new) | Gen-DW (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R), `--back-iron` | **102.730 W** | 74.327 W |
| Air-core what-if (no `--back-iron`) | **48.920 W** | 34.901 W |
| Voc rms/phase | **38.70 V** (54.92 V line) | 32.77 V |
| R_phase @20 °C | 10.93 Ω | 10.84 Ω |
| Wire | 24 AWG, 389.5 m (12 × 32.46 m) | 24 AWG, 386 m |
| Turns fit / coil | 156 × 12 (fill 0.65, 8 layers, window 4.40 × 13.0 mm) | 152 × 12 |
| Bz peak / mean window | 0.631 / 0.178 T | 0.631 / 0.174 T |
| Pole radius / coils | R300, bobbins r230–328 × 6.48° | R220, r150–248 |
| Magnet face gap | 7.00 mm | 7.00 mm |
| Steel | 2× **Ø660** × 4.76 mm (≈12.8 kg each) | 2× Ø500 × 4.76 mm |
| Verdict | **PASS** (geometry check PASS) | PASS |

×1.382 over Gen-DW (back-iron mode), ×1.402 air-core.
What-ifs (same kit): diametric Ø5 laid on their side 102.734 W; all 48 Ø5 left out 98.685 W; fill 0.60 wind 95.017 W; hot copper 60 °C 88.77 W.
Matched load draws 1.77 A/phase at 200 RPM, well above the scorer's ≈0.5 A continuous guidance for printed formers — for continuous duty use a lighter load (≈77 Ω/phase for 0.5 A).

## What changed

The 2026-11-02 routine run was marked FAILED after the kits had been built, scored (all PASS) and plated; README, previews, scorecard, archive and this push were completed on 2026-11-03 from the unchanged kit files and scores.
New pedestal frame: shaft vertical, lower 608 in a printed pedestal on a ≥742 mm base board (rotor weight in compression), stator on 6 posts, 3-arm top spider — fixes the Gen-DW printed-bridge sag problem and lets the radius grow. Runners-up the same night (local, not pushed): **Gen-EA** (Gen-DZ rotors, fill-0.60 scramble-wind stator) **99.019 W**; **Gen-DY** (R260, Ø580 steel) **89.121 W**.

## Assembly warnings

- **Clap hazard**: steel-backed N52/N42 across a 7.00 mm gap. Use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts; brace before seating the second magnet face; keep fingers out of the gap.
- **Big and heavy:** ≈26 kg of spinning steel, Ø682 stator, rim ≈6.9 m/s at 200 RPM. Balance-check, guard the rim, axial run-out < 0.3 mm. Ask for flat (stress-relieved) steel.
- Radial N52 bars try to flip onto the disc — seat with a non-magnetic stick and hold until epoxy grabs; eye protection.
- Wind bobbins before assembly (156 t, 8 layers); never raise turns. Brim on thin flanges/lids/segments. Remove jack rods and shims before spinning.

Night scorecard: [`WOUND_ENVELOPE_2026-11-02.md`](WOUND_ENVELOPE_2026-11-02.md).

## Prior champion

Gen-DW dual-rotor 8p/12c R220 split stator — `champions/2026-11-01-gen-dw-dual-rotor-8p12c-r220-split-stator-bar-flank-o5-24awg/` (74.327 W). Superseded by Gen-DW → Gen-DZ 102.730 W.
