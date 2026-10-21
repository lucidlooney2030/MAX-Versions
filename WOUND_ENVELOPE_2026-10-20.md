# 2026-10-20 nightly — physics_scorer ranking (Gen-CS / Gen-CT / Gen-CU)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (start of tonight's job, 9:12 PM ET): single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS
Tue Oct 20 21:13:36 EDT 2026

### Scorer validation (start of the 2026-10-20 run, before scoring anything)

- **Sanity** (`score_kit sanity`, 9:13 PM ET): single Ø20×5 N52 (Br 1.43 T) on-axis surface Bz — magpylib 0.3198 T vs analytic 0.3198 T (expected ≈0.32 T) → **PASS**.
- **Regression on the champion Gen-CP** (`/workspace/generators/2026-10-19/gen-cp-dual-rotor-8p12c-t-pole-tangential-keyhole-r88`, re-scored into /tmp):
  `--back-iron` **15.820 W**, 19.07 V rms/ph, 17.2 Ω, 294 t, Bz 0.650/0.176 T, PASS; air-core **7.622 W**, 13.23 V rms/ph — identical to the numbers shipped on 2026-10-19.
- **The scorer was NOT modified tonight** (physics_scorer/*.py unchanged since 2026-10-16). Wire gauge: the scorer reads `wire_awg` (bare Ø from its AWG table: 24 AWG 0.5106 mm,
  30 AWG 0.2546 mm → copper resistance) and `wire_od` (insulated OD → turns-fit). This is the same mechanism the 2026-10-20 final-test used (FT-B1 / FT-K1 `wire_awg = 24`,
  `wire_od = 0.55`; FT-B2 / FT-K2 `wire_awg = 30`, `wire_od = 0.28`). Tonight's kits all use `wire_awg = 24`, `wire_od = 0.55`.
  Cosmetic: the header sentence in every SCORE.md still prints "26 AWG copper" (fixed text in report.py); the Wire row of the same SCORE.md shows the bare 0.5106 mm / OD 0.55 mm actually used.
- **Gen-CP on Austin's real wire** (`--set wire_awg=24 --set wire_od=0.55 --set turns=197`, same bobbins): only 197 t of 24 AWG fit its 4.65 × 15.5 mm window →
  **16.738 W** `--back-iron`, 12.74 V rms/ph, 7.3 Ω, 259 m, PASS. (Without lowering the claimed 294 t the scorer FAILs it: claim > fit.) So the 15.820 W champion was a 26 AWG
  number Austin cannot build; re-wound with 24 AWG it would make 16.74 W. Tonight's kits are compared against the official 15.820 W and against this 16.738 W.


Champion to beat: **Gen-CP** (`/workspace/generators/2026-10-19/gen-cp-dual-rotor-8p12c-t-pole-tangential-keyhole-r88`) **15.820 W** matched-load @ 200 RPM with `--back-iron` (air-core 7.622 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-CS** `gen-cs-dual-rotor-8p12c-t-pole-24awg-tall-copper-r88` | **19.306 W** | 9.139 W | 16.72 | 10.86 | 306 | 0.568/0.154 | 12c/8p | 387 | 2× Ø202 × 4.76 mm (3/16") mild-steel discs | 399.9×400.8 | PASS / geom PASS |
| 2 | **Gen-CT** `gen-ct-dual-rotor-8p12c-inverted-pole-24awg-r76` | **19.289 W** | 9.198 W | 16.71 | 10.86 | 306 | 0.570/0.154 | 12c/8p | 387 | 2× Ø201 × 4.76 mm (3/16") mild-steel discs | 402.9×400.2 | PASS / geom PASS |
| 3 | **Gen-CU** `gen-cu-dual-rotor-8p12c-t-pole-24awg-wiresaver-340m` | **18.375 W** | 8.783 W | 15.23 | 9.46 | 277 | 0.605/0.163 | 12c/8p | 337 | 2× Ø202 × 4.76 mm (3/16") mild-steel discs | 399.9×400.8 | PASS / geom PASS |

## Design ideas

- **Gen-CS**: Gen-CP's T-pole rotors (identical arcs, magnets and Ø202 steel) re-targeted to the 24 AWG wire Austin actually owns. 24 AWG has 0.63× the resistance per metre of 26 AWG, so one ≈390 m spool now fills a 1.5× larger window: the copper grows from 4.65 to 6.8 mm tall (12 layers of 0.55 mm wire) and 16.5 mm deep, which opens the magnet gap from 7.25 to 9.4 mm but nearly halves the phase resistance (≈10.9 Ω vs 17.2 Ω). Net: more matched-load watts than Gen-CP from the same magnets. Because the rotors are Gen-CP's, this is a stator + gap-sleeve swap on an existing Gen-CP.
- **Gen-CT**: The other top pole family (Gen-CM, 2026-10-18) re-built for 24 AWG: the Ø20 N52 disc sits INSIDE at R76 and the N42 block goes OUTSIDE it with its 20 mm side TANGENTIAL, so each pole is widest at the outer radius where the sector coils are widest. Disc and block share one keyhole pocket (0.6 mm apart). The 24 AWG stator uses 6.8 mm tall copper × 16.5 mm build on r58–105.5 bobbins (one ≈390 m spool). Different rotors from Gen-CS/CU (smaller pole radius, Ø201 steel), and the very same wound 24 AWG stator as Gen-CS — a rotor swap.
- **Gen-CU**: Modular swap on the same T-pole rotors as Gen-CS: shorter 5.8 mm copper (10 layers of 24 AWG) but a deeper 17.5 mm build, so the magnet faces close in by 1 mm and the stator only needs ≈337 m of 24 AWG — ≈50 m of a 390 m spool stays free for leads, a test coil or a re-wind. Stator + gap-sleeve swap with Gen-CS / Gen-CP.

## Ø5 assists (count only if DIAMETRICALLY magnetised)

- Gen-CS: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R80.6/86.8/93), Halbach-oriented (rule engraved on every arc)
- Gen-CT: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R77.6/83.8/90), Halbach-oriented (rule engraved on every arc)
- Gen-CU: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R80.6/86.8/93), Halbach-oriented (rule engraved on every arc)

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-CS: 19.306 W at fill 0.65 vs 17.843 W if only fill 0.60 is reached
- Gen-CT: 19.289 W at fill 0.65 vs 17.841 W if only fill 0.60 is reached
- Gen-CU: 18.375 W at fill 0.65 vs 16.956 W if only fill 0.60 is reached

## What tonight's scans showed (`_design_scan/`, all `--back-iron`, coarse grid)

- **24 AWG changes the optimum window.** 24 AWG has 0.63× the resistance per metre of 26 AWG but a 1.5× larger cross-section, so one ≈390 m spool fills a 1.5× bigger window.
  On the Gen-CP T-pole rotors the best window moves from 4.65 × 15.5 mm (26 AWG) to **6.8–7.15 mm tall × 15–16.5 mm deep** (12–13 layers): ≈**19.4 W coarse at 383–392 m**
  (s4 plateau: 6.8/16.5 → 19.41 W 387 m, 7.0/15.5 → 19.43 W 389 m, 7.15/15.0 → 19.46 W 392 m). Taller than 7.15 mm (7.6–9.5 mm) runs out of wire before the window is full
  and drops to ≤16.5 W at the same ≤392 m. Built: **Gen-CS** = 6.8 × 16.5 mm, r58–105.5, 306 t (the 387 m point, 5 m spool margin).
- **Wire-saver:** 5.8 mm copper × 17.5 mm, r58 → 18.5 W coarse at **337 m** (−5 % power, ≈50 m of the spool kept) → built as **Gen-CU** on the same rotors.
- **Inverted keyhole pole (Gen-CM type, Ø20 inside @R76, N42 tangential outside @R91.6)** in 24 AWG: best 19.43 W coarse (6.8 × 17.0, 392 m), **19.39 W at 6.8 × 16.5 / 306 t / 387 m —
  exactly Gen-CS's stator window** (R75 and R78 slightly lower). Built as **Gen-CT** = rotor swap on the Gen-CS stator. The two pole shapes tie within ≈0.3 % (as on 2026-10-18/19).
- **30 AWG (OD 0.28) on one ≈390 m spool:** the window must shrink to ≈2.6 mm × 8 mm to stay inside 390 m → best **6.71 W** coarse (219 t, 18.95 V/ph, 40 Ω). 30 AWG only pays if
  Austin's 30 AWG spool is several times longer (the final-test FT-B2 used 1488 m of 30 AWG for 16.4 W). No 30 AWG kit tonight; 24 AWG is the max-output wire.
- **N52 60×10×3 bars:** not re-scanned (2026-10-19 p1: as a per-pole block in this Ø229/R109.5 frame they lose — 10.05 W tangential, 13.13 W radial at 26 AWG). The bar-only
  FT-B1 (21.84 W) needs a Ø310 stator, 702 m of 24 AWG and 5 print plates, so it does not fit the one-plate / one-spool brief.
- Bz: taller copper → wider magnet gap (m2m 9.40 mm vs 7.25 mm): peak Bz at the copper mid-plane falls 0.650 → ≈0.57 T, but the phase resistance falls 17.2 → ≈10.9 Ω.

## Champion

**Gen-CS** at **19.306 W** (`--back-iron`, air-core 9.139 W) — BEATS Gen-CP 15.820 W (1.220×, same scoring mode).

Push: **Gen-CS pushed to lucidlooney2030/MAX-Versions @a234b58** (champions/2026-10-20-gen-cs-…, print-packs/gen-cs-…, runners Gen-CT/Gen-CU in champions/runners-2026-10-20/, CHAMPION.md updated). Note: the 2026-10-20 final-test FT-B1 (21.84 W --back-iron, 702 m of 24 AWG, Ø310 stator, 5 plates) was never pushed to MAX-Versions (not in CHAMPION.md) and is not on the one-spool / one-plate basis.

Archive: `/workspace/generators/2026-10-20-generators.tar.gz`

