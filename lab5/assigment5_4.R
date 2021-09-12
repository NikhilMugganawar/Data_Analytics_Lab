#IMPORT IRIS DATASET
df <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data",
               header = FALSE)
colnames(df) <- c('Sepal.Length','Sepal.Width','Petal.Length','Petal.Width','Species')#RENAMING COLUMNS
#plot the data points in a 2-D space where the x-axis and the y-axis represent the
#petal length and the petal width, respectively.
plot(df$Petal.Length,df$Petal.Width, pch=16, col="blue", cex = 0.6)
#Compute the similarity measure between Iris-Setosa and Iris-Versicolor; and Iris-
#Versicolor and Iris-Virginica; and Iris-Setosa and Iris-Virginica considering only two
#features petal length and petal width
setaosa_df <- subset(df, Species == "Iris-setosa")
versicolor_df <- subset(df, Species == "Iris-versicolor")
virginica_df <- subset(df, Species == "Iris-virginica")
library(philentropy)
#SIMILARITY BETWEEN IRIS SETOSA AND IRIS VERSICOLOR
n <- rbind(setaosa_df$Petal.Length,versicolor_df$Petal.Length)
print("Similarity of Petal Length between iris setosa and iris versicolor")
distance(n, method = "cosine")
m <- rbind(setaosa_df$Petal.Width,versicolor_df$Petal.Width)
print("Similarity of Petal Width between iris setosa and iris versicolor")
distance(m, method = "cosine")
#SIMILARITY BETWEEN IRIS VERSICOLOR AND IRIS VIRGINICA
n <- rbind(versicolor_df$Petal.Length,virginica_df$Petal.Length)
print("Similarity of Petal Length between iris versicolor and iris virginica")
distance(n, method = "cosine")
m <- rbind(versicolor_df$Petal.Width,virginica_df$Petal.Width)
print("Similarity of Petal Width between iris versicolor and iris virginica")
distance(m, method = "cosine")
#SIMILARITY BETWEEN IRIS SETOSA AND IRIS VIRGINICA
n <- rbind(setaosa_df$Petal.Length,virginica_df$Petal.Length)
print("Similarity of Petal Length between iris setosa and iris virginica")
distance(n, method = "cosine")
m <- rbind(setaosa_df$Petal.Width,virginica_df$Petal.Width)
print("Similarity of Petal Width between iris setosa and iris virginica")
distance(m, method = "cosine")