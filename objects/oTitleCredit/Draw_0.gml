///@desc Draw the button and textbox
if(!credit){
	//Title word
	scDrawSet(fRoboto36, fa_center, fa_middle);
	draw_set_alpha(image_alpha);
	draw_self();

	//Textbox
	if(showText && iTitle >= FPS){
		//Set & Box
		scDrawSet(fRoboto36, fa_left, fa_top);
		var _width = string_width(titleTextbox) + 16;
		draw_set_color(c_black);
		draw_rectangle(xx, yy, xx + _width, yy - 56, false);
	
		//Outline & Text
		draw_set_color(c_white);
		draw_rectangle(xx, yy, xx + _width, yy - 56, true);
		draw_text(xx + 8, yy - 56, titleTextbox);
	}
}else{
	scDrawSet(fRoboto36, fa_center, fa_bottom);
	draw_sprite(sprite_index, image_index, x, y);
	
	//Programming & Composer
	draw_text(RES_W_HALF, CREDIT * 02, "~ Programming ~");
	draw_text(RES_W_HALF, CREDIT * 03, "LolinEagle");
	draw_text(RES_W_HALF, CREDIT * 05, "~ Composer ~");
	draw_text(RES_W_HALF, CREDIT * 06, "CrazyBoyo");
	
	//Soundtrack
	draw_text(RES_W_HALF, CREDIT * 08, "~ Soundtrack ~");
	scDrawSet(fRoboto24, fa_left, fa_bottom);
	draw_text(RES_W_HALF / 1.5, CREDIT * 09, "Kalte Ohren - Alex");
	draw_text(RES_W_HALF / 1.5, CREDIT * 10, "Kalte Ohren - Septahelix");
	draw_text(RES_W_HALF / 1.5, CREDIT * 11, "Are You With Us - Wontolla");
	draw_text(RES_W_HALF / 1.5, CREDIT * 12, "Raindancer - Wontolla");
}