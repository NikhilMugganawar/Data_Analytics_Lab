#DATASET 1 -> IRIS DATASET
#-----------------------------------------------------------------------------------------#
df <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data",
               header = FALSE)#IMPORT IRIS DATA
colnames(df) <- c('Sepal.Length','Sepal.Width','Petal.Length','Petal.Width','Species')#RENAMING COLUMNS

#VISUALIZE IRIS DATA
library(ggplot2)
ggplot(df,aes(x = Sepal.Length, y = Sepal.Width, col= Species)) + geom_point()
#----------------------------------------------------------------------------#
ggplot(df,aes(x = Petal.Length, y = Petal.Width, col= Species)) + geom_point()
#----------------------------------------------------------------------------#
#KMEANS CLUSTERING WITH BELOW CONFIGURATION:
#MAXIMUM NUMBER OF CLUSTERS (k.max)->10
#RANDOM SETS CHOOSEN (nstart) -> 20
#MAXIMUM NUMBER OF ITERATIONS ALLOWED (iter.max) -> 20
#DISTANCE MEASURE (method) -> euclidean
library(cluster)
library(amap)
library(bios2mds)
centers <- 10
k.max <- 10
v <-1:k.max
wss<-Kmeans(df[,1:4], k.max, iter.max = 20, nstart = 20,method = "euclidean")
#SILOUTTE METHOD TO SEE OPTIMUM NUMBER OF CLUSTERS
wss$withinss
plot(v,wss$withinss, type= "b", xlab = "Number of clusters(k)", ylab = "Within cluster sum of squares")
plot(df[,1:4], col = wss$cluster)
sil.score1<-sil.score(df[,1:4], nb.clus = c(2:13), nb.run = 20, iter.max = 20,
          method = "euclidean")
barplot(sil.score1,xlab = "Number of clusters(k)", ylab = "Within cluster sum of squares", names.arg = c(1:13))
#COMPARE CLUSTERS WITH OPTIMUM NUMBER OF CLUSTER AS 2 OBTAINED EARLIER FROM SILHOUETTE SCORE METHOD
icluster <- kmeans(df[,1:4],2,nstart = 20)
table(iris$Species,icluster$cluster)
#OBSERVATION
#[(50 + 48 + 36)/150] = 89% OF THE K-MEANS CLUSTER OUTPUT MATCHED WITH
#THE ACTUAL SPECIES CLUSTER. VERSICOLOR(CLUSTER 1) & VIRGINICA(CLUSTER 3) HAVE SOME OVERLAPPING FEATURES
#PLOT CLUSTERS
library("cluster")
yclus <-icluster$cluster
clusplot(df[, -5],#INCLUDES ALL 4 COLUMNS SEPAL.LENGTH,SEPAL.WIDTH,PETAL.LENGTH & PETAL.WIDTH
         yclus,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 0,
         plotchar = FALSE,
         span = TRUE,
         main = paste("Clusters of Iris Flowers with Euclidean Distance")
)
#REPEATING ABOVE STEPS FOR ABOVE DATA FOR MANHATTAN DISTANCE
centers_manhattan <- 10
kmanhattan.max <- 10
vmanhattan <-kmanhattan.max
wssmanhattan<-Kmeans(df[,1:4], kmanhattan.max, iter.max = 20, nstart = 20,method = "manhattan")
#SILHOUETTE METHOD TO SEE OPTIMUM NUMBER OF CLUSTERS
wssmanhattan$withinss
plot(df[,1:4], col = wssmanhattan$cluster)
sil.scoremanhattan<-sil.score(df[,1:4], nb.clus = c(2:13), nb.run = 20, iter.max = 20,
                      method = "manhattan")
barplot(sil.scoremanhattan,xlab = "Number of clusters(k)", ylab = "Within cluster sum of squares", names.arg = c(1:13))
#COMPARE CLUSTERS WITH OPTIMUM NUMBER OF CLUSTER AS 2 OBTAINED EARLIER FROM SILHOUETTE SCORE METHOD
iclustermanhattan <- kmeans(df[,1:4],2,nstart = 20)
table(iris$Species,iclustermanhattan$cluster)
#OBSERVATION
#[(50 + 48 + 36)/150] = 89% OF THE K-MEANS CLUSTER OUTPUT MATCHED WITH
#THE ACTUAL SPECIES CLUSTER. VERSICOLOR(CLUSTER 1) & VIRGINICA(CLUSTER 3) HAVE SOME OVERLAPPING FEATURES
#PLOT CLUSTERS
library("cluster")
yclusmanhattan <-iclustermanhattan$cluster
clusplot(df[, -5],#INCLUDES ALL 4 COLUMNS SEPAL.LENGTH,SEPAL.WIDTH,PETAL.LENGTH & PETAL.WIDTH
         yclusmanhattan,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 0,
         plotchar = FALSE,
         span = TRUE,
         main = paste("Clusters of Iris Flowers With Manhattan Distance")
)

#------------------------------------------------------------------------------------#
#DATASET 2 -> MTCARS DATASET
data("mtcars")
head(mtcars)
#VISUALIZE MTCARS DATA
library(ggplot2)
hist(mtcars$hp)
#KMEANS CLUSTERING WITH BELOW CONFIGURATION:
#MAXIMUM NUMBER OF CLUSTERS (k.max)->10
#RANDOM SETS CHOOSEN (nstart) -> 20
#MAXIMUM NUMBER OF ITERATIONS ALLOWED (iter.max) -> 20
#DISTANCE MEASURE (method) -> euclidean
library(cluster)
library(amap)
library(bios2mds)
centersmtcars <- 10
kmtcars.max <- 10
vmtcars <-1:kmtcars.max
wssmtcars<-Kmeans(mtcars, kmtcars.max, iter.max = 20, nstart = 20,method = "euclidean")
#SILOUTTE METHOD TO SEE OPTIMUM NUMBER OF CLUSTERS
wssmtcars$withinss
plot(vmtcars,wssmtcars$withinss, type= "b", xlab = "Number of clusters(k)", ylab = "Within cluster sum of squares")
plot(mtcars, col = wssmtcars$cluster)
sil.scoremtcars<-sil.score(mtcars, nb.clus = c(2:13), nb.run = 20, iter.max = 20,
                      method = "euclidean")
barplot(sil.scoremtcars,xlab = "Number of clusters(k)", ylab = "Within cluster sum of squares", names.arg = c(1:13))
iclustermtcars <- kmeans(mtcars,2,nstart = 20)
table(mtcars$cyl,iclustermtcars$cluster)
#PLOT CLUSTERS
library("cluster")
yclusmtcars <-iclustermtcars$cluster
clusplot(mtcars,
         yclusmtcars,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 0,
         plotchar = FALSE,
         span = TRUE,
         main = paste("Clusters of mtcars cylinders with Euclidean Distance")
)
#REPEATING ABOVE STEPS FOR ABOVE DATA FOR MANHATTAN DISTANCE
centersmtcarsmanhattan <- 10
kmtcarsmanhattan.max <- 10
vmtcarsmanhattan <-1:kmtcarsmanhattan.max
wssmtcarsmanhattan<-Kmeans(mtcars, kmtcarsmanhattan.max, iter.max = 20, nstart = 20,method = "manhattan")
#SILOUTTE METHOD TO SEE OPTIMUM NUMBER OF CLUSTERS
wssmtcarsmanhattan$withinss
plot(vmtcarsmanhattan,wssmtcarsmanhattan$withinss, type= "b", xlab = "Number of clusters(k)", ylab = "Within cluster sum of squares")
plot(mtcars, col = wssmtcarsmanhattan$cluster)
sil.scoremtcarsmanhattan<-sil.score(mtcars, nb.clus = c(2:13), nb.run = 20, iter.max = 20,
                           method = "manhattan")
barplot(sil.scoremtcarsmanhattan,xlab = "Number of clusters(k)", ylab = "Within cluster sum of squares", names.arg = c(1:13))
iclustermtcarsmanhattan <- kmeans(mtcars,2,nstart = 20)
table(mtcars$cyl,iclustermtcarsmanhattan$cluster)
#PLOT CLUSTERS
library("cluster")
yclusmtcarsmanhattan <-iclustermtcarsmanhattan$cluster
clusplot(mtcars,
         yclusmtcarsmanhattan,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 0,
         plotchar = FALSE,
         span = TRUE,
         main = paste("Clusters of mtcars cylinders with Manhattan Distance")
)