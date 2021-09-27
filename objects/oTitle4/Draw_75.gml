///@desc Draw the button and textbox
if(option){
	draw_sprite_ext(
		sprite_index,
		image_index,
		x,
		y,
		image_xscale,
		image_yscale,
		image_angle,
		image_blend,
		1
	);
	scDrawSet(fRoboto36, fa_center, fa_middle);
	draw_text(x, y, titleWord);
}