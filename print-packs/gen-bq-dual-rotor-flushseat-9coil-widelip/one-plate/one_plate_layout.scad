// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 407.9 x 408.0 x 29.5 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// endbell_front.stl orient=normal rot=0
translate([1.500, 1.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=normal rot=0
translate([248.500, 1.000, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=flip rot=0
translate([1.033, 271.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=flip rot=0
translate([271.033, 271.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// stator_core.stl orient=normal rot=0
translate([125.000, 125.000, 0]) import("../parts/stator_core.stl"); // pre-oriented placement, see STL
// fit_coupon.stl orient=normal rot=270
translate([152.000, 3.000, 0]) import("../parts/fit_coupon.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=255
translate([208.000, 3.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=195
translate([3.000, 139.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=345
translate([363.000, 140.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=0
translate([83.000, 159.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=180
translate([287.000, 159.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=105
translate([36.000, 162.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=75
translate([329.000, 163.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=75
translate([3.000, 184.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_former.stl orient=normal rot=120
translate([360.000, 185.000, 0]) import("../parts/coil_former.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=315
translate([69.000, 197.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=225
translate([289.000, 198.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=60
translate([339.000, 214.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=345
translate([21.000, 216.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=225
translate([93.000, 233.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=330
translate([267.000, 235.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=45
translate([128.000, 268.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=345
translate([231.000, 269.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=105
translate([167.000, 287.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([3.000, 3.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([254.000, 3.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([392.000, 3.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([397.000, 15.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([3.000, 16.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([239.000, 45.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([233.000, 57.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([237.000, 96.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([162.000, 104.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([237.000, 109.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([169.000, 115.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([223.000, 115.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([156.000, 118.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([244.000, 120.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([3.000, 125.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([397.000, 127.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([127.000, 151.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([274.000, 151.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([3.000, 230.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([388.000, 235.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([326.000, 242.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([69.000, 244.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([3.000, 248.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([379.000, 251.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([16.000, 260.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([392.000, 263.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([3.000, 272.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_sleeve.stl orient=normal rot=0
translate([57.000, 207.000, 0]) import("../parts/gap_sleeve.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([212.000, 304.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([236.000, 314.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([145.000, 317.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([207.000, 330.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
