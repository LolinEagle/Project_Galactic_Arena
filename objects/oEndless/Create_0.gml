///@desc Endless Setup

//Variable
endlessScore = 0;
endlessPacifism = 0;
phase = 0;

//Setup
scScoreRoomStart(snEndless, "Level Endless", OFFSET_X, OFFSET_Y);
with(oScore){ennemieSlugger = -1;}

//Ennemie Spawn Random
endlessEnnemie = instance_create_layer(x, y, layer, oEnnemieSpawnRandom);
with(endlessEnnemie){
	x1 = OFFSET_X;
	y1 = OFFSET_Y;
	x2 = room_width - x1;
	y2 = room_height - y1;
}

//Text Ennemie
textEnnemie = array_create(4);
textEnnemie[0] = "- Ennemie -\nSpawn Random\nSpawner\nGunner";
textEnnemie[1] = "- Ennemie -\nSpawn Random\nHealer\nTurret";
textEnnemie[2] = "- Ennemie -\nSpawner\nRusher\nGunner";
textEnnemie[3] = "- Ennemie -\nBoss\nSpawn Random\nRusher\nHealer\nTurret";