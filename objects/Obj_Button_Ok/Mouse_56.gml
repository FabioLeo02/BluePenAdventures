// Global Mouse Left Released event for Obj_Button_OK

// Get the button's position
var btn_x = x + sprite_width / 2;
var btn_y = y + sprite_height / 2;

// Check if the mouse is within the sprite bounds
if (mouse_x >= btn_x - sprite_width/2 && mouse_x <= btn_x + sprite_width/2 && mouse_y >= btn_y - sprite_height/2 && mouse_y <= btn_y + sprite_width/2) {
    if (instance_exists(Obj_Menu) && room == Menu) {
        var index = Obj_Menu.index;

        if (index == 0) {
            room_goto(Stage1_1);
        } else if (index == 1) {
            room_goto(Options);
        } else if (index == 2) {
            room_goto(Credits);
        } else if (index == 3) {
            game_end();
        }
    } else if (instance_exists(Obj_Options) && room == Options) {
        var index = Obj_Options.index;

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
    } else if ((instance_exists(Obj_Credits) && room == Credits) || (instance_exists(Obj_Congrats) && room == Congrats)) {
        var index = -1;
        var op_max = 0;

        if (instance_exists(Obj_Menu)) {
            index = Obj_Menu.index;
            op_max = Obj_Menu.op_max;
        } else if (instance_exists(Obj_Options)) {
            index = Obj_Options.index;
            op_max = Obj_Options.op_max;
        }

        if (index == op_max - 1) {
            room_goto(Menu); // Muda para a room "Menu"
        }
    }
}