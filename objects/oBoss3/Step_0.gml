///@desc Final Boss Logic
if(!global.gamePaused){
	if(!global.levelEnded){
		//Built in variable
		if(!charge){
			xP = oPlayer.x
			yP = oPlayer.y
			direction = point_direction(x, y, xP, yP);
		}
		image_angle = direction;
		
		//Speed
		if(point_distance(x, y, oPlayer.x, oPlayer.y) < 64){
			speed = 0;
		}else{
			if(!phaseThree){speed = 3.0;}
			else{speed = 6.0;}
		}
		
		//Charge the player
		if(phaseTwo){
			if(++iCharge >= FPS * (chargeTime - 0.5)){
				charge = true;
				speed = 0
				if(iCharge >= FPS * chargeTime){
					speed = 24;
					if(point_distance(x, y, xP, yP) < 16){
						iCharge = 0;
						charge = false;
					}
				}
			}
		}
		
		//Ring
		if(++iRing >= FPS * 6){
			with(Ring){iDir = 90;}
			iRing = 0;
		}

		#region End
		//Phase 1
		with(Ring){x = oBoss3.x; y = oBoss3.y;}
		with(Spawner){
			x = oBoss3.x + lengthdir_x(160, oBoss3.direction + 180);
			y = oBoss3.y + lengthdir_y(160, oBoss3.direction + 180);
		}
		with(Turret1){
			x = oBoss3.x + lengthdir_x(160, oBoss3.direction + iDir);
			y = oBoss3.y + lengthdir_y(160, oBoss3.direction + iDir);
		}
		
		//Phase 2
		if(phaseTwo){
			with(Turret1){if(iDir < 90)iDir += 0.5;}
			with(Turret2){
				x = oBoss3.x + lengthdir_x(160, oBoss3.direction - 90);
				y = oBoss3.y + lengthdir_y(160, oBoss3.direction - 90);
			}
		}
		
		//Phase 3
		if(phaseThree){
			with(Turret3){
				x = oBoss3.x + lengthdir_x(160, oBoss3.direction);
				y = oBoss3.y + lengthdir_y(160, oBoss3.direction);
			}
		}
		
		//Collision with Player
		scEnnemieMelee();
		
		//Final Boss Die
		if(global.healBoss <= 0 && room != rEndless){global.levelEnded = true;}
		
		//Final Boss Die in Endless
		if(room == rEndless){
			if(global.healBoss <= 0){phaseEndless = true;}
			if(oEndless.endlessPacifism < 15 && global.theScore = 0){
				phaseEndless = true;
			}
		}#endregion
	}

	//If Final Boss Die
	if(global.levelEnded){
		speed = 0;
		
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
	
	//If Final Boss Die in Endless
	if(phaseEndless){
		speed = 0;
		iEndless++;
		
		with(Ring){instance_destroy();}
		with(Spawner){instance_destroy();}
		with(Turret1){instance_destroy();}
		with(Turret2){instance_destroy();}
		with(Turret3){instance_destroy();}
		
		if(global.healBoss <= 0){
			//Explosion
			if(++iFx = FPS / 3 && iEndless < FPS * 3){
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
			if(++iFx = FPS / 3 && iEndless < FPS * 3){
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
		
		if(iEndless > FPS * 3){
			if(global.theScore > 0){global.theScore += 100;}
			instance_destroy();
		}
	}
}