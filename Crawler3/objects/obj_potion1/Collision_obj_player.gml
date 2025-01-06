if(obj_player.sprite_index != spr_playerShoot && obj_player.sprite_index != spr_playerAttack)
{
	instance_destroy(id, false);
	global.hp += 25;
}