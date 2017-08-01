/// @description Charging

if (state == "charging")
{
    if (health < 100)
    {
        health += 4;
        alarm[0] = scr_seconds(0.1);
    }
    else
    {
        health = 100;
    }
}


