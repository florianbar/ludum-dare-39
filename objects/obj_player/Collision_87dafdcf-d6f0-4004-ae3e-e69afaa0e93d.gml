/// @description Key pick up
if (obj_key.is_active)
{
    audio_play_sound(snd_pick_up, 5, false);
    obj_door.state = "active";
    with (obj_key) instance_destroy();
}

