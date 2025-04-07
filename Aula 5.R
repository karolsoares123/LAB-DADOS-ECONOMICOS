# API (FORMA DE ACESSO)
# DADOS DO BANCO MUNDIAL (WORLD BANK)
# WORLD DEVELOPMENT INDICATORS (BASE DE DADOS)

# NA AULA PASSADA, ACESSAMOS OS DADOS DO PIB
# PRODUTO INTERNO BRUTO 

library(WDI) # CARREGAR A BIBLIOTECA / PACOTE 

options(scipen =999) #AJUSTA A NOT. CIENT.

# DADOS EM PAINEL (vários locais, város períodos)
dadospib <- WDI(country = 'all',
                indicator = 'NY.GDP.MKTP.CD') 

# CORTE TRANSVERSAL (vários locais, um período)
dadospib2023 <- WDI(country = 'all',
                    indicator = 'NY.GDP.MKTP.CD',
                    start = 2023, end = 2023) 

# SÉRIE TEMPORAL (um local, vários períodos) 
dadospibbr <- WDI(country = 'BR',
                  indicator = 'NY.GDP.MKTP.CD') 


#TAREFA LOCAL ESCOLHIDO: RÚSISIA 

#DADOS EM PAINEL (Agriculture, forestry, and fishing, value added (% of GDP))
Agr.for.fish. <- WDI(country = 'all',
                     indicator = 'NV.AGR.TOTL.ZS')  

#CORTE TRANSVERSAL 
Agr.for.fish.2022 <- WDI(country = 'all',
                     indicator = 'NV.AGR.TOTL.ZS', 
                     start = 2022, end = 2022) 

#SÉRIE TEMPORAL
Agr.for.fish.RF <- WDI(country = 'RUS',
                     indicator = 'NV.AGR.TOTL.ZS') 

