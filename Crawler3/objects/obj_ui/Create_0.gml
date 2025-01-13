inventoryOpen = false;
spotsTaken = ds_grid_create(5,4); //tracks what things are in what places in the inventory
spotsEquipped = array_create(5, string);

//selection boxes
for(var h = 0; h < ds_grid_height(spotsTaken); h++)
{
	for(var w = 0; w < ds_grid_width(spotsTaken); w++)
	{
		var box = instance_create_layer(7 + (w*27),81 + (h*26), "Instances_Inventory", obj_selectbox);
		box.index_x = w;
		box.index_y = h;
	}
}

for(var i = 0; i < array_length(spotsEquipped); i++)
{
	if(i == 0)
		var box = instance_create_layer(12, 253, "Instances_Inventory", obj_selectbox);
	else if(i == 1)
		var box = instance_create_layer(12,283, "Instances_Inventory", obj_selectbox);
	else if(i == 2)
		var box = instance_create_layer(111,253, "Instances_Inventory", obj_selectbox);
	else if(i == 3)
		var box = instance_create_layer(111,283, "Instances_Inventory", obj_selectbox);
	else if(i == 4)
		var box = instance_create_layer(63,310, "Instances_Inventory", obj_selectbox);
	
	box.index_x = i;
	box.index_y = undefined;
}

array_set(spotsEquipped, 2, "sword1");










//inventory
inventoryB = instance_create_layer(0,350, "Instances_Global", obj_inventoryButton);

inventory = instance_create_layer(0,65, "Instances_inventory", obj_inventory);

//arrow 1
arrow = instance_create_layer(0,0, "Instances_Global", obj_arrow);
arrow.visible = false;
arrow.mask_index = noone;

//arrow 2
arrow2 = instance_create_layer(0,0, "Instances_Global", obj_arrow2);
arrow2.visible = false;
arrow2.mask_index = noone;

//arrow 3
arrow3 = instance_create_layer(0,0, "Instances_Global", obj_arrow3);
arrow3.visible = false;
arrow3.mask_index = noone;

//potion 1
potion = instance_create_layer(0,0, "Instances_Global", obj_potion1);
potion.visible = false;
potion.mask_index = noone;
potion.image_speed = 0;

//potion 2
potion2 = instance_create_layer(0,0, "Instances_Global", obj_potion2);
potion2.visible = false;
potion2.mask_index = noone;
potion2.image_speed = 0;

//golden key
key = instance_create_layer(0,0, "Instances_Global", obj_keyDisplay);
key.visible = false;
key.mask_index = noone;
key.image_speed = 0;

sword1 = instance_create_layer(0,0, "Instances_Global", obj_sword1);
sword1.visible = false;
sword1.mask_index = noone;
sword1.image_speed = 0;

sword2 = instance_create_layer(0,0, "Instances_Global", obj_sword2);
sword2.visible = false;
sword2.mask_index = noone;
sword2.image_speed = 0;

sword3 = instance_create_layer(0,0, "Instances_Global", obj_sword3);
sword3.visible = false;
sword3.mask_index = noone;
sword3.image_speed = 0;

sword4 = instance_create_layer(0,0, "Instances_Global", obj_sword4);
sword4.visible = false;
sword4.mask_index = noone;
sword4.image_speed = 0;

armor1 = instance_create_layer(0,0, "Instances_Global", obj_armor1);
armor1.visible = false;
armor1.mask_index = noone;
armor1.image_speed = 0;

armor2 = instance_create_layer(0,0, "Instances_Global", obj_armor2);
armor2.visible = false;
armor2.mask_index = noone;
armor2.image_speed = 0;

armor3 = instance_create_layer(0,0, "Instances_Global", obj_armor3);
armor3.visible = false;
armor3.mask_index = noone;
armor3.image_speed = 0;

armor4 = instance_create_layer(0,0, "Instances_Global", obj_armor4);
armor4.visible = false;
armor4.mask_index = noone;
armor4.image_speed = 0;

ring1 = instance_create_layer(0,0, "Instances_Global", obj_ring1);
ring1.visible = false;
ring1.mask_index = noone;
ring1.image_speed = 0;

ring2 = instance_create_layer(0,0, "Instances_Global", obj_ring2);
ring2.visible = false;
ring2.mask_index = noone;
ring2.image_speed = 0;

ring3 = instance_create_layer(0,0, "Instances_Global", obj_ring3);
ring3.visible = false;
ring3.mask_index = noone;
ring3.image_speed = 0;

ring4 = instance_create_layer(0,0, "Instances_Global", obj_ring4);
ring4.visible = false;
ring4.mask_index = noone;
ring4.image_speed = 0;

ring5 = instance_create_layer(0,0, "Instances_Global", obj_ring5);
ring5.visible = false;
ring5.mask_index = noone;
ring5.image_speed = 0;


