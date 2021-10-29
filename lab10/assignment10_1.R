#CREATE A GRAPH
library(igraph)
library(evaluate)
library(expm)
g <- graph(c(
  1, 2, 1, 3, 
  2, 3, 4, 3,
  3, 4, 3, 1), 
  directed=TRUE)
#VISUALIZE THE DIRECTED GRAPH
g
#GET ADJACENCY MATRIX
M = get.adjacency(g, sparse = FALSE)
#VISUALIZE INITIAL ADJACENY MATRIX
M
#FORM STOCHASTIC ADJACENCY MATRIX
M = t(M / rowSums(M))
#VISUALIZE STOCHASTIC ADJACENCY MATRIX
M
#CALCULATE AND VISUALIZE NUMBER OF ROWS IN ADJACENCY MATRIX
n = nrow(M)
n

#MATRIX U WITH 6 ROWS and 6 COLUMNS WITH EACH CELL HAVING VALUE OF 1 DIVIDED BY NUMBER OF PAGES
#AN INITIAL N*N MATRIX WITH EACH VALUE 1/N AT t=0
U = matrix(data=rep(1/n, n^2), nrow=n, ncol=n)
U
beta=0.85#INITILIZE TELEPORTING FACTOR
#################
##############TOPIC SENSITIVE PAE RANK
#𝑨𝒊𝒋 = 𝜷 𝑴𝒊𝒋 + (𝟏 − 𝜷)/|𝑺| if 𝒊 ∈ 𝑺
#𝜷 𝑴𝒊𝒋 + 𝟎 otherwise
#PAGE RANK WITH TELEPORTING FACTOR
#PAGE RANK USING MATRIX/POWER ITERATION METHOD
S <- c(1,2,3,4,5)#TELEPORT SET ,A TOPIC VECTOR OF 5 TOPICS
#TELEPORT SET COULD BE CHANGED AND SO DOES TELEPORTING FACTOR, ANY CHNAGE IN BOTH
#COULD LEAD TO DIFFERENT PAGERANK VECTOR
i <- sample(1:10, 1)#RANDOM SURFER RANDOMLY CHOOSES ONE PAGE OUT OF 10
print(i)
if (is.element(i, S)){
  print("RANDOM SURFER SELECTS ONE OF THE TOPICS IN SET S")
  A = beta*M+(1-beta)*U #MATRIX A TO ITERATE OVER
}else{
  print("RANDOM SURFER DOES NOT SELECT ONE OF THE TOPICS IN SET S")
  A = beta*M #MATRIX A TO ITERATE OVER
}
A
r = matrix(data=rep(1/n, n), nrow=n, ncol=1)
r#COLUMN VECTOR
t(A%^%100 %*% r)
######################################################
