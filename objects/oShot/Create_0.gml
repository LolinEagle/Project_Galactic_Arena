///@desc Direction
direction = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y);
direction += random_range(2, -2);
image_angle = direction;