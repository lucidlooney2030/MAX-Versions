// Gen-D radial bobbin — fits stator slot; wind then insert (or wind in place)
// Window sized for ~26 AWG or 30 AWG

body_w          = 12.5;       // fits slot_width 14 with clearance
body_d          = 14.0;       // radial depth
body_h          = 22.0;       // axial stack height
flange_t        = 1.6;
flange_overhang = 2.0;
core_w          = 4.0;        // winding core width
bore_d          = 0;          // solid core (no through-hole)

$fn = 48;

module bobbin() {
    // core
    translate([0, 0, flange_t])
        cube([core_w, body_d - 1, body_h], center=false);
    // bottom flange
    translate([-flange_overhang, -0.5, 0])
        cube([core_w + 2*flange_overhang, body_d, flange_t]);
    // top flange
    translate([-flange_overhang, -0.5, flange_t + body_h])
        cube([core_w + 2*flange_overhang, body_d, flange_t]);
}

bobbin();
