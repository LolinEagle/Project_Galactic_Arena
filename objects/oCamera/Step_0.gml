///@desc Update

//Destination
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

//Move toward
x += (xTo - x) / 2;
y += (yTo - y) / 2;

//Maintain camera in the room
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

//Screenshake
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);
shakeRemain = max(0, shakeRemain - ((1 / shakeLenght) * shakeMagnitude));

//Camera set view
camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);