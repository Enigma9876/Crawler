function destroy_room()
{
	
	var toAdd = layer_get_all_elements("Instances_FogOfWar");
	for(var i = 0; i < array_length(toAdd); i++) 
	{
		if(toAdd[i] != noone)
		{
			var inst = layer_instance_get_instance(toAdd[i]);
			instance_destroy(inst.id, false);
		}
	}
	toAdd = [];
	
	var toAdd = layer_get_all_elements("Instances_projectiles");
	for(var i = 0; i < array_length(toAdd); i++) 
	{
		if(toAdd[i] != noone)
		{
			var inst = layer_instance_get_instance(toAdd[i]);
			instance_destroy(inst.id, false);
		}
	}
	toAdd = [];
	
	var toAdd = layer_get_all_elements("Instances_player");
	for(var i = 0; i < array_length(toAdd); i++) 
	{
		if(toAdd[i] != noone)
		{
			var inst = layer_instance_get_instance(toAdd[i]);
			instance_destroy(inst.id, false);
		}
	}
	toAdd = [];
	
	var toAdd = layer_get_all_elements("Instances_Enemies");
	for(var i = 0; i < array_length(toAdd); i++) 
	{
		if(toAdd[i] != noone)
		{
			var inst = layer_instance_get_instance(toAdd[i]);
			instance_destroy(inst.id, false);
		}
	}
	toAdd = [];
	
	var toAdd = layer_get_all_elements("Instances_Objects");
	for(var i = 0; i < array_length(toAdd); i++) 
	{
		if(toAdd[i] != noone)
		{
			var inst = layer_instance_get_instance(toAdd[i]);
			instance_destroy(inst.id, false);
		}
	}
	toAdd = [];
	
	var toAdd = layer_get_all_elements("Instances_WallandFloor");
	for(var i = 0; i < array_length(toAdd); i++) 
	{
		if(toAdd[i] != noone)
		{
			var inst = layer_instance_get_instance(toAdd[i]);
			instance_destroy(inst.id, false);
		}
	}
	toAdd = [];
	
	var toAdd = layer_get_all_elements("Instances_Background");
	for(var i = 0; i < array_length(toAdd); i++) 
	{
		if(toAdd[i] != noone)
		{
			var inst = layer_instance_get_instance(toAdd[i]);
			instance_destroy(inst.id, false);
		}
	}
	toAdd = [];
	
	//create new room
	create_rooms(irandom_range(2,3),irandom_range(2,3));
	
}