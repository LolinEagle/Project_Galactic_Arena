///@desc Shader White
if(flash > 0){
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}else{
	draw_self();
	draw_sprite_ext(
		sEnnemieHealer,
		1,
		x,
		y,
		image_xscale,
		image_yscale,
		0,
		image_blend,
		image_alpha
	);
}