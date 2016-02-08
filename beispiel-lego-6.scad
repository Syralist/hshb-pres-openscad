//Lego Wandhalter
//Schritt für Schritt Beispiel für OpenSCAD
//Schritt 6: Module

P = 8.0;
H = 1.2*P;
nh = 1.7;
nd = 4.8;

dkopf = 16;
dgewinde = 8;
hkopf = 4.4;

$fn=100;

module lego(xsize=2, ysize=2, zsize=1)
{
    union()
    {
        cube([P*xsize-0.2,P*ysize-0.2,H*zsize]);
        for(xx=[1:xsize])
        {
            for(yy=[1:ysize])
            {
                translate([((P-0.2)/2)+((xx-1)*P),((P-0.2)/2)+((yy-1)*P),H*zsize])
                    cylinder(r=nd/2,h=nh,center);
            }
        }
    }
}

difference()
{
    lego(2,2,1/3);
    union()
    {
        translate([(P-0.2)/2+0.5*P,(P-0.2)/2+0.5*P,0])
            cylinder(r1=dgewinde/2,r2=dkopf/2,h=hkopf);
        translate([(P-0.2)/2+0.5*P,(P-0.2)/2+0.5*P,hkopf])
            cylinder(r=dkopf/2,h=hkopf);
    }
}
