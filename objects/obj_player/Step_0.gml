/// @description step

if (!is_active) exit;

//check user input
key_right  =  keyboard_check(ord("D"));
key_left   = -keyboard_check(ord("A"));
key_jump   =  keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space);
key_shoot  =  keyboard_check(ord("K"));
key_charge =  keyboard_check(ord("L"));
key_charge_released = keyboard_check_released(ord("L"));


//key_right  =  keyboard_check(ord("D")) or gamepad_axis_value(0,gp_axislh) > 0;
//key_left   = -(keyboard_check(ord("A")) or gamepad_axis_value(0,gp_axislh) < 0);
//key_jump   =  keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_face1);
//key_shoot  =  keyboard_check(ord("K")) or gamepad_button_check(0,gp_face3);
//key_charge = keyboard_check(ord("L")) or gamepad_button_check(0,gp_shoulderrb);
//key_charge_released = keyboard_check_released(ord("L")) or gamepad_button_check_released(0,gp_shoulderrb);

/*
 * Jump
 */
if (key_jump and !place_free(x,y+1))
{
    audio_play_sound(snd_jump, 5, false);
    vsp = -jump_speed;
	
	//Delay charge for it bit when jumping
	if (can_charge and state == "charging")
	{
		can_charge = false;
		state = "normal";
		//global.game_speed = 1;
		scr_slowmo_off();
		audio_stop_sound(snd_recharge);
		scr_shake_end();
		alarm[2] = scr_seconds(0.25);
	}
}

/*
 * Gravity
 */
vsp += grav;
vsp *= global.game_speed;


/*
 * Charging power
 */
if (key_charge and state != "charging" and can_charge)
{
	hsp = 0;
	vsp = 0;
    state = "charging";
    alarm[0] = 1;
    //global.game_speed = 0.5;
	scr_slowmo_on();
    audio_play_sound(snd_recharge, 5, false);
    scr_shake_start();
}
if (key_charge_released) 
{
    state = "normal";
    //global.game_speed = 1;
	scr_slowmo_off();
    audio_stop_sound(snd_recharge);
    scr_shake_end();
}

if (state == "normal")
{
    scr_player_state_normal();
}
if (state == "charging")
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