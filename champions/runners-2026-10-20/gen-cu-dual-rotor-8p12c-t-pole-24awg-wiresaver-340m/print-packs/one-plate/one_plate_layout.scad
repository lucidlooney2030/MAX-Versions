// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 399.9 x 400.8 x 29.5 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_core_with_bases_in_place.stl orient=normal rot=0
translate([1.000, 1.000, 0]) import("../parts/stator_core_with_bases_in_place.stl"); // pre-oriented placement, see STL
// endbell_front.stl orient=flip rot=0
translate([96.000, 141.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=flip rot=90
translate([204.000, 72.000, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=20
translate([75.000, 71.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=225
translate([170.000, 250.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=330
translate([222.000, 221.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=330
translate([118.000, 286.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=300
translate([75.000, 233.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=120
translate([26.000, 220.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=150
translate([240.000, 268.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=330
translate([266.000, 297.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=150
translate([136.000, 333.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=150
translate([284.000, 344.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=120
translate([311.000, 132.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=125
translate([267.000, 177.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=305
translate([313.000, 194.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=125
translate([342.000, 223.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=225
translate([270.000, 84.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=215
translate([319.000, 36.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=325
translate([282.000, 239.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=300
translate([200.000, 309.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=305
translate([64.000, 312.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=0
translate([235.000, 65.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=245
translate([262.000, 45.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=65
translate([250.000, 18.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=320
translate([192.000, 4.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=20
translate([358.000, 143.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=355
translate([193.000, 329.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=85
translate([10.000, 280.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=335
translate([325.000, 299.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=125
translate([64.000, 352.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=110
translate([9.000, 320.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=155
translate([354.000, 288.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=165
translate([137.000, 86.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([354.000, 116.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=60
translate([141.000, 112.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([79.000, 132.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=10
translate([6.000, 313.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([43.000, 310.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([123.000, 234.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([223.000, 299.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([182.000, 317.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([233.000, 131.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([79.000, 291.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([176.000, 378.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([45.000, 360.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([382.000, 211.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([138.000, 138.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([18.000, 263.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_sleeve.stl orient=normal rot=215
translate([103.000, 331.000, 0]) import("../parts/gap_sleeve.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=15
translate([243.000, 325.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=15
translate([24.000, 342.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=225
translate([380.000, 188.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=225
translate([254.000, 109.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
