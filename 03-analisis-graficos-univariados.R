# Instalo los paquetes necesarios (si aún no los tengo instalados)
# install.packages("tidyverse")
# install.packages("ggplot2")

# Cargo los paquetes que voy a usar
library(tidyverse)
library(ggplot2)

# Fijo el dataset
attach(datos_cuyo)

#####################
# Gráfico de barras #
#####################

datos_tipo_plagas %>%
  ggplot(aes(x = presencia)) +
  geom_bar(width = 0.75, fill = '#7ed021', col = "black", alpha = 0.6) +
  labs(y = "Cantidad de casas", x = "Tipo de plaga") +
  ggtitle("Frecuencia de plagas") +
  coord_flip() +
  theme_classic()

