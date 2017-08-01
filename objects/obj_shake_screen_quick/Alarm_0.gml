/// @description Shake

amount_x = choose(-offset_x, offset_x);
amount_y = choose(-offset_y, offset_y);

camera_set_view_pos(view_camera[0],0,0);
camera_set_view_pos(view_camera[0], view_x + amount_x, view_y + amount_y);
view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);   

alarm[0] = shake_speed;

