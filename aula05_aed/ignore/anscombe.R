data(anscombe)

dim(anscombe)

head(anscombe)
tail(anscombe)

#media dos dados
mean(anscombe$x1)
mean(anscombe$x2)
mean(anscombe$x3)
mean(anscombe$x4)

# o mesmo calculo, agora apenas em 1 linha de comando
## media de todos os vetores x
apply(anscombe[,1:4], 2, mean)

## media de todos os vetores y
apply(anscombe[,5:8], 2, mean)

