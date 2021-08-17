num = as.integer(readline(prompt = "Enter a number for which you need multiples from 1 to 10: "))
for(i in 1:10) {
  print(paste(num,'x', i, '=', num*i))
}