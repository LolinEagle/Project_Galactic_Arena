///@desc Initialise
randomize();
surface_resize(application_surface, RES_W, RES_H);
audio_group_load(OST);
audio_group_load(SFX);

//Persistents
instance_create_layer(0, 0, layer, oCursor);
instance_create_layer(0, 0, layer, oCamera);
instance_create_layer(0, 0, layer, oPause);
instance_create_layer(0, 0, layer, oScore);

//Globals Variable
global.gameDebug = false;
global.gamePaused = false;
global.healPlayer = 0;
global.tilemapBeam = 0;

//Option
if(!file_exists(OPTION)){
	global.gameOST = 0.5;
	global.gameSFX = 0.5;
	global.gameUp = ord("W");
	global.gameLeft = ord("A");
	global.gameDown = ord("S");
	global.gameRight = ord("D");
}else{
	ini_open(OPTION);
	global.gameOST = ini_read_real("Audio", "OST", 0.5);
	global.gameSFX = ini_read_real("Audio", "SFX", 0.5);
	global.gameUp = ini_read_string("Key", "Up", ord("W"));
	global.gameLeft = ini_read_string("Key", "Left", ord("A"));
	global.gameDown = ini_read_string("Key", "Down", ord("S"));
	global.gameRight = ini_read_string("Key", "Right", ord("D"));
	ini_close();
}