library(ggplot2)
library(plotly)
titanic<-read.csv("train.csv")
print(titanic)

titanic$Survived<-factor(titanic$Survived,levels=c("0","1"))
nlevels(titanic$Survived)

#bar chart
library(ggplot2)
titanic<-read.csv("train.csv")
bar_chart<-ggplot(titanic,aes(x=factor(Pclass),fill=factor(Survived)))+
  geom_bar(position="dodge")+
    labs(title="Survivors by Passengers class",x="Passenger Class",y="Count",fill="Survived")+
    scale_fill_manual(values=c("0"="red","1"="green"))
print(bar_chart)
#it is a interactive
interactive_bar_chart<-ggplotly(bar_chart)
print(interactive_bar_chart)

#density plot
density_plot<-ggplot(titanic,aes(x=Age),y=..density..)+
  geom_density(fill="yellow",alph=0.6)+
  labs(titl="Age Distribution of passengers",x="Age",y="Density")
print(density_plot)

#scatter plot
scatter_plot<-ggplot(titanic,aes(x=Age,y=Fare,color=factor(Survived)))+geom_point()+
  labs(title="Fare vs Age",x="Age",y="Fare",color="Survived")+
  scale_color_manual(values=c("0"="red","1"="blue"))
print(scatter_plot)

hist<-ggplot(titanic,aes(x=Pclass,y=Survived))+
  stat_bin_2d(bins=10,aes(fill=..count..))+
  labs(title="Titanic survived heatmap",x="Pclass",y="Survived",fill="Frequency")+
  scale_fill_continuous(name="Frequency" ,low="white",high="blue")+theme_minimal()
print(hist)

