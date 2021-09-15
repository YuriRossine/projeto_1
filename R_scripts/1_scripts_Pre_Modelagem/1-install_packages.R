###################################
# Script de instalação dos pacotes 
# R version 4.1.1
##################################

## Usamos o seguinte comando para a instalação dos pacotes que estão no CRAN do R (faça isso caso estes pacotes NÃƒO ESTEJAM INSTALADOS). 
## Obs.: A instalação não só precisa ser feita uma vez. 

install.packages("raster")
install.packages("sp")
install.packages("devtools")
install.packages("remotes")
install.packages("rgdal")
install.packages("maptools")
remotes::install_github("marlonecobos/kuenm")

## Carregando pacotes necessários para instalaçã. 
#  Cada vez que q uma sessão de R é iniciada, é preciso carregar os pacotes que serão usados, como abaixo:

library(remotes)
library(devtools)

## Instalação modleR

#o modleR ainda não está no CRAN do R, nesse caso a instalação é  diferente

# Instalação com vinhetas (exemplos do pacote). Recomendada para quem tem uma melhor memória RAM*
remotes::install_github("Model-R/modleR",
                        build = TRUE,
                        dependencies = TRUE,
                        build_opts = c("--no-resave-data", "--no-manual"),
                        build_vignettes = TRUE)

# Instalação sem vinheta (sem os exemplos)
remotes::install_github("Model-R/modleR", build = TRUE)
