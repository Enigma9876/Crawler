if(pastHp < global.hp)
{
	if(!global.mute)
						{
						audio_play_sound(snd_heal,0,false);
						}
	var damageHeal = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_damageHeal);
	damageHeal.text = string(global.hp - pastHp);
	damageHeal.objectToFollow = obj_player.id;
	obj_player.heal = true;
}
if(global.hp > global.hp_max)
{
	global.hp = global.hp_max;
}
if(global.hp < 0)
{
	global.hp = 0;
}


//draw health bar
healthIm.image_xscale = (global.hp/global.hp_max) * (healthBar_width - 137);
healthIm.image_yscale = 2;

border.image_speed = 4 - (global.hp/global.hp_max) * 3;

if(pastHp > global.hp)
{
	var damageDone = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_damageTick);
	damageDone.text = string(pastHp - global.hp);
	damageDone.objectToFollow = obj_player.id;
	var slash = instance_create_layer(obj_player.x, obj_player.y, "Instances_Global", obj_slashEffect);
	slash.objectToFollow = obj_player.id;
	
}
pastHp = global.hp;