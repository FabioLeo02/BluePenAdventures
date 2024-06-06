function scrCharMoveTo(xTo, yTo, distance) {
	var dir = point_direction(0, 0, xTo, yTo);
	
	var newX = x + lengthdir_x(3.5 * distance, dir);
	var newY = y + lengthdir_y(3.5 * distance, dir);
	
	// Salva a posição atual do jogador
	var oldX = x;
	var oldY = y;
	
	// Tenta mover o jogador
	if (!place_meeting(newX, newY, Obj_Block)) {
		x = newX;
		y = newY;
	}
	
	// Tenta empurrar o Obj_Stone
	var stone = instance_place(x, y, Obj_Stone);
	if (stone != noone && stone.gravity == 0 && !place_meeting(x + lengthdir_x(2 * distance, dir), y + lengthdir_y(2 * distance, dir), Obj_Block)){
		stone.x += lengthdir_x(4 * distance, dir);
		stone.y += lengthdir_y(4 * distance, dir);
	} else if (stone != noone) {
		// Se o Obj_Stone não pôde ser movido, move o jogador de volta para sua posição original
		x = oldX;
		y = oldY;
	}
	
	scrCharLookAt(dir);
}
