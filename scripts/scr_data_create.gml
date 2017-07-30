//create file if it doesn't exist

global.ini_path = working_directory + "save_1";

if (!file_exists(global.ini_path))
{
    var data = ds_map_create();
    data[? 'tutorial'] = false;
    
    var save = ds_map_secure_save(data, global.ini_path);
    ds_map_destroy(save);
}
