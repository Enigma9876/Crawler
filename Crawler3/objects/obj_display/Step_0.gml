if(name == "potion" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_drinkButton);
	b1.image_xscale = 0.35;
	b1.image_yscale = 0.35;
	b1.potionType = "potion";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "potion";
	getName = true;
}
else if(name == "potion2" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_drinkButton);
	b1.image_xscale = 0.35;
	b1.image_yscale = 0.35;
	b1.potionType = "potion2";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "small potion";
	getName = true;
}
else if(name == "arrow" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "arrow";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "arrow";
	getName = true;
}
else if(name == "arrow eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "arrow";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "arrow";
	getName = true;
}
else if(name == "arrow2" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "arrow2";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "teleport arrow";
	getName = true;
}
else if(name == "arrow2 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "arrow2";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "teleport arrow";
	getName = true;
}
else if(name == "arrow3 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "arrow3";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "multi arrow";
	getName = true;
}
else if(name == "arrow3" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "arrow3";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "multi arrow";
	getName = true;
}
else if(name == "key" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_discardButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "golden key";
	getName = true;
	oneButton = true
}
else if(name == "sword1" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "sword1";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "sword";
	getName = true;
}
else if(name == "sword1 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "sword1";
	oneButton = true;
	getName = true;
}
else if(name == "sword2" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "sword2";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "dagger";
	getName = true;
}
else if(name == "sword2 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "sword2";
	oneButton = true;
	getName = true;
}
else if(name == "sword3" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "sword3";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "earth axe";
	getName = true;
}
else if(name == "sword3 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "sword3";
	oneButton = true;
	getName = true;
}
else if(name == "sword4" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "sword4";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "devil sword";
	getName = true;
}
else if(name == "sword4 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "sword4";
	oneButton = true;
	getName = true;
}
else if(name == "armor1" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "armor1";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "iron armor";
	getName = true;
}
else if(name == "armor1 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "armor1";
	oneButton = true;
	getName = true;
}
else if(name == "armor2" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "armor2";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "aqua armor";
	getName = true;
}
else if(name == "armor2 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "armor2";
	oneButton = true;
	getName = true;
}
else if(name == "armor3" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "armor3";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "beserk armor";
	getName = true;
}
else if(name == "armor3 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "armor3";
	oneButton = true;
	getName = true;
}
else if(name == "armor4" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "armor4";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "champion armor";
	getName = true;
}
else if(name == "armor4 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "armor4";
	oneButton = true;
	getName = true;
}
else if(name == "ring1" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "ring1";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "ring";
	getName = true;
}
else if(name == "ring1 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "ring1";
	oneButton = true;
	getName = true;
	b1.numberBox = numberBox;
}
else if(name == "ring2" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "ring2";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "ruby ring";
	getName = true;
}
else if(name == "ring2 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "ring2";
	oneButton = true;
	getName = true;
	b1.numberBox = numberBox;
}
else if(name == "ring3" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "ring3";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "slash ring";
	getName = true;
}
else if(name == "ring3 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "ring3";
	oneButton = true;
	getName = true;
	b1.numberBox = numberBox;
}
else if(name == "ring4" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "ring4";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "shield ring";
	getName = true;
}
else if(name == "ring4 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "ring4";
	oneButton = true;
	getName = true;
	b1.numberBox = numberBox;
}
else if(name == "ring5" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_EquipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "ring5";
	b2 = instance_create_layer(x + 9,y + 23, "Instances_signButtons", obj_discardButton);
	b2.image_xscale = 0.92;
	b2.image_yscale = 0.92;
	b2.name = "multi orbs";
	getName = true;
}
else if(name == "ring5 eq" && !getName)
{
	b1 = instance_create_layer(x - 59,y + 22, "Instances_signButtons", obj_unequipButton);
	b1.image_xscale = 0.92;
	b1.image_yscale = 0.92;
	b1.name = "ring5";
	b1.numberBox = numberBox;
	oneButton = true;
	getName = true;
}

if(!oneButton && getName && obj_ui.inventoryOpen)
{
	b1.visible = true;
	b1.collision_enabled = true;
	b2.visible = true;
	b2.collision_enabled = true;
}
else if(!oneButton && getName && !obj_ui.inventoryOpen)
{
	b1.visible = false;
	b1.collision_enabled = false;
	b2.visible = false;
	b2.collision_enabled = false;
}

if(oneButton && getName && obj_ui.inventoryOpen)
{
	b1.visible = true;
	b1.collision_enabled = true;
}
else if(oneButton && getName && !obj_ui.inventoryOpen)
{
	b1.visible = false;
	b1.collision_enabled = false;
}