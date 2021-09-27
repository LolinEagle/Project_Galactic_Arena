scDrawSet(fRoboto24, fa_center, fa_middle);
scDrawSpriteExt();

//Key
switch(global.gameDown){
	case vk_up: draw_text(x - cx, y - cy, "Up"); break;
	case vk_down: draw_text(x - cx, y - cy, "Down"); break;
	case vk_left: draw_text(x - cx, y - cy, "Left"); break;
	case vk_right: draw_text(x - cx, y - cy, "Right"); break;
	default: draw_text(x - cx, y - cy, string(chr(global.gameDown))); break;
}

//Text
scDrawSet(fRoboto36, fa_left, fa_middle);
draw_text(x - cx + 64, y - cy, "Down");