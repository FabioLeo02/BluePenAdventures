// Verifique se o jogador está em contato com a pedra
if(place_meeting(x, y, Obj_Player)) {
    if(Obj_Player.key_left) {
        x -= 1;
    } else if(Obj_Player.key_right) {
        x += 1;
    }
}

// Adicione gravidade se a pedra não estiver em contato com um objeto sólido
if(!place_meeting(x, y + 1, Obj_Block)) {
    gravity = 1;
} else {
    gravity = 0;
}
