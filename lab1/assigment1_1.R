{
  first_number <- as.integer(readline(prompt = "Enter first number :"))
  second_number <- as.integer(readline(prompt = "Enter second number :"))
  third_number <- as.integer(readline(prompt = "Enter third number :"))
  
  if (first_number > second_number && first_number > third_number) {
    print(paste("Greatest is :", first_number))
  } else if (second_number > third_number) {
    print(paste("Greatest is :", second_number))
  } else{
    print(paste("Greatest is :", third_number))
  }
  
}
