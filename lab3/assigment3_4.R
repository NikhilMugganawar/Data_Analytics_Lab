my_seq <- seq(0, 100, by = 1.5)
y <- dbinom(my_seq,100,0.5)
dotchart(y)