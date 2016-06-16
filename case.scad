$fs=.4;

tolerance = 0.2;

t = 1;

boardW = 47 + t;
boardL = 39 + t;
boardH = 6;
switchW = 12.5 + tolerance;
switchH = 5;

plugH = switchH + 2.5;
plugR = 1.35;


union() {
    difference() {
        cube([boardW+t*2,boardL+t*2,boardH+t-tolerance]);
        translate([t,t,t])
        cube([boardW,boardL,boardH]);
        
        translate([10 - switchW/2,36+3,t])
        #cube([switchW,4, boardH]);
        
        translate([10 - switchW/2,-1,t])
        #cube([switchW,4, boardH]);
        
        
        //translate([29 - 22/2,-1,t])
        //#cube([22,4, boardH]);
    }
    
    


}
translate([t + tolerance,t + tolerance,t + tolerance])
union() {    
    translate([15,29])
    cylinder(h=plugH,r1=plugR, r2=plugR-tolerance);
    translate([37,36])
    cylinder(h=plugH,r1=plugR, r2=plugR-tolerance);
    translate([16,5])
    cylinder(h=plugH,r1=plugR, r2=plugR-tolerance);
    translate([43,4])
    cylinder(h=plugH,r1=plugR, r2=plugR-tolerance);
    
    
        //supports
    translate([30,12,0])
    cylinder(h=switchH,r=plugR);
    translate([5,23,0])
    cylinder(h=switchH,r=plugR);
}