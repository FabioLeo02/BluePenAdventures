
if (estado = "vivo") {
	//Movimentação do personagem
	var tecla_cima = keyboard_check(vk_up);
	var tecla_baixo = keyboard_check(vk_down);
	var tecla_esq = keyboard_check(vk_left);
	var tecla_dir = keyboard_check(vk_right);

	// Velocidade do personagem
	var velocidade = 4;

	// Verifica qual tecla está pressionada e move o personagem
	if (tecla_cima){
	    if (!place_meeting(x, y - velocidade, Obj_Block) && !place_meeting(x, y - velocidade, Obj_Stone)){
	        y -= velocidade;
	    }
	    sprite_index = Spr_walk_down;
	}
	else if (tecla_baixo){
	    if (!place_meeting(x, y + velocidade, Obj_Block) && !place_meeting(x, y + velocidade, Obj_Stone)){
	        y += velocidade;
	    }
	    sprite_index = Spr_walk_up;
	}
	else if (tecla_esq){
	    if (!place_meeting(x - velocidade, y, Obj_Block)){
	        var stone = instance_place(x - velocidade, y, Obj_Stone);
	        if (stone != noone && stone.gravity == 0 && !place_meeting(x - 2*velocidade, y, Obj_Block)){
	            stone.x -= velocidade;
	        } else {
	            x -= velocidade;
	        }
	    }
	    sprite_index = Spr_walk_left;
	}
	else if (tecla_dir){
	    if (!place_meeting(x + velocidade, y, Obj_Block)){
	        var stone = instance_place(x + velocidade, y, Obj_Stone);
	        if (stone != noone && stone.gravity == 0 && !place_meeting(x + 2*velocidade, y, Obj_Block)){
	            stone.x += velocidade;
	        } else {
	            x += velocidade;
	        }
	    }
	    sprite_index = Spr_walk_right;
	}

		if (alarm[0] > 0){
        image_alpha = abs(sin(current_time / 200)); // Faz o personagem piscar
    } else {
        image_alpha = 1; // Restaura a transparência normal quando o alarme termina
        levouDano = false; // Redefinido aqui
    }

    // Adicionando a lógica do joystick
    scrPlayerKeyboard();
    scrPlayerTouch();
}

// Se a vida do jogador chegar a 0, ele morre
if (vida <= 0 && estado != "morto"){
    estado = "morto";
    levouDano = true;
    if (global.sound_effects_on) {
        sound_effect = audio_play_sound(la_ele_morte, 2, false);
    }
    sprite_index = Spr_Dead; // Mostra o sprite de morte
    alarm[1] = room_speed * 2; // Define um alarme para reiniciar a room
}