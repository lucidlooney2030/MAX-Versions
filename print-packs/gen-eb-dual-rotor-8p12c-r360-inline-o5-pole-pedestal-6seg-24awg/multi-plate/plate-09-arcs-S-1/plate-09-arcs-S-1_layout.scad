// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 344.9 x 385.0 x 5.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// rotor_arc_s.stl orient=normal rot=295
translate([4.000, 4.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=325
translate([173.000, 59.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=115
translate([7.000, 41.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=220
translate([104.000, 165.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
