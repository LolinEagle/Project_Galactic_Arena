///@desc Draw Commands
scDrawSet(fRoboto36, fa_left, fa_bottom);
draw_set_alpha(image_alpha);
draw_self();

//Commands
draw_text(4, RES_H - 136, "Commands :")
draw_set_font(fRoboto18);
draw_text(4, RES_H - 116, "WASD : Movement")
draw_text(4, RES_H - 92, "Mouse1 : Fire")
draw_text(4, RES_H - 68, "Mouse2 : Teleport")
draw_text(4, RES_H - 44, "Esc : Pause")
draw_text(4, RES_H - 20, "F1 : Fullscreen")