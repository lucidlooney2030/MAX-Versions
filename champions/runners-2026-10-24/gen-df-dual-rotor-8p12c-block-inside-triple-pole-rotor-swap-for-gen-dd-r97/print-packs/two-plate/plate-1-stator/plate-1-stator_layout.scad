// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 403.2 x 402.9 x 29.5 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_core_with_bases_in_place.stl orient=normal rot=0
translate([1.000, 1.000, 0]) import("../../parts/stator_core_with_bases_in_place.stl"); // pre-oriented placement, see STL
// endbell_front.stl orient=flip rot=50
translate([23.000, 266.000, 0]) import("../../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=flip rot=35
translate([257.000, 12.000, 0]) import("../../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=95
translate([236.000, 216.000, 0]) import("../../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=65
translate([293.000, 69.000, 0]) import("../../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=170
translate([164.000, 304.000, 0]) import("../../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=65
translate([316.000, 200.000, 0]) import("../../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=350
translate([180.000, 345.000, 0]) import("../../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=20
translate([30.000, 291.000, 0]) import("../../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=200
translate([4.000, 324.000, 0]) import("../../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=245
translate([325.000, 39.000, 0]) import("../../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=170
translate([235.000, 311.000, 0]) import("../../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=350
translate([265.000, 346.000, 0]) import("../../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=245
translate([340.000, 160.000, 0]) import("../../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=5
translate([301.000, 283.000, 0]) import("../../parts/coil_lid.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=285
translate([101.000, 299.000, 0]) import("../../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=225
translate([86.000, 85.000, 0]) import("../../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=5
translate([262.000, 193.000, 0]) import("../../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=165
translate([232.000, 20.000, 0]) import("../../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([212.000, 246.000, 0]) import("../../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=300
translate([80.000, 141.000, 0]) import("../../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([48.000, 250.000, 0]) import("../../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([156.000, 344.000, 0]) import("../../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([188.000, 262.000, 0]) import("../../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([106.000, 147.000, 0]) import("../../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=270
translate([326.000, 188.000, 0]) import("../../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=5
translate([250.000, 373.000, 0]) import("../../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([136.000, 78.000, 0]) import("../../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([34.000, 239.000, 0]) import("../../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=270
translate([21.000, 227.000, 0]) import("../../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([10.000, 213.000, 0]) import("../../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([93.000, 166.000, 0]) import("../../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([143.000, 356.000, 0]) import("../../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_sleeve.stl orient=normal rot=25
translate([342.000, 268.000, 0]) import("../../parts/gap_sleeve.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=15
translate([206.000, 268.000, 0]) import("../../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([327.000, 273.000, 0]) import("../../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([77.000, 129.000, 0]) import("../../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=5
translate([314.000, 199.000, 0]) import("../../parts/frame_standoff.stl"); // pre-oriented placement, see STL
