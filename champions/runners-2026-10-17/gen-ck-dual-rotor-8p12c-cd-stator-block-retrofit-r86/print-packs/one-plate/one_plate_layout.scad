// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 402.3 x 399.6 x 29.5 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_core_with_bases_in_place.stl orient=normal rot=0
translate([1.000, 1.000, 0]) import("../parts/stator_core_with_bases_in_place.stl"); // pre-oriented placement, see STL
// endbell_front.stl orient=flip rot=0
translate([96.000, 141.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=flip rot=90
translate([204.000, 72.000, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=225
translate([170.000, 250.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=180
translate([102.000, 108.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=330
translate([222.000, 226.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=120
translate([121.000, 288.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=95
translate([168.000, 310.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=330
translate([262.000, 186.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=300
translate([77.000, 233.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=115
translate([27.000, 217.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=355
translate([279.000, 234.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=120
translate([312.000, 136.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=0
translate([234.000, 89.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=300
translate([283.000, 66.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=265
translate([316.000, 198.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=275
translate([217.000, 299.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=90
translate([328.000, 252.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=340
translate([221.000, 27.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=165
translate([60.000, 96.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=275
translate([88.000, 66.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=20
translate([264.000, 285.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=90
translate([305.000, 289.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=35
translate([320.000, 22.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=65
translate([286.000, 17.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=310
translate([72.000, 309.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=130
translate([44.000, 323.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=60
translate([29.000, 279.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=50
translate([296.000, 320.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=230
translate([320.000, 345.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=20
translate([358.000, 146.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=25
translate([357.000, 83.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=265
translate([108.000, 348.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=345
translate([23.000, 205.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=150
translate([364.000, 46.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([4.000, 187.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([249.000, 281.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([232.000, 136.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=10
translate([280.000, 128.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([123.000, 234.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([152.000, 90.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=5
translate([285.000, 355.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([304.000, 173.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([384.000, 65.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([355.000, 322.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([52.000, 273.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([34.000, 273.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([23.000, 259.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([368.000, 217.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_sleeve.stl orient=normal rot=25
translate([141.000, 231.000, 0]) import("../parts/gap_sleeve.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([68.000, 110.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([47.000, 310.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([316.000, 356.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([303.000, 46.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
