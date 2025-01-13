for(var i = 0; i < ds_list_size(global.inventory); i++)
{
	//show_debug_message(global.inventory[| i]);
}
	var bonusCrit = 0;
	var bonusHealth = 100;
	var bonusDamage = 0;
	if(array_get(obj_ui.spotsEquipped,2) == "sword1")
	{
		bonusDamage += 15;
		bonusCrit += 5;
	}
	else if(array_get(obj_ui.spotsEquipped,2) == "sword2")
	{
		bonusDamage += 14;
		bonusCrit += 35;
	}
	else if(array_get(obj_ui.spotsEquipped,2) == "sword3")
	{
		bonusDamage += 13;
		bonusCrit += 3;
		bonusHealth += 25;
	}
	else if(array_get(obj_ui.spotsEquipped,2) == "sword4")
	{
		bonusDamage += 22;
		bonusCrit += 10;
		bonusHealth -= 35;
	}
	else
	{
		bonusDamage += 1;
		bonusCrit += 0;
	}
	
	if(array_get(obj_ui.spotsEquipped,3) == "armor1")
	{
		bonusHealth += 15;
	}
	else if(array_get(obj_ui.spotsEquipped,3) == "armor2")
	{
		bonusHealth += 20;
		bonusDamage += 2;
	}
	else if(array_get(obj_ui.spotsEquipped,3) == "armor3")
	{
		bonusDamage += 5;
		bonusHealth += 10;
		bonusCrit += 15;
	}
	else if(array_get(obj_ui.spotsEquipped,3) == "armor4")
	{
		bonusCrit += 3;
		bonusHealth += 50;
		bonusDamage += 2;
		
	}

	global.crit = bonusCrit;
	global.hp_max = bonusHealth;
	global.damage = bonusDamage;

