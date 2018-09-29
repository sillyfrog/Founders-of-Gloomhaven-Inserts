include <consts.scad>;

CLIP_WIDTH = 0.97;

union() {
    clip(CLIP, CLIP_WIDTH);
    mirror([0, 1, 0]) clip(CLIP, CLIP_WIDTH);
}
