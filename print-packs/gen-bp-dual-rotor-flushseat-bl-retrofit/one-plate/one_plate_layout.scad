// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 407.9 x 408.0 x 29.5 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// endbell_front.stl orient=normal rot=0
translate([1.500, 1.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=normal rot=0
translate([248.500, 1.000, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=flip rot=0
translate([1.033, 275.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=flip rot=0
translate([275.033, 275.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// stator_core.stl orient=normal rot=0
translate([125.000, 125.000, 0]) import("../parts/stator_core.stl"); // pre-oriented placement, see STL
// fit_coupon.stl orient=normal rot=270
translate([148.000, 3.000, 0]) import("../parts/fit_coupon.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=180
translate([3.000, 141.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=0
translate([357.000, 142.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=15
translate([72.000, 160.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=165
translate([286.000, 160.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=0
translate([24.000, 185.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=195
translate([330.000, 186.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=0
translate([79.000, 221.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=315
translate([274.000, 223.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=0
translate([228.000, 268.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=180
translate([129.000, 269.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=330
translate([174.000, 298.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=210
translate([135.000, 335.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([3.000, 3.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([220.000, 3.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([233.000, 3.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([246.000, 3.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([392.000, 3.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([225.000, 15.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([238.000, 15.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([251.000, 15.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([397.000, 15.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([3.000, 16.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([230.000, 27.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([243.000, 27.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([234.000, 39.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([161.000, 105.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([241.000, 118.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([54.000, 164.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([336.000, 165.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([3.000, 210.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_sleeve.stl orient=normal rot=0
translate([154.000, 121.000, 0]) import("../parts/gap_sleeve.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([384.000, 211.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([3.000, 231.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([376.000, 237.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([26.000, 243.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
