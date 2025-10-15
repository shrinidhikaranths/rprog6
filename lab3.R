midf=function(str)
{
  print(nchar(str))
  print(toupper(str))
  n1=nchar(str)+1
  mc=substring(str,n1%/%2,(n1+1)%/%2)
  print(mc)
}
name=readline("Enter your name:")
midf(name)

is_palindrome=function(x){
  a=substring(x,seq(1,nchar(x)),seq(1,nchar(x)))
print(a)
paste(rev(a),sep="",collapse="")==
  paste(a,sep="",collapse="")
}
str=readline("enter string:")
print(is_palindrome)
{
if(is_palindrome(str)==TRUE)
  print("String ",str,"is palindrome")
else
  print(,"not a palindrome")
}
  print(is_palindrome)

