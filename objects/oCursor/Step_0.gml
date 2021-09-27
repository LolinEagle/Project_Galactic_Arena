///@desc Teleportation Security
image_speed = 1;
x = mouse_x;
y = mouse_y;
scCameraGetView();

//Teleportation Security
if(!global.gamePaused){
	//Normale state & Boss2
	if(!instance_exists(oBoss2)){
		if(
			x <= OFFSET_X || x >= room_width - OFFSET_X
			|| y <= OFFSET_Y || y >= room_height - OFFSET_Y
			|| room = rLevel1_3 || room = rLevel2_3 || room = rLevel3_3
			|| place_meeting(x, y, pEnnemie)
			|| place_meeting(x, y, oEnnemieWall)
			|| tilemap_get_at_pixel(global.tilemapBeam, x, y)
		){
			TP_SECURITY
		}
	}else{
		if(
			place_meeting(x, y, oEnnemieWall)
			|| tilemap_get_at_pixel(global.tilemapBeam, x, y)
			|| point_distance(x, y, oBoss2.x, oBoss2.y) < 256
		){
			TP_SECURITY
		}
	}
	
	//Boss1
	if(instance_exists(oBoss1)){
		if(point_distance(x, y, oBoss1.x, oBoss1.y) < 256){
			TP_SECURITY
		}
	}
}