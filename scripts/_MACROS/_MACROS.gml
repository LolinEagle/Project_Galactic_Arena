//FPS & File
#macro FPS 60
#macro SAVEFILE "Savefile.sav"
#macro OPTION "Choice.ini"
#macro SCOREBOARD "Scoreboard.txt"
#macro TIMEBOARD "Timeboard.txt"

//Resolution
#macro RES_W 1280
#macro RES_H 720
#macro RES_W_HALF 640
#macro RES_H_HALF 360
#macro DIAGONAL 734

//Multishot & Offset
#macro SHOT_LOW 10
#macro SHOT_TOP 12
#macro OFFSET_X 640
#macro OFFSET_Y 384

//Title & Tile Beam & Balancing
#macro VERSION "v 1.1.0.0"
#macro CREDIT RES_H / 13
#macro SPAWN_RATE 1.5
#macro BONUS_BOSS 32
#macro TILE_T_WALL layer_tilemap_get_id("TileTeleportationWall")
#macro TP_SECURITY with(oPlayer){teleportationSecurity = true;}