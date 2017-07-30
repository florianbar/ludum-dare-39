/*
argument0 => key
argument1 => value
*/

global.ini_path = working_directory + "save_1";

if (file_exists(global.ini_path))
{
    data = ds_map_secure_load(global.ini_path);
    data[? argument0] = argument1;
    
    save = ds_map_secure_save(data, global.ini_path);
    ds_map_destroy(save);
}
