# Instalo los paquetes necesarios (si aún no los tengo instalados)
# install.packages("tidyverse")

# Cargo los paquetes que voy a usar
library(tidyverse)

# Fijo el dataset
attach(datos)

######################
# Renombrar columnas #
######################
colnames(datos)[c(2, 4, 7, 90, 92, 93, 94, 95, 117)] <- c("provincia","TiempoVivido", "CantFamilias", "alumbrado", "plagas", "cuarachas", "mosquitos", "ratas", "recoleccionDeBasura")

###################
# Modificar datos #
###################
datos_cuyo <- datos %>%
  
  filter(provincia %in% c("Mendoza", "La Rioja")) %>%
  
  mutate(
    alumbrado = recode(alumbrado, "Sí, hechas por el Estado (municipio, provincia o Estado nacional)" = "Sí, hechas por el Estado")
  )
##########################################
# Seleccionar un subconjunto de columnas #
##########################################

#Primer analisis
datos_analisis_1 <- datos_cuyo %>%
  select(   # Seleccionar las columnas que quiero conservar
    recoleccionDeBasura, plagas
  )

datos_analisis_2 <- datos_cuyo %>%
  select(   # Seleccionar las columnas que quiero conservar
    TiempoVivido, CantFamilias
  )

datos_analisis_3 <- datos_cuyo %>%
  select(   # Seleccionar las columnas que quiero conservar
    TiempoVivido, alumbrado 
  )

tipo_plagas <- datos_cuyo %>%
  select(cuarachas, mosquitos, ratas)

datos_tipo_plagas <- tipo_plagas %>%
  pivot_longer(cols = everything(), names_to = "plaga", values_to = "presencia") %>%
  filter(!is.na(presencia))



