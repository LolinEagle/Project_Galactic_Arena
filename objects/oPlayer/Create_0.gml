///@desc Variable Definitions
global.healPlayerFrame = 0;
global.playerFrame = 0;
rateOfFire = 0;
teleportation = 0;
multishot = 0;

//Speed
hspd = 0;
vspd = 0;
if(instance_exists(oBoss2)){xspd = 8;}
else{xspd = 16;}

//Shader
iFlash = 0;
flashPlayer = false;
flashBetween = FPS / 6;
flashDurasion = FPS / 4;
flashColor = shWhite;

//Other
teleportationSecurity = false;
tilemapH = layer_tilemap_get_id("TileCollisionsH");
tilemapV = layer_tilemap_get_id("TileCollisionsV");
endless = false;