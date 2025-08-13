#Lista de Exercícios – Introdução ao R

    #1. Operações matemáticas simples
    #Usando o R como calculadora, faça:
    12 + 5 #a) A soma de 12 e 5
    7 * 8 #a) A soma de 12 e 5
    5^2 #c) O quadrado de 5
    sqrt(81) #d) A raiz quadrada de 81

    #2. Criando e manipulando objetos
    #Crie um objeto x com valor 15 e outro y com valor 6. 
    #Depois calcule a soma e a multiplicação dos objetos.
    x <- 15
    y <- 6
    soma <- x + y
    soma
    multiplicacao <- x * y
    multiplicacao

    #3. Tipos de dados
    #Crie exemplos de cada tipo e use typeof() para verificar.
    D <- 15.01
    D
    typeof(D) #Dado dobrado

    I <- 25L
    I
    typeof(I) #Inteiro

    C <- "R can be fun!"
    C
    typeof(C) #Caracter

    T <- TRUE
    T
    typeof(T) #Lógico (booleano)

    #4. Estruturas de dados
    Escalar <- 07
    Escalar
    Vetor <- c(07, 08, 09, 10, 11)
    Vetor
    Matriz <- matrix(1:9, nrow=3, ncol=3)
    Matriz
    DataFrame <- data.frame(Nome = c("Zoe"), Idade = c(25), Altura = c(1.70))
    colnames(DataFrame)[3] <- c("Altura (m)") #Estou puxando a terceira coluna, Altura, e renomeando para "Altura (m)"
    DataFrame

    #5. Indexação com []
    #Usando os objetos do exercício anterior:
    Vetor #Bora relembrar e já conferir
    SegundoElemento <- Vetor [2]
    SegundoElemento
    Vetor
    Primeiro_TerceiroElemento <- Vetor [c(1, 3)]
    Primeiro_TerceiroElemento
    Matriz
    LinhaDois_ColunaTresElemento <- Matriz [2, 3]
    LinhaDois_ColunaTresElemento
    DataFrame
    Idade <- DataFrame [1, 2]
    Idade
