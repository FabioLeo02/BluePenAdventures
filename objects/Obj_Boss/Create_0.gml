enum BossState {
    Idle,
    Chasing,
    Rising,
    Falling,
    Waiting,
    Returning  // Novo estado para o retorno suave do chefe
}

state = BossState.Idle;
original_y = y;

vida = 3;  // Dê ao chefe 3 vidas
invencivel = false;  // Variável para rastrear se o chefe está invencível
