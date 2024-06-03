//End Step
if (estado == "vivo") {
    if (action == "Walk") {
        switch(face) {
            case "D":
                sprite_index = Spr_walk_down;
                break;
            case "L":
                sprite_index = Spr_walk_left;
                break;
            case "R":
                sprite_index = Spr_walk_right;
                break;
            case "U":
                sprite_index = Spr_walk_up;
                break;
        }
    } else {
        sprite_index = Spr_walk_down; // ou qualquer outro sprite que você queira usar para o estado Idle
    }
}
