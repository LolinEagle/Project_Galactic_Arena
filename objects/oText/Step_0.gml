if(!global.gamePaused){
	//The actual letters draw
	letters += spd;
	textCurrent = string_copy(text, 1, floor(letters));
	textCurrentSave = string_copy("Saving...", 1, floor(letters));
	draw_set_font(textFont);
	
	//Size & Ending
	if(h == 0){h = string_height(text);}
	w = string_width(textCurrent);
	if(letters >= length && ++i = FPS * 5){instance_destroy();}
}