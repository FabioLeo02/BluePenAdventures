/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if alarm[0] <= 0{
	vida -= 1;
	alarm[0] = 180; //3 segundos não podendo levar dano
} 

// Se a vida do jogador chegar a 0, ele morre
if (vida <= 0){
		estado = "morto";
        audio_play_sound(la_ele_morte, 2, false);
		sprite_index = Spr_Dead;
		alarm[1] = room_speed * 1;
}