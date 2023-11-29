# ANOVA
# Karla Cecilia Blanco Vásquez
# 10/10/2023
# Matrícula: 2133639


# Importar datos ----------------------------------------------------------

library(repmis)
DAP <- source_data(
  "https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1")

DAP$Paraje <- as.factor(DAP$Paraje)
DAP$SP <- as.factor(DAP$SP)
#Convertir características a factor


# Determinar estadística descriptiva --------------------------------------

boxplot(DAP$EDAD ~ DAP$Paraje)
boxplot(DAP$DAP ~ DAP$Paraje)

tapply(DAP$EDAD, DAP$Paraje, mean)
tapply(DAP$EDAD, DAP$Paraje, var)


# Normalidad revisar ------------------------------------------------------

shapiro.test(DAP$DAP)
hist(DAP$DAP,
     col = "purple")
# Los datos del DAP no son normales

bartlett.test(DAP$DAP ~ DAP$Paraje)
# Las varianzas de los tratamientos son iguales


# Transformar DAP para cumplir normalidad ---------------------------------

DAP$raiz <- sqrt(DAP$DAP)
hist(DAP$raiz,
     col = "pink")

# Probar normalidad a los datos transformados (raíz cuadrada)

shapiro.test(DAP$raiz)
# Los datos son normales

# Probar homogeneidad de varianzas de los datos transformados
bartlett.test(DAP$raiz ~ DAP$Paraje)


# Análisis de varianza ----------------------------------------------------

dap.aov <- aov(DAP$raiz ~ DAP$Paraje)
summary(dap.aov)
boxplot(DAP$raiz ~ DAP$Paraje, col = "lightblue")

# NOTAS:
# Sí hay diferencias significativas entre la variable
# La localidad hace cambios significativos entre el DAP de los árboles


# Prueba de Tukey ---------------------------------------------------------

TukeyHSD(dap.aov)
# Ayuda a determinar diferencias significativas entre los factores (parajes)

# Gráfica para observar diferencias significativas entre factores
plot(TukeyHSD(dap.aov))



