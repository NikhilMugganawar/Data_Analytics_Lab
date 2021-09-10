#Part 1
df <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data",
               header = FALSE)
colnames(df) <- c('Sepal.Length','Sepal.Width','Petal.Length','Petal.Width','Species')#RENAMING COLUMNS
setaosa_df <- subset(df, Species == "Iris-setosa")
versicolor_df <- subset(df, Species == "Iris-versicolor")
virginica_df <- subset(df, Species == "Iris-virginica")
setaosa_length <- sum(setaosa_df$Petal.Length)
versicolor_length <- sum(versicolor_df$Petal.Length)
virginica_length <- sum(virginica_df$Petal.Length)
sf <- c(setaosa_length,versicolor_length,virginica_length)
barplot(sf,
        main ="Comparison between totals for petal length across species",
        xlab="Species",
        ylab = "Cumulative Petal Length",
        names = c("Setaosa","Versicolor","Virginica"))
# s <- c(sum(df$Sepal.Length),sum(df$Sepal.Width),sum(df$Petal.Length),sum(df$Petal.Width))
# barplot(s,
#         main = "Comparison between cumulative totals across PetalLength",
#         xlab = "Sepals & Petals Dimensions",
#         ylab = "Cumulative Total")
#Part 2
require(RColorBrewer)
library(RColorBrewer)
coul <- brewer.pal(3, "Pastel2")
barplot(sf,
        main ="Comparison between totals for petal length across species",
        xlab="Species",
        ylab = "Cumulative Petal Length",
        names = c("Setaosa","Versicolor","Virginica"),
        col=coul)
#Part 3
boxplot(setaosa_length, versicolor_length,virginica_length,xlab = "Species",
        ylab = "Cumulative Petal Length",
        main = "Box Plot",
        col=coul,names = c("Setaosa","Versicolor","Virginica"))
#Part 4
plot(x = df$Petal.Length,y = df$Petal.Width,
     xlab = "Petal Length",
     ylab = "Petal Width",
     xlim = c(0,2),
     ylim = c(0,1),		 
     main = "Length vs Width for Across All Species"
)
