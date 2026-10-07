# Correlación
# Importar datos de altura y diámetro

erupciones <- faithful

# Crear un gráfico base para revisar el comportamiento
# de las dos variables numéricas

plot(erupciones$waiting, erupciones$eruptions,
     xlab = "Tiempo de espera (min)",
     ylab = "Duración de la erupción (min)",
     pch = 19, col = "red")

# Conocer el rango del tiempo
range(erupciones$waiting)

# Conocer el rango de la erupción
range(erupciones$eruptions)

boxplot(erupciones$eruptions)
fivenum(erupciones$eruptions)

cor.test(erupciones$eruptions, erupciones$waiting)

# 07/10/2026
# Regresión lineal
# función lm

gylm <- lm(erupciones$eruptions ~ erupciones$waiting)
summary(gylm)


# Graficar la línea de tendencia central
# función abline()

plot(erupciones$waiting, erupciones$eruptions,
     xlab = "Tiempo de espera (min)",
     ylab = "Duración de la erupción (min)",
     pch = 19, col = "red")
abline(gylm, lw = 2)

# ampliar mi datos originales con Yprima y apliación del modelo
erupciones$yprima <- gylm$fitted.values
erupciones$modelo <- -1.874016 + 0.075628*erupciones$waiting
erupciones$residual <- gylm$residuals

# Determinar que la suma de residuales = 0
sum(erupciones$residual)
