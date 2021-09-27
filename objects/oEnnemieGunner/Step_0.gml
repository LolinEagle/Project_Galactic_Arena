///@desc Gunner Logic
if(!global.gamePaused){
	//Built in variable
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);

	if(image_xscale < 1 && gunnerOn = false){
		//gunnerOff
		image_xscale += 1 / FPS;
		image_yscale += 1 / FPS;
		
		//If probleme
		if(place_meeting(x, y, oEnnemieWall)){
			with(oEnnemieSpawnRandom){recreateGunner = true;}
			instance_destroy();
		}
	}else{
		gunnerOn = true;
	
		//Shot
		rateOfFire--;
		if(rateOfFire <= 0){
			audio_play_sound(snShot, 0, 0);
			var _len = 64 * image_xscale;
			var _x = x + lengthdir_x(_len, direction);
			var _y = y + lengthdir_y(_len, direction);
			instance_create_layer(_x, _y, "LayerEnnemie2", oEnnemieShot);
			rateOfFire = FPS / 1.5;
		}
	
		//Heal
		switch(hp){
			case 5: image_xscale = 1.0; image_yscale = 1.0; speed = 5.0; break;
			case 4: image_xscale = 0.9; image_yscale = 0.9; speed = 4.5; break;
			case 3: image_xscale = 0.8; image_yscale = 0.8; speed = 4.0; break;
			case 2: image_xscale = 0.7; image_yscale = 0.7; speed = 3.5; break;
			case 1: image_xscale = 0.6; image_yscale = 0.6; speed = 3.0; break;
		}if(hp <= 0){
			global.theScore += 3;
			audio_play_sound(snDie, 0, 0);
			instance_destroy();
		}
		
		//Pathfinding
		if(point_distance(x, y, oPlayer.x, oPlayer.y) < 512){speed = 0;}
		mp_potential_step_object(oPlayer.x, oPlayer.y, speed, oEnnemieWall);
		
		//Collision with Player
		scEnnemieMelee();
	}
}