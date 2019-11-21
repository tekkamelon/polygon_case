a = 45;//height
b = 55;//radius1
c = 40;//radius2
d = 5;//thikness
e = 10;//top_height
f = 30;//top_radius2
$fn = 8;//nunber of polygon

module target(){
    union(){
        cylinder(h = a,r1 = b, r2 = c);
        translate([0,0,a])
            cylinder(h = e, r1 = c, r2 = f);
    }
}
    
module tool(){
    union(){
        translate([0,0,d])
            cylinder(h = a-d, r1 = b-d, r2 = c-d);
        translate([0,0,a])
            cylinder(h = e, r1 =c-d, r2 = f-d);
    }
}
        
difference(){
    target();
    tool();
}