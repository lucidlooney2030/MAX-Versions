// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 387.9 x 382.9 x 15.2 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// endbell_rear.stl orient=flip rot=90
translate([4.000, 4.000, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=255
translate([178.000, 159.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=25
translate([166.000, 203.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=345
translate([291.000, 105.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=15
translate([277.000, 211.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=255
translate([50.000, 286.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=75
translate([51.000, 130.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=200
translate([119.000, 24.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=295
translate([142.000, 4.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
