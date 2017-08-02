/// @description init

hsp = 0;
vsp = 0;
move_speed = 2;
grav = 0.25;
image_speed = 0.1;

if (x < room_width/2) {
    hdir = 1;
} else {
    hdir = -1;
}

can_move = false;
dead_spin_dir = 0;

//State: normal, jump, dead, burning
state = "normal";


