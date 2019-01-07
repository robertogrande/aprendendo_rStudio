#Comandas para Liberar Pacotes
library(readr)
library(dplyr)

#Ler Arquivo CSV
PelicanStores <- read.csv2("C:\\Users\\rvgra\\OneDrive\\Mackenzie-Atividades\\02_Introducao_analise_estatistica\\PelicanStores.csv")

# Funcao para Calcular Moda Passada Pelo Professor
getmode <- function(v) {
  
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
  
}

# Comandos para Aprendizado
View(PelicanStores)
str(PelicanStores)
summary(PelicanStores)
PelicanStores[1:5,c("Itens","Vendas_Liquidas", "Idade") ]
table(PelicanStores[,"Tipo_Cliente"])
table(PelicanStores[,"Metodo_Pagamento"])
table(PelicanStores[,"Genero"])
table(PelicanStores[,"Estado_Civil"])


# Calculos Estatisticos pedidos no exercicio
df_medias <- data.frame(Variaveis = c("Itens", "Vendas_Liquidas", "Idade"), Media = apply(PelicanStores[,c("Itens", "Vendas_Liquidas", "Idade")], 2, mean))
df_medianas <- data.frame(Variaveis = c("Itens", "Vendas_Liquidas", "Idade"), Mediana = apply(PelicanStores[,c("Itens", "Vendas_Liquidas", "Idade")], 2, median))
df_Desvio_Padrao <- data.frame(Variaveis = c("Itens", "Vendas_Liquidas", "Idade"), Desvio_Padrao = apply(PelicanStores[,c("Itens", "Vendas_Liquidas", "Idade")], 2, sd))
df_Variancia <- data.frame(Variaveis = c("Itens", "Vendas_Liquidas", "Idade"), Variancia = apply(PelicanStores[,c("Itens", "Vendas_Liquidas", "Idade")], 2, var))
df_moda <- data.frame(Variaveis = c("Itens", "Vendas_Liquidas", "Idade"), Moda = apply(PelicanStores[,c("Itens", "Vendas_Liquidas", "Idade")], 2, getmode), row.names = NULL)
df_moda_2 <- data.frame(Variaveis = c("Tipo_Cliente", "Metodo_Pagamento", "Genero", "Estado_Civil"), Moda = apply(PelicanStores[,c("Tipo_Cliente", "Metodo_Pagamento", "Genero", "Estado_Civil")], 2, getmode), row.names = NULL)


#Montagem dos Frames
df_1 <- left_join(df_medias,df_medianas, by = "Variaveis")
df_2 <- left_join(df_1,df_Desvio_Padrao, by = "Variaveis")
df_final <- left_join(df_2,df_Variancia, by = "Variaveis")
df_final2 <- left_join(df_final,df_moda, by = "Variaveis")

