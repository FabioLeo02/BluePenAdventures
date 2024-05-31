//Step
if (keyboard_check_pressed(vk_up)) {
    option_index--;
    if (option_index < 0) {
        option_index = array_length_1d(options) - 1;
    }
}

if (keyboard_check_pressed(vk_down)) {
    option_index++;
    if (option_index >= array_length_1d(options)) {
        option_index = 0;
    }
}

if (keyboard_check_pressed(vk_enter)) {
    switch (option_index) {
        case 0:
            if (options[0] == "Musica: ON") {
                options[0] = "Musica: OFF";
                audio_stop_sound(room_music);
            } else {
                options[0] = "Musica: ON";
                // Aqui você pode adicionar o código para tocar a música novamente
            }
            break;
        case 1:
            if (options[1] == "Efeitos Sonoros: ON") {
                options[1] = "Efeitos Sonoros: OFF";
                audio_stop_sound(sound_effect);
            } else {
                options[1] = "Efeitos Sonoros: ON";
                // Aqui você pode adicionar o código para tocar os efeitos sonoros novamente
            }
            break;
        case 2:
            room_goto(Menu);
            break;
    }
}
