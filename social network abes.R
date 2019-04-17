# Social Network grupo de pesquisa

# Exemplo de matriz necess�ria para produzir a social network
# Ver em https://raw.githubusercontent.com/wagnerLM/abes/master/snmatrixabes
abes_sn<-read.csv("https://raw.githubusercontent.com/wagnerLM/abes/master/snmatrixabes",sep=";")
abes_sn<-as.matrix(abes_sn)
rownames(abes_sn)<-colnames(abes_sn)
install.packages("qgraph")
library(qgraph)
qgraph(abes_sn,layout="spring",labels=colnames(abes_sn),groups=list("Coordenador"=1,"Doutorand@s"=c(2,3,4,5),"Mestrand@s"=c(6,7),"Inicia��o Cient�fica"=c(8,9,10,11,12)),legend.cex=0.5,palette="pastel",border.color=c("black","yellow","blue","yellow","yellow","blue","blue","yellow","blue","yellow","yellow","blue"),border.width=3,title="Grupo de Pesquisa Avalia��o em Bem-estar e Sa�de Mental")
# layout="spring" aplica o algoritmo de posicionamento
# labels � o vetor dos nomes dos v�rtices
# groups � uma lista de subgrupos na rede
# legend.cex, palette, border.color e border.width s�o comandos adicionais, est�ticos
# title  � o t�tulo do grafo 