var finger = event_data[? "touch"];
var fingerX = event_data[? "guiposX"];
var fingerY = event_data[? "guiposY"];

if (joystick.finger == -1 && fingerX <= display_get_gui_width() / 2 && fingerY >= display_get_gui_height() / 2) {
	joystick.finger = finger;
	
	joystick.x = fingerX;
	joystick.y = fingerY;
	joystick.anchorX = fingerX;
	joystick.anchorY = fingerY;
}