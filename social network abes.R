# Social Network grupo de pesquisa

# Exemplo de matriz necessária para produzir a social network
# Ver em https://raw.githubusercontent.com/wagnerLM/abes/master/snmatrixabes
abes_sn<-read.csv("https://raw.githubusercontent.com/wagnerLM/abes/master/snmatrixabes",sep=";")
abes_sn<-as.matrix(abes_sn)
rownames(abes_sn)<-colnames(abes_sn)
install.packages("qgraph")
library(qgraph)
qgraph(abes_sn,layout="spring",labels=colnames(abes_sn),groups=list("Coordenador"=1,"Doutorand@s"=c(2,3,4,5),"Mestrand@s"=c(6,7),"Iniciação Científica"=c(8,9,10,11,12)),legend.cex=0.5,palette="pastel",border.color=c("black","yellow","blue","yellow","yellow","blue","blue","yellow","blue","yellow","yellow","blue"),border.width=3,title="Grupo de Pesquisa Avaliação em Bem-estar e Saúde Mental")
# layout="spring" aplica o algoritmo de posicionamento
# labels é o vetor dos nomes dos vértices
# groups é uma lista de subgrupos na rede
# legend.cex, palette, border.color e border.width são comandos adicionais, estéticos
# title  é o título do grafo 