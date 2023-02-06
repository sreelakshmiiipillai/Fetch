library(ggplot2)
library(data.table)
library(tidyverse)

setwd("C:/Users/HP/Desktop/Lachu Personal/Learnings")

brands = read.csv("brands.csv")

dim(brands)
str(brands)
head(brands)

summary(brands)


#converting barcode to string as rest are in varchar state
brands$BARCODE <- as.character(brands$BARCODE)

#to recognize null values present in the file
brands <- read.csv("brands.csv", na.strings = c("", "NA", "NULL", "N/A"))
colSums(is.na(brands))

#Finding duplication records if any :NO DUPLICATE RECORDS
brands <- read.csv("brands.csv")
any(duplicated(brands))










