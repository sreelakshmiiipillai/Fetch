library(ggplot2)
library(data.table)
library(tidyverse)

setwd("C:/Users/HP/Desktop/Lachu Personal/Learnings")

receipts = read.csv("receipts.csv")

dim(receipts)
str(receipts)
head(receipts)

summary(receipts)

#Identifying which columns are numerical and which are categorical
receipts <- read.csv("receipts.csv")
receipts_numerical <- sapply(df, is.numeric)
receipts_categorical <- sapply(df, is.factor)


sapply(receipts, class)



#to recognize null values present in the file
receipts <- read.csv("receipts.csv", na.strings = c("", "NA", "NULL", "N/A"))
colSums(is.na(receipts))

#Finding duplication records if any :NO DUPLICATE RECORDS
receipts <- read.csv("receipts.csv")
any(duplicated(receipts))