// Verifique se o jogador está em contato com a pedra
if(place_meeting(x, y, Obj_Player)) {
    // Verifique se o jogador está tentando mover a pedra para a esquerda ou direita
    if(Obj_Player.key_left && !collision_line(x, y, x-1, y, Obj_Block, false, true) && !collision_line(x, y, x-1, y, Obj_Diamond, false, true)) {
        x -= 1;
    } else if(Obj_Player.key_right && !collision_line(x, y, x+1, y, Obj_Block, false, true) && !collision_line(x, y, x+1, y, Obj_Diamond, false, true)) {
        x += 1;
    }
}
