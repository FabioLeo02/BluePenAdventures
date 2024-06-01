// Evento Collision with Obj_Block do Obj_Boss
if (vspeed > 0 && y >= original_y) {
    vspeed = 0;
    y = original_y;  // Certifique-se de que o chefe está exatamente na posição original
    alarm[1] = room_speed * 2;  // Fica parado por 2 segundos
    state = BossState.Waiting;

    // Se o chefe está subindo e colide com um Obj_Block, crie um Obj_Stone
    if (state == BossState.Rising) {
        var stone_x = choose(414, 734, 1086);  // Escolha uma das três coordenadas x
        var stone_y = 317;  // A coordenada y é sempre a mesma
        instance_create_layer(stone_x, stone_y, "Instances", Obj_Stone);  // Crie um Obj_Stone na coordenada escolhida
    }
}
