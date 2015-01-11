#read data into R, cut & clean data
library(data.table)
c1 <- fread("c:/Users/uphilli/Documents/Coursera_Data_Science/Exploratory_Data_Analysis/household_power_consumption.txt")
c1$Date <- as.Date(c1$Date,"%d/%m/%Y")
c2 <- c1[c1$Date <= '2007-02-02' & c1$Date >= '2007-02-01']
c2$Global_active_power <- as.numeric(c2$Global_active_power)
#plot 3
plot(c2$Sub_metering_1, ylab = "Energy sub metering", type = "l", xaxt = "n", xlab = "")
lines(c2$Sub_metering_2, col = "red")
lines(c2$Sub_metering_3, col = "blue")
axis(1, at = c(0,1440,2880), labels = c("Thu","Fri","Sat"))
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","blue","red"), lty = c(1,1), cex = .7)
dev.copy(png,filename = "/Users/uphilli/Documents/Coursera_Data_Science/Exploratory_Data_Analysis/Plot3.png", width =480, height = 480, bg = "white")
dev.off()
