# Instalo los paquetes necesarios (si aún no los tengo instalados)
# install.packages("tidyverse")
# install.packages("janitor")

# Cargo los paquetes que voy a usar
library(tidyverse)
library(janitor)

# Fijo el dataset
attach(datos_cuyo)

datos_analisis_1 %>%
  tabyl(recoleccionDeBasura, plagas) %>%
  adorn_totals(where = c("row", "col")) %>%
  rename(
    "Frecuencia de recolección" = recoleccionDeBasura,
    "No hay plagas" = No,
    "Hay plagas" = Sí
  )
