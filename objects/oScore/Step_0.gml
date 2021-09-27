///@desc Score Setup
if(!global.gamePaused){
	if(room = rEndless){
		global.ennemieSpawner = instance_number(oEnnemieSpawner);
		
		//Pacifism
		if(global.theScore = 0){
			global.pacifismSec += 1 / FPS;
			if(global.pacifismSec >= 60){
				global.pacifismSec -= 60;
				global.pacifismMin++;
			}
		}
	}
	
	#region World 1
	if(room = rLevel1_1){
		scoreToPass = 100; pacifismMinToPass = 1; pacifismSecToPass = 40;
		scScore(rLevel1_2, scoreToPass, pacifismMinToPass, pacifismSecToPass);
	}

	if(room = rLevel1_2){
		scoreToPass = 100; pacifismMinToPass = 1; pacifismSecToPass = 40;
		scScore(rLevel1_3, scoreToPass, pacifismMinToPass, pacifismSecToPass);
		global.ennemieSpawner = instance_number(oEnnemieSpawner);
	}

	if(room = rLevel1_3){
		scoreToPass = 8; pacifismMinToPass = infinity; pacifismSecToPass = infinity;
		scScore(rLevel1_4, scoreToPass, pacifismMinToPass, pacifismSecToPass);
	}
	
	if(room = rLevel1_4){
		scoreToPass = 120; pacifismMinToPass = 2; pacifismSecToPass = 0;
		scScore(rBoss1, scoreToPass, pacifismMinToPass, pacifismSecToPass);
	}
	
	if(room = rBoss1){
		scoreToPass = infinity; pacifismMinToPass = 2; pacifismSecToPass = 30;
		scScore(rLevel2_1, scoreToPass, pacifismMinToPass, pacifismSecToPass);
	}#endregion
	
	#region World 2
	if(room = rLevel2_1){
		scoreToPass = 150; pacifismMinToPass = 2; pacifismSecToPass = 30;
		scScore(rLevel2_2, scoreToPass, pacifismMinToPass, pacifismSecToPass);
	}
	
	if(room = rLevel2_2){
		scoreToPass = 180; pacifismMinToPass = 3; pacifismSecToPass = 0;
		scScore(rLevel2_3, scoreToPass, pacifismMinToPass, pacifismSecToPass);
		global.ennemieSpawner = instance_number(oEnnemieSpawner);
	}
	
	if(room = rLevel2_3){
		scoreToPass = 8; pacifismMinToPass = infinity; pacifismSecToPass = infinity;
		scScore(rLevel2_4, scoreToPass, pacifismMinToPass, pacifismSecToPass);
	}
	
	if(room = rLevel2_4){
		scoreToPass = 200; pacifismMinToPass = 4; pacifismSecToPass = 0;
		scScore(rBoss2, scoreToPass, pacifismMinToPass, pacifismSecToPass);
		global.ennemieSpawner = instance_number(oEnnemieSpawner);
	}
	
	if(room = rBoss2){
		scoreToPass = infinity; pacifismMinToPass = 5; pacifismSecToPass = 0;
		scScore(rLevel3_1, scoreToPass, pacifismMinToPass, pacifismSecToPass);
		global.ennemieSpawner = instance_number(oEnnemieSpawner);
	}#endregion
	
	#region World 3
	if(room = rLevel3_1){
		scoreToPass = 200; pacifismMinToPass = 3; pacifismSecToPass = 20;
		scScore(rLevel3_2, scoreToPass, pacifismMinToPass, pacifismSecToPass);
	}
	
	if(room = rLevel3_2){
		scoreToPass = 240; pacifismMinToPass = 4; pacifismSecToPass = 0;
		scScore(rLevel3_3, scoreToPass, pacifismMinToPass, pacifismSecToPass);
		global.ennemieSpawner = instance_number(oEnnemieSpawner);
	}
	
	if(room = rLevel3_3){
		scoreToPass = 8; pacifismMinToPass = infinity; pacifismSecToPass = infinity;
		scScore(rLevel3_4, scoreToPass, pacifismMinToPass, pacifismSecToPass);
	}
	
	if(room = rLevel3_4){
		scoreToPass = 300; pacifismMinToPass = 5; pacifismSecToPass = 0;
		scScore(rBoss3, scoreToPass, pacifismMinToPass, pacifismSecToPass);
	}
	
	if(room = rBoss3){
		scoreToPass = infinity; pacifismMinToPass = 7; pacifismSecToPass = 30;
		scScore(rCredit, scoreToPass, pacifismMinToPass, pacifismSecToPass);
	}#endregion
	
	//Ennemie Slugger
	if(--ennemieSlugger <= 0 && ennemieSlugger > -1){
		instance_create_layer(
			oPlayer.xstart, oPlayer.ystart, "LayerEnnemie1", oEnnemieSlugger
		);
		ennemieSlugger = -1;
	}
}