// Declare a global variable to track the key press state
if (!global.mute_toggled) {
    if (keyboard_check_pressed(ord("M"))) {
        global.mute = !global.mute;
        show_debug_message("press M");
        global.mute_toggled = true; // Mark as pressed
    }
} 

// Reset the toggled state when the key is released
if (!keyboard_check(ord("M"))) {
    global.mute_toggled = false;
}