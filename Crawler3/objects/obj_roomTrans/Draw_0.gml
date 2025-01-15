draw_set_font(Font);
draw_self();
if(instance_exists(obj_player))
	draw_text_transformed_color(obj_player.x - 100, obj_player.y - 75, "Welcome\nto Room: " + string(global.levelCount),3,3,image_angle, c_white,c_white,c_white,c_white, image_alpha);
