# MAX-Versions

**Current tip (2026-09-27-night):** Gen-AK dual-rotor copper-centroid ultra — see [CHAMPION.md](CHAMPION.md).


**Maximum-electricity**, **modular** generator kits — printable magnetic generators tuned for **max watts always**.

Companion to nightly `generators` exploration archives. This repo keeps the modular max-output line — shared interfaces, current champion, and drop-in kits.

## Status (2026-09-27 ET)

**Champion: Gen-AK dual-rotor copper-centroid ultra AFPM (wound-aware)** — dethrones Gen-AE (~14–30 W vs ~12–26 W @200 RPM; m2m 4.96 vs 5.00; Ø20 @ R=41 over copper centroid; one-plate 404×404 ≤408).

See **[CHAMPION.md](CHAMPION.md)** and **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)**. Prior Gen-A–L were withdrawn for sizing gaps/slots to bare former STLs.

| Kit | Path |
|-----|------|
| Champion | [`champions/2026-09-27-gen-ak-dual-rotor-coppercentroid-ultra/`](champions/2026-09-27-gen-ak-dual-rotor-coppercentroid-ultra/) |
| One-plate pack | [`print-packs/gen-ak-dual-rotor-coppercentroid-ultra/`](print-packs/gen-ak-dual-rotor-coppercentroid-ultra/) |
| Night runners | [`champions/runners-2026-09-27/`](champions/runners-2026-09-27/) |
| Prior champion | [`champions/2026-09-25-gen-ae-dual-rotor-hypermicro/`](champions/2026-09-25-gen-ae-dual-rotor-hypermicro/) |

## Magnet kit (fixed)

| Magnet | Qty | Size |
|--------|-----|------|
| Large disks | **16×** | Ø20 × 5 mm (N52 NdFeB) |
| Small disks | **48×** | Ø5 × 5 mm (Halbach / concentrator assist) |

Pockets are typically **Ø20.3 × 5.2** and **Ø5.3 × 5.2** for print clearance.

## Wire

- **26 AWG** — insulated OD ≈ **0.45 mm** (audit assumption)
- **30 AWG** — insulated OD ≈ **0.30 mm** (audit assumption)

Document turns, interconnect (star 3φ preferred), and **wound envelope** used for stack sizing. Gen-AH: **180 t × 26 AWG** per pancake.

## Printer

- **Anycubic Kobra 3 Max Combo**
- Filament **1.75 mm** (PETG/ABS preferred; PLA OK for prototypes)
- Nozzles: **0.4 mm** default for carriers / formers; **0.6 / 0.8 mm** OK for endbells and coarse shells
- One-plate usable bed: **≤408×408 mm** (not full 420 — Gen-AE first plate at 440 failed)

## Modular interface

Shared mechanical stack (shaft Ø8, 608ZZ, bolt circles, etc.): **[MODULAR_INTERFACE.md](MODULAR_INTERFACE.md)**.

Kits must satisfy **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** before promotion to `champions/`.

## License

See [LICENSE](LICENSE).
