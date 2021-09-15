###################################
# Script de instala??o dos pacotes 
# R version 4.1.1
##################################

## Usamos o seguinte comando para a instala??o dos pacotes que est?o no CRAN do R (fa?a isso caso estes pacotes NÃO ESTEJAM INSTALADOS). 
## Obs.: A instala??o n?o s? precisa ser feita uma vez. 

install.packages("raster")
install.packages("sp")
install.packages("devtools")
install.packages("remotes")
install.packages("rgdal")
install.packages("maptools")
remotes::install_github("marlonecobos/kuenm")

## Carregando pacotes necess?rios para instala??. 
#  Cada vez que q uma sess?o de R ? iniciada, ? preciso carregar os pacotes que ser?o usados, como abaixo:

library(remotes)
library(devtools)

## Instala??o modleR

#o modleR ainda n?o est? no CRAN do R, nesse caso a instala??o ?  diferente

# Instala??o com vinhetas (exemplos do pacote). Recomendada para quem tem uma melhor mem?ria RAM*
remotes::install_github("Model-R/modleR",
                        build = TRUE,
                        dependencies = TRUE,
                        build_opts = c("--no-resave-data", "--no-manual"),
                        build_vignettes = TRUE)

# Instala??o sem vinheta (sem os exemplos)
remotes::install_github("Model-R/modleR", build = TRUE)
#