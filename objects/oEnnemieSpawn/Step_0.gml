///@desc Ennemie Spawn
if(!global.gamePaused){
	//Size
	if(point_distance(x, y, oPlayer.x, oPlayer.y) > 256){
		image_xscale += 1 / FPS;
		image_yscale += 1 / FPS;
	}else{
		image_xscale -= 0.75 / FPS;
		image_yscale -= 0.75 / FPS;
	}
	
	//Instance change & Max
	if(image_xscale >= 1){instance_change(oEnnemie, true);}
	image_xscale = max(0, image_xscale);
	image_yscale = max(0, image_yscale);
	
	//If probleme
	if(place_meeting(x, y, oEnnemieWall) || place_meeting(x, y, oBoss1)){
		with(oEnnemieSpawnRandom){recreateEnnemie = true;}
		instance_destroy();
	}
}