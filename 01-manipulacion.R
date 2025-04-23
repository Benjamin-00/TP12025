# Instalo los paquetes necesarios (si aún no los tengo instalados)
# install.packages("tidyverse")

# Cargo los paquetes que voy a usar
library(tidyverse)

# Fijo el dataset
attach(datos)

######################
# Renombrar columnas #
######################
colnames(datos)[c(2, 92, 117)] <- c("provincia", "plagas", "recoleccionDeBasura")

###################
# Modificar datos #
###################
datos_cuyo <- datos %>%
  
  filter(provincia %in% c("Mendoza", "La Rioja")) %>%
  
  mutate(
    # transformaciones
  )
##########################################
# Seleccionar un subconjunto de columnas #
##########################################

#Primer analisis
datos_analisis_1 <- datos_cuyo %>%
  select(   # Seleccionar las columnas que quiero conservar
    recoleccionDeBasura, plagas
  )



###########################################
# Seleccionar un subconjunto de registros #
###########################################

