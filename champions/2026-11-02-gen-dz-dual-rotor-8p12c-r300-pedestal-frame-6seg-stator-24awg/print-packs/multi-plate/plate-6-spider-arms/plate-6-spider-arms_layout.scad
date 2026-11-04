// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 332.0 x 70.0 x 8.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// spider_arm.stl orient=normal rot=0
translate([4.000, 4.000, 0]) import("../parts/spider_arm.stl"); // pre-oriented placement, see STL
// spider_arm.stl orient=normal rot=0
translate([4.000, 29.000, 0]) import("../parts/spider_arm.stl"); // pre-oriented placement, see STL
// spider_arm.stl orient=normal rot=0
translate([4.000, 54.000, 0]) import("../parts/spider_arm.stl"); // pre-oriented placement, see STL
