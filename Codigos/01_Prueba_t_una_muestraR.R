# Karla Cecilia Blanco Vásquez
# 21/08/2023
# Matrícula: 2133639


# Importar datos ----------------------------------------------------------
# Función read.csv (sirve para importar datos csv a R)

mediciones <- read.csv("mediciones.csv", header = TRUE)
setwd("C:/Repositorio_Git/Met_ES/Codigos")
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


# Hipótesis ---------------------------------------------------------------

# xobs = 10.17 vs xteo = 11
# Plantas de cedro deben alcanzar una altura de 11 cm en un año
# de acuerdo a lo dicho por viveristas.
# El valor de alfa referencia es 0.05


# Procedimiento -----------------------------------------------------------

# Aplicar la fución t.test

t.test(mediciones$Altura, mu = 11)
t.test(mediciones$Altura, mu = 10.5)
t.test(mediciones$Altura, mu = 10.6)
t.test(mediciones$Altura, mu = 10.55)


# Replicabilidad ----------------------------------------------------------

# Guardadr la prueba de t en un objeto llamado "prueba"
prueba <- t.test(mediciones$Altura, mu = 11)

# Conocer los grados de libertad
prueba$parameter

# Conocer el p-value
prueba$p.value
# Se acepta la hipótesis alternativa (H1)

# Conocer intérvalos de confianza
prueba$conf.int









