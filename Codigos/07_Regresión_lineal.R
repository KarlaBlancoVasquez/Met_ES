# Regresión lineal
# Karla Cecilia Blanco Vásquez
# 09/10/2023
# Matrícula: 2133639


# Importar datos ----------------------------------------------------------

library(repmis)
erupciones <- source_data ("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")


# Gráfica -----------------------------------------------------------------

plot(erupciones$waiting, erupciones$eruptions,
     xlab = "Tiempo de espera (min)",
     ylab = "Duración (min)",
     pch = 15,
     col = "purple")

erup.lm <- lm(erupciones$eruptions ~ erupciones$waiting)

erup.lm
# Obtenemos el valor de alfa y beta


summary(erup.lm)
# Obtener la significancia de alfa y beta


erupciones$yprima <- -1.874016 + 0.075628* erupciones$waiting
erupciones$estimados <- erup.lm$fitted.values


# Línea de tendencia central ----------------------------------------------

plot(erupciones$waiting, erupciones$eruptions,
     xlab = "Tiempo de espera (min)",
     ylab = "Duración (min)",
     pch = 15,
     col = "purple")

abline(erup.lm,
       col = "red")
# abline sirve para desplegar la línea de tendencia central



range(erupciones$waiting)
# El rango de los valores de x son mi ventana de predicción para yprima


# Aplicar fórmula para yprima
erup <- c(80, 43, 45, 53, 61, 95) # Valores de X dentro del rango observado
y.pr <- -1.874016 + 0.075628*erup
erup
y.pr


# Aplicar la fórmula de manera individual
# alfa + beta * valor de x
-1.874016 + 0.075628*80
-1.874016 + 0.075628*43



