// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 346.6 x 395.2 x 5.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// rotor_arc_s.stl orient=normal rot=295
translate([4.000, 4.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=115
translate([23.000, 38.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=335
translate([17.000, 49.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=155
translate([13.000, 89.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
