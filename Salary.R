# Query to load a CSV file
df <- read.csv("Salary_Data.csv", header=TRUE, sep=",")
summary(df)
str(df)
plot(df)
#Importing ggplot library for Data Visualization
library(ggplot2)
ggplot(df, aes(YearsExperience, Salary))+
  geom_point()+
  geom_smooth(method = "lm", formula = y~x-1)
#Importing Library to perform corellation Analysis.
library("stats")
library("psych")

#Test of Independence
describe(df$YearsExperience)
describe(df$Salary)

#corellation Analysis
cor.test(df$YearsExperience, df$Salary)
