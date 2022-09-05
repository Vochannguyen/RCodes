## Group_by()
# We are going to use Group_by() to group things based on their class

# FIFA Players being grouped by position and getting rid of the NAs
FIFA_Players %>% group_by(Position) %>% summarize(meanBC=mean(BallControl,na.rm=TRUE), count=n())%>%print(n=28)

FIFA_Players %>% filter(!is.na(BallControl)) %>% group_by(Position) %>% summarize(meanBC=mean(BallControl), count=n()) %>% ggplot(aes(x=Position,y=meanBC))+geom_col()

FIFA_Players %>% filter(!is.na(BallControl)) %>% group_by(Position) %>% summarize(meanBC=mean(BallControl), count=n()) %>% arrange(meanBC) %>% print(n=28)

# Mean Height of Genders and grouped by Genders
library(tidyverse)

df = data.frame(Name = c("Jack","Julie","Cali","Sunny","James"), Age = c(3,4,2,1,5), Height = c(23,25,30,29,24), Gender = c("Male","Female","Female","Female","Male"))

  
  df %>% group_by(Gender) %>% summarize(MeanHeight = mean(Height))
