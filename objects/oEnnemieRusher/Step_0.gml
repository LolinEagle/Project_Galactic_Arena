///@desc Rusher Logic
if(!global.gamePaused){
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = 6.0;
	if(image_xscale < 0.7 && rusherOn = false){
		image_xscale += 1 / FPS;
		image_yscale += 1 / FPS;
		if(place_meeting(x, y, oEnnemieWall)){
			with(oEnnemieSpawnRandom){recreateRusher = true;}
			instance_destroy();
		}
	}else{
		rusherOn = true;
	
		//Heal
		switch(hp){
			case 5: image_xscale = 0.700; image_yscale = 0.700; break;
			case 4: image_xscale = 0.775; image_yscale = 0.775; break;
			case 3: image_xscale = 0.850; image_yscale = 0.850; break;
			case 2: image_xscale = 0.925; image_yscale = 0.925; break;
			case 1: image_xscale = 1.000; image_yscale = 1.000; break;
		}if(hp <= 0){
			global.theScore += 3;
			audio_play_sound(snDie, 0, 0);
			instance_destroy();
		}
		
		//Pathfinding
		mp_potential_step_object(oPlayer.x, oPlayer.y, speed, oEnnemieWall);
		
		//Near Player
		if(point_distance(x, y, oPlayer.x, oPlayer.y) < DIAGONAL){
			rusherNear = true;
		}
		if(rusherNear){
			if(++i = FPS * 6){
				audio_play_sound(snTeleportation, 0, false);
				effect_create_above(ef_ring, x, y, 256, c_blue);
				instance_destroy();
			}
		}
		
		//Collision with Player
		if(place_meeting(x, y, oPlayer)){
			with(oPlayer){flashPlayer = true;}
			if(global.playerFrame <= 0){
				global.healPlayerFrame += 10;
				global.healPlayer -= 10;
			}
			
			//Explosion
			audio_play_sound(snExplosion, 0, false);
			effect_create_above(ef_explosion, x, y, 256, c_red);
			instance_destroy();
		}
	}
}