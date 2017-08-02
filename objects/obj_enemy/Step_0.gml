/// @description step

if (state == "normal")
{
    image_speed = 0.1 * global.game_speed;
    
    /*
     * Moving
     */
    if (can_move) 
    {
        hsp = (hdir * move_speed) * global.game_speed;
    }
    
    image_xscale = hdir;
    
    /*
     * Gravity
     */
    vsp += (grav * global.game_speed);
    
    /*
     * Horizontal collision
     */
    if (!place_free(x+hsp,y)) 
    {
        while (place_free(x+sign(hsp),y)) 
        {
            x += sign(hsp);
        }
        hsp = 0;
        
        //Change direction
        hdir = -hdir;
    }
    
    x += hsp;
    
    
    /*
     * Vertical collision
     */
    if (!place_free(x,y+vsp)) 
    {
        while (place_free(x,y+sign(vsp))) 
        {
            y += sign(vsp);
        }
        vsp = 0;
        can_move = true;
    }
    
    y += vsp;
}
else if (state == "dead")
{
    image_alpha = 0.8;
    image_angle += (3 * dead_spin_dir);
    y += 6;
}
else if (state == "burning")
{
    image_speed = 0;
    image_alpha -= 0.01;
    
    if (image_alpha <= 0)
    {
        instance_destroy();
    }
}

if (y > room_height + 50) instance_destroy();