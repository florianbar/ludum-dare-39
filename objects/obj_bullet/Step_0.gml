/// @description step

if (!has_init)
{
    has_init = true;
    hspeed = move_speed * hdir;
    vspeed = move_speed * vdir;
    
    if (hdir == -1) image_xscale = -1;
    if (vdir == -1) image_angle = 90;
    if (vdir == 1)  image_angle = 270;
}

