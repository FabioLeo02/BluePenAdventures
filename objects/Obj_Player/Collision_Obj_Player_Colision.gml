if (place_meeting(x, y, Obj_Player_Colision)) {
    if (xprevious < x) x = xprevious;
    if (xprevious > x) x = xprevious;
    if (yprevious < y) y = yprevious;
    if (yprevious > y) y = yprevious;
}