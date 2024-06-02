//End Step
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
    // Aqui você precisa definir qual sprite usar quando o personagem estiver parado (Idle)
    // Como no seu projeto parece que você não tem sprites separados para o estado Idle,
    // você pode usar os sprites de caminhada ou adicionar novos sprites para o estado Idle.
    // Por exemplo:
    sprite_index = Spr_walk_down; // ou qualquer outro sprite que você queira usar para o estado Idle
}
