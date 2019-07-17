## ----setup, include=FALSE------------------------------------------------
#knitr::opts_chunk$set(echo = TRUE, results='hide', fig.show = "hide")
#library(knitr)
#library(kableExtra)


## ----cars----------------------------------------------------------------
data("anscombe")


## ----summary, results='hide'---------------------------------------------
dim(anscombe) # dimensao dos dados, N de linhas e N de colunas
head(anscombe) # seis primeiras linhas dos dados
class(anscombe) # classe do objeto
str(anscombe) # estrutura do objeto


## ----pressure, results='hide'--------------------------------------------
mean(anscombe$x1)
mean(anscombe$x2)
mean(anscombe$x3)
mean(anscombe$x4)


## ---- results='hide'-----------------------------------------------------
# o mesmo calculo, agora apenas em 1 linha de comando
## media de todos os vetores x
apply(anscombe[,1:4], 2, mean) #aplica uma funcao a todas as linhas de um objeto

## media de todos os vetores y
apply(anscombe[,5:8], 2, mean)


## ---- results='hide'-----------------------------------------------------
# variância dos dados
apply(anscombe, 2, var) # aplica a funcao var a todas as linhas do objeto


## ---- results='hide'-----------------------------------------------------
# correlação
cor(anscombe$x1, anscombe$y1)
cor(anscombe$x2, anscombe$y2)
cor(anscombe$x3, anscombe$y3)
cor(anscombe$x4, anscombe$y4)

# coeficiente de regressão
## primeiro criamos objetos com as regressoes dos quatro conjuntos
m1 <- lm(anscombe$y1 ~ anscombe$x1)
m2 <- lm(anscombe$y2 ~ anscombe$x2)
m3 <- lm(anscombe$y3 ~ anscombe$x3)
m4 <- lm(anscombe$y4 ~ anscombe$x4)
m1 <- lm(y1 ~ x1, data=anscombe)
## vamos criar agora uma lista com todos os modelos para facilitar o trabalho
mlist <- list(m1, m2, m3, m4)
mlist[[1]]
summary(mlist[[1]])
coef(mlist[[1]])
## agora sim podemos calcular de forma menos repetitiva os coeficientes de regressao
lapply(mlist, coef) 


## ---- results='hide'-----------------------------------------------------
anscombe


## ---- results='hide', fig.show='hide'------------------------------------
# funcao par para definir as configuracoes da janela grafica entre em ?par
par(mfrow=c(2,2), #abre uma janela gráfica com 2 linhas  e 2 colunas
    las=1, # deixa as legendas dos eixos na vertical
    bty="l") # tipo do box do grafico em L 
plot(anscombe$y1 ~ anscombe$x1) #plot das variaveis
abline(mlist[[1]]) # adicionando a reta prevista pelo modelo de regressao
plot(anscombe$y2 ~ anscombe$x2)
abline(mlist[[2]])
plot(anscombe$y3 ~ anscombe$x3)
abline(mlist[[3]])
plot(anscombe$y4 ~ anscombe$x4)
abline(mlist[[4]])
par(mfrow=c(1,1)) # retorna a janela grafica para o padrao de 1 linha e 1 coluna


## ---- results='hide',echo=FALSE------------------------------------------
data(iris)


## ---- results='hide'-----------------------------------------------------
head(iris)
summary(iris) 


## ---- results="hide"-----------------------------------------------------
table(iris$Species)


## ---- results="hide"-----------------------------------------------------
# media do comprimento de sepala por especie
tapply(X = iris$Sepal.Length, INDEX = list(iris$Species), FUN = mean)
# a mesma tarefa, executada por outra funcao. Outros argumentos e outra saída
aggregate(x = iris$Sepal.Length, by = list(SL=iris$Species), FUN = mean)
# ainda a mesma tarefa, com a mesma função mas em uma notação diferente
aggregate(Sepal.Length ~ Species, data=iris, mean)


## ------------------------------------------------------------------------
aggregate(Sepal.Length ~ Species, data=iris, mean)
aggregate(Sepal.Width ~ Species, data=iris, mean)
aggregate(Petal.Length ~ Species, data=iris, mean)

iris.stat <- aggregate(Sepal.Length ~ Species,
                       data=iris, mean)
iris.stat$Sepal.Width <- aggregate(Sepal.Width ~ Species,
                       data=iris, mean)$Sepal.Width

iris.stat


## ------------------------------------------------------------------------
tapply(X = iris$Sepal.Length, INDEX = list(iris$Species), FUN = sd)
tapply(X = iris$Sepal.Width, INDEX = list(iris$Species), FUN = sd)
tapply(X = iris$Petal.Length, INDEX = list(iris$Species), FUN = sd)
tapply(X = iris$Petal.Width, INDEX = list(iris$Species), FUN = sd)


## ------------------------------------------------------------------------
# criando matriz de 3 colunas - uma para cada sp - e 4 linhas - uma para cada metrica
medias <- matrix(NA, ncol=3, nrow=4)
# definindo o nome das colunas e das linhas da matriz
colnames(medias) <- unique(iris$Species)
rownames(medias) <- names(iris)[-5]
for (i in 1:4){
medias[i,] <- tapply(iris[,i], iris$Species, mean)  
}

medias

## ---- echo=FALSE, results="show"-----------------------------------------
#knitr::kable(medias) %>% 
#  kable_styling(full_width = F)


## ------------------------------------------------------------------------
vars <- iris[,-5]
apply(vars, 2, mean)


## ------------------------------------------------------------------------
apply(vars, 2, median)


## ------------------------------------------------------------------------
freq_sl <- sort(table(iris$Sepal.Length), decreasing = TRUE)
freq_sl[1]


## ------------------------------------------------------------------------
apply(vars, 2, var)


## media na mao
a <- rnorm(100, 5, 1)

mean(a)

minha_media <- function(x) {
    sum(x)/length(x)
}
minha_media(a)


minha_var <- function(x){
    sum(((x-mean(x))^2)/(length(x)-1))
}
minha_var(a)
var(a)

## ------------------------------------------------------------------------
sd01 <- apply(vars, 2, sd)
# outra forma:
sd02 <- apply(vars, 2, function(x) sqrt(var(x)))
sd01
sd02
sd01==sd02


## ------------------------------------------------------------------------
cv <- function(x){
  sd(x)/mean(x)*100
}

apply(vars, 2, cv)


## ------------------------------------------------------------------------
# sumario de 5 numeros
apply(vars, 2, quantile)
# 5%, 50% e 95%
apply(vars, 2, quantile, probs=c(0.05, 0.5, 0.95))


## ------------------------------------------------------------------------
# a funcao range nos retorna os valores minimo e maximo
apply(vars, 2, range)
# aplicando a funcao diff ao resultado do range, temos o valor desejado
# uma boa pratica é nunca sobrescrever um objeto já existente no R, por isso
# nunca nomeie um objeto com um nome já existente
my_range <- function(x){ 
 diff(range(x)) 
}
apply(vars, 2, my_range)


## ------------------------------------------------------------------------
apply(vars, 2, IQR)


## ------------------------------------------------------------------------
cor(vars)


## ------------------------------------------------------------------------
barplot(table(iris$Species))


## ------------------------------------------------------------------------
par(mfrow=c(2,2))
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Length)
par(mfrow=c(1,1))


## ------------------------------------------------------------------------
par(mfrow=c(1,2))
hist(iris$Sepal.Width)
hist(iris$Sepal.Width, breaks = 4)
par(mfrow=c(1,1))


## ------------------------------------------------------------------------
par(mfrow=c(1,2))
hist(iris$Sepal.Width)
hist(iris$Sepal.Width, freq = FALSE)
par(mfrow=c(1,1))


## ------------------------------------------------------------------------
par(mfrow=c(1,2))
# plot da curva de densidade
plot(density(iris$Sepal.Width))
# plot da curva de densidade sobre o histograma de densidade
hist(iris$Sepal.Width, freq = FALSE)
lines(density(iris$Sepal.Width), col="blue") # note que agora estamos usando a funcao o comando add=TRUE
par(mfrow=c(1,1))


## ---- echo=FALSE, fig.show='asis', fig.align='center'--------------------
set.seed(2)
par(bty="n")
bp <- rnorm(1000, 0, 0.1)
boxplot(bp, yaxt="n", xlim=c(0,3), ylim=c(-0.3, 0.3))
text(x=1.82, y=min(bp), "último ponto (-1,5 x IIQ)", cex=.9)
text(x=1.72, y=quantile(bp)[2], "primeiro quartil", cex=.9)
text(x=1.72, y=median(bp), "mediana", cex=.9)
text(x=1.72, y=quantile(bp)[4], "terceiro quartil", cex=.9)
text(x=1.82, y=bp[203], "último ponto (+1,5 x IIQ)", cex=.9)
arrows(x0=0.68, x1 = 0.68, y0=quantile(bp)[2], y1=quantile(bp)[4], code=3, length=0.05)
text(x=0.54, y=median(bp), "IIQ", cex=.9)


## ------------------------------------------------------------------------
boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Width)
boxplot(iris$Petal.Length)
boxplot(iris$Petal.Width)


## ------------------------------------------------------------------------
boxplot(Sepal.Length ~ Species, data=iris)
boxplot(Sepal.Width ~ Species, data=iris)
boxplot(Petal.Length ~ Species, data=iris)
boxplot(Petal.Width ~ Species, data=iris)


## ------------------------------------------------------------------------
boxplot(iris$Sepal.Width)
my_boxplot <- boxplot(iris$Sepal.Width, plot=FALSE)
my_boxplot[[4]]
# o objeto é uma lista e os valores outliers estão guardados no elemento $out da lista
outliers <- my_boxplot$out
#qual a posicao dos outliers
which(iris$Sepal.Width %in% outliers)
# vamos usar a posicao para indexar o objeto
iris[iris$Sepal.Width %in% outliers, c("Sepal.Width", "Species")]


## ------------------------------------------------------------------------
boxplot(Sepal.Width ~ Species, data=iris)
my_boxplot2 <- boxplot(Sepal.Width ~ Species, data=iris, plot=FALSE)
my_boxplot2
# o objeto é uma lista e os valores outliers estão guardados no elemento $out da lista
outliers2 <- my_boxplot2$out
# neste caso, queremos apenas os outliers da especie setosa
# vamos usar a posicao para indexar o objeto
iris[iris$Sepal.Width %in% outliers2 & 
       iris$Species=="setosa", 
     c("Sepal.Width", "Species")]


## ------------------------------------------------------------------------
par(mfrow=c(1,3))
qqnorm(iris$Sepal.Length[iris$Species=="setosa"], 
       main="setosa")
qqline(iris$Sepal.Length[iris$Species=="setosa"])
qqnorm(iris$Sepal.Length[iris$Species=="versicolor"], 
       main="versicolor")
qqline(iris$Sepal.Length[iris$Species=="versicolor"])
qqnorm(iris$Sepal.Length[iris$Species=="virginica"], 
       main="virginica")
qqline(iris$Sepal.Length[iris$Species=="virginica"])
par(mfrow=c(1,1))


## ----pairs---------------------------------------------------------------
pairs(vars)


## ----ggally, message=FALSE-----------------------------------------------
# carregando o pacote GGally
## se você não tiver o pacote usar:
# install.packages("GGally")
## se já tiver o pacote, apenas carregue
library(GGally)
ggpairs(vars)

