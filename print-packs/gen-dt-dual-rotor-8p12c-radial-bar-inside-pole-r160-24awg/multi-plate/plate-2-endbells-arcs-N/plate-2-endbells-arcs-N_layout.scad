// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 397.6 x 371.8 x 15.2 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// endbell_front.stl orient=flip rot=210
translate([4.000, 4.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=flip rot=115
translate([6.000, 32.000, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=285
translate([178.000, 109.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=105
translate([197.000, 153.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=355
translate([266.000, 172.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=25
translate([242.000, 255.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=205
translate([197.000, 260.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=175
translate([298.000, 90.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=290
translate([102.000, 177.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=110
translate([74.000, 223.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
