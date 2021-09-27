///@desc Changing Phase Endless
endlessScore = global.theScore mod 1000;
endlessPacifism = global.pacifismMin mod 17;

//Phase 1
if(endlessScore >= 0 || endlessPacifism >= 0) && (phase == 0){
	scEndless(1, textEnnemie[0], true, true, false, false, false, FPS);
}

//Phase 2
if(endlessScore >= 300 || endlessPacifism >= 5) && (phase == 1){
	scEndless(2, textEnnemie[1], true, false, true, false, true, infinity);
}

//Phase 3
if(endlessScore >= 600 || endlessPacifism >= 10) && (phase == 2){
	scEndless(3, textEnnemie[2], false, true, false, true, false, FPS);
}

//Phase 4
if(endlessScore >= 900 || endlessPacifism >= 15) && (phase == 3){
	scEndless(4, textEnnemie[3], true, false, true, false, false, infinity);
	
	//Boss
	instance_create_layer(
		room_width / 2, room_height / 2, "LayerEnnemie3", oBoss3
	);
	global.healBoss = 300;
}

//Reset
if(phase == 4){
	if(global.theScore > 0){
		if(endlessScore < 900){phase = 0;}
	}else{
		if(endlessPacifism < 15){phase = 0;}
	}
}