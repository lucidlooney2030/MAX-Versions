# MAX-Versions

**Current tip (2026-09-23-night):** Gen-Y dual-rotor micro-gap — see [CHAMPION.md](CHAMPION.md).


**Maximum-electricity**, **modular** generator kits — printable magnetic generators tuned for **max watts always**.

Companion to nightly `generators` exploration archives. This repo keeps the modular max-output line — shared interfaces, current champion, and drop-in kits.

## Status (2026-09-23 ET)

**Champion: Gen-Y dual-rotor micro-gap AFPM (wound-aware)** — dethrones Gen-V (~10–21 W vs ~9–19 W @200 RPM; m2m 5.76 vs 6.16).

See **[CHAMPION.md](CHAMPION.md)** and **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)**. Prior Gen-A–L were withdrawn for sizing gaps/slots to bare former STLs.

| Kit | Path |
|-----|------|
| Champion | [`champions/2026-09-23-gen-y-dual-rotor-microgap/`](champions/2026-09-23-gen-y-dual-rotor-microgap/) |
| One-plate pack | [`print-packs/gen-y-dual-rotor-microgap/`](print-packs/gen-y-dual-rotor-microgap/) |
| Night runners | [`champions/runners-2026-09-23/`](champions/runners-2026-09-23/) |

## Magnet kit (fixed)

| Magnet | Qty | Size |
|--------|-----|------|
| Large disks | **16×** | Ø20 × 5 mm (N52 NdFeB) |
| Small disks | **48×** | Ø5 × 5 mm (Halbach / concentrator assist) |

Pockets are typically **Ø20.3 × 5.2** and **Ø5.3 × 5.2** for print clearance.

## Wire

- **26 AWG** — insulated OD ≈ **0.45 mm** (audit assumption)
- **30 AWG** — insulated OD ≈ **0.30 mm** (audit assumption)

Document turns, interconnect (star 3φ preferred), and **wound envelope** used for stack sizing. Gen-Y: **150 t × 26 AWG** per pancake.

## Printer

- **Anycubic Kobra 3 Max Combo**
- Filament **1.75 mm** (PETG/ABS preferred; PLA OK for prototypes)
- Nozzles: **0.4 mm** default for carriers / formers; **0.6 / 0.8 mm** OK for endbells and coarse shells

## Modular interface

Shared mechanical stack (shaft Ø8, 608ZZ, bolt circles, etc.): **[MODULAR_INTERFACE.md](MODULAR_INTERFACE.md)**.

Kits must satisfy **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** before promotion to `champions/`.

## License

See [LICENSE](LICENSE).
