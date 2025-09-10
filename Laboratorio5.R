# datos de producción de semilla para los años 2012 y 2013
# se expresa en kg semilla por árbol

# Importardatos

sem <- read.csv("kilo_sem.csv", header = T)
sem$Tiempo <- as.factor(sem$Tiempo)

tapply(sem$Kgsem, sem$Tiempo, mean)

boxplot(sem$Kgsem ~ sem$Tiempo,
        col = "navajowhite",
        xlab = "Año",
        ylab = "Semilla (kg)")


t2012 <- subset(sem, sem$Tiempo =="T2012")
t2013 <- subset(sem, sem$Tiempo !="T2012")
t.test(t2012$Kgsem, t2013$Kgsem, paired = T)


t.test(t2012$Kgsem, t2013$Kgsem, paired = T, alternative = "less")
