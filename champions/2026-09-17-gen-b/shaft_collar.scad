// Shaft collar / spacer — locks rotor axial position on Ø8 shaft

/* ===== named parameters ===== */
od          = 18.0;
id          = 8.35;
h           = 8.0;
set_screw_d = 3.0;   // M3 tap drill / clear for set screw
$fn = 64;

difference() {
    cylinder(d=od, h=h);
    translate([0, 0, -0.1]) cylinder(d=id, h=h + 1);
    translate([0, 0, h/2]) rotate([0, 90, 0])
        cylinder(d=set_screw_d, h=od);
}
