if(obj_player.sprite_index != spr_playerShoot && obj_player.sprite_index != spr_playerAttack)
{
	global.arrowCount++;
	global.gridPow[# ((x - 16 - (room_width div 4)) div 32), ((y - 16 - (room_height div 4)) div 32)] = 0;
	instance_destroy(id, false);
}
