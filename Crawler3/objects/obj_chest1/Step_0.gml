if(open)
{
		open = false;
		sprite_index = spr_chest1Open;
		image_index = 0;
}

if(image_index > 3 && sprite_index == spr_chest1Open)
{
	instance_create_layer(x,y,"Instances_Enemies", obj_arrow3);
	global.gridPow[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 6;
	instance_create_layer(x,y,"Instances_Enemies", obj_arrow2);
	global.gridPow[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 6;
	global.turn += 1;
	instance_destroy(id, false);
}




if(sprite_index == spr_chest1)
{
	isIdle = true;
}
else
{
	isIdle = false;
}

