/// @description init

hsp = 0;
vsp = 0;
move_speed = 3;
jump_speed = 7;
grav = 0.25;

can_shoot = true;
is_active = true;

health = 0;
is_charging = false;
can_charge = true;

instance_create(x,y,obj_light);


//States: normal, charging, dying, exiting
state = "normal";

//make sure user really moves the analogue stick
gamepad_set_axis_deadzone(0, 0.3);