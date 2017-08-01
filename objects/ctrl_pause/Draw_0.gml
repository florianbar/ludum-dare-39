/// @description Draw screen sprite to screen
if (alarm[0] > 0) 
{
    draw_sprite_stretched(
        pause_sprite, -1, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 )
    );
}

