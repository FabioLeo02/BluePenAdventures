if (global.music_on) {
    if (room == Stage1_1 && !audio_is_playing(Stage_1_La_ele)) {
        global.room_music = audio_play_sound(Stage_1_La_ele, 1, true);
    } else if ((room == Stage1_2 || room == Menu || room == Credits || room == Options || room == Congrats) && !audio_is_playing(Stage_2_Olha_Se_Voce_Nao_Me_Ama)) {
        global.room_music = audio_play_sound(Stage_2_Olha_Se_Voce_Nao_Me_Ama, 1, true);
    } else if (room == Stage1_3 && !audio_is_playing(Boss_Eu_Vou_Deixar_De_Ser_Besta)) {
        global.room_music = audio_play_sound(Boss_Eu_Vou_Deixar_De_Ser_Besta, 1, true);
    }
} else {
    if (global.room_music != noone) {
        audio_stop_sound(global.room_music);
    }
}