scCameraGetView();

//Check if selected
if(
	mouse_check_button_pressed(mb_left)
	&& point_in_rectangle(oCursor.x, oCursor.y, x - 48, y - 48, x + 48, y + 48)
){
	selected = true;
}
if(selected){
	image_index = 1;
	var newKey = keyboard_key;

	//New Key
	switch(newKey){
		case global.gameLeft: break;
		case global.gameDown: break;
		case global.gameUp: break;
		case vk_escape: break;
		case vk_f1: break;
		case vk_f2: break;
		case vk_f3: break;
		case vk_f4: break;
		case vk_f5: break;
		case vk_f6: break;
		case vk_f7: break;
		case vk_f8: break;
		case vk_f9: break;
		case vk_f10: break;
		case vk_f11: break;
		case vk_f12: break;
		case 0: break;
		default: 
			global.gameRight = newKey;
			selected = false;
		break;
	}
}else{
	image_index = 0;
}