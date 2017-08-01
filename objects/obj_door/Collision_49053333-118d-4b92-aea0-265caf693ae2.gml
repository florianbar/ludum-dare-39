/// @description collision with player

if (state == "active")
{
    state = "open";
    obj_player.is_active = false;
    audio_play_sound(snd_door_open, 5, false);
    
	for (var i = 0; i < instance_number(obj_enemy); i++)
	{
		var inst = instance_find(obj_enemy, i);
		inst.state = "burning";
	}
	
	with (obj_enemy_emitter) instance_destroy();
	
    instance_create(x,y,obj_end_light);
    scr_shake_start();
}