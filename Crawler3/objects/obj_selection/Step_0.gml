x = mouse_x - (mouse_x % 32) + 12;
y = mouse_y - (mouse_y % 32) + 12;

if (place_meeting(x, y, obj_Fog))
{
	var fog = instance_place(x, y, obj_Fog);
	if(fog.image_index == 0 || fog.image_index == 1 || fog.image_index == 2)
	{
		visible = true;
	}
	else
	{
		visible = false;
	}
}
else
{
	visible = false;
}

if(!instance_exists(obj_player) || obj_player.death == true || global.pause)
{
	visible = false;
}
if(visible == true)
{
	var w = ((x - (room_width div 4)) div 32);
	var h = ((y - (room_height div 4)) div 32);
	if(global.grid[# w, h] != 11 && global.gridOrg[# w, h] != 5 && mouse_check_button_pressed(mb_left) && !global.shootarrow && (global.gridPow[# w,h] == 6 || global.gridPow[# w,h] == 7 || global.gridPow[# w,h] == 12 || global.gridPow[# w,h] == 2))
	{
		var rand = irandom_range(1,2);
		if(rand == 1)
		{
			if(!global.mute)
			{
				audio_play_sound(snd_itemPickup,0,false);
			}
		}
		if(rand == 2)
		{
			if(!global.mute)
			{
				audio_play_sound(snd_itemPickUp2,0,false);
			}
		}
		var add = true;
		var instances = ds_list_create();
					var usedInstances = ds_list_create();
					for(var h2 = 16; h2 >= -16; h2--)
					{
						for(var w2 = 16; w2 >= -16; w2--)
						{
							var n = collision_point_list(x + w2, y + h2, obj_arrow, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_arrow2, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_arrow3, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_potion2, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_potion1, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_key, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_sword1, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_sword2, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_sword3, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_sword4, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_armor1, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_armor2, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_armor3, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_armor4, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_ring1, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_ring2, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_ring3, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_ring4, false, true, instances, false);
							var n = collision_point_list(x + w2, y + h2, obj_ring5, false, true, instances, false);
						}
					}
						var i = 0;
						var otherItem = false;
						repeat ds_list_size(instances)
						{
							if(add)
							{
								if(object_get_name(instances[| i].object_index) == "obj_arrow")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 arrow";
									text.rarity = "common";
									global.arrowCount ++;
									ds_list_add(global.inventory, "arrow");
								}
								if(object_get_name(instances[| i].object_index) == "obj_arrow2")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 multi arrow";
									text.rarity = "epic";
									global.arrowCount2 ++;
									ds_list_add(global.inventory, "arrow2");
								}
								if(object_get_name(instances[| i].object_index) == "obj_arrow3")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 teleport arrow";
									text.rarity = "epic";
									global.arrowCount3 ++;
									ds_list_add(global.inventory, "arrow3");
								}
								if(object_get_name(instances[| i].object_index) == "obj_key")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 golden key";
									text.rarity = "ledgendary";
									global.keyCount ++;
									ds_list_add(global.inventory, "key");
								}
								if(object_get_name(instances[| i].object_index) == "obj_potion2")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 small potion";
									text.rarity = "common";
									global.potionCount2 ++;
									ds_list_add(global.inventory, "potion2");
								}
								if(object_get_name(instances[| i].object_index) == "obj_potion1")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 potion";
									text.rarity = "epic";
									global.potionCount1 ++;
									ds_list_add(global.inventory, "potion");
								}
								if(object_get_name(instances[| i].object_index) == "obj_sword1")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 sword";
									text.rarity = "common";
									global.sword1Count ++;
									ds_list_add(global.inventory, "sword1");
								}
								if(object_get_name(instances[| i].object_index) == "obj_sword2")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 dagger";
									text.rarity = "ledgendary";
									global.sword2Count ++;
									ds_list_add(global.inventory, "sword2");
								}
								if(object_get_name(instances[| i].object_index) == "obj_sword3")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 earth axe";
									text.rarity = "epic";
									global.sword3Count ++;
									ds_list_add(global.inventory, "sword3");
								}
								if(object_get_name(instances[| i].object_index) == "obj_sword4")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 devil sword";
									text.rarity = "epic";
									global.sword4Count ++;
									ds_list_add(global.inventory, "sword4");
								}
								if(object_get_name(instances[| i].object_index) == "obj_armor1")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 iron armor";
									text.rarity = "common";
									global.armor1Count ++;
									ds_list_add(global.inventory, "armor1");
								}
								if(object_get_name(instances[| i].object_index) == "obj_armor2")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 aqua armor";
									text.rarity = "epic";
									global.armor2Count ++;
									ds_list_add(global.inventory, "armor2");
								}
								if(object_get_name(instances[| i].object_index) == "obj_armor3")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 beserk armor";
									text.rarity = "ledgendary";
									global.armor3Count ++;
									ds_list_add(global.inventory, "armor3");
								}
								if(object_get_name(instances[| i].object_index) == "obj_armor4")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 champion armor";
									text.rarity = "ledgendary";
									global.armor4Count ++;
									ds_list_add(global.inventory, "armor4");
								}
								if(object_get_name(instances[| i].object_index) == "obj_ring1")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 ring";
									text.rarity = "common";
									global.ring1Count ++;
									ds_list_add(global.inventory, "ring1");
								}
								if(object_get_name(instances[| i].object_index) == "obj_ring2")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 ruby ring";
									text.rarity = "common";
									global.ring2Count ++;
									ds_list_add(global.inventory, "ring2");
								}
								if(object_get_name(instances[| i].object_index) == "obj_ring3")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 slash ruin";
									text.rarity = "epic";
									global.ring3Count ++;
									ds_list_add(global.inventory, "ring3");
								}
								if(object_get_name(instances[| i].object_index) == "obj_ring4")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 shield ring";
									text.rarity = "epic";
									global.ring4Count ++;
									ds_list_add(global.inventory, "ring4");
								}
								if(object_get_name(instances[| i].object_index) == "obj_ring5")
								{
									var text = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_ItemPickup);
									text.objectToFollow = obj_player;
									text.text = "+1 multi orbs";
									text.rarity = "ledgendary";
									global.ring5Count ++;
									ds_list_add(global.inventory, "ring5");
								}
									
								ds_list_add(usedInstances, instances[| i]);
								instance_destroy(instances[| i]);
								add = false;
							}
							
							for(var j = 0; j < ds_list_size(usedInstances); j++)
							{
								if(usedInstances[| j] != instances[| i])
								{
									otherItem = true;
								}
							}
							i++
						}	
						ds_list_destroy(instances);
						ds_list_destroy(usedInstances);
						
						if(otherItem)
							global.gridPow[# w,h] = 6;
						else
							global.gridPow[# w,h] = 0;
					
						//global.turn += 1;
						//obj_player.xprevious = 0;
	}
	
	//close door
	
			if(mouse_check_button_pressed(mb_left) && global.canMove && global.gridOrg[# w, h] != 4 && global.gridOrg[# w, h] != 5 && global.grid[# w, h] == 1 && global.gridPow[# w,h] != 6 && global.gridPow[# w,h] != 7 && global.gridPow[# w,h] != 12 && global.gridPow[# w,h] != 2)
			{
				var left = global.grid[# w - 1,h];
				var right = global.grid[# w + 1,h];
				var up = global.grid[# w,h - 1];
				var down = global.grid[# w,h + 1];
				//set to close door
				global.grid[# w, h] = -1;
				
				//change the object
				if((left == -2 || left == 4) && (right == -2 || right == 4) && (up == -1 || up == 0 || up == 4) && (down == 0 || down == 4))
				{
					
					//delete door
					var instances = ds_list_create();
					var n = collision_point_list(x, y, obj_doorclose1, false, true, instances, false);
					var i = 0;
					repeat ds_list_size(instances)
					{
						instance_destroy(instances[| i]);
					    i++;
					}
					ds_list_destroy(instances);
				
					//change door
					if((left == -2 || left == 4) && (right == -2 || right == 4) && (up == -1 || up == 0 || up == 4) && (down == 0 || down == 4))
					{
						var door = instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_Door1);
						door.xprevious = 0;
					}
					else if((left == 0 || left == 4) && (right == -1 || right == 0 || right == 4) && (up == -2 || up == 4) && (down == -2 || down == 4))
					{ 
						var door = instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_Door2);
						door.xprevious = 0;
					}
				}
				else if((left == 0 || left == 4) && (right == -1 || right == 0 || right == 4) && (up == -2 || up == 4) && (down == -2 || down == 4))
				{
					global.turn += 1;
					var instances = ds_list_create();
					var n = collision_point_list(x, y, obj_doorclose2, false, true, instances, false);
					var i = 0;
					repeat ds_list_size(instances) 
					{
						instance_destroy(instances[| i]);
						i++
					}
					ds_list_destroy(instances);
					
					//change door
					if((left == -2 || left == 4) && (right == -2 || right == 4) && (up == -1 || up == 0 || up == 4) && (down == 0 || down == 4))
					{
						var door = instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_Door1);
						door.xprevious = 0;
					}
					else if((left == 0 || left == 4) && (right == -1 || right == 0 || right == 4) && (up == -2 || up == 4) && (down == -2 || down == 4))
					{ 
						var door = instance_create_layer((w * 32) + (room_width div 4), (h * 32) + (room_height div 4), "Instances_WallandFloor", obj_Door2);
						door.xprevious = 0;
					}
				}
				global.turn += 1;
				//update if any changes
				change_fog();
			}
}

			var w = ((x - (room_width div 4)) div 32);
	var h = ((y - (room_height div 4)) div 32);	
	if(global.grid[# w, h] == 11 && sign1 == undefined)
	{
		var instances = ds_list_create();
		sign1 = instance_create_layer(obj_player.x, obj_player.y - 64,"Instances_SignPopup", obj_display);
		sign1.image_xscale = 7;
		sign1.image_yscale = 7;
	
	}
	else if(instance_exists(sign1) && global.grid[# w, h] != 11)
	{
		instance_destroy(sign1.id,false)
		sign1 = undefined;
	}
	if(instance_exists(sign1) && sign1 != undefined)
	{
		sign1.x = obj_player.x;
		sign1.y = obj_player.y - 64;
	}
	
	
	
	
	

			
