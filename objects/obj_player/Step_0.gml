/// @description step

if (!is_active) exit;

//check user input
key_right  =  keyboard_check(ord("D"));
key_left   = -keyboard_check(ord("A"));
key_jump   =  keyboard_check_pressed(ord("K"));
key_shoot  =  keyboard_check(ord("J"));
key_charge = keyboard_check(ord("L"));
key_charge_released = keyboard_check_released(ord("L"));


/*
 * Charging power
 */
if (key_charge and !place_free(x,y+1) and state != "charging")
{
    hsp = 0;
    vsp = 0;
    state = "charging";
    alarm[0] = 1;
    global.game_speed = 0.5;
    audio_play_sound(snd_recharge, 5, false);
    scr_shake_start();
}
if (key_charge_released) 
{
    state = "normal";
    global.game_speed = 1;
    audio_stop_sound(snd_recharge);
    scr_shake_end();
}


if (state == "normal")
{
    scr_player_state_normal();
}
else if (state == "charging")
{
    sprite_index = spr_player_charging;
}          

//horizontal collision
if (!place_free(x+hsp,y)) 
{
    while (place_free(x+sign(hsp),y)) 
    {
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;


//vertical collision
if (!place_free(x,y+vsp)) 
{
    while (place_free(x,y+sign(vsp))) 
    {
        y += sign(vsp);
    }
    vsp = 0;
}

y += vsp;