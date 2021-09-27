///@desc Boss 2 Logic
if(!global.gamePaused){
	//If Level not Ended
	if(!global.levelEnded){
		image_angle -= 3;
		
		//Collision with Player
		scEnnemieMelee();
		
		//Phase 2
		var _if = global.pacifismMin >= 3 && global.pacifismSec >= 30;
		if(global.healBoss <= 180 || _if) && (phaseTwo = false){
			layer_destroy_instances("LayerEnnemie2");
			instance_create_layer(256, 192, "LayerEnnemie1", oEnnemieTurret);
			instance_create_layer(256, 512, "LayerEnnemie1", oEnnemieTurret);
			phaseTwo = true;
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