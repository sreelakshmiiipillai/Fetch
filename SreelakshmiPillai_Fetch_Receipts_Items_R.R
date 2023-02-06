library(ggplot2)
library(data.table)
library(tidyverse)

setwd("C:/Users/HP/Desktop/Lachu Personal/Learnings")

receipt_items = read.csv("receipt_items.csv")

dim(receipt_items)
str(receipt_items)
head(receipt_items)

summary(receipt_items)

#Identifying which columns are numerical and which are categorical
receipt_items <- read.csv("receipt_items.csv")
receipt_items_numerical <- sapply(df, is.numeric)
receipt_items_categorical <- sapply(df, is.factor)


sapply(receipt_items, class)



#to recognize null values present in the file
receipt_items <- read.csv("receipt_items.csv", na.strings = c("", "NA", "NULL", "N/A"))
colSums(is.na(receipt_items))

#Finding duplication records if any :NO DUPLICATE RECORDS
receipt_items <- read.csv("receipt_items.csv")
any(duplicated(receipt_items))