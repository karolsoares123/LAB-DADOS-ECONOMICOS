# AULA 3

#a <- 1 + 1
#b <- 9 - 3 
# c <- 9 : 3 

#PACOTE tidyverse


#install.packages("tidyverse")
library(tidyverse) #CARREGAR A BIBLIOTECA

# WDI - WORLD DEVELOPMENT INDICATORS 
# BASE DE DADOS DO BANCO MUNDIAL

#install.packages("WDI")
library(WDI)

#SEMPRE PROCUREM AS VIGNETTES
#PÁGINAS COM ORIENTAÇÕES DOS PACOTES

#BAIXAR OS DADOS DO PIB 
#TUDO QUE ÉPRODUZIDO EM UM PAÍS /ESTADO/MUN.
#EM UM DETERMINADO PERÍODO

#	GDP (current US$)(NY.GDP.MKTP.CD) 
# GROSS DOMESTIC PRODUCT (GDP) EM DÓLARES NORTE-AMERICANOS
# CÓDIGO NY .GDP.MKTP.CD

COD_GDP <- WDIsearch('gdp') 
# É IMPORTANTE PROCURAR PELO PRÓPRIO 
# SITE DO BANCO MUNDIAL, É MAIS EFICIENTE

# COM O CÓDIGO, 

options(scipen = 999)
basepib <- WDI(country = 'all',indicator = 'NY.GDP.MKTP.CD') 

basepib2023 <- WDI(country = 'all',indicator = 'NY.GDP.MKTP.CD', 
                   start = 2023, end = 2023) 
               