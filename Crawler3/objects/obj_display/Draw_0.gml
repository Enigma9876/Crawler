draw_set_font(Font);
draw_self();

if(name == "arrow" || name == "arrow eq")
{
	draw_sprite_stretched(spr_arrow, 0, x - 62,y - 32,32,32);
	draw_text_transformed_color(x - 25, y - 32, "Damage: 25",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 17, "Standard arrow that\nattacks straight and\ndamages enemies",0.5,0.5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
}
else if(name == "arrow2" || name == "arrow2 eq")
{
	draw_sprite_stretched(spr_arrow2, 0, x - 62,y - 32,32,32);
	draw_text_transformed_color(x - 25, y - 32, "Teleports",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 17, "Teleporting arrow that\nwill get you out of\na pinch",0.5,0.5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
}
else if(name == "arrow3" || name == "arrow3 eq")
{
	draw_sprite_stretched(spr_arrow3Display, 0, x - 62,y - 32,32,32);
	draw_text_transformed_color(x - 25, y - 32, "Pierces",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 17, "Multi arrow that\nthat shoots in all\neight directions",0.5,0.5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
}
else if(name == "potion")
{
	draw_sprite_stretched(spr_potion, 0, x - 72,y - 42,43,42);
	draw_text_transformed_color(x - 25, y - 32, "Heal: 25",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 17, "Heals player so they're\nready to fight",0.5,0.5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
}
else if(name == "potion2")
{
	draw_sprite_stretched(spr_potion2, 0, x - 72,y - 42,43,42);
	draw_text_transformed_color(x - 25, y - 32, "Heal: 10",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 17, "Heals player a little,\nsome have descirbe it\nas an angle's kiss",0.5,0.5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
}
else if(name == "key")
{
	draw_sprite_stretched(spr_key1Display, 0, x - 72,y - 42,43,42);
	draw_text_transformed_color(x - 25, y - 32, "Unlocks Chest",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 17, "Key is shiny which\nattracts enemies to pick\nit up",0.5,0.5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
}
else if(name == "sword1" || name == "sword1 eq")
{
	draw_sprite_stretched(spr_sword1, 0, x - 62,y - 32,32,32);
	draw_text_transformed_color(x - 25, y - 32, "Damage: 15",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 20, "Crit: 5%",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 7, "Trusty sword that\nnever betrays you",0.5,0.5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
}
else if(name == "sword2" || name == "sword2 eq")
{
	draw_sprite_stretched(spr_sword2, 0, x - 62,y - 32,32,32);
	draw_text_transformed_color(x - 25, y - 32, "Damage: 14",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 20, "Crit: 35%",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 60, y, "Fastest sword in existance, more\ncritical chance than damage",0.5,0.5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
}
else if(name == "sword3" || name == "sword3 eq")
{
	draw_sprite_stretched(spr_sword3, 0, x - 62,y - 32,32,32);
	draw_text_transformed_color(x - 25, y - 38, "Damage: 13",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 27, "Health: 25",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 15, "Crit: 3%",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 60, y, "This axe was used by the first\never sage, containg his powers",0.5,0.5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
}
else if(name == "sword4" || name == "sword4 eq")
{
	draw_sprite_stretched(spr_sword4, 0, x - 62,y - 32,32,32);
	draw_text_transformed_color(x - 25, y - 38, "Damage: 22",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 27, "Health: -35",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 15, "Crit: 10%",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 60, y, "This sword is imbued with\nthe devil's strength",0.5,0.5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
}
else if(name == "armor1" || name == "armor1 eq")
{
	draw_sprite_stretched(spr_armor1, 0, x - 62,y - 32,32,32);
	draw_text_transformed_color(x - 25, y - 32, "Health: 15",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 17, "Rusty Armor, +15%\nchance of getting tetnis\nbut still works",0.5,0.5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
}
else if(name == "armor2" || name == "armor2 eq")
{
	draw_sprite_stretched(spr_armor2, 0, x - 62,y - 32,32,32);
	draw_text_transformed_color(x - 25, y - 32, "Health: 20",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 20, "Damage: 2",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 60, y, "Crafted out of the rare ore\ntitanium, is as sturdy as it gets",0.5,0.5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
}
else if(name == "armor3" || name == "armor3 eq")
{
	draw_sprite_stretched(spr_armor3, 0, x - 62,y - 32,32,32);
	draw_text_transformed_color(x - 25, y - 38, "Damage: 5",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 27, "Health: 10",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 15, "Crit: 15%",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 60, y, "This armor is forged from the\nfur of an alpha bear",0.5,0.5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
}
else if(name == "armor4" || name == "armor4 eq")
{
	draw_sprite_stretched(spr_armor4, 0, x - 62,y - 32,32,32);
	draw_text_transformed_color(x - 25, y - 38, "Damage: 2",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 27, "Health: 50",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 25, y - 15, "Crit: 3%",0.75,0.75,image_angle, c_white,c_white,c_white,c_white, image_alpha);
	draw_text_transformed_color(x - 60, y, "This armor used belonged to the\nchampion of Greece",0.5,0.5,image_angle, c_white,c_white,c_white,c_white, image_alpha);
}



