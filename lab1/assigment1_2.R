# take input from the user
num = as.integer(readline(prompt = "Enter a number: "))
if(num < 0){
print("Enter a valid number")
}
else{
print("It is a valid number")
sum = 0
while (num > 0) {
  sum = sum + num
  num = num -1
  }
print(paste("The sum is", sum))
}