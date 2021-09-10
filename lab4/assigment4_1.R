#In R a simple bar graph can be used to model the probability distribution function.
#Take a random vector and probability associated with it and plot it with a bar graph.
# Create the data for the chart
vec <- sample(c(7,12,28,3,41)
              ,50 , replace = TRUE)
# Plot the bar chart 
barplot(vec,xlab="Probability",ylab="Numbers",col="blue",
        main="Random Vector and Probability associated with it",border="red")
#For the above problem create a cumulative frequency table and plot the cumulative frequency against each sample point mentioned in the vector.
data <- table(vec)
print ("Frequency Table")
print (data)
print ("Cumulative Frequency Table")
cumfreq_data <- cumsum(data)
print (cumfreq_data)
lines(H, cumfreq_data)
#Using some simple commands in R generate the probability values for the binomial
#distribution for the number of children in 10 with blue eyes using p =0.16. Plot the
#obtained result.
k=3
n=10
p=0.16
pbinom(k, n, p)
plot(0:n, pbinom(0:n, size = n, prob = p), type = "l")
#Run the above example with probabilities that a child has blue eyes is 0.05, 0.2, 0.5,
#nd 0.8 and see how this changes the distribution.
k=3
n=10
p=0.05
pbinom(k, n, p)
plot(0:n, pbinom(0:n, size = n, prob = p), type = "l")
##
k=3
n=10
p=0.2
pbinom(k, n, p)
plot(0:n, pbinom(0:n, size = n, prob = p), type = "l")
##
k=3
n=10
p=0.5
pbinom(k, n, p)
plot(0:n, pbinom(0:n, size = n, prob = p), type = "l")
#Consider you have a vector 0:10. Compute poisson distribution with p=0.2. Plot it
#to visulaise the distribution.
plot(dpois(x=0:10,lambda=0.2))