///@desc Draw Option
scDrawSet(fRoboto24, fa_center, fa_middle);

//Volume
draw_text(xstart - cx, y - cy - 32, "Music");
draw_sprite(sPauseSliderBar, 0, xstart - cx, y - cy);
draw_set_halign(fa_left);
draw_text(xstart - cx + 328, y - cy, string(percentage) + "%");
scDrawSpriteExt();