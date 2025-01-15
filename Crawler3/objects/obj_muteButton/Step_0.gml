// Check if the mouse is touching the button
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    if (!global.mute) {
        image_index = 1; // Mute is true and mouse is touching
    } else {
        image_index = 3; // Mute is false and mouse is touching
    }
} 
// Check if the mouse is not touching the button
else {
    if (!global.mute) {
        image_index = 0; // Mute is true and mouse is not touching
    } else {
        image_index = 2; // Mute is false and mouse is not touching
    }
}