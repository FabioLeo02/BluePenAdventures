// Evento de colisão com Obj_Snake_X e Obj_Snake_Y
if (estado == "vivo" && !invincible) {
    vida -= 1;
    invincible = true;
    alarm[0] = 180; // 3 segundos de invencibilidade

    // Se a vida do jogador chegar a 0, ele morre
    if (vida <= 0){
        estado = "morto";
        levouDano = true;
        if (global.sound_effects_on) {
            sound_effect = audio_play_sound(la_ele_morte, 2, false);
        }
        sprite_index = Spr_Dead; // Mostra o sprite de morte
        alarm[1] = room_speed * 2; // Define um alarme para reiniciar a room
    }
}
