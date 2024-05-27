/// Step Event
// Aplicar gravidade
if (!place_meeting(x, y + 1, Obj_Stone))
{
    vspeed += gravidade;
}
else
{
    vspeed = 0;
}

// Mover a pedra
y += vspeed;
x += hspeed;

// Interagir com o obj_Player
if (place_meeting(x - 1, y, Obj_Player) && keyboard_check(vk_left))
{
    if (!place_meeting(x + 1, y, Obj_Stone))
    {
        x += 1;
    }
}
else if (place_meeting(x + 1, y, Obj_Player) && keyboard_check(vk_right))
{
    if (!place_meeting(x - 1, y, Obj_Stone))
    {
        x -= 1;
    }
}
