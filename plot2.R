setwd("C:/exploratory/ExData_Plotting1")
data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)

data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data <- subset(data, data$Date == "2007-02-01" | data$Date == "2007-02-02")

png(file="plot2.png",width=480,height=480)
plot(data$Time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
