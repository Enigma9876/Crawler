//healthBar
global.hp_max = 100;
global.hp = global.hp_max;
healthBar_width = 250;
healthBar_height = 50;
healthBar_x = 0;
healthBar_y = 0;

border = instance_create_layer(healthBar_x, healthBar_y, "Instances_Global", obj_healthBarBorder);
border.image_xscale = 2;
border.image_yscale = 2;

healthIm = instance_create_layer(healthBar_x, healthBar_y, "Instances_Global", obj_healthIm);
healthIm.x = 38;
healthIm.y = 16;
