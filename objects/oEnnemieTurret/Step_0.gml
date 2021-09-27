if(!global.gamePaused && active){
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);

	//Shot
	if(--rateOfFire <= 0){
		var _x = x + lengthdir_x(96, image_angle);
		var _y = y + lengthdir_y(96, image_angle);
		with(instance_create_layer(_x, _y, "LayerEnnemie2", oEnnemieShot)){
			image_index = 1;
			canScore = true;
		}
		audio_play_sound(snShot, 1, 0);
		rateOfFire = FPS * 0.5;
	}
	
	//Collision with Player
	scEnnemieMelee();
}