# # Creamos la tabla y la transformamos en un dataframe para el gráfico
# tabla_contingencia <- datos_analisis_1 %>%
#   tabyl(recoleccionDeBasura, plagas) %>%
#   adorn_totals(where = c("row", "col")) %>%
#   rename(
#     "Frecuencia de recolección" = recoleccionDeBasura,
#     "No hay plagas" = No,
#     "Hay plagas" = Sí
#   ) %>%
#   gather(key = "Plagas", value = "Frecuencia", -`Frecuencia de recolección`)  # Convertimos de wide a long format
# 
# # Ahora graficamos usando ggplot
# ggplot(tabla_contingencia, aes(x = `Frecuencia de recolección`, y = Frecuencia, fill = Plagas)) +
#   geom_bar(stat = "identity", position = "dodge") +
#   labs(title = "Frecuencia de Recolección de Basura y Plagas",
#        x = "Frecuencia de Recolección",
#        y = "Frecuencia",
#        fill = "Plagas") +
#   theme_minimal()
