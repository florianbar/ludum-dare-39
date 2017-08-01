/// @description Bullet collision

if (state != "damaged")
{
    state = "damaged";
    _health -= 1;
    
    if (_health > 0) {
        alarm[0] = scr_seconds(0.25);
    } else {
        audio_play_sound(snd_cage_explosion, 5, false);
        alarm[1] = scr_seconds(0.25);
    }
}

