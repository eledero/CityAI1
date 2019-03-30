install.packages("tidyverse")
library(tidyverse)

str(mtcars)

# Primera Gráfica: scatterplot

graph1 = ggplot(mtcars, aes(x = mpg, y = drat)) + geom_point()
graph1








# Cambiar color de puntos
graph2 = ggplot(mtcars, aes(x = mpg, y = drat, color = cyl)) + geom_point()
graph2













# ¿Qué pasó acá? ¿Por qué la escala de colores es continua si el número de cilindros es entero?

class(mtcars$cyl)















# La escala de colores es continua porque los datos de los cilindros son numéricos. 
# Hagamos la gráfica de nuevo convirtiendo en factores la columna de los cilindros 

graph3 = ggplot(mtcars, aes(x = mpg, y = drat, color = as.factor(cyl))) + geom_point()
graph3















# ¿Qué tal si le ponemos las leyendas del caso?

graph4 = graph3 + labs(x = "Millas por galón", y = "Rear Axle Ratio", col = "Número de cilindros", title = "Gráfica de comparación de automóviles")
graph4















# ¿Y si le cambiamos la combinación de colores al gráfico?

graph5 = graph4 + theme_bw()
graph5















# ¿Y si cambiamos la escala de colores de los puntos?

graph5 + scale_colour_brewer(palette = "Set1")















# Ya hicimos mucho con el scatterplot. ¿Qué tal un gráfico de barras?

graph6 = ggplot(mtcars, aes(x = as.factor(cyl), y = drat, fill = as.factor(cyl))) + geom_bar(position = "dodge", stat = "summary", fun.y = "mean") +
labs(x = "# de cilindros", y = "Promedio de Rear Axle Ratio", col = "Número de cilindros", title = "Gráfica de comparación de automóviles")
graph6















# ¿No creen que la leyenda de colores sobra?

graph7 = graph6 + theme(legend.position = "none") 
graph7



