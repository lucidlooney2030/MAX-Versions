# 2026-10-03 nightly — physics_scorer ranking

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit>` (+ `--back-iron` when steel discs are in the kit).

Baseline champion Gen-BA (corrected, `/workspace/generators/2026-10-02-fixed/gen-ba-stacked-midrotor-coppermax-mega/`): **0.615 W** matched-load @ 200 RPM.


## Ranking (PASS kits by matched-load W @ 200 RPM)

| Rank | Kit | P matched | Voc rms/ph | R Ω | Turns | Bz pk/mean | Topology | Steel? | Plate mm |
|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-BE** `gen-be-dual-rotor-backiron-9coil-mega` | **1.684 W** | 2.41 V | 2.58 | 107 | 0.750/0.436 T | dual_rotor | yes | 409×409 |
| 2 | **Gen-BD** `gen-bd-dual-rotor-backiron-femto` | **1.174 W** | 1.86 V | 2.20 | 76 | 0.745/0.534 T | dual_rotor | yes | 409×409 |
| 3 | **Gen-BC** `gen-bc-stacked-midrotor-coppermax-giga` | **0.802 W** | 2.44 V | 5.59 | 114 | 0.337/0.187 T | mid_rotor | no | 408×409 |

## Design ideas

- **Gen-BE**: Nine-coil dual-rotor with tall bobbins (former_web 3.60 mm) and two buyable mild-steel back-iron discs; image-method steel boost.
- **Gen-BD**: Twelve-coil dual-rotor with tall bobbins and two buyable mild-steel back-iron discs; classic 8p/12c phasing plus steel.
- **Gen-BC**: Mid-rotor copper-max evolved from Gen-BA: taller former_web 3.60 mm, RL=40, bolt circle pulled to R18 so pockets stay clear.

## Assembly warnings (all kits)

- Brace M4 before seating the second magnet face (clap).
- Brim on 0.60 mm flanges / thin webs.
- Remove temporary braces and gap shims before spinning.
- Ø5 assists must be **diametrically** magnetised.
- Wind bobbins before assembly; turns = SCORE.md turns_fit only.


## Champion

**Gen-BE** at **1.684 W** (beats Gen-BA 0.615 W).


Archive: `/workspace/generators/2026-10-03-generators.tar.gz`

