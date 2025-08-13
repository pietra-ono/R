# 📊 Introduction to R (by a Biology Student) 🌱🔬  

A beginner-friendly guide to learning R for biology and ecology students!  

## 📌 About This Material  
This repository contains practical notes and examples for learning R, with a focus on biological applications. Developed by a biology student for fellow beginners!  

## 🚀 Getting Started  

### Prerequisites  
- [R](https://cran.r-project.org/) installed  
- [RStudio](https://www.rstudio.com/products/rstudio/download/) (optional but recommended)  
- Willingness to learn! 😊  

## 📚 Content  

### 1. Basic Commands  
```r  
output <- "this is output"  
output  
# [1] "this is output"  

seq(1, 300, by = 2)  # Sequence from 1 to 300, stepping by 2  
```  

### 2. Data Types  
```r  
# Integer  
y <- 2L  
typeof(y)  # "integer"  

# Double (numeric)  
x <- 1.1  
typeof(x)  # "double"  

# Logical  
t <- TRUE  
typeof(t)  # "logical"  

# Character (text)  
A <- "top"  
typeof(A)  # "character"  
```  

### 3. Vectors and Matrices  
```r  
# Vectors  
num_vector <- c(1, 4, 32, -76, -4)  
char_vector <- c("blue", "green", "red")  

# Matrices  
data_matrix <- matrix(data = 1:10, nrow = 5, ncol = 2)  
```  

### 4. Data Frames (Tables)  
```r  
site_id <- c("A1.01", "A1.02", "B1.01", "B1.02")  
pH <- c(5.6, 7.3, 4.1, 6.0)  
num_sp <- c(17, 23, 15, 7)  
fertilized <- c("yes", "yes", "no", "no")  

soil_data <- data.frame(site_id, pH, num_sp, fertilized)  
```  

### 5. Indexing (Accessing Data)  
```r  
# Vectors  
odd_numbers <- seq(1, 9, by = 2)  
odd_numbers[2]  # Accesses the 2nd element  

# Data frames  
soil_data$pH  # Accesses the "pH" column  
soil_data[, 2]  # Accesses the second column (the "pH" one)
```  

### 6. Basic Statistical Analysis  
```r  
# ANOVA for comparing fertilizers  
model <- aov(height ~ fertilizer, data = plant_data)  
summary(model)  
```  

## 💡 Tips & Best Practices  
- Use descriptive variable names (`mean_height` is better than `x`)  
- Comment your code for clarity  
- Always check your data with `str()` and `summary()`  
- Practice regularly!  

## 📖 Recommended Reading  
- *The R Book* by Michael J. Crawley (the "R Bible")  
- *R for Ecological Research*  

## 🤔 How to Contribute  
Found a mistake or have suggestions? Feel free to:  
1. Open an issue  
2. Submit a pull request  
3. Send me a message!  

Happy coding and data analysis! 🌿📈  

Made with ❤️ by a biology student passionate about R and ecology.

<br>

---

<br>

# 📊 Introdução ao R (por uma estudante de biologia) 🌱🔬

Um guia descontraído para aprender R voltado para estudantes de biologia e ecologia!

## 📌 Sobre este material
Este repositório contém anotações e exemplos práticos de introdução à linguagem R, com foco em aplicações biológicas. Desenvolvido por uma estudante de biologia para outros colegas iniciantes!

## 🚀 Começando

### Pré-requisitos
- [R](https://cran.r-project.org/) instalado
- [RStudio](https://www.rstudio.com/products/rstudio/download/) (opcional, mas recomendado)
- Vontade de aprender! 😊

## 📚 Conteúdo

### 1. Comandos Básicos
```r
output <- "this is output"
output
# [1] "this is output"

seq(1, 300, by = 2)  # Sequência de 1 a 300, pulando de 2 em 2
```

### 2. Tipos de Dados
```r
# Integer
y <- 2L
typeof(y)  # "integer"

# Double
x <- 1.1
typeof(x)  # "double"

# Logical
t <- TRUE
typeof(t)  # "logical"

# Character
A <- "top"
typeof(A)  # "character"
```

### 3. Vetores e Matrizes
```r
# Vetores
num_vetor <- c(1, 4, 32, -76, -4)
carac_vetor <- c("blue", "green", "red")

# Matrizes
dados <- matrix(data = 1:10, nrow = 5, ncol = 2)
```

### 4. Data Frames (Tabelas de Dados)
```r
site_id <- c("A1.01", "A1.02", "B1.01", "B1.02")
pH <- c(5.6, 7.3, 4.1, 6.0)
num_sp <- c(17, 23, 15, 7)
fertilizado <- c("sim", "sim", "não", "não")

dados_fertilizacao <- data.frame(site_id, pH, num_sp, fertilizado)
```

### 5. Indexação (Acessando Dados)
```r
# Vetores
num_impar <- seq(1, 9, by = 2)
num_impar[2]  # Acessa o 2º elemento

# Data frames
dados_fertilizacao$pH  # Acessa a coluna pH
dados_fertilizacao[, 2]  # Acessa a segunda coluna
```

### 6. Análise Estatística Básica
```r
# ANOVA para comparar fertilizantes
modelo <- aov(altura ~ fertilizante, data = dados)
summary(modelo)
```

## 💡 Dicas e Boas Práticas
- Use nomes descritivos para variáveis (`media_altura` é melhor que `x`)
- Comente seu código para facilitar o entendimento
- Sempre verifique seus dados com `str()` e `summary()`
- Pratique regularmente!

## 📖 Recomendações de Leitura
- *The R Book* by Michael J. Crawley (a "Bíblia" do R)
- *R para Pesquisas Ecológicas*

## 🤔 Como Contribuir
Encontrou um erro ou tem sugestões? Sinta-se à vontade para:
1. Abrir uma issue
2. Enviar um pull request
3. Me mandar uma mensagem!

Boa programação e boas análises! 🌿📈

Feito com ❤️ por uma estudante de biologia apaixonada por R e ecologia.]
