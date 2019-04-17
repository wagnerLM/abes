# Social Network grupo de pesquisa

# Exemplo de matriz necessária para produzir a social network
# Ver em https://raw.githubusercontent.com/wagnerLM/abes/master/snmatrixabes
abes_sn<-read.csv("https://raw.githubusercontent.com/wagnerLM/abes/master/snmatrixabes",sep=";")
View(abes_sn)
abes_sn<-as.matrix(abes_sn)
rownames(abes_sn)<-colnames(abes_sn)
install.packages("qgraph")
library(qgraph)
qgraph(abes_sn,layout="spring",labels=colnames(abes_sn),groups=list("Coordenador"=1,"Doutorand@s"=c(2,3,4,5),"Mestrand@s"=c(6,7),"Iniciação Científica"=c(8,9,10,11,12,13)),title="Grupo de Pesquisa Avaliação em Bem-estar e Saúde Mental (ABES)",edge.color="blue",vsize=c(25,10,10,10,10,10,10,10,10,10,10,10,10),color=c("firebrick2","dodgerblue3","deepskyblue","lightblue1"),shape=c("diamond","square","circle","square","square","circle","circle","square","circle","square","circle","circle","circle"),borders=F,label.scale=F,label.cex=1.5,title.cex=1.3,GLratio=2.2,legend.cex=0.6)
# Sobre os argumentos da função, use ?qgraph