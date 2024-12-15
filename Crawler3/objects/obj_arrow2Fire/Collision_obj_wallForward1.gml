var colliding_id = other.id;
if(colliding_id != noone)
{
	var w = (colliding_id.x - (room_width div 4)) div 32;
	var h = (colliding_id.y - (room_height div 4)) div 32;
	show_debug_message(colliding_id.x);
		if(vspeed != 0)
		{
			var down = global.gridOrg[# w, h - 1];
			if(down == 0)
			{
				obj_player.x = colliding_id.x - 16;
				obj_player.y = colliding_id.y - 16;
			}
		}

	global.turn += 1;
}



instance_destroy(id, false);
