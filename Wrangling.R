library(tidyr)
library(dplyr)
library(lubridate)
install.packages("eeptools")
library(eeptools)
### Loading the dataset 
order<- read.csv("Order.csv")
menu<-read.csv("Menu.csv")
audience<-read.csv("Audience.csv")
events <- read.csv("Event.csv")

## First look on the data
### Checking for missing values and correct data form
str(order)
sum(is.na(order))
str(menu)
sum(is.na(menu))
str(audience)
sum(is.na(audience))
str(events)
sum(is.na(events))

## Data cleaning and preparation
order$Order_date<-ymd(order$Order_date)
audience$DOB<- ymd(audience$DOB) 
events$Date<- ymd(events$Date)


## uniting Order_date column with Order_time column and creating a new column called"Order_date_time"
data.1<-unite (order, Order_date_time,Order_date, Order_time, sep =" ")
write.csv(data.1,file="ordernew.csv", row.names= F)

## joining audience and order table
colnames(audience)[colnames(audience)=="ID"]<- "Aud_ID"# changing the column name so that we can use the innerjoin function to join two tables.
combined<- inner_join(audience, order, by = "Aud_ID")
#### Creating  and calculating a new column "Age" using the Audience DOB and Order date.
combined$Age<-round(age_calc(combined$DOB,combined$Order_date,units="years"))
write.csv(combined,file="Age.csv", row.names= F)
