#First, take a random sample from the normal distribution, and plot the estimated density function:
y <- rnorm(100)
plot(density(y), type = "l")
#Now take repeated samples of size 4, calculate the mean for each such sample, and plot the density
#function for the distribution of means:
av <- numeric(100)
for (i in 1:100) {
av[i] <- mean(rnorm(4))
} 
lines(density(av), col = "red")
#Repeat the above: taking samples of size 9, and of size 25
for (i in 1:100) {
  av[i] <- mean(rnorm(9))
} 
lines(density(av), col = "green")
#------------#
for (i in 1:100) {
  av[i] <- mean(rnorm(25))
} 
lines(density(av), col = "blue")