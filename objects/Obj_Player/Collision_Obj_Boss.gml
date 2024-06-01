if alarm[0] <= 0{
	vida -= 1;
	alarm[0] = 180; //3 segundos não podendo levar dano
}

// Se a vida do jogador chegar a 0, ele morre
if (estado != "morto" && !levouDano){
    if (vida <= 0){
        estado = "morto";
        levouDano = true;
		if (global.sound_effects_on) {
    sound_effect = audio_play_sound(la_ele_morte, 2, false);
		}
        sprite_index = Spr_Dead;
        alarm[1] = room_speed * 2;
    }
}