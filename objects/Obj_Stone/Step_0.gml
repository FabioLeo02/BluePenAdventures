/*var player = instance_place(x, y, Obj_Player);
if(player != noone) {
    if(global.pushDirection == "L") {
        x -= 1;
    } else if(global.pushDirection == "R") {
        x += 1;
    }
}*/

// No Obj_Stone
// Verifique se o jogador está em contato com a pedra
/*var player = instance_place(x, y, Obj_Player);
if(player != noone) {
    // Mova a pedra na mesma direção e distância que o jogador
    x += lengthdir_x(global.playerMoveDistance, global.playerMoveDirection);
    y += lengthdir_y(global.playerMoveDistance, global.playerMoveDirection);
}*/

// Adicione gravidade se a pedra não estiver em contato com um objeto sólido
if(!place_meeting(x, y + 1, Obj_Block)) {
    gravity = 0.5;
} else {
    gravity = 0;
}
