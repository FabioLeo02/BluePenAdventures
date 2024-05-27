if(place_meeting(x, y, Obj_Block)) {
    while(!place_meeting(x-1, y, Obj_Block)) {
        x--;
    }
}
