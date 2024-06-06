draw_set_font(FontBluePen);

var dist = 50;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1=gui_largura/2;
var y1=gui_altura/2;

for(var i=0;i<op_max;i++){
	if(opcoes[i] == "Voltar"){
		// Desenha o texto "Voltar" no canto inferior centralizado
		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		x1 = gui_largura / 2; // Centraliza na horizontal
		y1 = gui_altura - 30; // Posiciona no canto inferior
	}else{
		// Desenha os outros textos no centro da tela
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		x1 = gui_largura/2;
		y1 = gui_altura/2 + (30 * i);
	}
	
	if(index == i){
		draw_set_color(c_yellow);
	}else{
		draw_set_color(c_white);
	}
	
	draw_text(x1, y1, opcoes[i]);
}
draw_set_font(-1);

var creditos = "Creditos\n\nProgramadores:      Fabio Leandro, Elisvanilton Borges\nPixel Artista:                            Lucas Daniel\nEfeitos Sonoros:                         Georges Paiva\nBeta Tester:                                 Yan Breno\nDiretor de Arte:                       Jefferson Alves\n\nRemixes:\n\n'La Ele' por Manoel Gomes, Tiery\n'Olha, se voce nao me ama' por Manoel Gomes,Tierry\n'Eu Vou Deixar de Ser Besta' por Manoel Gomes\n\nAgradecimentos Especiais:\nProf.Carlos Wagner pela ideia do tema da Fase\n\nAssets:\nJoystick Virtual por: jucarave (www.youtube.com/@jucarave)";
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(gui_largura/2, gui_altura/2, creditos);
