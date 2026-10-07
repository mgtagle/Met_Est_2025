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
        ylab = "Índice IE",
        col = "lightblue",
        main = "Unidad experimental")

# Conocer la varianza de cada grupo

df_ctrl <- subset(Exp, Tratamiento == "Ctrl")
df_fert <- subset(Exp, Tratamiento != "Ctrl")
df_fert <- subset(Exp, Tratamiento == "Fert")

var(df_ctrl$IE)
var(df_fert$IE)

mean(df_ctrl$IE)
mean(df_fert$IE)

# La varianza del grupo fertilizado es 3 veces mayor que la 
# varianza del grupo control
# Pregunta 

# ¿Provienen de una distribición normal ambos grupos?
shapiro.test(df_ctrl$IE)
# Grupo ctrl proviene de una distribución normal
shapiro.test(df_fert$IE)
# Grupo fert sigue una distribución normal

# ¿Serán las varainzas iguales o diferentes estadísticamente?

var.test(df_ctrl$IE, df_fert$IE)
# Las varianzas de ambos grupos son iguales}

# Existen diferencias entres los tratamientos

t.test(df_ctrl$IE, df_fert$IE, var.equal = TRUE)

# Si la pregunta es que el Fert es mayor que Ctrl
t.test(df_fert$IE, df_ctrl$IE, var.equal = T, 
       alternative = "greater")


# Si la pregunta es que el Ctrl es menor que Fert
t.test(df_ctrl$IE, df_fert$IE, var.equal = T, 
       alternative = "less")


# "two.sided", "greater", "less"
