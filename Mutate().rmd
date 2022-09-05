## Mutate()
# Creates New Variables

mpg %>% mutate(diffHC = hwy-cty) %>% ggplot(aes(x=displ, y=diffHC, color=class)) + geom_point()
