# 2026-10-04 nightly — physics_scorer ranking (Gen-BF / BG / BH)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all three kits ship two buyable 3 mm mild-steel discs).
`score_kit sanity`: single Ø20×5 N52 surface Bz 0.3198 T (analytic 0.3198) → PASS.

Champion to beat: **Gen-BE** (`/workspace/generators/2026-10-03/gen-be-dual-rotor-backiron-9coil-mega`) **1.684 W** matched-load @ 200 RPM.

## Ranking (PASS kits by matched-load W @ 200 RPM)

| Rank | Kit | P matched | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Topology | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-BF** `gen-bf-dual-rotor-steelseat-6coil-tallcopper` | **4.380 W** | 9.04 | 14.00 | 571 | 0.474/0.123 | dual_rotor | 6c/8p | 314 | 2× Ø127×3 | 408.5×409.0 | PASS / geom PASS |
| 2 | **Gen-BG** `gen-bg-dual-rotor-steelseat-9coil-tallcopper` | **3.176 W** | 6.97 | 11.47 | 364 | 0.472/0.193 | dual_rotor | 9c/8p | 257 | 2× Ø135×3 | 409.0×409.0 | PASS / geom PASS |
| 3 | **Gen-BH** `gen-bh-dual-rotor-steelseat-4pole-doublestack` | **1.843 W** | 5.92 | 14.27 | 571 | 0.578/0.152 | dual_rotor | 6c/4p | 320 | 2× Ø126×3 | 408.5×409.0 | PASS / geom PASS |

## Design ideas

- **Gen-BF**: 8-pole / 6-coil dual rotor with big 51.5 deg sector coils and TALL 9.9 mm copper, magnets seated directly on 3 mm steel back-iron discs (through-pockets) so the field stays high across a wide gap.
- **Gen-BG**: 8-pole / 9-coil dual rotor (best winding factor 0.945) pushed out to RL 46 with 9.9 mm tall copper on steel-seated magnets; 3 smaller coils per phase and less wire (257 m) than 6-coil.
- **Gen-BH**: All 16 O20 magnets used as 8 double-height (10 mm) poles: 4-pole / 6-coil dual rotor on 3 mm steel, tall 9.9 mm copper; O5 assists left out because the scorer shows they do not help this pole layout.

## What the scans showed (`_design_scan/`, scan_bi.py, all with --back-iron, wire ≤ 370 m)

- **Tall copper is the big lever once steel is in.** With steel images the gap field falls slowly with gap, so copper volume wins:
  Gen-BE geometry with through-pockets at 3.6 mm web → 1.78 W; same coil at 7.2 mm web → 2.27 W (quick check). Optimum web ≈ 9.9–10.8 mm; beyond that wire budget / Bz drop flatten it.
- **Coil count:** 8p/6c (big 51° sectors) ≫ 8p/9c ≫ 8p/12c at equal copper: best ≈4.44 / 3.21 / 1.65 W (coarse+fine scans).
- **Radius:** RL 44–46 and copper out to r 62 beat RL 38 / r 50; rin 24–25 for 6c, 30 for 9c.
- **Ø5 diametric assists** (final kits, scorer): BF 4.380 vs 4.136 W without (+6 %), BG 3.176 vs 3.043 W (+4 %) → kept; BH 1.843 W without vs 1.719 W with → omitted.
- **Steel matters:** air-core what-ifs of the final kits (no `--back-iron`): BF 2.152 W, BG 1.530 W, BH 1.090 W.
- **4-pole double-stack (all 16 Ø20 as 8 × 10 mm poles):** 1.84–1.87 W — beats Gen-BE but well below 8-pole: halving the pole count halves frequency, and thicker magnets only partly make it up.
- Flanges set to 0.8 mm (FDM wall rule, tall winds push on them) instead of 0.6 mm; costs ~2–3 % vs the scan rows.

## Mechanical changes vs 2026-10-03 (all three kits)

- Magnet pockets go **through** the PLA carrier so magnets sit **on** the steel (matches the scorer's image plane; 10-03 had 2.3 mm PLA between them).
- Steel discs are **3 mm** (≈0.6–0.8 T average at ~0.21–0.23 mWb/pole; 1.5 mm would run ≈1.3–1.5 T, near saturation), cut from the shipped DXF.
- Frame rods + printed standoff tubes are **outside the rotor OD** (10-03 kits put frame bolts through the spinning rotor discs) and **between coil stations** (no hole cuts a lead groove/tab).
- A printed **gap sleeve** between the rotors sets the gap and carries the magnet pull; radial M3 heat-set insert in each hub.
- M4 brace (jack) rods moved inside the coil ring (R17.5–18) so the rotors can be small; slim Ø24 hub, steel centre hole Ø26.

## Assembly warnings (tonight's kits)

- **Clap hazard is bigger than before** (steel-backed N52 across a 12.5 mm gap): brace with the 4 temporary M4 jack rods before seating the second magnet face; lower rotor B by the nuts.
- Remove temporary M4 rods and all shims before spinning.
- Brim on the 0.8 mm bobbin flanges and 1.2 mm stator webs.
- Ø5 assists (BF, BG) must be **diametrically** magnetised, glued tangentially; BH uses none.
- BH: stack the Ø20 in pairs (10 mm poles); check outer-face polarity of each stack.
- Wind bobbins before assembly; turns = SCORE.md turns-fit only (BF/BH 571 t ≈ 52–53 m per coil; BG 364 t ≈ 29 m per coil) — use a winding jig.

## Champion

**Gen-BF** at **4.380 W** — beats Gen-BE 1.684 W.

Archive: `/workspace/generators/2026-10-04-generators.tar.gz`

