include <consts.scad>;

echo("Player Tokens box (WxDxH):", TOKEN_BOX_W, TOKEN_BOX_D, TOKEN_BOX_H);

difference() {
    union() {
        cube([TOKEN_BOX_W, TOKEN_BOX_D, TOKEN_BOX_H]);

    }
    translate([WALL, WALL, FLOOR]) difference() {
        cube([DELIVERY_STACK_W, DELIVERY_STACK_D, DELIVERY_STACK_H]);
        // Chunk to stop things getting stuck in corner
        translate([0, DELIVERY_STACK_D - CUBE/2, 0]) cube([CUBE/2, CUBE/2, DELIVERY_STACK_H]);
    }

    translate([WALL*2 + DELIVERY_STACK_W, WALL, TOKEN_BOX_H - MEEPLE_H/2]) cube([MEEPLE_W, MEEPLE_STACK, MEEPLE_H]);
    translate([WALL*2 + DELIVERY_STACK_W + (MEEPLE_W-TOKEN_STACK)/2, WALL*2 + MEEPLE_STACK, FLOOR]) cube([TOKEN_STACK, SQUARE_TILE, SQUARE_TILE]);

    translate([WALL*3 + DELIVERY_STACK_W + MEEPLE_W + CLAIM_DIA/2, WALL, TOKEN_BOX_H]) rotate([-90, 00, 0]) cylinder(d=CLAIM_DIA, h=CLAIM_STACK);

    translate([TOKEN_BOX_W/2, 0.4, TOKEN_BOX_H-2]) rotate([90,0,0]) linear_extrude(height=0.4) text("Player Tokens", size=4, halign="center", valign="top");
    translate([TOKEN_BOX_W/2, 0.4, TOKEN_BOX_H-4-4]) rotate([90,0,0]) linear_extrude(height=0.4) text("Base", size=4, halign="center", valign="top");
    
        //translate([TOKEN_BOX_W/2, 0, TOKEN_BOX_H]) rotate([-90, 0, 0]) socket(h=CLIP);
        //#translate([TOKEN_BOX_W/2, TOKEN_BOX_D, TOKEN_BOX_H]) rotate([90, 180, 0]) socket(h=CLIP);
        //translate([TOKEN_BOX_W/3*2, TOKEN_BOX_D, TOKEN_BOX_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([0, TOKEN_BOX_D/2, TOKEN_BOX_H+CLIP_STOPPER]) rotate([90, 180, 90]) socket(h=CLIP);
        translate([TOKEN_BOX_W, TOKEN_BOX_D/2, TOKEN_BOX_H+CLIP_STOPPER]) rotate([90, -180, -90]) socket(h=CLIP);
}




