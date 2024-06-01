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
