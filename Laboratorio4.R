# Pruebas de t
# caso de Muestras independientes
# MAGT
# 27/08/2025

# Importar datos de Índice de calidad

calidad <- read.csv("Calidad_planta.csv", header = T)

calidad$Tratamiento <- as.factor(calidad$Tratamiento)

colores <- c("navajowhite", "skyblue")
boxplot(calidad$IE ~ calidad$Tratamiento,
        col= colores,
        xlab = "Tratamientos",
        ylab = "índice calidad",
        ylim = c(0.4,1.2),
        main = "Vivero Iturbide")

# Estadistica descriptivas
# tapply sirve para obtener un valor cuando contamos
# con varios grupos

tapply(calidad$IE, calidad$Tratamiento, mean)
tapply(calidad$IE, calidad$Tratamiento, var)

# Observamos que la varianza del grupo fert es 3 veces
# más grande que el grupo Control (Ctrl)

# revisar el comportamiento de los datos
library("ggplot2")

ggplot(calidad, aes(x = IE, color = Tratamiento))+
  geom_density()


