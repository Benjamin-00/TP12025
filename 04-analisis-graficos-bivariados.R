# Instalo los paquetes necesarios (si aún no los tengo instalados)
# install.packages("tidyverse")
# install.packages("ggplot2")

# Cargo los paquetes que voy a usar
library(tidyverse)
library(ggplot2)

# Fijo el dataset
attach(datos_cuyo)

##########################
# Diagrama de dispersión #
##########################

ggplot(datos_analisis_2) +
  aes(x = TiempoVivido, y = CantFamilias) +
  geom_point() +
  labs(x = "Tiempo vivido", y = "N° familias en casa")+
  ggtitle("Relación entre el tiempo vivido a la cantidad de familias") +
  theme_classic()

########################
# Boxplot comparativos #
########################

ggplot(datos_analisis_3) +
  aes(x = alumbrado, y = TiempoVivido) +
  geom_boxplot(show.legend = F, fill = "lightblue") +
  labs(x = "Tiene alumbrado", y = "Tiempo vivido") +
  coord_flip() +
  ggtitle("Distribución del alumbrado publico") +
  theme_light()

