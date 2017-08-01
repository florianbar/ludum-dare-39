global.ini_path = working_directory + "save_1";

if ( file_exists(global.ini_path) )
{
    return ds_map_secure_load( global.ini_path );
}

return undefined;
