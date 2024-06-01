// Evento Collision with Obj_Boss_Colision do Obj_Boss
if (place_meeting(x, y, Obj_Boss_Colision)) {
    if (vspeed > 0 && y >= original_y) {
        vspeed = 0;
        y = original_y;  // Certifique-se de que o chefe está exatamente na posição original
        alarm[1] = room_speed * 2;  // Fica parado por 2 segundos
        state = BossState.Waiting;
    }
}