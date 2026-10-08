// Gen-BO — frame standoff tube between stator and an endbell, on each M3 frame rod (outside rotor OD).
// Print x12. Height = frame_standoff_h (rotor + steel + hub + collar + running clearance).
include <parameters.scad>;
$fn = 48;
difference() {
    cylinder(d=standoff_od, h=frame_standoff_h);
    translate([0, 0, -0.1]) cylinder(d=m3_clear, h=frame_standoff_h + 0.2);
}
