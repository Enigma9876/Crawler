//spawn in buttons
var b1 = instance_create_layer(x - 64,y + 64,"Instances_DeathButtons", obj_homeButton);
var b2 = instance_create_layer(x + 64,y + 64,"Instances_DeathButtons", obj_restartButton);

b1.image_xscale = 3;
b1.image_yscale = 3;
b2.image_xscale = 3;
b2.image_yscale = 3;