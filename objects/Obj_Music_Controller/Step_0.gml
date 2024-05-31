if (global.music_on && !audio_is_playing(global.room_music)) {
    if (room == Stage1_1) {
        global.room_music = audio_play_sound(Stage_1_La_ele, 1, true);
    } else if (room == Stage1_2 || room == Menu || room == Credits || room == Options) {
        global.room_music = audio_play_sound(Stage_2_Olha_Se_Voce_Nao_Me_Ama, 1, true);
    } else if (room == Stage1_3) {
        global.room_music = audio_play_sound(Boss_Eu_Vou_Deixar_De_Ser_Besta, 1, true);
    }
} else if (!global.music_on && audio_is_playing(global.room_music)) {
    audio_stop_sound(global.room_music);
    global.room_music = noone;
}