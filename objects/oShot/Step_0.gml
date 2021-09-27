///@desc Shot Logic
if(!global.gamePaused){
	image_angle = direction;
	speed = 16;
	
	#region Ennemie
	if(place_meeting(x, y, pEnnemie)){
		with(instance_place(x, y, pEnnemie)){
			hp--;
			flash = FPS / 10;
		}
		instance_destroy();
	}
	
	//Ennemie Healer
	if(place_meeting(x, y, oEnnemieHealer)){
		with(instance_place(x, y, oEnnemieHealer)){
			hp--;
			flash = FPS / 10;
		}
		instance_destroy();
	}
	
	//Ennemie Wall
	if(place_meeting(x, y, oEnnemieWall)){
		with(instance_place(x, y, oEnnemieWall)){
			if(!canPass){instance_destroy(other);}
		}
	}#endregion
	
	#region Boss
	if(place_meeting(x, y, oBoss1)){
		global.healBoss--;
		with(oBoss1){flash = FPS / 15}
		instance_destroy();
	}
	
	if(place_meeting(x, y, oBoss2)){
		global.healBoss--;
		instance_destroy();
	}
	
	if(place_meeting(x, y, oBoss3)){
		audio_play_sound(snShotReflect, 0, 0);
		instance_create_layer(x, y, "LayerEnnemie2", oEnnemieShot);
		instance_destroy();
	}
	
	if(place_meeting(x, y, oBoss3Ring)){
		global.healBoss--;
		with(oBoss3){
			flash = FPS / 15;
			with(oBoss3Ring){flash = FPS / 15;}
		}
		instance_destroy();
	}#endregion
}