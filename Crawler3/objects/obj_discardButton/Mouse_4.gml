if(collision_enabled)
{
	if((name == "arrow" && global.arrowCount <= 0) || (name == "teleport arrow" && global.arrowCount2 <= 0) || (name == "multi arrow" && global.arrowCount3 <= 0))
	{
		
	}
	else
	{
		var discardP = instance_create_layer(obj_player.x,obj_player.y, "Instances_Global", obj_ItemPickup);
		discardP.text =  "-1 " + string(name);
		discardP.objectToFollow = obj_player;
	}

	if(name == "potion")
	{
		global.potionCount1--;
		var index = ds_list_find_index(global.inventory, "potion");
	
		if (index != -1)
		{
			ds_list_delete(global.inventory, index);
		}
	
	}
	else if(name == "small potion")
	{
		global.potionCount2--;
		var index = ds_list_find_index(global.inventory, "potion2");
	
		if (index != -1)
		{
			ds_list_delete(global.inventory, index);
		}
	
	}
	else if(name == "arrow" && global.arrowCount > 0)
	{
		global.arrowCount--;
		var index = ds_list_find_index(global.inventory, "arrow");
	
		if (index != -1)
		{
			ds_list_delete(global.inventory, index);
		}
	
	}
	else if(name == "teleport arrow" && global.arrowCount2 > 0)
	{
		global.arrowCount2--;
		var index = ds_list_find_index(global.inventory, "arrow2");
	
		if (index != -1)
		{
			ds_list_delete(global.inventory, index);
		}
	
	}
	else if(name == "multi arrow" && global.arrowCount3 > 0)
	{
		global.arrowCount3--;
		var index = ds_list_find_index(global.inventory, "arrow3");
	
		if (index != -1)
		{
			ds_list_delete(global.inventory, index);
		}
	
	}
	else if(name == "golden key" && global.keyCount > 0)
	{
		global.keyCount--;
		var index = ds_list_find_index(global.inventory, "key");
	
		if (index != -1)
		{
			ds_list_delete(global.inventory, index);
		}
	
	}
	else if(name == "sword" && global.sword1Count > 0)
	{
		global.sword1Count--;
		var index = ds_list_find_index(global.inventory, "sword1");
	
		if (index != -1)
		{
			ds_list_delete(global.inventory, index);
		}
	
	}
	else if(name == "dagger" && global.sword2Count > 0)
	{
		global.sword2Count--;
		var index = ds_list_find_index(global.inventory, "sword2");
	
		if (index != -1)
		{
			ds_list_delete(global.inventory, index);
		}
	
	}
	else if(name == "earth axe" && global.sword3Count > 0)
	{
		global.sword3Count--;
		var index = ds_list_find_index(global.inventory, "sword3");
	
		if (index != -1)
		{
			ds_list_delete(global.inventory, index);
		}
	
	}
	else if(name == "devil sword" && global.sword4Count > 0)
	{
		global.sword4Count--;
		var index = ds_list_find_index(global.inventory, "sword4");
	
		if (index != -1)
		{
			ds_list_delete(global.inventory, index);
		}
	
	}
	else if(name == "iron armor" && global.armor1Count > 0)
	{
		global.armor1Count--;
		var index = ds_list_find_index(global.inventory, "armor1");
	
		if (index != -1)
		{
			ds_list_delete(global.inventory, index);
		}
	
	}
	else if(name == "aqua armor" && global.armor2Count > 0)
	{
		global.armor2Count--;
		var index = ds_list_find_index(global.inventory, "armor2");
	
		if (index != -1)
		{
			ds_list_delete(global.inventory, index);
		}
	
	}
	else if(name == "beserk armor" && global.armor3Count > 0)
	{
		global.armor3Count--;
		var index = ds_list_find_index(global.inventory, "armor3");
	
		if (index != -1)
		{
			ds_list_delete(global.inventory, index);
		}
	
	}
	else if(name == "champion armor" && global.armor4Count > 0)
	{
		global.armor4Count--;
		var index = ds_list_find_index(global.inventory, "armor4");
	
		if (index != -1)
		{
			ds_list_delete(global.inventory, index);
		}
	
	}
	instance_destroy(id, false);
}


