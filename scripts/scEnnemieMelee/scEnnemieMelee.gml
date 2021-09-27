function scEnnemieMelee(){
	if(place_meeting(x, y, oPlayer)){
		with(oPlayer){flashPlayer = true;}
		if(global.playerFrame <= 0){
			global.healPlayerFrame += 0.55 / (FPS / 60);
			global.healPlayer -= 0.55 / (FPS / 60);
		}
	}
}