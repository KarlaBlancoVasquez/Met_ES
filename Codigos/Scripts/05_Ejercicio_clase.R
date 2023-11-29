# Conjunto de datos para correlación
# Karla Cecilia Blanco Vásquez
# 26/09/2023
# Matrícula: 2133639


# Crear la base de datos --------------------------------------------------

x <- c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y <- c(9.14, 8.14, 8.74, 8.77, 9.26, 8.10, 6.13, 3.10, 9.13, 7.26, 4.74)


# Crear una data.frame con las variables x and y

d2 <- data.frame(x,y)


# Estadísticas descriptivas -----------------------------------------------

mean(d2$x); var(d2$x)
mean(d2$y); var(d2$y)


# Aplicar correlación -----------------------------------------------------

cor.test(d2$x, d2$y)


# Gráfica -----------------------------------------------------------------

plot(d2$x, d2$y,
     xlab = "Valor X",
     ylab = "Valor Y",
     pch = 2,
     col = "orange")

# No existe una correlación lineal porque los datos no están distribuidos a lo
# largo de la línea que los atraviesa








