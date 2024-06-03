function scrMoveCharacter() {
    if (estado == "vivo") {
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
    } else if (estado == "morto") {
        /* Quando o personagem está morto, ele não pode se mover ou ser controlado pelo joystick
        sprite_index = Spr_Dead; // Mostra o sprite de morte
        alarm[1] = room_speed * 2; // Define um alarme para reiniciar a room*/
    }
}
