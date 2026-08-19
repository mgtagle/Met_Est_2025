# MaGT
# Matrícula
# 19/08/2026

# Importar datos ----
# Usar la funcion "read.csv" para importar datos de excel.

Exp <- read.csv("vivero.csv", header = TRUE)

# Declarar la columna tratamiento como factor y sus 2 niveles
# utilice la función "as.factor".

Exp$Tratamiento <- as.factor(Exp$Tratamiento)
Exp$Tratamiento

# Gráfica----

# Boxplot de los datos

boxplot(Exp$IE ~ Exp$Tratamiento,
        xlab = "Factor = Fertilizante",
        ylab = "Índice (IE)",
        col = "lightblue",
        main = "Unidad experimental")
