# Atividade Prática 12
# Elton Dantas de Oliveira Mesquita

# Pacotes usados
library(rvest)
library(dplyr)
library(stringr)

# Obtendo a página html
url = read_html("https://www.chancedegol.com.br/br21.htm")

# Extraindo as tabelas da página contidas nos nodes tipo table
tables = url %>% html_nodes("table") %>% html_table(header = T)

# Selecionando a tabela 'Jogos Realizados'
jogos = tables[[8]]

# Nomeando a coluna vazia
colnames(jogos)[3] = "Placar"

# Transformações nas colunas: nomes, formatos e posições
jogos = jogos %>%
  rename(VitoriaMandante = `Vitória doMandante`,
         VitoriaVisitante = `Vitória doVisitante`) %>% 
  mutate(GolsMandante = as.numeric(str_split(jogos$Placar,"x",simplify = T)[,1]),
         GolsVisitante = as.numeric(str_split(jogos$Placar,"x",simplify = T)[,2]),
         Data = as.Date(Data,format="%d/%m/%Y"),
         VitoriaMandante = as.numeric(str_remove(VitoriaMandante," %")),
         Empate = as.numeric(str_remove(Empate," %")),
         VitoriaVisitante = as.numeric(str_remove(VitoriaVisitante," %"))
         ) %>%
  select(-Placar) %>% 
  relocate(GolsMandante,GolsVisitante,.after = Mandante)

# Exportando tabela
write.csv(jogos,"jogos_realizados.csv",row.names = F)
