# Atividade Prática 10
# Elton Dantas de Oliveira Mesquita

# Unindo os dados
dados = cbind(read.csv("dados_parte1.csv"), read.csv("dados_parte2.csv")[2])

# Renomeando as colunas
colnames(dados) = c("id","nota1","nota2")

# Resultado
dados

# Exportando os dados
write.csv(x = dados, file = "dados.csv",row.names = F)
