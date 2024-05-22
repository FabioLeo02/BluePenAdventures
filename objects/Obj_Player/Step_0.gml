var tecla_cima = keyboard_check(vk_up);
var tecla_baixo = keyboard_check(vk_down);
var tecla_esq = keyboard_check(vk_left);
var tecla_dir = keyboard_check(vk_right);

// Velocidade do personagem
var velocidade = 4;

// Verifica qual tecla está pressionada e move o personagem
if (tecla_cima){
    if (!place_meeting(x, y - velocidade, Obj_Block)){
        y -= velocidade;
    }
    sprite_index = Spr_walk_up;
}
else if (tecla_baixo){
    if (!place_meeting(x, y + velocidade, Obj_Block)){
        y += velocidade;
    }
    sprite_index = Spr_walk_down;
}
else if (tecla_esq){
    if (!place_meeting(x - velocidade, y, Obj_Block)){
        x -= velocidade;
    }
    sprite_index = Spr_walk_left;
}
else if (tecla_dir){
    if (!place_meeting(x + velocidade, y, Obj_Block)){
        x += velocidade;
    }
    sprite_index = Spr_walk_right;
}