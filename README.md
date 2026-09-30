# MAX-Versions

**Current tip (2026-09-29-night):** Gen-AQ dual-rotor copper-centroid ultra — see [CHAMPION.md](CHAMPION.md).


**Maximum-electricity**, **modular** generator kits — printable magnetic generators tuned for **max watts always**.

Companion to nightly `generators` exploration archives. This repo keeps the modular max-output line — shared interfaces, current champion, and drop-in kits.

## Status (2026-09-29 ET)

**Champion: Gen-AQ dual-rotor copper-centroid ultra AFPM (wound-aware)** — dethrones Gen-AN (~16–34 W vs ~15–32 W @200 RPM; m2m 4.71 vs 4.76; Ø20 @ R=39.0 over copper centroid; former_web 1.25; one-plate 404×404 ≤408).

See **[CHAMPION.md](CHAMPION.md)** and **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)**. Prior Gen-A–L were withdrawn for sizing gaps/slots to bare former STLs.

| Kit | Path |
|-----|------|
| Champion | [`champions/2026-09-29-gen-aq-dual-rotor-coppercentroid-ultra/`](champions/2026-09-29-gen-aq-dual-rotor-coppercentroid-ultra/) |
| One-plate pack | [`print-packs/gen-aq-dual-rotor-coppercentroid-ultra/`](print-packs/gen-aq-dual-rotor-coppercentroid-ultra/) |
| Night runners | [`champions/runners-2026-09-29/`](champions/runners-2026-09-29/) |
| Prior champion | [`champions/2026-09-28-gen-an-dual-rotor-coppercentroid-hyper/`](champions/2026-09-28-gen-an-dual-rotor-coppercentroid-hyper/) |

## Magnet kit (fixed)


| Magnet | Qty | Size |
|--------|-----|------|
| Large disks | **16×** | Ø20 × 5 mm (N52 NdFeB) |
| Small disks | **48×** | Ø5 × 5 mm (Halbach / concentrator assist) |

Pockets are typically **Ø20.3 × 5.2** and **Ø5.3 × 5.2** for print clearance.

## Wire

- **26 AWG** — insulated OD ≈ **0.45 mm** (audit assumption)
- **30 AWG** — insulated OD ≈ **0.30 mm** (audit assumption)

Document turns, interconnect (star 3φ preferred), and **wound envelope** used for stack sizing. Gen-AQ: **205 t × 26 AWG** per pancake.

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
