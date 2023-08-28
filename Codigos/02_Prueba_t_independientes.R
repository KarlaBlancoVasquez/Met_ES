# Karla Cecilia Blanco Vásquez
# 28/08/2023
# Matrícula: 2133639

# Dos tratamientos Ctrl y Fert, un grupo de plantas
# Prueba de t independiente


# Importar ----------------------------------------------------------------

setwd("C:/Repositorio_Git/Met_ES/Codigos")
vivero <- read.csv("IE.csv", header = T)


# Descriptivas ------------------------------------------------------------

# Usar la librería dplyr para seleccionar datos mediante
# restricciones

library(dplyr)

Ctrl <- vivero %>% 
  filter(Tratamiento == "Ctrl")

Fert <- vivero %>% 
  filter(Tratamiento == "Fert")

mean(Ctrl$IE)
mean(Fert$IE)


Descriptor <- vivero %>%
  group_by(Tratamiento) %>% 
  summarise(
    n = n(),
    media = mean(IE),
    mediana = median(IE),
    sd = sd(IE),
    var = var(IE)
  )

