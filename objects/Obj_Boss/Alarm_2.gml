if (image_alpha > 0) {
    image_alpha -= 0.05;  // Diminua a transparência do chefe
    alarm[2] = 1;  // Continue o alarme até que o chefe esteja completamente transparente
} else {
    instance_destroy();  // Destrua o chefe quando ele estiver completamente transparente
}