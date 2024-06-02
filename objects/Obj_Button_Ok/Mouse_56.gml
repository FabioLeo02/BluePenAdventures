// Global Mouse Left Released event for Obj_Button_OK

if(instance_exists(Obj_Menu)) {
    var index = Obj_Menu.index;
    
    if(room == Stage1_1) {
        if(index == 0){
            room_goto(Stage1_1);
        } else if(index == 1) {
            room_goto(Options);
        } else if(index == 2) {
            room_goto(Credits);
        } else if(index == 3){
            game_end();
        }
    } else if(room == Options) {
        if (index == 0) {
            global.sound_effects_on = !global.sound_effects_on;
        } else if (index == 1) {
            global.music_on = !global.music_on;
            if (!global.music_on) {
                if (global.room_music != noone) {
                    audio_stop_sound(global.room_music);
                }
            } else {
                // Restart the music based on the current room
                if (room == Stage1_1) {
                    global.room_music = audio_play_sound(Stage_1_La_ele, 1, true);
                } else if (room == Stage1_2 || room == Menu || room == Credits || room == Options) {
                    global.room_music = audio_play_sound(Stage_2_Olha_Se_Voce_Nao_Me_Ama, 1, true);
                } else if (room == Stage1_3) {
                    global.room_music = audio_play_sound(Boss_Eu_Vou_Deixar_De_Ser_Besta, 1, true);
                }
            }
        } else if (index == 2) {
            room_goto(Menu);
        }
    } else if(room == Congrats || room == Credits) {
        if(index == op_max - 1){
            room_goto(Menu); // Muda para a room "Menu"
        }
    }
}

