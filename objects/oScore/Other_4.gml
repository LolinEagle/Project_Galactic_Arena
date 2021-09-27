///@desc Setup Room

#region Setup
audio_stop_all();
global.theScore = 0;
global.pacifismMin = 0;
global.pacifismSec = 0;
ennemieSlugger = -1;

if(room == rTitle){audio_play_sound(snTitle, 0, true);}

if(room == rEndless){
	global.healPlayer = 100;
	instance_create_layer(x, y, layer, oEndless);
}#endregion

#region World 1
if(room == rLevel1_1){
	//First life set
	global.healPlayer = 100;
	
	scScoreRoomStart(snLevel01, "Level 1 - 1\nObjective : 100", 832, 576);
	with(instance_create_layer(x, y, layer, oTextEnnemie)){
		text = "- Ennemie -\nSpawn Random\nSlugger";
	}
	with(instance_create_layer(x, y, layer, oEnnemieSpawnRandom)){
		x1 = 832; y1 = 576; x2 = room_width - x1; y2 = room_height - y1;
	}
}

if(room == rLevel1_2){
	scScoreRoomStart(snLevel02, "Level 1 - 2\nObjective : 100", 960, 704);
	with(instance_create_layer(x, y, layer, oTextEnnemie)){
		text = "- Ennemie -\nSpawner\nSlugger";
	}
}

if(room == rLevel1_3){
	scScoreRoomStartLight(snLabyrinth, "Level 1 - 3\nObjective : 8");
}

if(room == rLevel1_4){
	scScoreRoomStart(snLevel03, "Level 1 - 4\nObjective : 120", 1152, 448);
	with(instance_create_layer(x, y, layer, oTextEnnemie)){
		text = "- Ennemie -\nSpawn Random\nGunner\nSlugger";
	}
	with(instance_create_layer(x, y, layer, oEnnemieSpawnRandom)){
		x1 = 1152; y1 = 448; x2 = room_width - x1; y2 = room_height - y1;
		ennemieGunner = true;
	}
}

if(room == rBoss1){
	scScoreRoomStart(snBoss, "Level 1 - 5\nBoss 1\nObjective : 1", 704, 448);
	with(instance_create_layer(x, y, layer, oEnnemieSpawnRandom)){
		x1 = 704; y1 = 448; x2 = room_width - x1; y2 = room_height - y1;
	}
}#endregion

#region World 2
if(room == rLevel2_1){
	scScoreRoomStart(snLevel04, "Level 2 - 1\nObjective : 150", 704, 448);
	with(instance_create_layer(x, y, layer, oTextEnnemie)){
		text = "- Ennemie -\nSpawn Random\nHealer\nSlugger";
	}
	with(instance_create_layer(x, y, layer, oEnnemieSpawnRandom)){
		x1 = 704; y1 = 448; x2 = room_width - x1; y2 = room_height - y1;
		ennemieHealer = true;
	}
}

if(room == rLevel2_2){
	scScoreRoomStart(snLevel02, "Level 2 - 2\nObjective : 180", 1216, 960);
	with(instance_create_layer(x, y, layer, oTextEnnemie)){
		text = "- Ennemie -\nSpawner\nGunner\nTurret\nSlugger";
	}
	with(instance_create_layer(x, y, layer, oEnnemieSpawnRandom)){
		x1 = 1216; y1 = 960; x2 = room_width - x1; y2 = room_height - y1;
		ennemie = false;
		ennemieHealer = true;
		ennemieGunner = true;
	}
}

if(room == rLevel2_3){
	scScoreRoomStartLight(snLabyrinth, "Level 2 - 3\nObjective : 8");
}

if(room == rLevel2_4){
	scScoreRoomStart(snLevel03, "Level 2 - 4\nObjective : 200", 704, 448);
	with(instance_create_layer(x, y, layer, oTextEnnemie)){
		text = "- Ennemie -\nSpawner\nGunner\nHealer\nSlugger";
	}
	with(instance_create_layer(x, y, layer, oEnnemieSpawnRandom)){
		x1 = 704; y1 = 448; x2 = room_width - x1; y2 = room_height - y1;
		ennemie = false;
		ennemieHealer = true;
	}
}

if(room == rBoss2){
	audio_play_sound(snBoss, 0, true);
	with(instance_create_layer(x, y, layer, oText)){
		text = "Level 2 - 5\nBoss 2\nObjective : 1";
	}
}#endregion

#region World 3
if(room == rLevel3_1){
	scScoreRoomStart(snLevel01, "Level 3 - 1\nObjective : 200", 704, 448);
	with(instance_create_layer(x, y, layer, oTextEnnemie)){
		text = "- Ennemie -\nSpawn Random\nRusher\nSlugger";
	}
	with(instance_create_layer(x, y, layer, oEnnemieSpawnRandom)){
		x1 = 704; y1 = 448; x2 = room_width - x1; y2 = room_height - y1;
		ennemieRusher = true;
	}
}

if(room == rLevel3_2){
	scScoreRoomStart(snLevel04, "Level 3 - 2\nObjective : 240", 1024, 768);
	with(instance_create_layer(x, y, layer, oTextEnnemie)){
		text = "- Ennemie -\nSpawner\nRusher\nTurret\nSlugger";
	}
	with(instance_create_layer(x, y, layer, oEnnemieSpawnRandom)){
		x1 = 1024; y1 = 768; x2 = room_width - x1; y2 = room_height - y1;
		ennemie = false; ennemieRusher = true;
	}
}

if(room == rLevel3_3){
	scScoreRoomStartLight(snLabyrinth, "Level 3 - 3\nObjective : 8");
}

if(room == rLevel3_4){
	scScoreRoomStart(snLevel05, "Level 3 - 4\nObjective : 300", 1216, 960);
	with(instance_create_layer(x, y, layer, oTextEnnemie)){
		text = "- Ennemie -\nSpawn Random\nRusher\nGunner\nTurret\nSlugger";
	}
	with(instance_create_layer(x, y, layer, oEnnemieSpawnRandom)){
		x1 = 1216; y1 = 960; x2 = room_width - x1; y2 = room_height - y1;
		ennemieRusher = true; ennemieGunner = true;
	}
}
	
if(room == rBoss3){
	scScoreRoomStart(
		snFinalBoss, "Level 3 - 5\nFinal Boss\nObjective : 1", 704, 448
	);
	ennemieSlugger = -1;
	with(instance_create_layer(x, y, layer, oEnnemieSpawnRandom)){
		x1 = 704; y1 = 448; x2 = room_width - x1; y2 = room_height - y1;
	}
}#endregion

if(room == rCredit){
	//Music
	audio_play_sound(snCredit, 0, false);
	
	//Text
	with(instance_create_layer(x, y, layer, oText)){
		text = "~ Congratulations ~";
	}
}