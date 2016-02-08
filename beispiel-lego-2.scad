//Lego Wandhalter
//Schritt für Schritt Beispiel für OpenSCAD
//Schritt 2: translate cylinder, $fn

cube([8-0.2,8-0.2,1.2*8]);
translate([(8-0.2)/2,(8-0.2)/2,1.2*8])
    cylinder(r=4.8/2,h=1.7,$fn=100,center);
