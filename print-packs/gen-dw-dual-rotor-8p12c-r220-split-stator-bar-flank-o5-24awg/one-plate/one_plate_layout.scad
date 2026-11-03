// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 359.6 x 391.2 x 17.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// rotor_arc_n.stl orient=normal rot=0
translate([4.000, 4.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=170
translate([60.000, 119.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=140
translate([109.000, 223.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=110
translate([172.000, 294.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=320
translate([128.000, 142.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=130
translate([225.000, 206.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=155
translate([116.000, 36.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=320
translate([61.000, 269.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=175
translate([127.000, 4.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=175
translate([239.000, 4.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=355
translate([247.000, 35.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=5
translate([247.000, 83.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=185
translate([239.000, 114.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=5
translate([237.000, 162.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=150
translate([175.000, 101.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
