// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // ctrl_init
global.__objectDepths[1] = 0; // ctrl_end
global.__objectDepths[2] = 0; // ctrl_game
global.__objectDepths[3] = 0; // ctrl_gameOver
global.__objectDepths[4] = 0; // obj_player
global.__objectDepths[5] = 0; // ctrl_title
global.__objectDepths[6] = 0; // obj_enemy
global.__objectDepths[7] = 0; // obj_solid
global.__objectDepths[8] = 0; // obj_shake_screen
global.__objectDepths[9] = -1; // obj_bullet
global.__objectDepths[10] = 0; // obj_light
global.__objectDepths[11] = -2; // obj_end_light
global.__objectDepths[12] = 0; // obj_tutorial
global.__objectDepths[13] = 0; // obj_enemy_destroy
global.__objectDepths[14] = -1; // obj_cage
global.__objectDepths[15] = 0; // obj_key
global.__objectDepths[16] = 1; // obj_door
global.__objectDepths[17] = 0; // ctrl_pause
global.__objectDepths[18] = 0; // obj_enemy_emitter
global.__objectDepths[19] = 0; // obj_shake_screen_quick
global.__objectDepths[20] = 0; // obj_menu_options


global.__objectNames[0] = "ctrl_init";
global.__objectNames[1] = "ctrl_end";
global.__objectNames[2] = "ctrl_game";
global.__objectNames[3] = "ctrl_gameOver";
global.__objectNames[4] = "obj_player";
global.__objectNames[5] = "ctrl_title";
global.__objectNames[6] = "obj_enemy";
global.__objectNames[7] = "obj_solid";
global.__objectNames[8] = "obj_shake_screen";
global.__objectNames[9] = "obj_bullet";
global.__objectNames[10] = "obj_light";
global.__objectNames[11] = "obj_end_light";
global.__objectNames[12] = "obj_tutorial";
global.__objectNames[13] = "obj_enemy_destroy";
global.__objectNames[14] = "obj_cage";
global.__objectNames[15] = "obj_key";
global.__objectNames[16] = "obj_door";
global.__objectNames[17] = "ctrl_pause";
global.__objectNames[18] = "obj_enemy_emitter";
global.__objectNames[19] = "obj_shake_screen_quick";
global.__objectNames[20] = "obj_menu_options";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for