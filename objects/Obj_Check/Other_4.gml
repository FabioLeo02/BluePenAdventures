// Room Start de cada sala principal
if (!instance_exists(Obj_Sound_Manager)) {
    instance_create_layer(x, y, "Instances", Obj_Sound_Manager);
}


if (!global.music_on) {
    audio_stop_all();
}