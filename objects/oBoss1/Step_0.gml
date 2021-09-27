///@desc Boss 1 Logic
if(!global.gamePaused){
	//If Level not Ended
	if(!global.levelEnded){
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
		
		//Collision with Player
		scEnnemieMelee();
		
		//Phase 2
		if(global.healBoss <= 120 || global.pacifismMin >= 2){
			with(oEnnemieSpawnRandom){
				ennemie = false
				ennemieGunner = true
				rateGunner = 3;
			}
		}
		
		//Die
		if(global.healBoss <= 0){global.levelEnded = true;}
	}

	//If Level Ended
	if(global.levelEnded){
		if(global.healBoss <= 0){
			//Explosion
			if(++iFx = FPS / 3 && global.iLevelEnded < FPS * 3){
				audio_play_sound(snExplosion, 0, false);
				effect_create_above(
					ef_explosion,
					x + random_range(-256, 256),
					y + random_range(-256, 256),
					256,
					c_red
				);
				iFx = 0;
			}
		}else{
			//Pacifism
			if(++iFx = FPS / 3 && global.iLevelEnded < FPS * 3){
				audio_play_sound(snTeleportation, 0, false);
				effect_create_above(
					ef_ring,
					x + random_range(-256, 256),
					y + random_range(-256, 256),
					256,
					c_blue
				);
				iFx = 0;
			}
		}
	}
}