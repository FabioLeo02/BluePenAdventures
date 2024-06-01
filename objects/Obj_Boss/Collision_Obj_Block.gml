// Evento Collision with Obj_Block do Obj_Boss
if (vspeed > 0 && y >= original_y) {
    vspeed = 0;
    y = original_y;  // Certifique-se de que o chefe está exatamente na posição original
    alarm[1] = room_speed * 2;  // Fica parado por 2 segundos
    state = BossState.Waiting;
}
