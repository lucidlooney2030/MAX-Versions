# Current champion — MAX-Versions

**As of 2026-10-22-night (ET): Gen-CZ dual-rotor 8-pole / 12-coil INVERTED TRIPLE pole on 24 AWG — every pole is a radial stack of all three magnet types Austin owns (Ø20×5 N52 disc inside, N42 20×10×5 block outside it, N52 60×10×3 bar outermost) + 48 diametric Ø5 Halbach assists — physics_scorer MAX tip.**

Path: [`champions/2026-10-22-gen-cz-dual-rotor-8p12c-inverted-triple-pole-24awg-r77/`](champions/2026-10-22-gen-cz-dual-rotor-8p12c-inverted-triple-pole-24awg-r77/)  
Print pack: [`print-packs/gen-cz-dual-rotor-8p12c-inverted-triple-pole-24awg-r77/`](print-packs/gen-cz-dual-rotor-8p12c-inverted-triple-pole-24awg-r77/) (**two-plate** STL pack + parts + `laser-cut/steel_backiron_disc.dxf`)

Gen-CZ beats Gen-CS on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, N42 blocks Br 1.29 T and N52 bars Br 1.43 T as magpylib Cuboids,
**24 AWG** (bare 0.5106 mm, OD 0.55 mm) @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-CS):

| Metric @ 200 RPM | Gen-CZ (new) | Gen-CS (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R), `--back-iron` | **24.262 W** | 19.306 W |
| Air-core what-if (no `--back-iron`) | **10.945 W** | 9.139 W |
| Voc rms/phase | **18.55 V** | 16.72 V |
| R_phase @20 °C | **10.64 Ω** | 10.86 Ω |
| Wire | **24 AWG**, 379 m | 24 AWG, 387 m |
| Turns fit / coil | **250** × 12 coils (fill 0.65, 11 layers) | 306 × 12 coils |
| Bz peak / mean window | **0.580 / 0.201 T** | 0.568 / 0.154 T |
| Magnets | 16× Ø20×5 N52 + 16× N42 20×10×5 + **16× N52 60×10×3 bars** + 48× diametric Ø5×5 | 16× Ø20×5 N52 + 16× N42 + 48× diametric Ø5 |
| Topology | dual_rotor 8p/12c, Ø20 @R77, N42 @R92.6 (20 mm tangential, keyhole), N52 bar @R103.2 (60 mm tangential, 3.05 mm blind pocket), Ø5 @R78.6/84.8/91; bobbins r58–111.5 × 6.1 mm copper × 15.0 mm build; 8 arcs/rotor + D-flat hub; open-centre Ø251 stator, bases in place; 2× **Ø229** × 4.76 mm steel | Ø20 @R88 + N42 @R72.4, bobbins r58–105.5 × 6.8 × 16.5, Ø202 steel |
| Magnet face gap (m2m) | 8.70 mm | 9.40 mm |
| Print plates (measured STL bbox) | **TWO**: 354.3 × 385.6 (stator plate) + 392.6 × 401.0 mm (rotor arcs) | one: 399.9 × 400.8 mm |
| Verdict | **PASS** (geometry check PASS) | PASS |

That is **×1.257** in the `--back-iron` mode and ×1.198 air-core.
What-ifs (same kit): Ø5 left out / axial Ø5 (`--halbach none`) 23.194 W; looser fill 0.60 wind (231 t) 22.427 W; hot copper 60 °C 20.97 W.
At 200 RPM a matched load draws 0.87 A/phase, above the scorer's ≈0.5 A continuous guidance for printed formers — for continuous duty use ≥26.5 Ω/phase load (≈19.8 W).

## What changed

Austin's 20× N52 60×10×3 bars were unused. Gen-CZ puts one bar per pole (16 used, 4 spare) OUTSIDE the N42 block with its 60 mm side tangential, so each pole spans R67–R108 of magnet
and the widest magnet sits where the coil sides are longest. Pole radius moves R88 → R77 and the 24 AWG stator is re-optimised (scan a6, 216 combos): 6.1 mm × 15.0 mm copper, 250 t, 379 m.
The bars sit in 3.05 mm blind pockets (face flush with the discs, 1.95 mm PLA floor over the steel). **New larger steel (Ø229)** — the Ø202 Gen-CS/CP discs do not fit.
steel_flux.py: worst case ≈1.41 T in a one-pole band at 4.76 mm (≈0.43 T spread) — keep ≥4.76 mm.

**Honesty notes.** Scorer unchanged tonight; `score_kit sanity` PASS (0.3198 T) and Gen-CS re-scores unchanged (19.306 W). The bar (block2) group was added/validated 2026-10-21.
The SCORE.md header sentence still prints "26 AWG" (fixed text); the Wire row shows the 24 AWG values used.
**This champion needs two print plates** (16 packer variants each tried for a one-plate layout of Gen-CZ and Gen-CX; none fit 410×410 — the 16 bar-carrying arcs are too big). Runner Gen-CY fits one plate because it re-uses Gen-CS's wound bobbins.

Night scorecard: [`WOUND_ENVELOPE_2026-10-22.md`](WOUND_ENVELOPE_2026-10-22.md) (= SCORECARD).

## Runners (same night, also PASS)

- Gen-CX — triple pole (N42 block INSIDE @R71.4 + Ø20 @R87 + N52 bar outside @R102.6), new 24 AWG stator r59–111.5 × 6.1 × 15.75, Ø227 steel — `champions/runners-2026-10-22/gen-cx-dual-rotor-8p12c-triple-pole-bar-24awg-r87/` (**23.718 W**, 18.45 V rms/ph, 10.76 Ω, 262 t, 383 m 24 AWG; air-core 10.661 W; two plates 374.1 × 399.7 + 279.0 × 401.0 mm). This is last night's unscored Gen-CV, finished.
- Gen-CY — **Gen-CS upgrade**: keeps Gen-CS's 12 wound 306 t 24 AWG bobbins + gap sleeve (byte-identical bobbin), new larger stator ring + triple-pole rotors at R84, Ø222 steel — `champions/runners-2026-10-22/gen-cy-dual-rotor-8p12c-triple-pole-gen-cs-upgrade-r84/` (**21.751 W**, 17.75 V rms/ph, 10.86 Ω, 306 t, 387 m; air-core 9.922 W; **one plate** 385.8 × 388.7 mm). Last night's unscored Gen-CW, finished.

## Assembly warnings

- **Clap hazard** (steel-backed N52 discs + N42 blocks + N52 bars across an 8.70 mm gap, Ø229 rotors — the strongest rotors so far): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts before seating the second magnet face. Seat ONE magnet at a time and let its epoxy grab; disc, block and bar of a pole repel each other inside the merged pocket (same polarity) and the block/bar try to flip — keep them pressed flat with a non-magnetic stick until set. Keep the two rotors > 30 cm apart until the jack-rod step. Eye protection.
- Bars must be magnetised through the 3 mm thickness and blocks through 5 mm — check before gluing.
- Diametric Ø5: mark N first, set to the engraved arrow with a non-magnetic pick, epoxy; leave them out if yours are axial (23.194 W).
- Remove temporary braces and gap shims before spinning; shim against the **magnet faces** (flush seat — caliper the magnets first).
- Brim on 0.8 mm flanges / 1.2 mm stator webs / annular stator inner rim.
- Wind bobbins before assembly, dense and layer-by-layer (11 layers of 24 AWG); do not raise turns (250). 379 m of a ~390 m spool. Bases print in place — wind, then drop them into the stator bays.

## Prior champion

Gen-CS dual-rotor 8p/12c T-pole 24 AWG tall-copper R88 — `champions/2026-10-20-gen-cs-dual-rotor-8p12c-t-pole-24awg-tall-copper-r88/` (19.306 W). Superseded by Gen-CZ 24.262 W.
