/// @description Step

if (!has_init)
{
    has_init = true;
    alarm[0] = timeout;
    
    /*
     * Create sprite of screen
     */
    pause_sprite = sprite_create_from_surface(
        application_surface,0,0,
        surface_get_width(application_surface), 
        surface_get_height(application_surface), 
        false, false, 0, 0
    );
    
    /*
     * Deactivate all objects expect for this
     */
    instance_deactivate_all(true);
}

/* */
/*  */
