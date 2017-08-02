global.game_speed = 1;

for (var i = 0; i < instance_number(obj_enemy); i++)
{
	var inst = instance_find(obj_enemy, i);
	inst.vsp *= global.game_speed;
}