# MAX-Versions

**Maximum-electricity**, **modular** generator kits — printable magnetic generators tuned for **max watts always**.

Companion to nightly `generators` exploration archives. This repo keeps the modular max-output line — shared interfaces, current champion, and drop-in kits.

## Status (2026-09-20 ET)

**No current champion.** Gen-A–L were withdrawn for failing the wound-coil envelope rule (gaps/slots sized to bare former STLs). See **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** and **[CHAMPION.md](CHAMPION.md)**.

Do not print withdrawn kits expecting README air gaps to survive a full copper wind.

## Magnet kit (fixed)

| Magnet | Qty | Size |
|--------|-----|------|
| Large disks | **16×** | Ø20 × 5 mm (N52 NdFeB) |
| Small disks | **48×** | Ø5 × 5 mm (Halbach / concentrator assist) |

Pockets are typically **Ø20.3 × 5.2** and **Ø5.3 × 5.2** for print clearance.

## Wire

- **26 AWG** — insulated OD ≈ **0.45 mm** (audit assumption)
- **30 AWG** — insulated OD ≈ **0.30 mm** (audit assumption)

Use ~1 lb hobby spool class for a full machine; document turns, interconnect (star 3φ preferred), and **wound envelope** used for stack sizing.

## Printer

- **Anycubic Kobra 3 Max Combo**
- Filament **1.75 mm** (PETG/ABS preferred; PLA OK for prototypes)
- Nozzles: **0.4 mm** default for carriers / formers; **0.6 / 0.8 mm** OK for endbells and coarse shells

## Modular interface

Shared mechanical stack (shaft Ø8, 608ZZ, bolt circles, etc.): **[MODULAR_INTERFACE.md](MODULAR_INTERFACE.md)**.

Future kits must also satisfy **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** before promotion to `champions/`.

## License

See [LICENSE](LICENSE).
