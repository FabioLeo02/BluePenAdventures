// Step event for Obj_Joystick
var touch_x = device_mouse_x(0);
var touch_y = device_mouse_y(0);

// Handle touch press
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(touch_x, touch_y, x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2)) {
        dragging = true;
        touch_id = 0; // Assuming single touch for simplicity, use device_mouse_id_to_gui(id) for multi-touch
        move_once = true; // Allow movement on initial press
    }
}

// Handle touch release
if (mouse_check_button_released(mb_left)) {
    dragging = false;
    touch_id = -1;
    move_once = false; // Reset move_once on release
}

// Update joystick position if dragging
if (dragging && touch_id == 0 && move_once) {
    if (instance_exists(Obj_Menu) || instance_exists(Obj_Options)) {
        var index = (instance_exists(Obj_Menu)) ? Obj_Menu.index : Obj_Options.index;
        var op_max = (instance_exists(Obj_Menu)) ? Obj_Menu.op_max : Obj_Options.op_max;

        // Check if the joystick is moved up
        if (touch_y < y - sensitivity) {
            index--;
            if (index < 0) {
                index = op_max - 1;
            }
            sprite_index = Spr_Joystick_Up; // Change the sprite to Spr_Joystick_Up
            move_once = false; // Disable further movement until the button is released
        }
        // Check if the joystick is moved down
        else if (touch_y > y + sensitivity) {
            index++;
            if (index > op_max - 1) {
                index = 0;
            }
            sprite_index = Spr_Joystick_Down; // Change the sprite to Spr_Joystick_Down
            move_once = false; // Disable further movement until the button is released
        }

        // Update the index in Obj_Menu or Obj_Options
        if (instance_exists(Obj_Menu)) {
            Obj_Menu.index = index;
        } else if (instance_exists(Obj_Options)) {
            Obj_Options.index = index;
        }
    }
}