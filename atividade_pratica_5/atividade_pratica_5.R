# Atividade Prática 5
# Elton Dantas de Oliveira Mesquita

# Importe os dados de vacinação da Paraíba disponíveis em
# https://opendatasus.saude.gov.br/dataset/covid-19-vacinacao/resource/ef3bd0b8-b605-474b-9ae5-c97390c197a8
library(data.table)
dadosPB = fread("https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/PNI/vacina/uf/2021-07-25/uf%3DPB/part-00000-aeb972b4-048f-45b7-b64a-676df10fdd49.c000.csv",
                header = T,encoding = "UTF-8")
View(dadosPB)

# Crie um novo conjunto de dados que considera apenas as informações de Campina Grande
library(dplyr)
dadosCG = dadosPB %>% filter(estabelecimento_municipio_nome == "CAMPINA GRANDE")
View(dadosCG)

# Exporte para um arquivo .csv
fwrite(dadosCG,"dadosCampinaGrande.csv")
