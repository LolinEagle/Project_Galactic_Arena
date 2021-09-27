draw_self();
draw_sprite_ext(
	sEnnemieCanon,
	image_index,
	x + lengthdir_x(max(0, rateOfFire / 2), image_angle),
	y + lengthdir_y(max(0, rateOfFire / 2), image_angle),
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);