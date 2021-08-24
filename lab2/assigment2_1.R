df <- read.csv("C:/Users/Admin/Downloads/Dataset.csv")#READ DATASET
df$Salary[is.na(df$Salary)]<-mean(df$Salary,na.rm=TRUE)#REPLACE MISSING VALUES IN SALARY WITH MEAN
df$Age[is.na(df$Age)]<-median(df$Age,na.rm=TRUE)#REPLACE MISSING VALUES IN AGE WITH MODE
df$Purchased <- ifelse(df$Purchased == "Yes", "0", "1")#REPLACE YES WITH o AND NO WITH 1
df$Country <- as.numeric(as.factor(df$Country))#REPLACE FRANCE,SPAIN AND GERMANY WITH 1,2,3
(df$Salary - mean(df$Salary)) / sd(df$Salary)#SCALE SALARY COLUMN
df$Salary <- scale(df$Salary)
print(df)