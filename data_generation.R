#load required libraries
install.packages('randomNames')
library(randomNames)
library(lubridate)
#-----------------------------------------------------------
#Audience table

#Create a sequence of IDs
ID <- 1:400

#Generate random names
names <- randomNames(400,which.names = "first")

#Generate random dates of birth between 1950-2005
DOB <- as.Date(sample(seq(as.Date('1950-01-01'), as.Date('2005-01-01'), by="day"), 400, replace=TRUE))

#Create a Gender column with Male, Female and Other genders
Gender <- sample(c("Male","Female","Other"),400,replace=TRUE)

#Create a Dietary preference column with Vegan, Vegetarian, Non-Veg and Gluten-Free
Dietary_preference <- sample(c("Vegan","Vegetarian","Non-Veg","Gluten-Free"),400,replace=TRUE)

#Create a Supporting Team column with FIFA World Cup teams
Supporting_Team <- sample(c("Brazil","Germany"),400,replace=TRUE)

#Create a Zone column with East wing, West wing, North wing and South wing
Zone <- sample(c("East wing","West wing","North wing","South wing"),400,replace=TRUE)

#Combine all the columns into a data frame
Audience <- data.frame(ID,names,DOB,Gender,Dietary_preference,Supporting_Team,Zone)

#-----------------------------------------------------------------
#Events table

# Create a sequence of alphanumeric Event_ID
Event_ID <- paste0("E",seq(1:20))

# Create an Event column with events according to the given time intervals
Event <- c("Goal","Corner Kick","Yellow Card","Red Card","Penalty Kick","Halftime","Goal","Corner Kick","Yellow Card","Red Card","Penalty Kick","Break","Goal","Goal","Corner Kick","Break","Break","Break","Goal","NA")

# Create a Date column set to 2023-03-27
Date <- rep(as.Date("2023-03-27"),20)

# Create a Time column with events according to the given time intervals
Time <- c("21:03:23","21:13:12","21:21:45","21:30:59","21:41:32","21:45:00","22:01:23","22:11:01","22:19:47","22:26:23","22:37:56","22:45:00","23:02:30","23:05:23","23:12:59","23:15:00","23:16:39","23:19:59","23:21:23","23:35:00")

#Create Team column with team names
Team <- sample(c("Brazil","Germany"),20,replace=TRUE)

# Combine all the columns into a data frame
Events <- data.frame(Event_ID,Event,Date,Time,Team)

#---------------------------------------------------------------------------------
#Menu table

# create a vector of item names
item_names <- c("Feijoada", "Churrasco", "Schnitzel", "Bratwurst", "Hot Dog",
                "Hamburger", "Veggie Burger", "Veggie Wrap", "BBQ Chicken",
                "Chicken Wings", "Caesar Salad", "Greek Salad", "Nachos",
                "Popcorn", "French Fries", "Veggie Pizza", "Pepperoni Pizza",
                "Cheese Pizza", "Sausage Pizza", "Beer (small)", "Beer (medium)",
                "Beer (large)", "Soft drink (small)", "Soft drink (medium)",
                "Soft drink (large)", "Bottled Water", "Lemonade", "Ice Cream Sundae",
                "Strawberry Milkshake", "Chocolate Milkshake", "Mango Lassi",
                "Pretzels", "Cheeseburger", "Chicken sandwich", "Onion rings",
                "Falafel Plate")

# create a vector of prices
prices <- c(15.99, 18.99, 12.99, 9.99, 7.99, 8.99, 10.99, 9.99, 12.99,
            9.99, 7.99, 8.99, 6.99, 4.99, 3.99, 12.99, 14.99, 13.99,
            11.99, 5.99, 6.99, 7.99, 2.99, 3.99, 4.99, 1.99, 2.99, 6.99,
            7.99, 7.99, 4.99, 5.99, 4.99, 6.99, 8.99, 5.99)

# create a vector of food categories
food_categories <- c("non-veg", "non-veg", "non-veg", "non-veg", "non-veg",
                     "non-veg", "vegan", "vegan", "non-veg", "non-veg",
                     "vegan", "vegan", "non-veg", "vegan", "vegan", "vegan",
                     "non-veg", "non-veg", "non-veg", "non-veg", "non-veg",
                     "non-veg", "non-veg", "non-veg", "non-veg", "vegan",
                     "vegan", "vegan", "vegan", "vegan", "vegan", "non-veg",
                     "non-veg", "non-veg", "vegan", "vegan")

# create the 'Menu' table
Menu <- data.frame(Menu_ID = 1:length(item_names), 
                   Item_name = item_names, 
                   Price = prices, 
                   Food_Category = food_categories)

----------------------------
#Order table
  
# load necessary libraries
library(tidyverse)
library(lubridate)

# generate Order_ID column
Order_ID <- seq_len(800)

# generate Aud_ID column by sampling from Audience table's ID column
Aud_ID <- sample(Audience$ID, size = 800, replace = TRUE)

# generate Item_ID column by sampling from Menu table's Menu_ID column
Item_ID <- sample(Menu$Menu_ID, size = 800, replace = TRUE)

# generate Event_ID column by sampling from Events table's Event_ID column
Event_ID <- sample(Events$Event_ID, size = 800, replace = TRUE)

# generate Order date column
Order_date <- as.Date("2023-03-27")

# generate Order time column with a maximum deviation of 3 minutes from the event time
Order_time <- sapply(Event_ID, function(x) {
  event_time <- Events %>% filter(Event_ID == x) %>% select(Time) %>% unlist()
  event_time <- strptime(paste(Order_date, event_time), "%Y-%m-%d %H:%M:%S")
  event_time <- event_time + runif(1, -180, 180)
  format(event_time, "%H:%M:%S")
})

# generate Quantity column with random values between 1 and 5
Quantity <- sample(1:5, size = 800, replace = TRUE)

# combine all columns into a data frame
Order <- data.frame(Order_ID, Aud_ID, Item_ID, Event_ID, Order_date, Order_time, Quantity)


#----------------

install.packages('writexl')
library(writexl)

# Export dataframes to Excel file with different sheets
write_xlsx(list("Sheet1" = Audience, "Sheet2" = Events, "Sheet3" = Menu, "Sheet4" = Order), path = "finalData.xlsx")



