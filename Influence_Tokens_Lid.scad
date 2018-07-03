include <consts.scad>;

echo("Influence Tokens Lid (WxDxH):", INFLUENCE_BOX_W, INFLUENCE_BOX_D, FLOOR);

difference() {
    union() {
        cube([INFLUENCE_BOX_W, INFLUENCE_BOX_D, FLOOR]); // Keep this the same size as the player tokens.
        translate([INFLUENCE_BOX_W/2, 0, FLOOR]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([INFLUENCE_BOX_W/2, INFLUENCE_BOX_D, FLOOR]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([0, INFLUENCE_BOX_D/2, FLOOR]) rotate([0, 90, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([INFLUENCE_BOX_W, INFLUENCE_BOX_D/2, FLOOR]) rotate([0, -90, 0]) cylinder(d=CLIP_DIA, h=WALL);
    }
    translate([0, 0, -10]) cube([INFLUENCE_BOX_W, INFLUENCE_BOX_D, 10]);

}



