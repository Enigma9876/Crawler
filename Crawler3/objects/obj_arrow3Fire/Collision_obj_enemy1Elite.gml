var colliding_id = instance_place(x, y, obj_enemy1Elite);
if (colliding_id != noone) 
{
	colliding_id.hp -= 2;
	colliding_id.damaged = true;
}