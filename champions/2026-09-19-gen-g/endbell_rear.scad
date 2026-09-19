// Gen-G rear endbell
od = 130; thick = 5; bearing_d = 21.85; bearing_h = 7.2;
shaft_clear = 10; bolt_r = 54; bolt_n = 6; m3_clear = 3.5; $fn = 64;
difference() {
    union() {
        cylinder(d=od, h=thick);
        translate([0,0,-bearing_h+0.01]) cylinder(d=30, h=bearing_h);
        translate([0,0,thick-0.01])
            difference() {
                cylinder(d=126, h=3.5);
                translate([0,0,-0.1]) cylinder(d=124.4, h=4);
            }
    }
    translate([0,0,-bearing_h-0.1]) cylinder(d=shaft_clear, h=50);
    translate([0,0,-bearing_h-0.02]) cylinder(d=bearing_d, h=bearing_h);
    for (i=[0:bolt_n-1]) {
        a=i*360/bolt_n;
        translate([bolt_r*cos(a), bolt_r*sin(a), -20]) cylinder(d=m3_clear, h=50);
    }
    // cable exit
    translate([od/2 - 8, 0, thick/2]) rotate([0,90,0]) cylinder(d=8, h=20);
}
