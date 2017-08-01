var data = scr_data_get(); 

if (data[? "tutorial"])
{
    room_goto(rm_game);
}
else
{
    scr_data_update("tutorial", true);
    room_goto(rm_tutorial);
}

