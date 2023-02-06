library(ggplot2)
library(data.table)
library(tidyverse)

setwd("C:/Users/HP/Desktop/Lachu Personal/Learnings")

users = read.csv("users.csv")

dim(users)
str(users)
head(users)

summary(users)


#converting User's Last Login Rewards to string as rest are in varchar state
users$LAST_REWARDS_LOGIN <- as.character(users$LAST_REWARDS_LOGIN)

#to recognize null values present in the file
users <- read.csv("users.csv", na.strings = c("", "NA", "NULL", "N/A"))
colSums(is.na(users))

#Finding duplication records if any :NO DUPLICATE RECORDS
users <- read.csv("users.csv")
any(duplicated(users))