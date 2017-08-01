if (state != "dead")
{
    if (other.x < x) dead_spin_dir = -1;
    else dead_spin_dir = 1;
    with (other) instance_destroy();
    
    state = "dead";
    audio_play_sound(snd_shoot_enemy, 5, false);
    scr_shake_quick();
}

