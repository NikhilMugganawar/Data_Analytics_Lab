#FUNCTION TO NORMALIZE A VECTOR
normalize <- function(x) {x / sqrt(sum(x^2))}
#DEFINE A NORMALIZED VECTOR P
v<-1:5
P<-normalize(v)
#DEFINE A NORMALIZED VECTOR Q
w<-6:10
Q<-normalize(w)
#DEFINE MATRIX FROM VECTORS P AND Q WHERE VECTORS ARE COMBINED AS ROWS
n <- rbind(P,Q)
# compute the Euclidean Distance with default parameters
library(philentropy)
distance(n, method = "manhattan")