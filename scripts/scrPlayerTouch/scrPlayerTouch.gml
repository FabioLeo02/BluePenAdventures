function scrPlayerTouch() {
	if (joystick.finger != -1) {
		var xTo = joystick.x - joystick.anchorX;
		var yTo = joystick.y - joystick.anchorY;
		var dist = point_distance(joystick.anchorX, joystick.anchorY, joystick.x, joystick.y);
		scrCharMoveTo(xTo, yTo, dist / joystick.maxDistance);
		action = "Walk";
		image_speed = dist / joystick.maxDistance;
	} else {
		action = "Idle";
		image_speed = 1;
	}
}