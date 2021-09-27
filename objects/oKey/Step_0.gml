///@desc Key Logic
if(!global.gamePaused){
	//Wave
	z += scWave(-1, 1, 1, 0);

	//Collision with Player
	if(place_meeting(x, y, oPlayer)){
		audio_play_sound(snKey, 0, 0);
		global.theScore++;
		instance_destroy();
	}
}