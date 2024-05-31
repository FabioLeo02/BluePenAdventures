// Destrua o inimigo ao entrar em contato
instance_destroy(other);
if (global.sound_effects_on) {
    sound_effect = audio_play_sound(Dano_Inimigo_Teste, 2, false);
}