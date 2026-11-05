// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 398.9 x 391.9 x 17.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// rotor_arc_n.stl orient=normal rot=295
translate([4.000, 4.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=325
translate([173.000, 59.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=115
translate([7.000, 41.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=220
translate([104.000, 165.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=340
translate([9.000, 64.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=65
translate([130.000, 259.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=135
translate([300.000, 267.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=195
translate([109.000, 132.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=225
translate([230.000, 43.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=45
translate([264.000, 22.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=235
translate([213.000, 219.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=70
translate([36.000, 227.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=75
translate([161.000, 312.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
