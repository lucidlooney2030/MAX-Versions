# MAX-Versions

**Current tip (2026-09-30-night):** Gen-AT dual-rotor copper-centroid hypermicro — see [CHAMPION.md](CHAMPION.md).


**Maximum-electricity**, **modular** generator kits — printable magnetic generators tuned for **max watts always**.

Companion to nightly `generators` exploration archives. This repo keeps the modular max-output line — shared interfaces, current champion, and drop-in kits.

## Status (2026-09-30 ET)

**Champion: Gen-AT dual-rotor copper-centroid hypermicro AFPM (wound-aware)** — dethrones Gen-AQ (~17–36 W vs ~16–34 W @200 RPM; m2m 4.68 vs 4.71; Ø20 @ R=38.5 over copper centroid; former_web 1.22; one-plate 404×404 ≤408).

See **[CHAMPION.md](CHAMPION.md)** and **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)**. Prior Gen-A–L were withdrawn for sizing gaps/slots to bare former STLs.

| Kit | Path |
|-----|------|
| Champion | [`champions/2026-09-30-gen-at-dual-rotor-coppercentroid-hypermicro/`](champions/2026-09-30-gen-at-dual-rotor-coppercentroid-hypermicro/) |
| One-plate pack | [`print-packs/gen-at-dual-rotor-coppercentroid-hypermicro/`](print-packs/gen-at-dual-rotor-coppercentroid-hypermicro/) |
| Night runners | [`champions/runners-2026-09-30/`](champions/runners-2026-09-30/) |
| Prior champion | [`champions/2026-09-29-gen-aq-dual-rotor-coppercentroid-ultra/`](champions/2026-09-29-gen-aq-dual-rotor-coppercentroid-ultra/) |

## Magnet kit (fixed)


| Magnet | Qty | Size |
|--------|-----|------|
| Large disks | **16×** | Ø20 × 5 mm (N52 NdFeB) |
| Small disks | **48×** | Ø5 × 5 mm (Halbach / concentrator assist) |

Pockets are typically **Ø20.3 × 5.2** and **Ø5.3 × 5.2** for print clearance.

## Wire

- **26 AWG** — insulated OD ≈ **0.45 mm** (audit assumption)
- **30 AWG** — insulated OD ≈ **0.30 mm** (audit assumption)

Document turns, interconnect (star 3φ preferred), and **wound envelope** used for stack sizing. Gen-AT: **210 t × 26 AWG** per pancake.

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
