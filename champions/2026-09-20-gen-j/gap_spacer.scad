// Gen-J gap spacer PAD — print ×12 (6 per side); stacks to ~3 mm magnet-to-former
// Place on flange bolts under stator. Much smaller than full ring for one-plate.
pad_od = 14.0;
pad_id = 3.5;   // M3 clear
h = 3.0;
$fn = 48;
difference() {
    cylinder(d=pad_od, h=h);
    translate([0,0,-0.1]) cylinder(d=pad_id, h=h+0.2);
}
