# Current champion — MAX-Versions

**As of 2026-11-01-night (completed 2026-11-02 ET): Gen-DW dual-rotor 8-pole / 12-coil — the Gen-DT radial-strip pole (N52 60×10×3 bar RADIAL inside the Ø20×5 N52 disc + N42 20×10×5 block outside + 3 axial Ø5×5, two of them now flanking the narrow bar) grown to R220 on a SPLIT (4 half-lapped segments) narrow-bobbin 24 AWG stator (bobbins r150–248, 152 t) with 2× Ø500 × 4.76 mm steel discs — physics_scorer MAX tip.**

Path: [`champions/2026-11-01-gen-dw-dual-rotor-8p12c-r220-split-stator-bar-flank-o5-24awg/`](champions/2026-11-01-gen-dw-dual-rotor-8p12c-r220-split-stator-bar-flank-o5-24awg/)  
Print pack: [`print-packs/gen-dw-dual-rotor-8p12c-r220-split-stator-bar-flank-o5-24awg/`](print-packs/gen-dw-dual-rotor-8p12c-r220-split-stator-bar-flank-o5-24awg/) (**four-plate** from-scratch pack in `multi-plate/` (plate 1 printed twice) + **one-plate rotor-carrier module** (4 N + 4 S arcs + hub + 6 lids = one complete rotor's magnet carrier) + parts + `laser-cut/steel_backiron_disc.dxf` (NEW Ø500 discs))

Gen-DW beats Gen-DT on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, N42 blocks Br 1.29 T and N52 bars Br 1.43 T as magpylib Cuboids, Ø5×5 pole extenders as magpylib Cylinders,
**24 AWG** (bare 0.5106 mm, OD 0.55 mm) @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-DT; scorer unchanged — Gen-DT re-scored **51.338 W** on 2026-11-01, Gen-DW re-scored **74.327 W** on 2026-11-02 with its README in place):

| Metric @ 200 RPM | Gen-DW (new) | Gen-DT (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R), `--back-iron` | **74.327 W** | 51.338 W |
| Air-core what-if (no `--back-iron`) | **34.901 W** | 24.692 W |
| Voc rms/phase | **32.77 V** | 27.35 V |
| R_phase @20 °C | 10.84 Ω | 10.93 Ω |
| Wire | 24 AWG, 386 m (12 × 32.2 m incl. leads) | 24 AWG, 389.4 m |
| Turns fit / coil | 152 × 12 coils (fill 0.65, 8 layers, window 4.40 × 12.70 mm) | 164 × 12 |
| Bz peak / mean window | 0.631 / 0.174 T | 0.629 / 0.185 T |
| Pole radius / coils | R220, bobbins r150–248 × 9.42° | R160, r90–188 × 12.36° |
| Magnet face gap (m2m) | 7.00 mm | 7.00 mm |
| Steel | 2× **Ø500** × 4.76 mm (new DXF, ≈7.3 kg each) | 2× Ø380 × 4.76 mm |
| Print plates (measured STL bbox) | from scratch FOUR: 398.5 × 400.3 (×2) + 387.9 × 382.9 + 387.9 × 382.9 mm · one-plate rotor-carrier module 359.6 × 391.2 mm | THREE + one-plate stator module |
| Verdict | **PASS** (geometry check PASS) | PASS |

That is **×1.448** over Gen-DT in the `--back-iron` mode and **×1.413 air-core**.
What-ifs (same kit): diametric Ø5 laid on their side 74.330 W; all 48 Ø5 left out 71.475 W; looser fill 0.60 wind (141 t fit) 68.537 W; hot copper 60 °C 64.23 W.
At 200 RPM a matched load draws 1.51 A/phase, ≈3× the scorer's ≈0.5 A continuous guidance for printed formers — for continuous duty use ≥54.7 Ω/phase load (0.5 A → ≈41.0 W, Ohm's law on the scored 32.77 V / 10.84 Ω).

## What changed

The 2026-11-01 routine run was marked FAILED after the kits had been built, scored (all PASS), plated and geometry-checked; README, scorecard, one-plate module, archive and this push were completed on 2026-11-02 from the unchanged kit files.
Split stator (4 half-lapped quarter segments) lets the machine exceed the 410 mm bed; with the coil span narrowed as the radius grows the Gen-DT pole gains ≈1 W per +5 mm of radius. Runners-up the same night (local, not pushed): **Gen-DX** (Gen-DW rotors, fill-0.60 scramble-wind stator) **66.926 W**; **Gen-DV** (R200, Ø460 steel) **66.448 W**.

## IMPORTANT mechanical caveat (2026-11-02 review)

The printed 20 × 8 mm bearing-bridge bars span 512 mm between frame rods and are the only support for ≈14.9 kg of spinning steel + magnets. A beam estimate (not a scorer output) gives ≈13 mm in-plane sag (pinned ends) / ≈3 mm (clamped) per bar with the shaft horizontal — far beyond the 0.50 mm running clearance — and worse with the shaft vertical. **Do not spin Gen-DW on the printed bridges alone:** carry the lower 608 on a rigid pedestal on a base board (shaft vertical, pure compression load path) with the stator on posts to the same board — the frame introduced with the 2026-11-02 kits — or use steel bridges / pillow-block bearings on a rigid frame. The magnetics and the score are unaffected.

## Assembly warnings

- **Clap hazard** (steel-backed N52 discs + N42 blocks + N52 bars + 48 Ø5 across a **7.00 mm** gap, Ø500 rotors): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts. Brace before seating the second magnet face.
- **Big, heavy rotors (≈15 kg):** rigid frame (see caveat), check axial run-out at the arc rim < 0.3 mm before closing up (0.50 mm wound-envelope clearance per side); guard the rim (≈5.2 m/s at 200 RPM).
- Split stator: epoxy + 2 filament pins + 1 M3 per half-lap, glued flat on glass; cure before fitting bobbins.
- Radial bars are pushed INWARD by their disc and try to flip — seat with a non-magnetic stick and hold until the epoxy grabs. Compass-check every magnet (bars through 3 mm, blocks through 5 mm; Ø5 axial upright or diametric lying).
- Remove temporary braces and gap shims before spinning; brim (≤4 mm) on 0.8 mm flanges / lids / stator segments.
- Wind bobbins before assembly (152 t, 8 dense layers); do not raise turns. Continuous current ≲0.5 A per the scorer note.

Night scorecard: [`WOUND_ENVELOPE_2026-11-01.md`](WOUND_ENVELOPE_2026-11-01.md) (= SCORECARD).

## Prior champion

Gen-DT dual-rotor 8p/12c radial-bar-inside pole R160 — `champions/2026-10-31-gen-dt-dual-rotor-8p12c-radial-bar-inside-pole-r160-24awg/` (51.338 W). Superseded by Gen-DW 74.327 W.
