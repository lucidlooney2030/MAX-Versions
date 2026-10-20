# 2026-10-19 nightly — physics_scorer ranking (Gen-CP / CQ / CR)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (start of tonight's job, 9:12 PM ET): single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS
Mon Oct 19 21:12:01 EDT 2026

### Scorer validation (start of the 2026-10-19 run, before scoring anything)

- **Sanity** (`score_kit sanity`, 9:12 PM ET): single Ø20×5 N52 (Br 1.43 T) on-axis surface Bz — magpylib 0.3198 T vs analytic 0.3198 T (expected ≈0.32 T) → **PASS**.
- **Regression on the champion Gen-CJ** (`/workspace/generators/2026-10-17/gen-cj-dual-rotor-8p12c-radial-block-halbach-r86`, re-scored into /tmp):
  `--back-iron` **15.244 W**, 18.70 V rms/ph, 17.2 Ω, 266 t, Bz 0.661/0.172 T, PASS; air-core **7.586 W**, 13.19 V rms/ph — identical to the numbers shipped on 2026-10-17.
- **The scorer was NOT modified tonight** (physics_scorer/*.py unchanged since the 2026-10-16 cuboid addition, validated on 2026-10-17; no file newer than the 10-17 scorecard).
  Every kit is scored with the stock `score_kit score <kit> --out <kit> --back-iron` (+ air-core, `--fill 0.60`, `--halbach none` sidecars).
- **Keyhole pockets and the scorer** (same convention as 2026-10-18): disc and block share one keyhole pocket and repel onto the two FAR walls, so the magnet parameters sit at those
  pushed-apart positions (disc edge → block face 0.6 mm) and the printed pocket centres are offset by `disc_pocket_shift` / `block_pocket_shift` (±0.15 mm). The scorer's own
  hole-vs-pocket check uses the unshifted centres; `_build/check_geom.py` checks the real shifted keyhole outline (≥0.8 mm hole/countersink webs, ≥1.2 mm rim/joint walls) — all PASS.


Champion to beat: **Gen-CJ** (`/workspace/generators/2026-10-17/gen-cj-dual-rotor-8p12c-radial-block-halbach-r86`) **15.244 W** matched-load @ 200 RPM with `--back-iron` (air-core 7.586 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-CP** `gen-cp-dual-rotor-8p12c-t-pole-tangential-keyhole-r88` | **15.820 W** | 7.622 W | 19.07 | 17.23 | 294 | 0.650/0.176 | 12c/8p | 386 | 2× Ø202 × 4.76 mm (3/16") mild-steel discs | 399.9×400.8 | PASS / geom PASS |
| 2 | **Gen-CR** `gen-cr-dual-rotor-8p12c-t-pole-deep-window-r89` | **15.728 W** | 7.556 W | 19.00 | 17.21 | 313 | 0.649/0.180 | 12c/8p | 386 | 2× Ø204 × 4.76 mm (3/16") mild-steel discs | 398.9×400.0 | PASS / geom PASS |
| 3 | **Gen-CQ** `gen-cq-dual-rotor-8p12c-t-pole-wiresaver-325m` | **14.407 W** | 6.932 W | 16.69 | 14.50 | 240 | 0.668/0.186 | 12c/8p | 325 | 2× Ø202 × 4.76 mm (3/16") mild-steel discs | 397.2×398.9 | PASS / geom PASS |

## Design ideas

- **Gen-CP**: New pole shape, the "T-pole": the Ø20 N52 disc sits OUTSIDE at R88 and its N42 20×10×5 block sits radially INSIDE it but turned with the 20 mm side TANGENTIAL (r67.4–77.4), so each pole is a 20 mm-wide, 36 mm-long radial bar that keeps the full disc width all the way in, instead of narrowing to 10 mm (Gen-CJ/CN radial block). Disc and block share ONE keyhole pocket (0.6 mm apart, no PLA web). The sector bobbins start at r58 (the copper sits on the T, not on the empty hub area) and run to r105.5 with 4.65 mm copper and 294 turns; 48 diametric Ø5 Halbach columns are moved 1.2 mm inward (R80.6/86.8/93.0) to flank the T. Ø202 steel, same Ø229 annular stator / frame as Gen-CJ, one plate.
- **Gen-CR**: The T-pole pushed 1 mm further out (disc R89, block crossbar r68.4–78.4, Ø204 steel = the largest rotor that still clears the R109.5 frame rods) with a deeper bobbin window: copper sector r60–105.5 with a 16.5 mm radial build, so each coil carries 313 turns in a narrower, more central ring of copper (same ≈386 m of wire). Ø5 columns at R81.6/87.8/94.0.
- **Gen-CQ**: Modular swap on the Gen-CP rotors: the same 16 T-pole arcs, magnets and Ø202 steel discs, on a thinner-copper stator (4.2 mm copper, so the magnet faces close in by 0.45 mm) wound with only ≈325 m of 26 AWG — about 65 m of the spool stays free for leads/repairs. Swapping between Gen-CP and Gen-CQ is a stator + gap-sleeve change only.

## Ø5 assists (count only if DIAMETRICALLY magnetised)

- Gen-CP: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R80.6/86.8/93), Halbach-oriented (rule engraved on every arc)
- Gen-CR: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R81.6/87.8/94), Halbach-oriented (rule engraved on every arc)
- Gen-CQ: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R80.6/86.8/93), Halbach-oriented (rule engraved on every arc)

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-CP: 15.820 W at fill 0.65 vs 14.573 W if only fill 0.60 is reached
- Gen-CR: 15.728 W at fill 0.65 vs 14.508 W if only fill 0.60 is reached
- Gen-CQ: 14.407 W at fill 0.65 vs 13.250 W if only fill 0.60 is reached

## What tonight's scans showed (`_design_scan/`, all `--back-iron`, coarse grid unless marked full-res)

- **N52 60×10×3 bars (now 20 confirmed → 16 usable, one per pole on both rotors) do NOT help here** (p1, used in place of the N42 block, Br 1.43 T, 3 mm thick, face flush with
  the disc face): bar TANGENTIAL outside the disc **10.05 W** best (a 60 mm chord spans ±19° of the 45° pole pitch and leaks into the neighbouring poles), bar RADIAL inside the
  disc **13.13 W** (and at R88 its inner end reaches r17, through the hub — not buildable). Both far below the N42-block poles (15.9 W), so the bars stay unused tonight.
- **N42 block RADIAL OUTSIDE the disc** (disc inside): best 13.79 W — worse than tangential-outside (Gen-CM 15.93 W).
- **Side-by-side pole** (block beside the disc at the same radius): 7.8 W — the pole gets wide tangentially and short radially; rejected.
- **NEW: T-pole** = Ø20 disc OUTSIDE + N42 block INSIDE with its 20 mm side TANGENTIAL, in one keyhole pocket (0.6 mm apart): **15.881 W coarse** at R88, bobbins r58–105.5 × 4.65 mm,
  294 t, 386 m, Ø5 column moved 1.2 mm inward (R80.6/86.8/93.0; +0.04 W vs centred). It beats the radial-inside keyhole family (Gen-CN type, best 15.58 W coarse on tonight's grid)
  and equals the inverted family (Gen-CM 15.93 W coarse) within the coarse-grid accuracy → built as **Gen-CP**. Its best stator (r58–105.5 × 4.65, b 15.5, 294 t) is the same window
  as Gen-CM's.
- **T-pole deep window:** R89, r60–105.5 × 4.65 mm, b 16.5 → 313 t, 15.766 W coarse → built as **Gen-CR** (full-res check of the trade-off).
- **T-pole arcs on Gen-CJ's exact stator** (retrofit idea, r50–104 × 4.5, 266 t): only 14.34 W — below Gen-CJ itself, so no retrofit kit tonight.
- **Wire-saver on the Gen-CP rotors:** 4.2 mm copper (faces close in by 0.45 mm), r60–105.5, b 14 → **14.48 W coarse at 325 m** (best ≤320 m: 14.16 W) → built as **Gen-CQ**.
- **Wire is still the limit:** every top row sits at 383–389 m. **N42 count:** 16 of 20 used (4 spares cannot be added symmetrically; scorer = one block type per pole on every pole).
- **Full-res checks of Gen-CP** (`score_kit --set`, `_tune/`): disc R87 15.755, **R88 15.820 (built)**, R88.5 15.788 W; Ø5 column 0.6 mm further out 15.803 W (built inward column wins).
  A deeper 15.75 mm build (299 t) would give 15.877 W but needs 389.1 m (no spool margin) and 16.0 mm (304 t) 15.931 W needs 391.8 m (> spool) — so Gen-CP keeps
  15.5 mm / 294 t / 386 m.

## 2026-10-18 kits (failed night) — status

The 2026-10-18 run stopped after scoring (no README/preview/scorecard/archive/push; its logs end right after the score sidecars at ≈10:03 PM ET — it ran out of time before
`make_preview.py` / `make_docs.py`). Its three kits are scorer-PASS and were NOT pushed. After tonight's kits were finished, tonight's job packaged them (README.md + preview.png per kit, 2026-10-18/SCORECARD.md, archive `/workspace/generators/2026-10-18-generators.tar.gz`; geometry checks PASS):
Gen-CM inverted keyhole R77 **15.869 W**, Gen-CN keyhole radial-block R88 **15.838 W**, Gen-CO Gen-CJ keyhole-arc retrofit **15.636 W** (all `--back-iron`).
Honest comparison: tonight's Gen-CP (15.820 W) is 0.3 % below the unshipped Gen-CM (15.869 W) — both are the same 8p/12c Ø229-stator class with the same r58–105.5 × 4.65 mm
294-turn window; the T-pole and the inverted pole are a tie within ≈0.3 %. Tonight's push compares against the official champion Gen-CJ only, as instructed.

## Champion

**Gen-CP** at **15.820 W** (`--back-iron`, air-core 7.622 W) — BEATS Gen-CJ 15.244 W (1.038×, same scoring mode).

Push: **Gen-CP pushed** to lucidlooney2030/MAX-Versions @ `527c176` (main, fast-forward from fcacbe4, no force) — `champions/2026-10-19-gen-cp-dual-rotor-8p12c-t-pole-tangential-keyhole-r88/`, `print-packs/gen-cp-dual-rotor-8p12c-t-pole-tangential-keyhole-r88/`, runners Gen-CR/Gen-CQ in `champions/runners-2026-10-19/`, CHAMPION.md updated (back-iron + air-core, V, Ω, wire, honest note on the unshipped 2026-10-18 Gen-CM 15.869 W), scorecard = `WOUND_ENVELOPE_2026-10-19.md`.

Archive (on the build box): `/workspace/generators/2026-10-19-generators.tar.gz`

