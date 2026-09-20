> **Gate:** kits must also satisfy [WOUND_COIL_RULE.md](WOUND_COIL_RULE.md) (wound envelope, not bare former). Gen-A–L withdrawn 2026-09-20 ET.

# Modular interface — MAX stack

Shared mechanical stack so rotors, stators, endbells, and coil formers can swap across MAX designs. Numbers below are taken from the Gen-A/B (2026-09-17) and Gen-D/E (2026-09-18) OpenSCAD sources under `/workspace/generators/`.

**Goal:** change topology without redesigning the shaft line, bearings, or brace pattern from scratch.

## 1. Shaft & bearings

| Spec | Value | Notes |
|------|-------|-------|
| Shaft diameter | **Ø8.0 mm** | Steel shaft |
| Rotor / collar bore | **Ø8.35 mm** | Print clearance (`shaft_bore`) |
| Endbell shaft clear | **Ø10.0 mm** | Non-contact through-hole |
| Bearing | **608ZZ** (ID 8 / OD 22 / W 7 mm) | |
| Bearing pocket OD | **Ø21.85 mm** | Press or epoxy seat |
| Bearing seat depth | **7.2–7.5 mm** | Match 608 width |
| Shaft collar | Printed collar + **M3** set-screw | Locks rotor axial position |

Use **2–4× 608ZZ** depending on span (endbells ± optional stator mid-seat).

## 2. Rotor carrier bolt circles

Common hub geometry (Gen-B / Gen-A carrier; Gen-E nested carrier uses same hub family with slightly larger outer ring):

| Feature | Gen-B / Gen-A | Gen-E nested | Notes |
|---------|--------------|--------------|-------|
| Hub OD | **30 mm** | **30 mm** | Behind magnet face |
| Hub height | **10 mm** | **10 mm** | Toward endbell |
| Inner bolt circle | **R = 32 mm**, **6×** M3 clear | **R = 36 mm**, **6×** | Rotor ↔ collar / coupler |
| Outer bolt circle | **R = 58 mm**, **6×** M3 clear | **R = 70 mm**, **6×** | Rotor ↔ steel back / spacer |
| M3 clear hole | **Ø3.4–3.5 mm** | same | Heat-set inserts optional |

**Magnet face convention:** pockets open toward the air gap (+Z). Steel backing disk sits in the opposite recess.

| Carrier | Typical OD | Carrier thick | Steel recess |
|---------|------------|---------------|--------------|
| Gen-B (`rotor_carrier_a`) | ~126–130 mm class | ~7 mm | Ø110–120 × 2–3 mm bought disk |
| Gen-E (`rotor_nested`) | **148 mm** | **7.2 mm** | Ø140 × 2.5 mm |

Large-magnet pitch (for reference, not required for swap): Gen-B **R_large = 50 mm** (8 poles); Gen-E outer **R = 58 mm** (6) + inner **R = 26 mm** (2).

## 3. Stator mount pattern

| Feature | Gen-B (12-coil AFPM) | Gen-E (9-coil nested) | Gen-D (radial shell) |
|---------|----------------------|------------------------|----------------------|
| Stator OD | **128 mm** | **152 mm** | Shell OD larger than rotor OD 116 |
| Stator ID / tunnel | ~**22 mm** class / shaft clear **Ø18** | **Ø40 mm** ID | Rotor OD **116** → stator ID **120** |
| Stator thickness | **7.5 mm** | Core **4.0 mm** (+ former stack) | Shell per SCAD |
| Mount / flange bolts | Align with endbell **6× @ R=60** (M3) | **6× @ R=72** (M3) | Endbell bolt pattern per design |
| Optional mid bearing | Pocket **Ø21.85 × 7.5** | — | Endbell seats |

**Endbell flange bolt circle (AFPM baseline Gen-A/B):** **6× M3 clear @ R = 60 mm**.  
**Gen-E endbells:** **6× @ R = 72 mm** (scaled to larger OD). Remixed kits should pick one family and keep endbell ↔ stator ↔ brace coaxial.

## 4. Air-gap & stack height

| Topology | Target gap | Stack notes |
|----------|------------|-------------|
| Dual AFPM (Gen-B, Gen-E) | **~7 mm magnet-to-magnet** | Each side ~2.5–3.5 mm coil + clearance; do not go below ~**5 mm** without thicker braces |
| Radial outrunner (Gen-D) | **~1.0–2.0 mm** magnet-to-tooth | Rotor OD 116 / stator ID 120 → ~2 mm geometric; aim 1.0–1.5 after seating |

**Axial brace (dual AFPM):** **4× M4** threaded rod through brace holes (Gen-A/B stator brace radius **R ≈ 55 mm**, clear **Ø4.3**). Install **before** magnetting the second rotor.

**Former / core stack (AFPM):** Gen-B former `core_t = 3.6 mm` + flanges; Gen-E stator `core_t = 4.0 mm`. Keep total copper stack inside the 7 mm magnet-to-magnet budget.

## 5. Coil-former mounting

| Spec | Typical | Notes |
|------|---------|-------|
| Mount fastener | **M3** | Clear ~Ø3.4–3.5 through former tab / stator seat |
| Former style | Pancake (AFPM) or radial bobbin (Gen-D) | Flange on bed when printing |
| Gen-B | **12** narrower pancakes, star 3φ (4/phase) | Fits denser stator |
| Gen-E | **9** pancakes on outer ring, star 3φ (3/phase) | Outer-ring R_coil in SCAD |
| Gen-D | **12** radial slot bobbins | Prefer 26 AWG |

Wire envelope for all MAX kits: **26 AWG** or **30 AWG** from the shared spool class. Document turns and series/parallel interconnect in the design README.

## 6. Interchange rules (practical)

1. **Shaft line is sacred:** Ø8 + 608ZZ seats at **Ø21.85** — do not invent a new bearing without a migration note.
2. **Pick an endbell family:** Gen-B (**R=60 / 6×**) or Gen-E (**R=72 / 6×**) and match stator OD / bolt R.
3. **Rotor hubs** stay **Ø30 × 10** with inner bolt circle near **R=32–36** so collars and spacers reuse.
4. **Air-gap budget** for dual AFPM stays **~7 mm** magnet-to-magnet unless CHAMPION docs a deliberate change.
5. **Magnet kit** stays **16× Ø20×5 + 48× Ø5×5**; pocket clearance **+0.3 mm** OD / **+0.2 mm** depth.

## 7. Reference designs

| Interface role | Path |
|----------------|------|
| Dual-rotor AFPM baseline | `champions/2026-09-17-gen-b/` |
| Current max-watts champion | `champions/2026-09-18-gen-e/` |
| Radial modular path | `champions/2026-09-18-gen-d/` |

When promoting a new nightly design into MAX-Versions, update this file only if dimensions deliberately diverge — otherwise keep compatibility.

## 8. 2026-09-19 additions

| Design | Interface notes |
|--------|-----------------|
| Gen-G Halbach barrel | Shaft Ø8 / 608ZZ Ø21.85 unchanged. Annulus bolt circle **6× @ R≈54 mm** (M3). Dual radial gaps **1.0–1.5 mm**. Outer drum OD / inner hub OD per SCAD in `champions/2026-09-19-gen-g/`. |
| Gen-H unequal 10+6 | Gen-E endbell family **6× @ R=72**. Dual AFPM magnet-to-magnet **~7 mm**. Rotor: 5 outer @ R=56 + 3 inner @ R=28 per carrier. |
| Gen-I claw/Lundell | Gen-B endbell family **6× @ R=60**. Single rotor; claw steel fingers are bought parts guided by printed `claw_return_ring`. |

## 8. Gen-J dual-stator sandwich (2026-09-20)

| Feature | Value |
|---------|-------|
| Endbell / stator bolts | **6× M3 @ R=72** (Gen-E family) |
| Brace | **4× M4 @ R≈68** |
| Rotor | Single dual-face carrier OD **148**, thick **12 mm** |
| Stators | **2×** identical cores, **9** pancake stations each (9+9 one-plate) |
| Air gap | Magnet→former **2.5–3.5 mm** each side (printed gap pads) |
| Shaft / 608 | Same MAX baseline Ø8 / Ø21.85 |

Interchange: Gen-J endbells swap with Gen-E/H family at R=72. Not bolt-compatible with Gen-G barrel R=54 or Gen-B R=60 without an adapter plate.
