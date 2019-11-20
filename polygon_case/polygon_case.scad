a = 60;//height and radius1
b = 40;//radius2
c = 5;//thikness
d = 8;//nunber of polygon

difference(){
    cylinder(h = a, r1 = a, r2 = b, $fn = d);
    translate([0,0,c])
        cylinder(h = a-c, r1 = a-c, r2 = b-c, $fn = d);
}