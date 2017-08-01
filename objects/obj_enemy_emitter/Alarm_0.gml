if is_active
{
    ///Spawn enemy
    var enemy = instance_create(x,y,obj_enemy);
    alarm[0] = room_speed * random_range(1,2);
}

