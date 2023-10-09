# Correlación
# Karla Cecilia Blanco Vásquez
# 02/10/2023
# Matrícula: 2133639


# Importar ----------------------------------------------------------------

library(repmis)
erupciones <- source_data ("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")


# Estadística descriptiva -------------------------------------------------

mean(erupciones$eruptions); var(erupciones$eruptions); sd(erupciones$eruptions)
mean(erupciones$waiting); var(erupciones$waiting); sd(erupciones$waiting)


# Correlación ---------------------------------------------------------------

cor.test(erupciones$eruptions, erupciones$waiting)

# El coeficiente de correlación es 0.90


# Gráfica -----------------------------------------------------------------

plot(erupciones$waiting, erupciones$eruptions,
     xlab = "Erupciones",
     ylab = "Duración",
     pch = 15,
     col = "purple")


# Hipótesis -------------------------------------------------------------

# Sí existe una correlación lineal, la correlación es altamente significativa
# La hipótesis es alternativa porque el p-value es menor a 0.05
