var xx = 430;

repeat(vida) {
    draw_sprite_ext(Spr_Life_Boss, 0, xx, 30, 0.2, 0.2, image_angle, c_white, 1);
    xx += 50;
}