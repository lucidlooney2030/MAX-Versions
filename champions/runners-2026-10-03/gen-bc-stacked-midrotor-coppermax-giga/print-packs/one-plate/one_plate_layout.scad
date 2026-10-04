// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 408.5 x 409.0 x 21.2 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// rotor_mid.stl orient=normal rot=0
translate([2.533, 2.500, 0]) import("../parts/rotor_mid.stl"); // pre-oriented placement, see STL
// stator_core.stl orient=normal rot=0
translate([248.500, 1.500, 0]) import("../parts/stator_core.stl"); // pre-oriented placement, see STL
// stator_core.stl orient=flip rot=0
translate([1.500, 248.500, 0]) import("../parts/stator_core.stl"); // pre-oriented placement, see STL
// endbell_front.stl orient=normal rot=0
translate([248.500, 248.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=135
translate([132.000, 0.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=225
translate([165.000, 0.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=270
translate([197.000, 0.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=225
translate([225.000, 0.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=225
translate([206.000, 26.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=45
translate([154.000, 27.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=225
translate([177.000, 40.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=315
translate([205.000, 58.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=45
translate([161.000, 64.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=225
translate([180.000, 81.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=225
translate([215.000, 87.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=315
translate([153.000, 98.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=225
translate([192.000, 111.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=225
translate([229.000, 115.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=225
translate([163.000, 125.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=225
translate([129.000, 130.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=315
translate([0.000, 132.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=225
translate([374.000, 134.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=45
translate([213.000, 139.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=45
translate([252.000, 141.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=135
translate([102.000, 151.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=225
translate([187.000, 152.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=135
translate([21.000, 153.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=135
translate([345.000, 154.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=135
translate([151.000, 156.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=180
translate([285.000, 158.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=315
translate([49.000, 161.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=135
translate([229.000, 168.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=180
translate([375.000, 168.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=90
translate([317.000, 173.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=135
translate([77.000, 178.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=315
translate([120.000, 178.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=315
translate([256.000, 178.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=45
translate([0.000, 179.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=45
translate([176.000, 179.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=315
translate([343.000, 190.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([0.000, 0.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([15.000, 0.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([255.000, 0.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([270.000, 0.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([372.000, 0.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([387.000, 0.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([0.000, 15.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([388.000, 15.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([233.000, 55.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([35.000, 189.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([294.000, 189.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// fit_coupon.stl orient=normal rot=315
translate([136.000, 192.000, 0]) import("../parts/fit_coupon.stl"); // pre-oriented placement, see STL
