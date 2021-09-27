///@desc Shader White
scShader(shWhite);

if(pasifismRing){
	draw_set_alpha(0.5);
	draw_set_colour(c_aqua);
	var _xx1 = x - lengthdir_x(4000, image_angle - 45);
	var _yy1 = y - lengthdir_y(4000, image_angle - 45);
	var _xx2 = x - lengthdir_x(4000, image_angle + 45);
	var _yy2 = y - lengthdir_y(4000, image_angle + 45);
	draw_triangle(x, y, _xx1, _yy1, _xx2, _yy2, false);
}