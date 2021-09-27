///@desc Healer Logic
if(!global.gamePaused){
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);

	if(image_xscale < 1 && HealerOn = false){
		//HealeOff
		image_xscale += 1 / FPS;
		image_yscale += 1 / FPS;
		if(place_meeting(x, y, oEnnemieWall)){
			with(oEnnemieSpawnRandom){recreateHealer = true;}
			instance_destroy();
		}
	}else{
		//HealeOn
		HealerOn = true;
		if(point_distance(x, y, oPlayer.x, oPlayer.y) < DIAGONAL){
			if(--rateOfFire <= 0){
				//Audio & Effect
				audio_play_sound(snHealer, 0, 0);
				effect_create_above(ef_ring, x, y, DIAGONAL, c_red);
			
				//Heal & Reset
				var _list = ds_list_create();
				var _num = collision_circle_list(
					x, y, DIAGONAL, pEnnemie, false, true, _list, false
				);
				if(_num > 0){
					for(var i = 0; i < _num; ++i;){
						with(_list[| i]){
							hp++;
							speed += 0.5;
						}
					}
				}ds_list_destroy(_list);
				rateOfFire = FPS;
			}
		}
	
		//Heal
		switch(hp){
			case 5: image_xscale = 1.0; image_yscale = 1.0; speed = 3.0; break;
			case 4: image_xscale = 0.9; image_yscale = 0.9; speed = 3.5; break;
			case 3: image_xscale = 0.8; image_yscale = 0.8; speed = 4.0; break;
			case 2: image_xscale = 0.7; image_yscale = 0.7; speed = 4.5; break;
			case 1: image_xscale = 0.6; image_yscale = 0.6; speed = 5.0; break;
		}if(hp <= 0){
			global.theScore += 3;
			audio_play_sound(snDie, 0, 0);
			instance_destroy();
		}
		
		//Pathfinding & Collision with Player
		mp_potential_step_object(oPlayer.x, oPlayer.y, speed, oEnnemieWall);
		if(x = oPlayer.x && y = oPlayer.y){speed = 0}
		scEnnemieMelee();
	}
}