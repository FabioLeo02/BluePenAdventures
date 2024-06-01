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