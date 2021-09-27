///@desc Option Logic
scCameraGetView();

//Check if selected
var _mouseLeft = mouse_check_button(mb_left);
if(_mouseLeft && place_meeting(x, y, oCursor)){selected = true;}
if(!_mouseLeft){selected = false;}
if(selected){
	if(mouse_x > limitLeft && mouse_x < limitRight){x = mouse_x;}
	if(mouse_x <= limitLeft){x = limitLeft;}
	if(mouse_x >= limitRight){x = limitRight;}
	percentage = round(((x - limitLeft) / (limitRight - limitLeft)) * 100);
	global.gameOST = (x - limitLeft) / (limitRight - limitLeft);
}