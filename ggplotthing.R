#SELECT DATA
#SPECIFY AESTHETICS
#SPECIFY PLOTTING METHOD
#MAKE IT PRETTY

attach(diamonds)
library(tidyverse)
df<-diamonds

df

df %>% filter(clarity == "IF") %>%
  ggplot(aes(x = carat, y = price, color = color)) + 
  facet_wrap(~color) +
  geom_point() + 
  geom_smooth(method = "lm") + 
  labs(title = "Price v Carats") + theme_bw()


df%>% ggplot(aes(x=carat,y=price, color = color)) +
  geom_point()+
  geom_smooth(method = "lm") +
  facet_wrap(~clarity) 

