# 2026-10-13 nightly — physics_scorer ranking (Gen-CA / CB / CC)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (start of tonight's job, ≈9:12 PM ET): single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS

Champion to beat: **Gen-BX** (`/workspace/generators/2026-10-11/gen-bx-dual-rotor-8p12c-r71-thincopper`) **7.304 W** matched-load @ 200 RPM with `--back-iron` (air-core 3.340 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-CA** `gen-ca-dual-rotor-8p12c-r84-arcs-nested` | **8.492 W** | 3.771 W | 13.88 | 17.02 | 366 | 0.657/0.135 | 12c/8p | 381 | 2× Ø194 × 4.76 mm (3/16") mild-steel discs | 402.6×403.6 | PASS / geom PASS |
| 2 | **Gen-CB** `gen-cb-dual-rotor-8p12c-r84-wiresaver-298m` | **7.495 W** | 3.353 W | 11.52 | 13.29 | 292 | 0.697/0.149 | 12c/8p | 298 | 2× Ø194 × 4.76 mm (3/16") mild-steel discs | 403.6×391.4 | PASS / geom PASS |
| 3 | **Gen-CC** `gen-cc-dual-rotor-8p12c-bx-retrofit-r71` | **7.404 W** | 3.374 W | 12.94 | 16.97 | 391 | 0.602/0.150 | 12c/8p | 380 | 2× Ø168 × 4.76 mm (3/16") mild-steel discs | 408.0×408.0 | PASS / geom PASS |

## Design ideas

- **Gen-CA**: Break the plate limit instead of the physics: the 2026-10-11 scans showed watts keep rising with machine size, but Ø194 was the largest one-piece stator/rotor set that fits one 410 mm plate. Gen-CA makes the steel disc the structural rotor and prints the magnet carrier as 8 bolt-on arcs per rotor plus a separate D-flat hub, opens the stator centre, and prints the 12 bobbin bases in place inside their stator bays, so a much bigger R84 / Ø226 machine (bobbins r64–104, 4.95 mm copper, 7.55 mm magnet gap) still packs on ONE plate.
- **Gen-CB**: Wire-saver stator for the Gen-CA rotors: only 4.05 mm of copper (9 layers), so the magnet faces are 6.65 mm apart and peak Bz at the copper reaches ≈0.70 T. It needs ≈300 m of wire (≈80 m less than Gen-CA, ≈75 m less than Gen-BX) and still out-scores the Gen-BX champion; it shares every rotor part, the steel, the frame rods and the bearing bridges with Gen-CA, so the two stators swap on the same machine.
- **Gen-CC**: Stator-only upgrade for an existing Gen-BX: the R71 rotors and Ø168 steel stay as they are; a new annular 12-bobbin stator with 6.3 mm copper (magnet gap 9.35 → 8.90 mm) and longer r52–90 bobbins (the open-centre stator now packs one size up) replaces the old one, together with a shorter gap sleeve, frame rods moved out to R93.5 and new bearing bridges. No new magnets or steel.

## Ø5 assists

- Gen-CA: none fitted (all 48 Ø5 spare); scan t6: diametric Ø5 assists lower this 8p/12c layout, so all 48 Ø5 are left out
- Gen-CB: none fitted (all 48 Ø5 spare); scan t6: diametric Ø5 assists lower this 8p/12c layout, so all 48 Ø5 are left out
- Gen-CC: none fitted (all 48 Ø5 spare); scan t6: diametric Ø5 assists lower this 8p/12c layout, so all 48 Ø5 are left out

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-CA: 8.492 W at fill 0.65 vs 7.837 W if only fill 0.60 is reached
- Gen-CB: 7.495 W at fill 0.65 vs 6.928 W if only fill 0.60 is reached
- Gen-CC: 7.404 W at fill 0.65 vs 6.842 W if only fill 0.60 is reached

## What the scans showed (`_design_scan/`, wire ≤ 386 m, all `--back-iron`)

- **Size is still the lever — the plate was the only thing stopping it.** Past the old Ø194 limit the frontier keeps climbing: t1 (R74–84) best 8.28 W
  (R82, r62–100, 5.4 mm copper), t3/t4 pushed the copper thinner (4.05–4.95 mm, 9–11 layers, magnet gap 6.65–7.55 mm, peak Bz 0.66–0.70 T) and the curve
  flattens at **≈8.5 W** (R84 r64–104 4.95 mm 8.49 W at 381 m; R88 r65–108 4.5 mm 8.56 W at 384 m, +0.8 % for a Ø234 stator / Ø202 steel). Wire (≤ 386 m) is binding
  again at that size. R84 was chosen: +0.8 % is inside the scan resolution and R84 packs with margin and shares its rotors with the wire-saver.
- **How the bigger machine fits one 410 mm plate (trial kits + real packer):** trial A, a one-piece R78 ring-rotor set (Ø214 open-centre stator + 2× Ø182 rings, loose bobbin bases), did NOT pack
  (three discs in three corners need D_stator + D_rotor ≤ ≈405 mm and the 24 bobbin parts no longer fit around them); an R84 set with one-piece rings cannot even place its 3 discs (226 + 194 > 405). What works:
  (1) the steel disc is the structural rotor and the PLA magnet carrier is printed as **8 bolt-on arcs per rotor** (one pole each, joints clamped by countersunk M3) plus a
  separate D-flat hub; (2) the **stator centre is opened** (it is static and only held by the frame rods outside the rotor); (3) the **12 bobbin bases print in place inside
  their own stator bays** (0.35 mm gap; span margin raised so the webs stay 1.2 mm — t5 shows this costs nothing, 8.49 W either way); (4) a true-silhouette packer
  (holes usable) with a max-contact heuristic, 2.5–3 mm part gaps. Trials with 4 arcs per rotor (trial C loose bases: 5 packer variants; trial D in-place bases: 1 variant) found no layout; 8 arcs per rotor + in-place bases packed (Gen-CA 402.6 × 403.6 mm).
- **Wire-saver on the same rotors (t4/t5):** at ≤ 300 m the best R84 stator is r63–102 × 4.05 mm (7.52 W scan, 298 m) — still above Gen-BX with ≈75 m less wire → **Gen-CB**.
- **Gen-BX retrofit (t2, R71 rotors kept):** the open-centre stator allows longer bobbins; best r52–90 × 6.3 mm (7.38 W scan, 380 m), only ≈+1 % over Gen-BX — the
  R71 rotors are the limit, not the stator → **Gen-CC** (a no-new-magnets/no-new-steel upgrade path).
- **Not rescanned (prior nights settled them):** other coil counts (8p/9c, 8p/6c, 8p/15c lost badly at big rings on 2026-10-11) and diametric Ø5 assists
  (they lower 8p/12c on R66/R70/R74; only 8p/6c ever gained, and 8p/6c tops out ≈5.1 W), so no Ø5 are fitted.
- **Not modellable honestly (not built):** mid-rotor and single-sided + steel mirror topologies (the scorer applies `--back-iron` images only to dual_rotor, so they would
  be scored air-core only and land far below), trapezoid coils, stator-side steel, 16-pole rotors (only 8 Ø20 per rotor).

## Champion

**Gen-CA** at **8.492 W** (`--back-iron`, air-core 3.771 W) — BEATS Gen-BX 7.304 W (1.163×, same scoring mode).

Push: lucidlooney2030/MAX-Versions (rescued 2026-10-14).

Archive: `/workspace/generators/2026-10-13-generators.tar.gz`

