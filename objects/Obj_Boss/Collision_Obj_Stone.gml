if (place_meeting(x, y, Obj_Stone) && !invencivel) {
    vida -= 1;  // Diminua a vida do chefe em 1
    if (vida <= 0) {
        alarm[2] = room_speed * 3;  // Ative o alarme 2 para iniciar o desaparecimento do chefe
    } else {
        invencivel = true;  // Torne o chefe invencível
        alarm[3] = room_speed * 3;  // Ative o alarme 3 para terminar a invencibilidade
    }
}