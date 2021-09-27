///@desc Credit logic
if(selected && mouse_check_button_pressed(mb_left)){
	credit = !credit;
	var _titleBack = layer_background_get_id("BackgroundsTitle");

	if(credit){
		layer_background_index(_titleBack, 1);
		instance_deactivate_layer("LayerTitle");
		instance_deactivate_object(oTitle1);
		instance_deactivate_object(oTitle2);
		instance_deactivate_object(oTitle3);
		instance_deactivate_object(oTitle4);
		instance_deactivate_object(oTitle5);
	}else{
		layer_background_index(_titleBack, 0);
		instance_activate_layer("LayerTitle");
		instance_activate_object(oTitle1);
		instance_activate_object(oTitle2);
		instance_activate_object(oTitle3);
		instance_activate_object(oTitle4);
		instance_activate_object(oTitle5);
	}
}