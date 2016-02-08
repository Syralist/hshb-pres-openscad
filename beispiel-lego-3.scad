//Lego Wandhalter
//Schritt für Schritt Beispiel für OpenSCAD
//Schritt 3: union, difference

difference()
{
    union()
    {
        cube([8*2-0.2,8*2-0.2,1.2*8/3]);
        translate([(8-0.2)/2,(8-0.2)/2,1.2*8/3])
            cylinder(r=4.8/2,h=1.7,$fn=100,center);
        translate([(8-0.2)/2+8,(8-0.2)/2,1.2*8/3])
            cylinder(r=4.8/2,h=1.7,$fn=100,center);
        translate([(8-0.2)/2,(8-0.2)/2+8,1.2*8/3])
            cylinder(r=4.8/2,h=1.7,$fn=100,center);
        translate([(8-0.2)/2+8,(8-0.2)/2+8,1.2*8/3])
            cylinder(r=4.8/2,h=1.7,$fn=100,center);
    }
    union()
    {
        translate([(8-0.2)/2+0.5*8,(8-0.2)/2+0.5*8,0])
            cylinder(r1=8/2,r2=16/2,h=4.4);
        translate([(8-0.2)/2+0.5*8,(8-0.2)/2+0.5*8,4.4])
            cylinder(r=16/2,h=4.4);
    }
}
