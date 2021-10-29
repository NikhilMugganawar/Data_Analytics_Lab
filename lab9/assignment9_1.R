#CREATE A GRAPH
library(igraph)
library(evaluate)
library(expm)
g <- graph(c(
  1, 2, 1, 3, 1, 4, 
  2, 3, 2, 6, 3, 1, 
  3, 5, 4, 2, 4, 1, 
  4, 5, 5, 2, 5, 6, 
  6, 3, 6, 4), 
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
#####################################################
#PAGE RANK WITH TELEPORTING FACTOR
#PAGE RANK USING MATRIX/POWER ITERATION METHOD
A = beta*M+(1-beta)*U #MATRIX A TO ITERATE OVER
A
r = matrix(data=rep(1/n, n), nrow=n, ncol=1)
r#COLUMN VECTOR
t(A%^%100 %*% r)
######################################################
#PAGE RANK WITHOUT TELEPORTING FACTOR
betaone = 0
B = betaone*M+(1-betaone)*U #MATRIX B TO ITERATE OVER
t(B%^%100 %*% r)#t FUNCTION IN R CALCULATES TRANSPOSE OF A MATRIX

