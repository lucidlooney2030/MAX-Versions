od = 160; thick = 5; bearing_d = 21.85; bearing_h = 7.2;
shaft_clear = 10; bolt_r = 72; bolt_n = 6; m3_clear = 3.5; boss=6; $fn = 96;
difference() {
    union() {
        cylinder(d=od, h=thick);
        translate([0,0,-bearing_h-boss+0.01]) cylinder(d=32, h=bearing_h+boss);
    }
    translate([0,0,-bearing_h-boss-0.1]) cylinder(d=shaft_clear, h=50);
    translate([0,0,-bearing_h-0.02]) cylinder(d=bearing_d, h=bearing_h);
    for (i=[0:bolt_n-1]) {
        a=i*360/bolt_n;
        translate([bolt_r*cos(a), bolt_r*sin(a), -20]) cylinder(d=m3_clear, h=50);
    }
}
