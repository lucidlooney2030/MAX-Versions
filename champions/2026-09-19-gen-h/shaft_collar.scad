od=22; id=8.35; h=10; set_d=3.5; $fn=64;
difference() {
    cylinder(d=od, h=h);
    translate([0,0,-0.1]) cylinder(d=id, h=h+0.2);
    translate([0,0,h/2]) rotate([0,90,0]) cylinder(d=set_d, h=od);
}
