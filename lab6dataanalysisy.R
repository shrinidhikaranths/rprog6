
library(dplyr)
library(ggplot2)

#a)
data<-read.csv("train.csv")
data
summary_stats<-summary(data)
print(summary_stats)
histo<-ggplot(data,aes(x=Age))+geom_histogram(binwidth=5,fill="green",color="blue")+labs(title="Distribution of age on Titanic",x="Age",y="Frequency")
print(histo)
missing_values<-colSums(is.na(data))
print(missing_values)
#b)
duplicated(data)
data<-distinct(data)
data
data$Age[is.na(data$Age)]<-mean(data$Age,na.rm=TRUE)
data
#c)
adult_passengers<-filter(data,Age > 18)
print(adult_passengers)

sorted_titanic<-arrange(data,desc(Fare))
print(sorted_titanic)
#d)
library(tidyr)
print(boxplot(Age ~ Survived , data=data ,col=c("red","green"),main="Box of Age by Survived"))
t_test_result<- t.test(Age ~ Survived,data=data)
print(t_test_result)
