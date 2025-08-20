temperatura <- read.csv("C:/Repositorio_GIT/Met_Est_2025/temperatura.csv")
View(temperatura)

head(temperatura) #primeras 6 filas
dim(temperatura) #numero de filas y columnas
names(temperatura) #nombres de las columnas
str(temperatura) #estructura del objeto

#Resumen estadistico
summary(temperatura)

#Modificar nombre de columnas
names(temperatura) <- c("anio","Ene", "Feb", "Mar","Abr","May",
                        "Jun","Jul","Ago","Sep","Oct","Nov","Dic")

names(temperatura)

#Crear columna Media_anual con temperatura media anual
temperatura$Ene
temperatura$Media_anual <- rowMeans(temperatura[,2:13])
head(temperatura)

#Crear objeto con medias mensuales de temperatura
medias_mensuales <- colMeans(temperatura[,2:13])
medias_mensuales
help("boxplot")

#Boxplot para un solo mes
boxplot(temperatura$Ene,
        main="Temperatura de enero",
        ylab="°C",
        col="lightblue")

datos_meses <- temperatura[,2:13]
boxplot(datos_meses,
        main="Temperatura",
        ylab="°C",
        col="lightgreen",
        names = c("Ene", "Feb", "Mar","Abr","May",
                  "Jun","Jul","Ago","Sep","Oct",
                  "Nov","Dic"))
