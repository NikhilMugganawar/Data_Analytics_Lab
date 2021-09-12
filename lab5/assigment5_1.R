#IMPORT MTCARS DATASET
data("mtcars")
head(mtcars)
# Simple Scatterplot
attach(mtcars)
plot(wt, mpg, main="Scatterplot Example",
     xlab="Car Weight ", ylab="Miles Per Gallon ", pch=19)
#Correlation between mpg and wt variables
cor(mtcars$wt, mtcars$mpg)