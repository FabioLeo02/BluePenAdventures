// No evento Collision com Obj_Player do objeto Obj_transition, atualize a fase
var current_room = room_get_name(room);

if (current_room == "Stage1_1") {
    room_goto(Stage1_2);
} else if (current_room == "Stage1_2") {
    room_goto(Stage1_3);
} else if (current_room == "Stage1_3") {
    room_goto(Congrats);
} else if (current_room == "Congrats") {
    room_goto(Credits);
}
