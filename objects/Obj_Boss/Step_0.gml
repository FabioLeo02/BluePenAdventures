switch (state) {
    case BossState.Idle:
        if (distance_to_object(Obj_Player) < 300) {
            state = BossState.Chasing;
            alarm[0] = room_speed * 5;
        }
        break;

    case BossState.Chasing:
        if (x < Obj_Player.x) {
            hspeed = 2;
        } else if (x > Obj_Player.x) {
            hspeed = -2;
        }
        break;

  case BossState.Rising:
        hspeed = 0;
        vspeed = -2;
        if (place_meeting(x, y - 1, Obj_Block)) {
            state = BossState.Falling;

            // Se o chefe está subindo e colide com um Obj_Block, crie um Obj_Stone
            var stone_x = choose(414, 734, 1086);  // Escolha uma das três coordenadas x
            var stone_y = 317;  // A coordenada y é sempre a mesma
            instance_create_layer(stone_x, stone_y, "Instances", Obj_Stone);  // Crie um Obj_Stone na coordenada escolhida
		}
        break;

    case BossState.Falling:
        hspeed = 0;
        vspeed = 2;
        if (place_meeting(x, y + 1, Obj_Block)) {
            state = BossState.Waiting;
            alarm[1] = room_speed * 2;
        }
        break;

    case BossState.Waiting:
        hspeed = 0;
        vspeed = 0;
        break;

    case BossState.Returning:
        hspeed = 0;
        if (y > original_y) {
            vspeed = -2;  // Suba se o chefe estiver abaixo da altura original
        } else {
            vspeed = 0;
            y = original_y;  // Pare de subir quando o chefe atingir a altura original
            state = BossState.Idle;
        }
        break;
}

if (invencivel || alarm[2] > 0) {
    image_alpha = (image_alpha + 0.5) % 1;  // Faça o chefe piscar
} else {
    image_alpha = 1;  // Pare de piscar quando o chefe não estiver mais invencível
}