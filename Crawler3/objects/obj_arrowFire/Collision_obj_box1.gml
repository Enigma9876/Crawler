var colliding_id = instance_place(x, y, obj_box1);
if (colliding_id != noone) 
{
	colliding_id.destroy = true;
	instance_destroy(id, false);
}
instance_destroy(id, false);

