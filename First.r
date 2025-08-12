#INTRODUÇÃO AO R (por uma estudante de biologia)

  #COMANDOS BASICOS
    output <- "this is output"
    output
    #Resultado no console: [1] "this is output"
    
    seq (1, 300, by = 2)
    #Resultado no console: Posição do primeiro número da linha de 1 à 300, indo de 2 em 2
    
    #TESTES PARA TER ATENÇÃO
      x <- c("2",-3, "end, 0, 4, 0.2")
      as.numeric(x)
      #Resultado no console: Mensagem de cuidado/atenção
      
      x*10
      #Resultado no console: Erro
    
  #ALGUMAS CONTAS
    1+1
    10-1
    2*2
    8/2
    2^3 #potência
    sqrt(9) #raiz
    
    #continhas
    2+16*24-56
    
    3.14*5^2
    
    ?Constants #Usado para conferir a documentação sobre as constantes embutidas
    pi*5^2
    
    #Funciona
    bacharelado <- "1ano"
    bacharelado
    
    #Não Funciona
    1 -> sala_mais_legal
    1
    
#BOAS PRÁTICAS
  #Dar espaço
    mean_x <- (2 + 6) / 2
    mean_x
    
#TESTES
  #Simples
    minha_media_final <- 10-5.1
    minha_media_final
    
    
  #Tipos de dados
    y <- 2L #Esse 'L' faz com que o dado seja inteiro
    y #Puxa o 2
    typeof(y) #Identifica o tipo de dado (nesse caso, "integer"/inteiro)
    
    x <- 1.1 #O ponto sinaliza que é um dado dobrado
    x
    typeof(x)
    
    t <- TRUE #Presente
    t
    typeof(t)
    
    f <- FALSE #Ausente
    f
    typeof(f)
    
    A <- "top" #Caracter (Pensa em sistemática, taxonomia)
    A
    typeof(A)
    
    
  #Testes simples
    x <- 1.1
    x
    
    euler_value <- 1+1.718
    euler_value
    
    
#VALORES ESCALARES
    d <- "especie" 
    e <- "genus"
    f <- "que horas e o intervalo?"
    d
    e
    f
    
  #Escala VS Vetor (não se misturam)
    #Alguns comandos:
      #c(a,b...)
      #a:b
      #seq(from,to,by)
      #rep(x,times,each)
    
    c(1,3,5,7,9)
    1:5
    seq(from=0, to=6, by=2)
    rep(c(7,8), times = 2, each = 2)
    
    #c() (c significa concatenar) serve para combinar vários escalares como argumentos, 
    #os quais são separados por vírgulas e reorna um vetor contendo eles:
      #vector <- c(valor1, valor2, ...)
    
    num_vetor <- c(1,4,32,-76, -4)
    num_vetor
    
    carac_vetor <- c("blue", "green", "red")
    carac_vetor
    
    logic_vetor <- c(TRUE, TRUE, FALSE)
    logic_vetor
    
    1:8 #do 1 até o 8
    7.5:1.5 #de ponto tal ATÉ ponto tal
    
    seq(from = 1, to = 10, by = 2) #do 1 até o 10 de 2 em 2
    seq(from = 20, to = 2, by = -2)
    
    #rep() permite que você repita (seja escalar, seja vetor) um número especificado de vezes ou por um comprimento desejado:
    rep(x = 1:3, each = 2, times = 2) #tá repetindo do 1 até o 3 de 2 em 2, 2x
    rep(x = c(1,2), each = 3)
    
    
  #Mini atividade
    #5 primeiros números ímpares contando de 2 em 2
    num_impar <- seq(from=1, to = 10, by=2)
    num_impar
    #ou...
    num_imparr <- c(1,3,5,7,9)
    num_imparr
    
    #mais testes
    x <- (1:5)
    y <- 6
    x+y
    x*y
    y-x
    
  #Matriz (conjunto de vetores)
    dados  <- matrix (data = 1:10, nrow = 5, ncol = 2) #colunas
    dados
    
    dadoss <- matrix (data = 1:10, nrow = 2, ncol = 5) #linhas
    dadoss
    
    nome_ingles <- c("cat", "dog", "fish")
    nome_portugues <- c("gato", "cão", "peixe")
    
    #combinção de vetores
    rbind (nome_ingles, nome_portugues) #em linha (horizontal)
    cbind (nome_ingles, nome_portugues) #em coluna (vestical)
    
    #atenção na data
    mat1 <- matrix (data = 1:9, nrow = 3, ncol = 3)
    mat1
    
    mat2 <- matrix(data = 9:1, nrow = 3, ncol = 3)
    mat2
    
    mat1*mat2
    
    step0 <- matrix(data = 1:6, nrow=2, ncol=3)
    step0
    
    step1 <- matrix(data = c("cachorro", "gato", "galinha", "pato", "coelho", "sapo"), nrow = 2, ncol = 3)
    step1
    
  #Pensa no material dorado
    #escalar = 1 unidade/quadrado dele
    #vetor = 1 dezena/1 coluna (conjunto de quadrados)
    #matriz = 1 centena (conjunto de colunas, forma uma tabela)
    #data.frame = Vários milhares, vários cubos (conjunto de tabelas, matriz de dados)
    
    site_id <- c("A1.01", "A1.02", "B1.01", "B1.02")
    pH <- c(5.6, 7.3, 4.1, 6.0)
    num_sp <- c(17, 23, 15, 7)
    fertilizado <- c("sim", "sim", "não", "não")
    
    #chegou do campo? Vai tabular os dados (anotar eles no excel)
    #poucos dados ou bastante experiência no R? É recomendado já anotar pelo R mesmo então
    
    dados_fertilizacao_solo <- data.frame(site_id, pH, num_sp, fertilizado)
    dados_fertilizacao_solo
    
#INDEXIÇÃO
    #colchetes indicam a posição dos valores que queremos ver
    
    num_impar <- seq(1,9, by = 2)
    num_impar
    num_impar [2] #quero saber o valor do número na 2ª posição
    num_impar [c(2,4)] #quero saber o valor do número na 2ª e 4ª posição. Para isso, concatene
    num_impar [-c(1,2)] #usado para remover valores. Estou removendo a 1º e 2º POSIÇÃO
    num_impar [-4] #para remover apenas uma posição
    
    num_vetor <- c(1, 4, 3, 98, 32, -76, -4)
    num_vetor
    num_vetor [3] #extrair 3º valor
    num_vetor [c(2,3)] #extrair o valor da 2ª e 4ª posição
    num_vetor [-4] #remover o valor na 4º posição
    num_vetor [-c(1,3)] #remover o valor da 1ª e 3ª posição
    
    mudar_vetor1 <- c(2, 6, 0, 100, 38, -54, -1)
    mudar_vetor1 #puxa o mudar_vetor1
    extrair_posicao3 <- mudar_vetor1 [3] #extraio o valor na 3ª posição e mudo o nome (para não ter interferência), ainda puxando do original
    extrair_posicao3 #puxo o extrair_posicao (ou seja, o valor na 3ª posição do mudar_vetor1)
    extrair_posicao23 <- mudar_vetor1 [c(2,3)] 
    extrair_posicao23
    remover_posicao4 <- mudar_vetor1 [-4] 
    remover_posicao4
    remover_posicao13 <- mudar_vetor1[-c(1,3)] 
    remover_posicao13
    
    
  #data.frame [linhas e colunas] 
    #exemplo: my.df[1,] (para extrair apenas a primeira linha)
    #my.df[,3] (para extrair apenas a terceira coluna)
    
    dados_fertilizacao_solo <- data.frame(site_id, pH, num_sp, fertilizado)
    dados_fertilizacao_solo
    dados_fertilizacao_solo [c("site_id", "pH")] #estou pegando apenas o id do sítio e o pH
    #para verificar/tornar um dado (a fim de fazer uma análise linear, por exemplo) PRECISA usar o cifrão '$'
    dados_fertilizacao_solo$pH #selecionando apenas um deles com o '$'
    dados_fertilizacao_solo [,2] #mas se for apenas uma atividade ou algo que não será utilizado como dado, dessa forma também funciona
    
  #uma função precisa de valores de entradas
  #esses valores são chamados de argumentos (parâmetros)
    
    fertilizante <- factor(rep(c("A","B","C"), each = 5))
    altura <- c(15, 16, 14, 15, 17, #Fertilizante A
                18, 19, 17, 20, 18, #Fertilizante B
                14, 13, 15, 14, 13) #Fertilizante C
    dados <- data.frame(fertilizante, altura)
    
    boxplot(altura ~ fertilizante, data = dados,
            col = c("lightblue", "lightgreen", "lightpink"),
            main = "Altura das plantas por fertilizante",
            ylab = "Altura (cm)")
    
    modelo <- aov(altura ~ fertilizante, data = dados) #diferença estatística
    summary(modelo)
    #aov(dados)
    
#RECOMENDAÇÕES
  #ler THE R BOOK, by Michael J.Crawley (a bíblia do R)
  #O R aplicado para pesquisas ecológicas