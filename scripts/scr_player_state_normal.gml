//moving direction
var hdir = key_right + key_left;
hsp = hdir * move_speed;
if (hdir != 0) image_xscale = hdir;

sprite_index = spr_player;

/*
 * Jump
 */
if (key_jump and !place_free(x,y+1))
{
    audio_play_sound(snd_jump, 5, false);
    vsp = -jump_speed;
}


/*
 * Gravity
 */
vsp += grav;


/*
 * Decrease power slowly
 */
if (health > 0) health -= 0.2;


/*
 * Shoot
 */
if (key_shoot and can_shoot and health > 0)
{
    audio_play_sound(snd_shoot, 5, false);
    
    var bullet_up = instance_create(x,y,obj_bullet); 
    bullet_up.vdir = -1;  
    var bullet_down = instance_create(x,y,obj_bullet); 
    bullet_down.vdir = 1; 
    var bullet_left = instance_create(x,y,obj_bullet); 
    bullet_left.hdir = -1;  
    var bullet_right = instance_create(x,y,obj_bullet); 
    bullet_right.hdir = 1; 

    can_shoot = false;
    
    if (health-20 > 0) {
        health -= 15;    
    } else {
        health = 0;
        can_charge = true;
    }
    
    alarm[1] = room_speed * 0.25;
}
