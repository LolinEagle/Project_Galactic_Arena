///@desc Check what to do
if(!global.gamePaused){
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = 8;
	var _xx = x + lengthdir_x(32, direction);
	var _yy = y + lengthdir_y(32, direction);
	
	//Effect
	if(++iEffect = 15){
		effect_create_below(ef_ring, _xx, _yy, 1, c_white);
		iEffect = 0;
	}
}