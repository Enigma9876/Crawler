if(keyboard_check_pressed(ord("Q")))
{
	global.hp -= 5;
}

if(global.hp > global.hp_max)
{
	global.hp = global.hp_max;
}
//draw health bar
healthIm.image_xscale = (global.hp/global.hp_max) * (healthBar_width - 137);
healthIm.image_yscale = 2;

border.image_speed = 4 - (global.hp/global.hp_max) * 3;