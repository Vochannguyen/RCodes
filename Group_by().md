## Group_by()
# We are going to use Group_by() to group things based on their class

FIFA_Players %>% group_by(Position) %>% summarize(meanBC=mean(BallControl,na.rm=TRUE), count=n())%>%print(n=28)

FIFA_Players %>% filter(!is.na(BallControl)) %>% group_by(Position) %>% summarize(meanBC=mean(BallControl), count=n()) %>% ggplot(aes(x=Position,y=meanBC))+geom_col()

FIFA_Players %>% filter(!is.na(BallControl)) %>% group_by(Position) %>% summarize(meanBC=mean(BallControl), count=n()) %>% arrange(meanBC) %>% print(n=28)
