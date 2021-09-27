///@desc Changing Phase
if(!global.gamePaused && !global.levelEnded){
	//Phase 2 - he charges the player
	if(scBoss3Phase2()){
		Turret2 = instance_create_layer(x, y, "LayerEnnemie2", oEnnemieTurret);
		chargeTime = 10;
		phaseTwo = true;
	}
		
	//Phase 2 - Phase Pasifism
	if(global.pacifismMin >= 2 && phaseTwo = true){
		with(Ring){
			pasifismRing = true;
			phasePasifism = true;
		}
	}
		
	//Phase 3 - he is moving fast toward the player
	if(scBoss3Phase3()){
		Turret3 = instance_create_layer(x, y, "LayerEnnemie2", oEnnemieTurret);
		chargeTime = 6;
		phaseThree = true;
	}
}