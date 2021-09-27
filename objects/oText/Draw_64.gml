if(!global.gamePaused){
	var halfw = w / 2;

	//Roundrect
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_roundrect_ext(
		xx - halfw - border,
		yy - h - (border * 2),
		xx + halfw + border,
		yy,
		15,
		15,
		false
	);
	
	//Text
	scDrawSet(textFont, fa_center, fa_top);
	draw_text(xx, yy - h - border, textCurrent);
	
	//Auto save text
	if(room != room_last){
		draw_set_color(c_black);
		draw_text(68, 100, textCurrentSave);
		if(i >= FPS * 3){draw_set_color(c_lime);}
		else{draw_set_color(c_white);}
		draw_text(66, 98, textCurrentSave);
	}
}