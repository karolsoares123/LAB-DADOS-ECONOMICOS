library(tidyverse) 

# DADOS EM PAINEL 

grafpainel <- ggplot(dadospib, 
                     mapping = aes(y = NY.GDP.MKTP.CD, 
                                   x = year)) + 
  geom_point()   

print(grafpainel)  

# CORTE TRANSVERSAL

grafcorte <- ggplot(dadospib2023, 
                     mapping = aes(y = NY.GDP.MKTP.CD, 
                                   x = year)) + 
  geom_point() 

print(grafcorte)   

# SÉRIE TEMPORAL 

grafserie <- ggplot(dadospibbr, 
                    mapping = aes(y = NY.GDP.MKTP.CD, 
                                  x = year)) + 
  geom_line() 

print(grafserie)  

# ATIVIDADE: REFAZER OS GRÁFICOS COM NOVA VARIÁVEL

# DADOS EM PAINEL

Graf.Agr.for.fish. <- ggplot(Agr.for.fish., 
                     mapping = aes(y = NV.AGR.TOTL.ZS, 
                                   x = year)) + 
  geom_point() 

print(Graf.Agr.for.fish.)  

# CORTE TRANSVERSAL

GRAF.AFF.2022 <- ggplot(Agr.for.fish.2022, 
                    mapping = aes(y = NV.AGR.TOTL.ZS, 
                                  x = year)) + 
  geom_point() 

print(GRAF.AFF.2022)   

# SÉRIE TEMPORAL 

GRAF.AFF.RF <- ggplot(Agr.for.fish.RF, 
                    mapping = aes(y = NV.AGR.TOTL.ZS, 
                                  x = year)) + 
  geom_line()  

print(GRAF.AFF.RF)  
