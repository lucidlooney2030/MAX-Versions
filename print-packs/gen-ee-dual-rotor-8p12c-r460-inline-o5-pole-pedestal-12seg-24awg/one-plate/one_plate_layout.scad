// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 400.7 x 399.4 x 17.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// rotor_arc_n.stl orient=normal rot=295
translate([4.000, 4.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=115
translate([23.000, 38.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=335
translate([17.000, 49.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=155
translate([13.000, 89.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=320
translate([159.000, 140.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=340
translate([252.000, 4.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=70
translate([163.000, 219.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=250
translate([193.000, 202.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=225
translate([55.000, 303.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=235
translate([287.000, 7.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=235
translate([84.000, 247.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=140
translate([237.000, 285.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=290
translate([105.000, 35.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
