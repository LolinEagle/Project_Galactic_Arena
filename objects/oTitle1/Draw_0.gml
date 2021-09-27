///@desc Draw the button and textbox

//Title word
scDrawSet(fRoboto36, fa_center, fa_middle);
draw_set_alpha(image_alpha);
draw_self();
draw_text(x, y, titleWord);

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