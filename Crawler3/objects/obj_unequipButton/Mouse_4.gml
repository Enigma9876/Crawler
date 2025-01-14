if(collision_enabled)
{
	if(name == "arrow")
	{
		global.activeItem = undefined;
		array_set(obj_ui.spotsEquipped, 4, 0);
		for(var i = 0; i < global.arrowCount; i++)
		{
			ds_list_add(global.inventory, "arrow");
		}
	}
	else if(name == "arrow2")
	{
		global.activeItem = undefined;
		array_set(obj_ui.spotsEquipped, 4, 0);
		for(var i = 0; i < global.arrowCount2; i++)
		{
			ds_list_add(global.inventory, "arrow2");
		}
	}
	else if(name == "arrow3")
	{
		global.activeItem = undefined;
		array_set(obj_ui.spotsEquipped, 4, 0);
		for(var i = 0; i < global.arrowCount3; i++)
		{
			ds_list_add(global.inventory, "arrow3");
		}
	}
else if(name == "sword1")
{
    global.activeWeapon = undefined;
    array_set(obj_ui.spotsEquipped, 2, 0);
    ds_list_add(global.inventory, "sword1");
    global.sword1Count += 1; // Increment sword1 count
}
else if(name == "sword2")
{
    global.activeWeapon = undefined;
    array_set(obj_ui.spotsEquipped, 2, 0);
    ds_list_add(global.inventory, "sword2");
    global.sword2Count += 1; // Increment sword2 count
}
else if(name == "sword3")
{
    global.activeWeapon = undefined;
    array_set(obj_ui.spotsEquipped, 2, 0);
    ds_list_add(global.inventory, "sword3");
    global.sword3Count += 1; // Increment sword3 count
}
else if(name == "sword4")
{
    global.activeWeapon = undefined;
    array_set(obj_ui.spotsEquipped, 2, 0);
    ds_list_add(global.inventory, "sword4");
    global.sword4Count += 1; // Increment sword4 count
}
else if(name == "armor1")
{
    global.activeArmor = undefined;
    array_set(obj_ui.spotsEquipped, 3, 0);
    ds_list_add(global.inventory, "armor1");
    global.armor1Count += 1; // Increment armor1 count
}
else if(name == "armor2")
{
    global.activeArmor = undefined;
    array_set(obj_ui.spotsEquipped, 3, 0);
    ds_list_add(global.inventory, "armor2");
    global.armor2Count += 1; // Increment armor2 count
}
else if(name == "armor3")
{
    global.activeArmor = undefined;
    array_set(obj_ui.spotsEquipped, 3, 0);
    ds_list_add(global.inventory, "armor3");
    global.armor3Count += 1; // Increment armor3 count
}
else if(name == "armor4")
{
    global.activeArmor = undefined;
    array_set(obj_ui.spotsEquipped, 3, 0);
    ds_list_add(global.inventory, "armor4");
    global.armor4Count += 1; // Increment armor4 count
}
else if(name == "ring1")
{
    if(numberBox == 0)
    {
        global.activeRing1 = undefined;
        array_set(obj_ui.spotsEquipped, 0, 0);
        ds_list_add(global.inventory, "ring1");
        global.ring1Count += 1; // Increment ring1 count
    }
    else if(numberBox == 1)
    {
        global.activeRing2 = undefined;
        array_set(obj_ui.spotsEquipped, 1, 0);
        ds_list_add(global.inventory, "ring1");
        global.ring1Count += 1; // Increment ring1 count
    }
}
else if(name == "ring2")
{
    if(numberBox == 0)
    {
        global.activeRing1 = undefined;
        array_set(obj_ui.spotsEquipped, 0, 0);
        ds_list_add(global.inventory, "ring2");
        global.ring2Count += 1; // Increment ring2 count
    }
    else if(numberBox == 1)
    {
        global.activeRing2 = undefined;
        array_set(obj_ui.spotsEquipped, 1, 0);
        ds_list_add(global.inventory, "ring2");
        global.ring2Count += 1; // Increment ring2 count
    }
}
else if(name == "ring3")
{
    if(numberBox == 0)
    {
        global.activeRing1 = undefined;
        array_set(obj_ui.spotsEquipped, 0, 0);
        ds_list_add(global.inventory, "ring3");
        global.ring3Count += 1; // Increment ring3 count
    }
    else if(numberBox == 1)
    {
        global.activeRing2 = undefined;
        array_set(obj_ui.spotsEquipped, 1, 0);
        ds_list_add(global.inventory, "ring3");
        global.ring3Count += 1; // Increment ring3 count
    }
}
else if(name == "ring4")
{
    if(numberBox == 0)
    {
        global.activeRing1 = undefined;
        array_set(obj_ui.spotsEquipped, 0, 0);
        ds_list_add(global.inventory, "ring4");
        global.ring4Count += 1; // Increment ring4 count
    }
    else if(numberBox == 1)
    {
        global.activeRing2 = undefined;
        array_set(obj_ui.spotsEquipped, 1, 0);
        ds_list_add(global.inventory, "ring4");
        global.ring4Count += 1; // Increment ring4 count
    }
}
else if(name == "ring5")
{
    if(numberBox == 0)
    {
        global.activeRing1 = undefined;
        array_set(obj_ui.spotsEquipped, 0, 0);
        ds_list_add(global.inventory, "ring5");
        global.ring5Count += 1; // Increment ring5 count
    }
    else if(numberBox == 1)
    {
        global.activeRing2 = undefined;
        array_set(obj_ui.spotsEquipped, 1, 0);
        ds_list_add(global.inventory, "ring5");
        global.ring5Count += 1; // Increment ring5 count
    }
}
	instance_destroy(id, false);
}


