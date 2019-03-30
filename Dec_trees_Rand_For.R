#Decision trees

install.packages("rpart")
install.packages("rpart.plot")
library(rpart)
library(rpart.plot)

# Estructura del dataset a usar
str(iris)

# Entrenar el árbol de decisión
rtree_fit = rpart(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
                  data=iris)

#Desplegar el árbol de decisión
rpart.plot(rtree_fit)



# Random forest
install.packages("randomForest")
library(randomForest)


# Entrenar el Random Forest
rf_fit = randomForest(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
                  data=iris)

#Desplegar el Random Forest
print(rf_fit)


# Importancia de las variables
importance(rf_fit)
