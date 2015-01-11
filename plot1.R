library(data.table)
c1 <- fread("c:/Users/uphilli/Documents/Coursera_Data_Science/Exploratory_Data_Analysis/household_power_consumption.txt")
c1$Date <- as.Date(c1$Date,"%d/%m/%Y")
c2 <- c1[c1$Date <= '2007-02-02' & c1$Date >= '2007-02-01']
c2$Global_active_power <- as.numeric(c2$Global_active_power)
#plot 1
hist(c2$Global_active_power, main = 'Global Active Power', xlab = "Global Active Power (kilowatts)", col = "red", ylim = NULL)
title("Global Active Power")
dev.copy(png,filename = "/Users/uphilli/Documents/Coursera_Data_Science/Exploratory_Data_Analysis/Plot1.png", width =480, height = 480, bg = "white")
dev.off()