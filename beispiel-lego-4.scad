//Lego Wandhalter
//Schritt für Schritt Beispiel für OpenSCAD
//Schritt 4: Variablen

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
        translate([(P-0.2)/2,(P-0.2)/2,H/3])
            cylinder(r=nd/2,h=nh,center);
        translate([(P-0.2)/2+8,(P-0.2)/2,H/3])
            cylinder(r=nd/2,h=nh,center);
        translate([(P-0.2)/2,(P-0.2)/2+8,H/3])
            cylinder(r=nd/2,h=nh,center);
        translate([(P-0.2)/2+8,(P-0.2)/2+8,H/3])
            cylinder(r=nd/2,h=nh,center);
    }
    union()
    {
        translate([(P-0.2)/2+0.5*P,(P-0.2)/2+0.5*P,0])
            cylinder(r1=dgewinde/2,r2=dkopf/2,h=hkopf);
        translate([(P-0.2)/2+0.5*P,(P-0.2)/2+0.5*P,hkopf])
            cylinder(r=dkopf/2,h=hkopf);
    }
}
