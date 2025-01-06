attack = false;
moveCounter = 0;
animation = false;

w = (x - (room_width div 4)) div 32;
h = (y - (room_height div 4)) div 32;
canCheck = true;

if(global.levelCount % 2 == 0)
{
	sprite_index = spr_trap1Dup;
}