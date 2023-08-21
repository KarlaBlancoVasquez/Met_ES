# Karla Cecilia Blanco Vásquez
# 21/08/2023
# Matrícula: 2133639


# Importar datos ----------------------------------------------------------
# Función read.csv (sirve para importar datos csv a R)

mediciones <- read.csv("Codigos/mediciones.csv", header = TRUE)
head(mediciones) # función head (sirve para ver primeros 6 datos)


# Descriptivas ------------------------------------------------------------
# medidas de tendencia central media. mediana, rango

mean(mediciones$Altura)
median(mediciones$Altura)
range(mediciones$Altura)
fivenum(mediciones$Altura)

# medidaS de dispersión desviación estándar, varianza

sd(mediciones$Altura)
var(mediciones$Altura)


# Gráficas ----------------------------------------------------------------

boxplot(mediciones$Altura, col = "purple",
        ylab = "Altura (cm)",
        main = "Sitio 1",
        ylim =c (6,14))
