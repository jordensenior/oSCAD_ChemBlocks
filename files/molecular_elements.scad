/* Molecular modeling elements
 *
 * P Becker 2016
   Inspired by L. Geers, May 2014
 */
 // This can be set on the command line with -D 'command="Cl"'
 // The command "script" will write a script to create all elements - just edit to remove ECHO etc
 
use <Write.scad>

 command="B";
 command="C";
 command="list";
 command="aromatic";
 command="Cl";
 command="script";
 command="all";
 
components = 3;      // 1 for main body, 2 for letters, 3 for combined
roundedtext = false; // Set true in script

 slope = 0.1;
 base = 0.0;
 
 FAC = 1.2;
 
 LABEL=0;
 RADIUS=1;
 ELECTRONEG=2;
 ELECTROAFF=3;
 COLOR=4;
 COLOR2=5;
 VALENCE=6;
 COL=7;
 ROW=8;
 PINS=9;
 
 data = [
        ["H",   37, 2.20, 72.8, "white",       "black", -4,  1, 1, [[0,-90,0]]],
        ["Li", 134, 0.98, 59.6, "violet",      "white", -4,  1, 2, [[0,-90,0]]],
        ["Be",  90, 1.57,  0.0, [195/255,254/255,9/255], "black", -3,  2, 2, [[0,-90,0],[90,0,0]]],
        ["B",   88, 2.04, 26.7, "salmon",      "black", +1, 13, 2, [[0,111.6,0],[0,111.6,120],[0,111.6,240]]],
        ["Na", 154, 0.93, 52.8, [171/255,92/255,242/255], "white", -4,  1, 3, [[0,-90,0]]],
        ["Mg", 130, 1.31,  0.0, [142/255,254/255,9/255], "black", -3,  2, 3, [[0,-90,0],[90,0,0]]],
        ["K",  196, 0.82, 48.4, [143/255,64/255,212/255], "white", -4,  1, 4, [[0,-90,0]]],
        ["Ca", 174, 1.00, 2.37, [68/255,254/255,9/255], "black", -3,  2, 4, [[0,-90,0],[90,0,0]]],
        ["Fe", 125, 1.83, 15.7, [224/255,102/255,51/255],  "black", -1,  8, 4, [[0,111.6,0],[0,111.6,120],[0,111.6,240]]],
        ["Co", 126, 1.88, 63.7, [240/255,144/255,160/255], "black", -1,  9, 4, [[0,0,0],[0,109.5,0],[0,109.5,120],[0,109.5,240]]],
        ["Ni", 121, 1.91,112.0, [80/255,208/255,80/255],   "black", -1, 10, 4, [[0,-90,-45],[104.5,-90,-45]]],
        ["Cu", 126, 1.90,118.4, [200/255,128/255,51/255],  "black", -1, 11, 4, [[0,-90,-45],[104.5,-90,-45]]],
        ["Zn", 131, 1.65,  0.0, [125/255,128/255,176/255], "black", -1, 12, 4, [[0,-90,-45],[104.5,-90,-45]]],
        ["Au", 144, 2.54,222.8, "gold",        "black", -1, 11, 6, [[90,0,0],[0,0,0],[0,120,0],[0,240,0],[270,0,0]]],
        ["C",   77, 2.55,153.9, "black",       "white", +1, 14, 2, [[0,0,0],[0,109.5,0],[0,109.5,120],[0,109.5,240]]],
        ["N",   75, 3.04,  7.0, "blue",        "white", +2, 15, 2, [[0,111.6,0],[0,111.6,120],[0,111.6,240]]],
        ["N+",  75, 3.04,  7.0, "blue",        "white", +2, 15,-2, [[0,0,0],[0,109.5,0],[0,109.5,120],[0,109.5,240]]],
        ["O",   73, 3.44,141.0, "red",         "white", +3, 16, 2, [[0,-90,-45],[104.5,-90,-45]]],
        ["O+",  73, 3.44,141.0, "red",         "white", +3, 16,-2, [[0,111.6,0],[0,111.6,120],[0,111.6,240]]],
        ["O-",  73, 3.44,141.0, "red",         "white", +3, 16,-1, [[0,-90,0]]],
        ["F",   71, 3.98,328.0, [144/255,244/255,80/255],  "black", +4, 17, 2, [[-90,0,0]]],
        ["Cl",  99, 3.16,349.0, [31/255,240/255,31/255],  "black", +4, 17, 3, [[-90,0,0]]], 
        ["Br", 114, 2.96,324.6, "darkred",     "white", +4, 17, 4, [[-90,0,0]]],
        ["I",  133, 2.66,295.2, [151/255,9/255,151/255], "white", +4, 17, 5, [[-90,0,0]]],
        ["Al", 118, 1.61, 42.5, "silver",      "black", +1, 13, 3, [[0,111.6,0],[0,111.6,120],[0,111.6,240]]],
        ["He",  32,    0,    0, [217/255,254/255,254/255], "black", +1, 18, 1, []],
        ["Ne",  69,    0,    0, [181/255,227/255,244/255], "black", +1, 18, 2, []],
        ["Ar",  97,    0,    0, [132/255,210/255,227/255], "black", +1, 18, 3, []],
        ["Kr", 110,    0,    0, [97/255,186/255,210/255],  "black", +1, 18, 4, []],
        ["Xe", 130,    0,    0, [72/255,161/255,178/255],  "black", +1, 18, 5, []],
        ["Si", 111, 1.90,133.6, [240/255,201/255,163/255], "black", +1, 14, 3, [[0,0,0],[0,109.5,0],[0,109.5,120],[0,109.5,240]]],
        ["P",  106, 2.19, 72.0, "orange",      "black", +2, 15, 3, [[90,0,0],[0,0,0],[0,120,0],[0,240,0],[270,0,0]]],
        ["S",  102, 2.58,200.0, "yellow",      "black", +3, 16, 3, [[90,0,0],[0,-90,0]]],
        ["S+", 102, 2.58,200.0, "yellow",      "black", +3, 16,-3, [[0,111.6,0],[0,111.6,120],[0,111.6,240]]]
        ];
 
c = command;

if (c == "list") {
    for (atom = data) {
        echo(atom);
    }
}
else if (c == "script") {
    pref = "openscad -D 'roundedtext=true' -D 'command=\"";
    suf = "\"' -D 'components=1' molecular_elements.scad -o\"";
    suf2 = "\"' -D 'components=2' molecular_elements.scad -o\"";
    for (atom = data) {
        echo(str(pref,atom[LABEL],suf,atom[LABEL],".stl\""));
        echo(str(pref,atom[LABEL],suf2,atom[LABEL],"Label.stl\""));
        }
    echo(str(pref,"aromatic",suf,"Aromatic.stl\""));
    echo(str(pref,"aromatic",suf2,"AromaticLabel.stl\""));
    
} else if (c == "aromatic") {
    aromatic(components);
} else if (c == "all") {
    for (i=[0:len(data)-1]) {
        atom = data[i];
        translate([scaleatom(2*190*atom[COL]),-2*scaleatom(190)*atom[ROW],0])
        any_atom(atom[LABEL],atom[RADIUS],atom[COLOR],atom[COLOR2],atom[VALENCE],atom[ELECTRONEG],atom[ELECTROAFF],atom[PINS],components); 
    }
    aromatic(components);  
} else {
    for (atom = data) {
        if (c == atom[LABEL]) {
            any_atom(atom[LABEL],atom[RADIUS],atom[COLOR],atom[COLOR2],atom[VALENCE],atom[ELECTRONEG],atom[ELECTROAFF],atom[PINS],components);
        }
    }
}

function scaleatom(rad) = FAC * (base + slope * rad);

// use <./Garuda-bold.scad>;
$fn=40;

//function sumv(v,i) = (i==0 ? v[i] : v[i] + sumv(v,i-1));

// Constructing elements
module pin(rad,type,nega,affin) {
	length= 6 * FAC;
	pinradius= 1.6 * FAC;
	union() {
		cylinder(r=pinradius,h=rad+length,$fn=25);
		translate([0,0,rad+length]) sphere(r=pinradius, $fn=25);
        //if (type > 0) cylinder(r=pinradius*1.33,h=rad+type*length/8,$fn=25);
        cylinder(r=pinradius*1.33,h=rad+nega/4*length/2,$fn=25);
	}
}

// Coloured letter
module backedlabel(rot,atomr,l,cutting) {
    drop = 0.0;
    backthick = 1.2;
    //font = "Arial:style=bold";
    sz = 2.8 + atomr * 0.5;
    b = 1.1;
    sp = 1.15;
    
    rotate([-60,45,0]) 
        if (cutting) {        
            writesphere(l,[0,0,0],atomr,bold=b,h=sz,t=(drop+backthick)*2,space=sp, rounded=roundedtext);        
        } else {
            writesphere(l,[0,0,0],atomr-(drop+backthick)+backthick/2,bold=b,h=sz,t=backthick,           space=sp, rounded=roundedtext);            
        }    
}

// Coloured letter
module backedlabel2(rot,atomr,l,cutting) {
    drop = 1.2;
    backthick = 0.6;
    font = "Arial:style=bold";
    sz = 3 + atomr * 0.3;
    letang = atan(sz/atomr)/2;
    if (len(l) == 1) {
        rotate(rot) translate([0,0,atomr-drop-backthick])
        if (cutting) {        
            linear_extrude(drop+backthick) text(l,sz,font,halign="center",valign="center");            
        } else {
            linear_extrude(backthick) text(l,sz,font,halign="center",valign="center");
        }    
    }
    else if (len(l) == 2) {
        backedlabel(rot-[0,letang,0],atomr,l[0],cutting);
        backedlabel(rot+[0,letang,0],atomr,l[1],cutting);
    }
}

// Generalised atom PWB
module any_atom(label,radf,col,col2,type,nega,affin,pins,components=3) {
	rot=[25,40,0];
    rad = scaleatom(radf);
    echo(label,rad);
	translate([0,0,rad]) {
        if (components % 2 == 1)
            difference() {
                color(col) union() {
                    sphere(r=rad);
                    for (pin = pins) {
                        rotate(pin) pin(rad,type,nega,affin);
                    }
                }
                union() {
                    backedlabel(rot,rad,label,true);
                    translate([0,0,-rad*2*0.95]) cube([rad*2,rad*2,rad*2],center=true);  
                }
            }
            if (components >= 2) {
                color(col2) backedlabel(rot,rad,label,false);
            }
    }
}


// Aromatic ring of C-atoms
module aromatic(components) {
	atom = data[search(["C"],data)[0]];
    atomradius = scaleatom(atom[RADIUS]);
    //atomradius= 6;
	ringradius = atomradius * 20 / 6;
    echo(atomradius=atomradius, ringradius=ringradius);
	union() {
		// Atoms
        translate([0,-ringradius,0]) Catom();
        translate([0,ringradius,0]) rotate([0,0,180]) Catom();
        translate([ 0.5*sqrt(3)*ringradius, -0.5*ringradius,0]) rotate([0,0,60]) Catom();
        translate([ 0.5*sqrt(3)*ringradius, 0.5*ringradius,0]) rotate([0,0,120]) Catom();
        translate([-0.5*sqrt(3)*ringradius, 0.5*ringradius,0]) rotate([0,0,240]) Catom();
        translate([-0.5*sqrt(3)*ringradius,-0.5*ringradius,0]) rotate([0,0,300]) Catom();
      
		// Aromatic ring
		if (components % 2 == 1)
            color("black") translate([0,0,atomradius]) rotate_extrude(convexity=10) translate([ringradius-atomradius-1,0,0]) circle(r=1.6,$fn=25);
	}	
	module Catom() {
        any_atom(atom[LABEL],atom[RADIUS],atom[COLOR],atom[COLOR2],atom[VALENCE],atom[ELECTRONEG],atom[ELECTROAFF],
        [[90,0,0],[90,0,120],[90,0,240]],components); 
	}
}
