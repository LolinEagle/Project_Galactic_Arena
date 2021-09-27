///@desc Set up
cam = view_camera[0];
follow = oPlayer;
viewWidthHalf = camera_get_view_width(cam) / 2;
viewHeightHalf = camera_get_view_height(cam) / 2;

//Destination
xTo = xstart;
yTo = ystart;

//Screen shake
shakeLenght = 0;
shakeMagnitude = 0;
shakeRemain = 0;