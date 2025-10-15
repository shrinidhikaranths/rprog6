
my_fun<-function(num)
{
if(num%%2==0){
  cat("the number"," ",num,"is even")
}else{
  cat("the number"," ",num,"is odd")
}
}
print("enter the number")
num<-scan(nline=1)
my_fun(num)







my_fun2<-function(startrang,endrange){
  for(i in startrang:endrange){
    a=i^2
    cat("the square of",i,"is",a,"\n")
  }
}
print("ente rthe starting range")
num1<-scan(nlines=1)
print("enter the ending range")
num2<-scan(nlines=1)
my_fun2(num1,num2)



sorting<-function(a){
sort(a,decreasing=FALSE)
  
}
n=as.numeric(readline(prompt="enter the no of element="))
a=scan(nlines=n)
sorting(a)
