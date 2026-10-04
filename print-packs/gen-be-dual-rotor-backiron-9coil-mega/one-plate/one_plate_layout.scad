// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 409.0 x 409.0 x 21.2 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// rotor_face_a.stl orient=normal rot=0
translate([2.533, 2.500, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=0
translate([251.533, 2.500, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// stator_core.stl orient=normal rot=0
translate([1.500, 250.500, 0]) import("../parts/stator_core.stl"); // pre-oriented placement, see STL
// endbell_front.stl orient=normal rot=0
translate([250.500, 250.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=normal rot=0
translate([126.000, 125.500, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=135
translate([130.000, 0.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=315
translate([161.000, 0.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=270
translate([193.000, 0.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=90
translate([220.000, 0.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=135
translate([172.000, 25.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=315
translate([207.000, 27.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=315
translate([159.000, 47.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=135
translate([216.000, 53.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=225
translate([187.000, 59.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=135
translate([159.000, 78.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=45
translate([212.000, 83.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=45
translate([0.000, 134.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=135
translate([375.000, 134.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=135
translate([99.000, 150.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=45
translate([276.000, 150.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=45
translate([32.000, 153.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=135
translate([341.000, 153.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=90
translate([65.000, 159.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([0.000, 0.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([15.000, 0.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([247.000, 0.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([262.000, 0.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([371.000, 0.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([386.000, 0.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([395.000, 14.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([0.000, 15.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([251.000, 15.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([189.000, 93.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([310.000, 159.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([9.000, 168.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([371.000, 168.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// fit_coupon.stl orient=normal rot=135
translate([306.000, 176.000, 0]) import("../parts/fit_coupon.stl"); // pre-oriented placement, see STL
