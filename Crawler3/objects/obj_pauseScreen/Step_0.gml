if(!cycle)
{
	Hb = instance_create_layer(x - 96,y,"Instances_pauseButtons", obj_homeButton);
		Rb = instance_create_layer(x,y,"Instances_pauseButtons", obj_restartButton);
		Mb = instance_create_layer(x + 96,y,"Instances_pauseButtons", obj_muteButton);
		
		Hb.image_xscale = 3;
		Hb.image_yscale = 3;
		Rb.image_xscale = 3;
		Rb.image_yscale = 3;
		Mb.image_xscale = 3;
		Mb.image_yscale = 3;
		cycle = true;
}
