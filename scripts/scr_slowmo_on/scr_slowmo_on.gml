global.game_speed = 0.5;

for (var i = 0; i < instance_number(obj_enemy); i++)
{
	var inst = instance_find(obj_enemy, i);
	inst.vsp *= global.game_speed;
}