///@desc Empty Tile
var lay_id = layer_get_id("TileSet");
var map_id = layer_tilemap_get_id(lay_id);

for(var i = 0; i < tilemap_get_width(map_id); i++;){
    for(var j = 0; j < tilemap_get_height(map_id); j++;){
        var data = tilemap_get(map_id, i, j);
		var num = irandom(100);
        if(num <= 20){
            data = tile_set_empty(data)
            tilemap_set(map_id, data, i, j);
        }
    }
}