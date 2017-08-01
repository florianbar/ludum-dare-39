/*
 * Create pause game instance
 */
 
var timeout = argument[0];

if (!instance_exists(ctrl_pause))
{
    var pause = instance_create(x,y,ctrl_pause);
    pause.timeout = timeout;
}
