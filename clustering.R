### Basado en: http://homes.sice.indiana.edu/yye/lab/teaching/topics/R/cluster.php

install.packages("cluster")
library(cluster)

#Hierarchical clustering

# Cargue de datos
data(mtcars)

# Matriz de distancias
d <- dist(mtcars, method = "euclidean")

# Realizar Clustering jerárquico
fit <- hclust(d, method="ward.D")

# Mostrar Dendrograma
plot(fit, main="Clustering Jerárquico")

# Cortar árbol en 5 grupos
groups <- cutree(fit, k=5) # cut tree into 5 clusters

# Dibujar cuadros rojos alrededor de los clusters
rect.hclust(fit, k=5, border="red")




# K-Means



# Limpiar los datos al borrar los NA's
data(mtcars)
mydata = na.omit(mtcars)

# Estandarizar las variables
mydata = scale(mydata) 

# Ejecutar algoritmo K-Means con 5 clusters
fit <- kmeans(mydata, 5) 

# Adjuntar las asignaciones de clusters
mydata <- data.frame(mydata, fit$cluster)

# Visualizar los clústers
clusplot(mydata, fit$cluster, color=TRUE, shade=TRUE, labels=2, lines=0)
