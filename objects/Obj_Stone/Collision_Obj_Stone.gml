// No Obj_Stone, adicione o seguinte evento Step
var collided_stone = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, Obj_Stone, false, true);
if (collided_stone != noone && collided_stone.id > id && room == Stage1_3) {
    instance_destroy();  // Destrua este Obj_Stone
}

// No evento de colisão de Obj_Stone com Obj_Diamond
if (instance_exists(Obj_Stone)) {
    speed = 0;
}
