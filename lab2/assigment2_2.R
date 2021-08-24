df <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data",
               header = FALSE)
colnames(df) <- c('Sepal.Length','Sepal.Width','Petal.Length','Petal.Width','Species')#RENAMING COLUMNS
#CALCULATE MEAN OF EACH COLUMNS IN THE NEXT 4 ROWS
mean(df[["Sepal.Length"]])
mean(df[["Sepal.Width"]])
mean(df[["Petal.Length"]])
mean(df[["Petal.Width"]])
agg_sum = aggregate(df[,1:4],by=list(df$Species),FUN=sum, na.rm=TRUE)#SUM OF ALL METRICS ACROSS SPECIES AND GROUPED BY SPECIES
agg_sum
agg_count = aggregate(iris[,1:4],by=list(iris$Species),FUN=length)#COUNT OF ALL METRICS ACROSS SPECIES AND GROUPED BY SPECIES
agg_count
agg_max = aggregate(iris[,1:4],by=list(iris$Species),FUN=max, na.rm=TRUE)#MAXIMUM OF ALL METRICS ACROSS SPECIES AND GROUPED BY SPECIES
agg_max