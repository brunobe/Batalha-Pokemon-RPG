programa {
  inclua biblioteca Graficos --> graficos
  inclua biblioteca Util --> util
  funcao inicio() {
    // Estas funcionalidades da biblioteca gráficos são para criar a tela do jogo
    graficos.iniciar_modo_grafico(verdadeiro)
    graficos.definir_dimensoes_janela(800, 500)
    graficos.definir_titulo_janela("Batalha Pokémon RPG")
    // Desebho do céu da tela
    graficos.definir_cor(graficos.criar_cor(150, 216, 250))
    graficos.desenhar_retangulo(0,0, 800, 260, falso, verdadeiro)
    // Desenho da grama da tela do jogo
    graficos.definir_cor(graficos.criar_cor(120, 190, 100))
    graficos.desenhar_retangulo(0, 260, 800, 240, falso, verdadeiro)
    // Desenhar a grama do pokémon inimigo
    graficos.definir_cor(graficos.criar_cor(90, 130, 80))
    graficos.desenhar_elipse(475, 165, 250, 65, verdadeiro)
    // Desenhar a grama do nosso pokémon  
    graficos.definir_cor(graficos.criar_cor(80, 120, 70))
    graficos.desenhar_elipse(90, 365, 290, 75, verdadeiro)
    // Desenho inicial do pokémon inimigo
    graficos.definir_cor(graficos.criar_cor(110, 60, 150))
    graficos.desenhar_retangulo(540, 90, 110, 100, falso, verdadeiro)
    // Desenho inicial do nosso pokémon
    graficos.definir_cor(graficos.criar_cor(255, 215, 0))
    graficos.desenhar_retangulo(180, 280, 110, 100, falso, verdadeiro)
    // Esta função é responsável por mostrar a tela do jogo
    graficos.renderizar()
    escreva("Janela gráfica! Utilizando a biblioteca de gráficos do Portugol.")
    // Afunção aguarde irá executar a janela por 5 segundos
    util.aguarde(5000)
  }
}