/// @description Coleta de diamantes
// Este código é executado quando o jogador coleta um diamante

// Verifica se o jogador está em contato com um diamante e se o diamante ainda não foi coletado
if (place_meeting(x, y, Obj_Player) && !coletavel){
	Obj_Player.diamantes++; // Incrementa a contagem de diamantes do jogador
	image_index = 0; // Reinicia o índice da imagem
	coletavel = true; // Marca o diamante como coletado
	sound_effect = audio_play_sound(Moeda_Teste, 2, false);
}

// Se o diamante foi coletado
if (coletavel){
	sprite_index = Spr_Diamond_Effect; // Muda o sprite para o efeito de coleta de diamante
	
	
	// Se o índice da imagem atingiu o último frame
	if(floor(image_index) >= image_number - 1){
		instance_destroy(); // Destroi a instância do diamante
	}
}
