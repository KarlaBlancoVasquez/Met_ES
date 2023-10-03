# Karla Cecilia Blanco Vásquez
# 05/09/2023
# Matrícula: 2133639

# Dos tratamientos A y B, un grupo de plantas
# Prueba de t independiente


# Importar ----------------------------------------------------------------

setwd("C:/Repositorio_Git/Met_ES/Codigos")
plantacion <- read.csv("TAB.csv", header = T)


# Descriptivas ------------------------------------------------------------

# Usar la librería dplyr para seleccionar datos mediante
# restricciones

library(dplyr)

Ta <- plantacion %>% 
  filter(Tratamiento == "Ta")

Tb <- plantacion %>% 
  filter(Tratamiento == "Tb")

mean(Ta$Altura)
mean(Tb$Altura)


Descriptivo <- plantacion %>%
  group_by(Tratamiento) %>% 
  summarise(
    n = n(),
    media = mean(Altura),
    mediana = median(Altura),
    sd = sd(Altura),
    var = var(Altura)
  )
Descriptivo


# Gráfica--------------------------------------------------------------

boxplot(plantacion$Altura ~ plantacion$Tratamiento,
        xlab = "Tratamiento",
        ylab = "Índice Altura",
        main = "Plantación",
        col = "Sky Blue")

t.test(plantacion$Altura ~ plantacion$Tratamiento, var.equal = T)



# Conclusiones ------------------------------------------------------------

# Basándome en los resultados obtenidos de la gráfica, las medidas de dispersión,
# las medidas de tendencia central y la mu, he llegado a la conclusión de que sí
# existe una diferencia significativa entre el Ta y el Tb, ya que el p-value
# tuvo un valor mucho menor a 0.05, ademas de que el promedio de los dos
# tratamientos varía significativamente.



