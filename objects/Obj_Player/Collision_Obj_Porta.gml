// No Obj_Player, adicione o seguinte evento de colisão com Obj_Porta
if (place_meeting(x, y, Obj_Porta)) {
    switch (room) {
        case Stage1_1:
            if (global.diamantes < 20) {
                // Impede o jogador de passar pela porta se ele não coletou 20 diamantes
                if (xprevious < x) x = xprevious;
                if (xprevious > x) x = xprevious;
                if (yprevious < y) y = yprevious;
                if (yprevious > y) y = yprevious;
            } else {
                instance_destroy(other);  // Destrua a porta se o objetivo for cumprido
            }
            break;
        case Stage1_2:
            if (global.diamantes < 24) {
                // Impede o jogador de passar pela porta se ele não coletou 24 diamantes
                if (xprevious < x) x = xprevious;
                if (xprevious > x) x = xprevious;
                if (yprevious < y) y = yprevious;
                if (yprevious > y) y = yprevious;
            } else {
                instance_destroy(other);  // Destrua a porta se o objetivo for cumprido
            }
            break;
        case Stage1_3:
            if (instance_exists(Obj_Boss) && Obj_Boss.vida > 0) {
                // Impede o jogador de passar pela porta se o chefe ainda estiver vivo
                if (xprevious < x) x = xprevious;
                if (xprevious > x) x = xprevious;
                if (yprevious < y) y = yprevious;
                if (yprevious > y) y = yprevious;
            } else {
                instance_destroy(other);  // Destrua a porta se o objetivo for cumprido
            }
            break;
    }
}
