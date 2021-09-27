///@desc Layer set visible & Save
if(room != room_first){
	layer_set_visible("TileCollisionsH", false);
	layer_set_visible("TileCollisionsV", false);
	layer_set_visible("TileTeleportationWall", false);
	layer_set_visible("LayerEnnemieWall", false);
	global.tilemapBeam = TILE_T_WALL;
}

//Save file
if(room != room_first && room != rEndless && room != room_last){
	//Open
	if(file_exists(SAVEFILE)){file_delete(SAVEFILE);}
	var file = file_text_open_write(SAVEFILE);
	
	//Write & Close
	file_text_write_real(file, room);
	file_text_write_real(file, global.healPlayer);
	file_text_close(file);
}