var finger = event_data[? "touch"];

if (finger == joystick.finger) {
	joystick.x = event_data[? "guiposX"];
	joystick.y = event_data[? "guiposY"];
	
	var dist = point_distance(joystick.anchorX, joystick.anchorY, joystick.x, joystick.y);
	if (dist >= joystick.maxDistance) {
		var angle = point_direction(joystick.anchorX, joystick.anchorY, joystick.x, joystick.y);
		
		joystick.x = joystick.anchorX + lengthdir_x(joystick.maxDistance, angle);
		joystick.y = joystick.anchorY + lengthdir_y(joystick.maxDistance, angle);
	}
}