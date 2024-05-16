var tecla_cima = keyboard_check(vk_up);
var tecla_baixo = keyboard_check(vk_down);
var tecla_esq = keyboard_check(vk_left);
var tecla_dir = keyboard_check(vk_right);

if (tecla_cima){
	sprite_index=Spr_walk_up;
}
else if (tecla_esq){
	sprite_index=Spr_walk_left;	
}
else if (tecla_dir){
	sprite_index=Spr_walk_right;	
}
else if (tecla_baixo){
	sprite_index=Spr_walk_down;
}

// se quiser usar uma tecla com letra do teclado o comando é "keyboard_check(ord("letra da tecla em minusculo");"

var tecla = tecla_dir - tecla_esq !=0 or tecla_baixo - tecla_cima != 0;

dir = point_direction(0,0,tecla_dir - tecla_esq, tecla_baixo - tecla_cima) //logica de direção, funciona se baseando como se fosse um plano cartesiano

velh = lengthdir_x(velc * tecla,dir);
velv = lengthdir_y(velc * tecla,dir);

// Verifique a colisão para a direção desejada antes de mover o personagem
if (!place_meeting(x+velh, y, Obj_Block)) {

    x += velh;
}

if (!place_meeting(x, y+velv, Obj_Block)) {
    y += velv;
}

