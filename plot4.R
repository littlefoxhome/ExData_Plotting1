# load data

data  <- read.table('household_power_consumption.txt',header = TRUE, sep = ";", na = "?")
index <- which(data[,1] == '1/2/2007' | data[,1] == '2/2/2007');
data  <- data[index,]


# draw the figure

# fig 4
png(filename = "plot4.png", width = 480, height = 480,  bg = "transparent")

par(mfrow = c(2, 2))

plot(Dateandtime, data[,3],type ='l', ylab = "Global Active Power (kilowatts)", xlab = "")


plot(Dateandtime, data[,5],type ='l', ylab = "Voltage", xlab = "datetime")


plot(Dateandtime, data[,7],type ='l', ylab = "Energy sub metering", xlab = "")

lines(DateTime, data[,8], col = "red")
lines(DateTime, data[,9], col = "blue")
legend("topright", col = c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd = 1)

plot(Dateandtime, data[,4],type ='l', ylab = "Global_reactive_power", xlab = "datetime")

dev.off()