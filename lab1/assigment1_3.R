maximum=function(a,b,c)
{
  max=a;
  if(b>max)
    max=b;
  if(c>max)
    max=c;
  return(max);
}

sumof_n_numbers=function(num)
{if(num < 0){
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
}

