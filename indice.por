programa {
  inclua biblioteca Graficos --> graficos
  inclua biblioteca Util --> util
  const inteiro LARGURA = 800
  const inteiro ALTURA = 500
  funcao vazio desenhar_cena( cadeia p_nome, inteiro p_hp, inteiro p_max_hp, cadeia i_nome, inteiro i_hp, inteiro i_max_hp, cadeia mensagem) {
    // Desenho do céu da tela
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
    // Textos das informações dos pokémon
    graficos.definir_cor(graficos.criar_cor(250, 250, 235))
    graficos.desenhar_retangulo(50, 40, 300, 75, falso, verdadeiro)
    graficos.definir_cor(graficos.COR_PRETO)
    graficos.desenhar_retangulo(50, 40, 300, 75, falso, falso)
    graficos.desenhar_texto(60, 55, i_nome + " HP: " + i_hp + "/" + i_max_hp)
    graficos.definir_cor(graficos.criar_cor(250, 250, 235))
    graficos.desenhar_retangulo(450, 310, 300, 75, falso, verdadeiro)
    graficos.definir_cor(graficos.COR_PRETO)
    graficos.desenhar_retangulo(450, 310, 300, 75, falso, falso)
    graficos.desenhar_texto(480, 372, p_nome + " HP: " + p_hp + "/" + p_max_hp)
    graficos.definir_cor(graficos.criar_cor(250, 250, 235))
    graficos.desenhar_retangulo(20, 420, 760, 65, falso, verdadeiro)
    graficos.definir_cor(graficos.COR_PRETO)
    graficos.desenhar_retangulo(20, 420, 760, 65, falso, falso)
    graficos.desenhar_texto(40, 445, mensagem)
    // Esta função é responsável por mostrar a tela do jogo
    graficos.renderizar()
  }
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
    cadeia nome_meu_pokemon = "Pikachu"
    inteiro hp_meu_pokemon = 100
    inteiro max_hp_meu_pokemon = 100
    inteiro pocoes = 2
    // Informações do pokémon inimigo
    cadeia nome_pokemon_inimigo = "Gengar"
    inteiro hp_pokemon_inimigo = 120
    inteiro max_hp_pokemon_inimigo = 120
    // Chama a função dsenhar_cena para mostrar os gráficos do jogo
    desenhar_cena(nome_meu_pokemon, hp_meu_pokemon, max_hp_meu_pokemon, nome_pokemon_inimigo, hp_pokemon_inimigo, max_hp_pokemon_inimigo, "Um " + nome_pokemon_inimigo + " selvagem apareceu!")
    // ENTRADA: o jogo aguarda que o jogador confirme antes de iniciar
    cadeia continuar
    escreva("Presione ENTER para atacar...")
    leia(continuar)
    /*
      Operadores aritméticos:
      Soma (+) = realizar a soma de dois ou mais números, exemplo: soma = 2 + 3;
      Subtração (-) = realizar a subtração de dois ou mais números, exemplo: sub = 3 - 2;
      Multiplicação (*) = realizar a multiplicação de dois ou mais números, exemplo: multi = 2 * 2;
      Divisão (/) = realizar a divisão de dois ou mais números, exemplo: div = 2 / 2;
      Módulo (%) = calcula o resto de uma divisão, exemplo: res = 3 % 2.
    */
    inteiro dano = util.sorteia(22, 90)
    hp_pokemon_inimigo = hp_pokemon_inimigo - dano
    /*
      Operadores relacionais:
      > sinal de maior que, exemplo: valor = 3 > 2;
      < sinal de menor que, exemplo: valor 2 < 3;
      >= sinal de maior ou igual, exemplo: dano >= 5;
      < sinal de menor ou igual, exemplo: dano <= 5;
      == sinal de igual, exemplo: valor = 2 == 2;
      != sinal de diferente, exemplo: valor = 3 != 2;
      Os operadores relacionais retornam valores verdadeiro ou falso.
    */
    se(hp_pokemon_inimigo < 0) {
      hp_pokemon_inimigo = 0
    }
    escreva(">>", nome_meu_pokemon, " causou ", dano, " de dano!\n")
    /*
      E - O operador lógico E só é verdadeiro se todas as condições forem verdadeiras;
      OU - Só é verdadeiro desde que pelo menos uma condição seja verdadeira;
      NÃO - Eçe inverte o valor lógivo, se for verdadeiro, passa a ser falso, e vice-versa.
    */
    logico vitoria = (hp_pokemon_inimigo == 0) e (hp_pokemon_inimigo <= max_hp_pokemon_inimigo)
    // Estrutura condicional simples aceita as funções do SE e SENAO
    se(vitoria) {
      desenhar_cena(nome_meu_pokemon, hp_meu_pokemon, max_hp_meu_pokemon, nome_pokemon_inimigo, hp_pokemon_inimigo, max_hp_pokemon_inimigo, nome_pokemon_inimigo + " desmaiou! Você venceu!")
    }
    senao {
      logico posso_continuar = (hp_pokemon_inimigo > 0) ou (pocoes > 0)
      desenhar_cena(nome_meu_pokemon, hp_meu_pokemon, max_hp_meu_pokemon, nome_pokemon_inimigo, hp_pokemon_inimigo, max_hp_pokemon_inimigo, nome_meu_pokemon + " causou " + dano + " de dano!")
      escreva(">> ", nome_pokemon_inimigo, " ainda resiste com ", hp_pokemon_inimigo, " HP. Posso continuar? ", posso_continuar, "\n")
    }
    escreva("Janela gráfica! Utilizando a biblioteca de gráficos do Portugol.")
    // A função aguarde irá executar a janela por 5 segundos
    util.aguarde(5000)
  }
}