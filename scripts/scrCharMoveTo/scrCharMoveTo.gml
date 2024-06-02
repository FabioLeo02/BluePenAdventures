function scrCharMoveTo(xTo, yTo, distance) {
	var dir = point_direction(0, 0, xTo, yTo);
	
	var newX = x + lengthdir_x(2 * distance, dir);
	var newY = y + lengthdir_y(2 * distance, dir);
	
	// Verifica a colisão com Obj_Block antes de mover o personagem
	if (!place_meeting(newX, newY, Obj_Block)) {
		x = newX;
		y = newY;
	}
	
	scrCharLookAt(dir);
}
