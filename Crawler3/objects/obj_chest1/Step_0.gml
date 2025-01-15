if(open)
{
		open = false;
		sprite_index = spr_chest1Open;
		image_index = 0;
}

if(image_index > 3 && sprite_index == spr_chest1Open)
{
					if(!global.mute)
			{
				audio_play_sound(snd_chestOpen,0,false);
			}
    var rand = irandom_range(1, 100);
    if(rand <= 5)
    {
        instance_create_layer(x - 16, y - 16, "Instances_Enemies", obj_potion1);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 7;
    }
    else if(rand == 6)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_sword2);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 11)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_sword3);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 16)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_sword4);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 26)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_armor2);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 28)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_armor3);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 30)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_armor4);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 40)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_ring1);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 50)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_ring2);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 55)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_ring3);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 60)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_ring4);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 62)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_ring5);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 81)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_arrow2);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 100)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_arrow3);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    
    // Repeated random number generation for second set of items
    var rand = irandom_range(1, 100);
    if(rand <= 5)
    {
        instance_create_layer(x - 16, y - 16, "Instances_Enemies", obj_potion2);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 7;
    }
    else if(rand == 6)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_sword2);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 11)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_sword3);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 16)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_sword4);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 26)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_armor2);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 28)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_armor3);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 30)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_armor4);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 40)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_ring1);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 50)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_ring2);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 55)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_ring3);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 60)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_ring4);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 62)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_ring5);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 81)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_arrow2);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    else if(rand <= 100)
    {
        instance_create_layer(x, y, "Instances_Enemies", obj_arrow3);
        global.gridPow[# ((x - (room_width div 4)) div 32), ((y - (room_height div 4)) div 32)] = 6;
    }
    
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

