programa {
  inclua biblioteca Graficos --> graficos
  inclua biblioteca Util --> util
  const inteiro LARGURA = 800
  const inteiro ALTURA = 500
  funcao inicio() {
    // Estas funcionalidades da biblioteca gráficos são para criar a tela do jogo
    graficos.iniciar_modo_grafico(verdadeiro)
    graficos.definir_dimensoes_janela(LARGURA, ALTURA)
    graficos.definir_titulo_janela("Batalha Pokémon RPG")
    /*
      Tipos de variáveis
      inteiro = tipo responsável por conter números inteiros, sem casa decimal, exemplo: idade = 18;
      real = tipo responsável por conter números com casas decimais, exemplo: preco = 5.99;
      caractere = tipo responsável por conter apenas um caracter, exemplo: sexo = 'M';
      cadeia = tipo responsável por conter texto, exempo: nome = "João";
      logico = tipo responsável por conter valores lógicos, exemplo: cadastrado = falso;
      vazio = tipo responsável para executar funções que não retornam valor, exemplo: função escreva.
    */
    cadeia nom_meu_pokemon = "Pikachu"
    inteiro hp_meu_pokemon = 100
    inteiro max_hp_meu_pokemon = 100
    // Informações do pokémon inimigo
    cadeia nome_pokemon_inimigo = "Gengar"
    inteiro hp_pokemon_inimigo = 120
    inteiro max_hp_pokemon_inimigo = 120
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