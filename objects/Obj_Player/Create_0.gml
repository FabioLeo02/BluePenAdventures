velh = 0; //veloicdade horizontal
velv = 0; //velocidade vertifcal
dir = 0; //variavel de direção
velc = 3.0; //velocidade do personagem
estado = "vivo"
levouDano = false; // Adicionado aqui
invincible = false;

global.diamantes = 0;
vida = 3
alfa_hit = 0;
alarm[0] = 0;

key_left = false;
key_right = false;

// Adicionando a lógica do joystick
action = "Idle";
face = "D";

joystick = {
	finger: -1,
	
	x: 0,
	y: 0,
	
	anchorX: 0,
	anchorY: 0,
	
	maxDistance: 48
}