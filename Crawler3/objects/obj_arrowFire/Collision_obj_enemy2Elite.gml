var colliding_id = instance_place(x, y, obj_enemy2Elite);
if (colliding_id != noone) 
{
	colliding_id.hp -= 25;
	colliding_id.damaged = true;
	instance_destroy(id, false);
}
instance_destroy(id, false);
