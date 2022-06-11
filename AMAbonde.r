#importando os dados

arquivos <- c("csv1S2017.csv",
              "csv1S2018.csv",
              "csv1S2019.csv",
              "csv1S2020.csv",
              "csv1S2021.csv",
              "csv2S2017.csv",
              "csv2S2018.csv",
              "csv2S2019.csv",
              "csv2S2020.csv",
              "csv2S2021.csv")

amaBonde <- data.frame()

for(a in arquivos){

amaRead <- read.csv(a, row.names = NULL, sep = ";", dec = ",")
amaBonde <- rbind(amaRead, amaBonde)

}

amaBonde

write.csv(amaBonde, "AMAbonde.csv")