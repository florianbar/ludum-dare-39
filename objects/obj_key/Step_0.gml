if (!is_active) exit;

vsp += grav;

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

