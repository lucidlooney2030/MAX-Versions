// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 407.9 x 408.0 x 29.5 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// endbell_front.stl orient=normal rot=0
translate([1.500, 1.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=normal rot=0
translate([250.500, 1.000, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=flip rot=0
translate([1.033, 275.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=flip rot=0
translate([275.033, 275.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// stator_core.stl orient=normal rot=0
translate([126.000, 126.000, 0]) import("../parts/stator_core.stl"); // pre-oriented placement, see STL
// fit_coupon.stl orient=normal rot=270
translate([147.000, 3.000, 0]) import("../parts/fit_coupon.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=180
translate([3.000, 139.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=0
translate([358.000, 140.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=15
translate([75.000, 157.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=165
translate([285.000, 157.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=345
translate([29.000, 179.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=330
translate([323.000, 182.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=225
translate([75.000, 219.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=315
translate([274.000, 219.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=180
translate([127.000, 266.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=0
translate([230.000, 266.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=330
translate([174.000, 291.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=210
translate([136.000, 329.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([3.000, 3.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([218.000, 3.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([231.000, 3.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([244.000, 3.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([257.000, 3.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([392.000, 3.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([223.000, 15.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([236.000, 15.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([249.000, 15.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([397.000, 15.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([3.000, 16.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([228.000, 27.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([241.000, 27.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([234.000, 44.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([159.000, 103.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([242.000, 115.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([151.000, 120.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([340.000, 162.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_sleeve.stl orient=normal rot=0
translate([54.000, 162.000, 0]) import("../parts/gap_sleeve.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([3.000, 207.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([381.000, 208.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([13.000, 231.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([381.000, 234.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
