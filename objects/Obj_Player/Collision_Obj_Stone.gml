/*var move_dist = 5; // Ajuste isso para a distância que você quer que o Obj_Stone se mova

if(keyboard_check(vk_right) && place_meeting(x+1, y, Obj_Stone)) {
    with(Obj_Stone) {
        if(!place_meeting(x+move_dist, y, Obj_Block)) {
            x += move_dist;
        }
    }
}

if(keyboard_check(vk_left) && place_meeting(x-1, y, Obj_Stone)) {
    with(Obj_Stone) {
        if(!place_meeting(x-move_dist, y, Obj_Block)) {
            x -= move_dist;
        }
    }
}
*/

var move_dist = 5; // Ajuste isso para a distância que você quer que o Obj_Stone se mova

if(keyboard_check(vk_right) && place_meeting(x+1, y, Obj_Stone)) {
    with(Obj_Stone) {
        if(!place_meeting(x+move_dist, y, Obj_Block)) {
            x += move_dist;
        }
    }
}

if(keyboard_check(vk_left) && place_meeting(x-1, y, Obj_Stone)) {
    with(Obj_Stone) {
        if(!place_meeting(x-move_dist, y, Obj_Block)) {
            x -= move_dist;
        }
    }
}

