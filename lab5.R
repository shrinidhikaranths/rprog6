setwd("C:/Users/Student/Documents/Desktop/nnm24cs353")
getwd()
data<-data.frame(ID=c(1,2,3,4,5,6,7,8),
                  salary=c(40754,39040,65043,45000,69000,35020,69500,67664))

res<-data %>% filter(salary>50000)
print(res)
write.csv(data,"salary.csv",row.names=FALSE)


data<-data.frame(ID=c(1,2,3,4,5,6,7),Name=c("Alice","Bob","charlie","David","Jessica","Flora","evan"),
                 
                 Department=c("IT","Tech","Sales","HR","Markwting","IT","Tech"),
                 Age=c(24,27,22,32,36,22,28),Gender=c("female","male","male","male","female","female","male")
                 )
print(data)
library(dplyr)
write.csv(data,"employee.csv")
dataset1<-read.csv("employee.csv")
dataset2<-read.csv("salary.csv")
print(dataset1)
print(dataset2)
merged_data<-merge(dataset1,dataset2,by="ID")
print(merged_data)
aggregated_data<-merged_data %>% group_by(Gender) %>% summarise(Total_salary=sum(salary),average_age=mean(Age),count= n())
print(aggregated_data)
filtered_data<-merged_data %>% filter(Age>25)
print(filtered_data)
transformed_data<-merged_data %>% mutate(double_salary=salary*2,seniority=ifelse(Age>28,"Senior","Junior"))
print(transformed_data)
