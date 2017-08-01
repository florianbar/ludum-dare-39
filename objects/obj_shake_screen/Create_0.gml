/// @description Init

view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);

offset_x = 1;
offset_y = 1;
shake_speed = room_speed * 0.05; 

//Start shake
alarm[0] = 1;

