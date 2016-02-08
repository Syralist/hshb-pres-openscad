//Lego Wandhalter
//Schritt für Schritt Beispiel für OpenSCAD
//Schritt 5: Iteration

P = 8.0;
H = 1.2*P;
nh = 1.7;
nd = 4.8;

dkopf = 16;
dgewinde = 8;
hkopf = 4.4;

$fn=100;

xsize = 2;
ysize = 2;

difference()
{
    union()
    {
        cube([P*xsize-0.2,P*ysize-0.2,H/3]);
        for(xx=[1:xsize])
        {
            for(yy=[1:ysize])
            {
                translate([((P-0.2)/2)+((xx-1)*P),((P-0.2)/2)+((yy-1)*P),H/3])
                    cylinder(r=nd/2,h=nh,center);
            }
        }
    }
    union()
    {
        translate([(P-0.2)/2+0.5*P,(P-0.2)/2+0.5*P,0])
            cylinder(r1=dgewinde/2,r2=dkopf/2,h=hkopf);
        translate([(P-0.2)/2+0.5*P,(P-0.2)/2+0.5*P,hkopf])
            cylinder(r=dkopf/2,h=hkopf);
    }
}
