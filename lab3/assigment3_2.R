df <- read.csv("PAICOL.csv")
summary(df)##SUMMARY OF dataframe in R
library(ggplot2)
#PART A
ggplot(data=df, aes(x=DATE, y=LEVEL, group=1)) +
  geom_line()+
  geom_point()
#PART B
ggplot(data=df, aes(x = LEVEL, y = RAIN)) +
  geom_point()
#PART C
ggplot(data = df, mapping = aes(x = LEVEL, y = RAIN)) +
  geom_line()
#PART D
ggplot(data=df, aes(x=DATE, y=LEVEL, group=1)) +
  geom_line()+
  geom_point(size=1, shape=21, color = 'darkgreen', fill='white', stroke = 2)
#PART E
library(lubridate)
df$year=year(df$DATE)
df_2001 = df[df$year == '2001',]
ggplot(data=df_2001, aes(x=DATE, y=LEVEL, group=1)) +
  geom_line()+
  geom_point()