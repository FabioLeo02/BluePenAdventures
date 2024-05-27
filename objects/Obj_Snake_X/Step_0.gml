if (place_meeting(x + dir_cobra * vel_cobra, y, Obj_Block) || place_meeting(x + dir_cobra * vel_cobra, y, Obj_Diamond) || place_meeting(x + dir_cobra * vel_cobra, y, Obj_Stone)) {
    if (wait_cobra <= 0) {
        dir_cobra *= -1; // muda a direção
        wait_cobra = 60; // espera 1 segundo (assumindo que a room speed é 60)
        
        // Muda o sprite dependendo da direção
        if (dir_cobra == 1) {
            sprite_index = Spr_snake_right;
        } else {
            sprite_index = Spr_snake_left;
        }
    } else {
        wait_cobra -= 1; // decrementa o temporizador
    }
} else {
    x += dir_cobra * vel_cobra; // move o inimigo apenas se não houver colisão
}
