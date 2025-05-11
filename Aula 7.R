# FAZER OS GRÁFICOS DA ATIVIDADE ANTERIOR SÓ QUE MELHORES E COM CHAT GPT

# DADOS EM PAINEL
library(ggplot2) 

Graf.Agr.for.fish. <- ggplot(Agr.for.fish., 
                             aes(x = year, y = NV.AGR.TOTL.ZS)) + 
  geom_point(alpha = 0.5) +  # pontos com transparência para melhor visualização
  geom_smooth(se = FALSE, color = "blue", size = 1.2) +  # linha de tendência
  labs(title = "Valor adicionado pela agricultura, floresta e pesca",
       x = "Ano",
       y = "% do PIB") 

print(Graf.Agr.for.fish.) 



# CORTE TRANSVERSAL 
# Converter o ano para inteiro
Agr.for.fish.2022$ano <- as.integer(Agr.for.fish.2022$year) 

GRAF.AFF.2022 <- ggplot(Agr.for.fish.2022, 
                        mapping = aes(x = ano, y = NV.AGR.TOTL.ZS)) + 
  geom_point() +  # todos os pontos
  geom_point(data = subset(Agr.for.fish.2022, year == 2022), 
             aes(x = ano, y = NV.AGR.TOTL.ZS), 
             color = "red", size = 3) +  # ponto de 2022 em vermelho
  geom_point(data = subset(Agr.for.fish.2022, country == "Russia"), 
             aes(x = ano, y = NV.AGR.TOTL.ZS), 
             color = "blue", size = 3) +  # Rússia em azul
  labs(title = "Valor adicionado pela agricultura, florestal e pescaria em 2022",
       x = "Ano",
       y = "% do PIB") +
  scale_x_continuous(breaks = unique(Agr.for.fish.2022$ano)) +  # mostra apenas os anos
  theme_minimal() 

print(GRAF.AFF.2022) 


# SÉRIE TEMPORAL (RÚSSIA)
library(scales)    # necessário para usar label_percent()

# Filtrando os dados para o intervalo desejado
Agr.for.fish.RF.filtrado <- subset(Agr.for.fish.RF, year >= 1989 & year <= 2023) 

GRAF.AFF.RF <- ggplot(Agr.for.fish.RF.filtrado, 
                      mapping = aes(x = year, y = NV.AGR.TOTL.ZS / 100)) + 
  geom_line() +  # linha com todos os dados
  geom_point(data = subset(Agr.for.fish.RF.filtrado, year %in% c(1989, 1990, 1991)), 
             aes(x = year, y = NV.AGR.TOTL.ZS / 100), 
             color = "red", size = 3) +  # destaques em vermelho
  labs(title = "Valor adicionado da agricultura, floresta e pescaria da Rússia",
       x = "Ano",
       y = "% do PIB") +
  scale_y_continuous(labels = label_percent(accuracy = 1)) +
  scale_x_continuous(breaks = seq(1989, 2023, by = 4)) +  # espaçamento maior
  theme_minimal() 

print(GRAF.AFF.RF) 



