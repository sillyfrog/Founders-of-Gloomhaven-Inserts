include <consts.scad>;

echo("Influence Tokens box (WxDxH):", INFLUENCE_BOX_W, INFLUENCE_BOX_D, INFLUENCE_BOX_H);

difference() {
    union() {
        cube([INFLUENCE_BOX_W, INFLUENCE_BOX_D, INFLUENCE_BOX_H]); // Keep this the same size as the player tokens.
    }

    translate([WALL*1.5, WALL*1.5, FLOOR]) cube([INFLUENCE_BOX_W-WALL*2*1.5, INFLUENCE_BOX_D-WALL*2*1.5, INFLUENCE_BOX_H]);

    translate([INFLUENCE_BOX_W/2, 0.4, INFLUENCE_BOX_H-3]) rotate([90,0,0]) linear_extrude(height=0.4) text("Fleeting", size=3.5, halign="center", valign="top");
    translate([INFLUENCE_BOX_W/2, 0.4, INFLUENCE_BOX_H-4-4]) rotate([90,0,0]) linear_extrude(height=0.4) text("Influence Tokens", size=3.5, halign="center", valign="top");

    translate([INFLUENCE_BOX_W/2, 0, INFLUENCE_BOX_H]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL*1.2);
    translate([INFLUENCE_BOX_W/2, INFLUENCE_BOX_D, INFLUENCE_BOX_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL*1.2);
    translate([0, INFLUENCE_BOX_D/2, INFLUENCE_BOX_H]) rotate([0, 90, 0]) cylinder(d=CLIP_DIA, h=WALL*1.2);
    translate([INFLUENCE_BOX_W, INFLUENCE_BOX_D/2, INFLUENCE_BOX_H]) rotate([0, -90, 0]) cylinder(d=CLIP_DIA, h=WALL*1.2);

    translate([INFLUENCE_BOX_W/2, 0, 0]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL*1.2);
    translate([INFLUENCE_BOX_W/2, INFLUENCE_BOX_D, 0]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL*1.2);
    translate([0, INFLUENCE_BOX_D/2, 0]) rotate([0, 90, 0]) cylinder(d=CLIP_DIA, h=WALL*1.2);
    translate([INFLUENCE_BOX_W, INFLUENCE_BOX_D/2, 0]) rotate([0, -90, 0]) cylinder(d=CLIP_DIA, h=WALL*1.2);
}



