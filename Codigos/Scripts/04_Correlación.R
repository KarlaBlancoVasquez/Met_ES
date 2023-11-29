# Correlación
# Karla Cecilia Blanco Vásquez
# 25/09/2023
# Matrícula: 2133639


# Importar ----------------------------------------------------------------

setwd("C:/Repositorio_Git/Met_ES/Codigos")

Cnpy <- read.csv("canopy.csv", header = T)
Cnpy$Forest <- as.factor(Cnpy$Forest)


# Gráfica -----------------------------------------------------------------

plot(Cnpy$Cnpy, Cnpy$LAI4)
# Asociación negativa entre Cnpy vs LAI4

plot(Cnpy$Cnpy, Cnpy$GLI)
# Asociación positiva entre Cnpy vs GLI

plot(Cnpy$LAI4, Cnpy$GLI)
# Asociación negativa entre LAI vs GLI


# Personalizar gráfica ----------------------------------------------------

plot(Cnpy$Cnpy, Cnpy$LAI4,
     xlab = "Apertura dosel (%)",
     ylab = "Área foliar",
     col = "Lightblue",
     pch = 19,
     main = "Bosque escuela")

cor.test(Cnpy$Cnpy, Cnpy$LAI4)
text (25,1.2, "r = -0.83***")
# Asociación negativa entre entre Cnpy vs LAI4
# Correlación altamente significativa


plot(Cnpy$Cnpy, Cnpy$GLI,
     xlab = "Apertura dosel (%)",
     ylab = "GLI",
     col = "pink",
     pch = 19,
     main = "Bosque escuela")

cor.test(Cnpy$Cnpy, Cnpy$GLI)
text (25, 30, "r = 0.54**")
# Asociación positiva entre Cnpy vs GLI
# Correlación altamente significativa


plot(Cnpy$LAI4, Cnpy$GLI,
     xlab = "Área foliar",
     ylab = "GLI",
     col = "purple",
     pch = 19,
     main = "Bosque escuela")

cor.test(Cnpy$LAI4, Cnpy$GLI)
text (1.1, 30, "r = -0.69***")
# Asociación negativa entre LAI4 vs GLI
# Correlación altamente significativa

