var colliding_id = instance_place(x, y, obj_box1);
if (colliding_id != noone) 
{
	colliding_id.destroy = true;
	var w = ((colliding_id.x - (room_width div 4)) div 32);
	var h = ((colliding_id.y - (room_height div 4)) div 32);
	global.grid[# w, h] = 0;
}
instance_destroy(id, false);

