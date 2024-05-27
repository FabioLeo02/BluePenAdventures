// Verifique se o jogador está em contato com a pedra
if(place_meeting(x, y, Obj_Player)) {
    if(Obj_Player.key_left) {
        x -= 1;
    } else if(Obj_Player.key_right) {
        x += 1;
    }
}
