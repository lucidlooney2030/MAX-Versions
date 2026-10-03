# MAX-Versions

**Current tip (2026-10-02-night):** Gen-AZ dual-rotor copper-centroid femto — see [CHAMPION.md](CHAMPION.md).


**Maximum-electricity**, **modular** generator kits — printable magnetic generators tuned for **max watts always**.

Companion to nightly `generators` exploration archives. This repo keeps the modular max-output line — shared interfaces, current champion, and drop-in kits.

## Status (2026-10-02 ET)

**Champion: Gen-AZ dual-rotor copper-centroid femto AFPM (wound-aware)** — dethrones Gen-AW (~19–40 W vs ~18–38 W @200 RPM; m2m 4.66 held; Ø20 @ R=37.5 over copper centroid; 220 t; former_web 1.20; one-plate 404×404 ≤408).

See **[CHAMPION.md](CHAMPION.md)** and **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)**. Prior Gen-A–L were withdrawn for sizing gaps/slots to bare former STLs.

| Kit | Path |
|-----|------|
| Champion | [`champions/2026-10-02-gen-az-dual-rotor-coppercentroid-femto/`](champions/2026-10-02-gen-az-dual-rotor-coppercentroid-femto/) |
| One-plate pack | [`print-packs/gen-az-dual-rotor-coppercentroid-femto/`](print-packs/gen-az-dual-rotor-coppercentroid-femto/) |
| Night runners | [`champions/runners-2026-10-02/`](champions/runners-2026-10-02/) |
| Prior champion | [`champions/2026-10-01-gen-aw-dual-rotor-coppercentroid-pico/`](champions/2026-10-01-gen-aw-dual-rotor-coppercentroid-pico/) |

## Magnet kit (fixed)


| Magnet | Qty | Size |
|--------|-----|------|
| Large disks | **16×** | Ø20 × 5 mm (N52 NdFeB) |
| Small disks | **48×** | Ø5 × 5 mm (Halbach / concentrator assist) |

Pockets are typically **Ø20.3 × 5.2** and **Ø5.3 × 5.2** for print clearance.

## Wire

- **26 AWG** — insulated OD ≈ **0.45 mm** (audit assumption)
- **30 AWG** — insulated OD ≈ **0.30 mm** (audit assumption)

Document turns, interconnect (star 3φ preferred), and **wound envelope** used for stack sizing. Gen-AZ: **220 t × 26 AWG** per pancake.

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
